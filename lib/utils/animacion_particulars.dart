import 'dart:math';
import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:supercharged/supercharged.dart';
import 'package:supercharged_dart/supercharged_dart.dart';

class AnimacionParticulas extends StatefulWidget {
  final int numberOfParticles;
  const AnimacionParticulas(this.numberOfParticles, {Key? key})
      : super(key: key);

  @override
  State<AnimacionParticulas> createState() => _AnimacionParticulasState();
}

class _AnimacionParticulasState extends State<AnimacionParticulas>
    with WidgetsBindingObserver {
  final List<ParticleModel> particles = [];

  @override
  void initState() {
    widget.numberOfParticles.times(() => particles.add(ParticleModel()));
    WidgetsBinding.instance!.addObserver(this);
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance!.addObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      for (var particle in particles) {
        particle.restart();
        particle.shuffle();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return LoopAnimation(
      tween: ConstantTween(1),
      builder: (context, child, dynamic _) {
        _simulateParticles();
        return CustomPaint(
          painter: ParticlePainter(particles),
        );
      },
    );
  }

  _simulateParticles() {
    for (var paticle in particles) {
      paticle.checkIfParticleNeedsToBeRestarted();
    }
  }
}

class ParticlePainter extends CustomPainter {
  List<ParticleModel> particles;
  ParticlePainter(this.particles);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = Colors.white.withAlpha(50);
    for (var particle in particles) {
      final progress = particle.progess();
      final MultiTweenValues<PartcilePffsetProps> animation =
          particle.tween.transform(progress);
      final position = Offset(
          animation.get<double>(PartcilePffsetProps.x) * size.width,
          animation.get<double>(PartcilePffsetProps.y) * size.height);
      canvas.drawCircle(position, size.width * 0.2 * particle.size, paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

enum PartcilePffsetProps { x, y }

class ParticleModel {
  late MultiTween<PartcilePffsetProps> tween;
  late double size;
  late Duration duration;
  late Duration startTime;
  ParticleModel() {
    restart();
    shuffle();
  }

  restart() {
    final startPosition = Offset(-0.2 + 1.4 * Random().nextDouble(), 1.2);
    final endPosition = Offset(-0.2 + 1.4 * Random().nextDouble(), -0.2);
    tween = MultiTween<PartcilePffsetProps>()
      ..add(PartcilePffsetProps.x, startPosition.dx.tweenTo(endPosition.dx))
      ..add(PartcilePffsetProps.y, startPosition.dy.tweenTo(endPosition.dy));
    duration = 3.seconds + Random().nextInt(30000).milliseconds;
    startTime = DateTime.now().duration();
    size = 0.2 + Random().nextDouble() * 0.4;
  }

  void shuffle() {
    startTime -=
        (Random().nextDouble() * duration.inMicroseconds).round().milliseconds;
  }

  checkIfParticleNeedsToBeRestarted() {
    if (progess() == 1.0) {
      restart();
    }
  }

  double progess() {
    return ((DateTime.now().duration() - startTime) / duration)
        .clamp(0.0, 1.0)
        .toDouble();
  }
}
