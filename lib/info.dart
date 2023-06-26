import 'package:flutter/material.dart';

const info = [
  {
    'name': 'Rivaan Ranawat',
    'message': 'Hey, how are you doing?',
    'time': '3:53 pm',
    'call': 'Missed call',
    'status': 'Do not judge me by my past. I do not live there anymore.',
    'profilePic':
        'https://media.istockphoto.com/vectors/young-man-anime-style-character-vector-id1188980757?k=20&m=1188980757&s=612x612&w=0&h=mchP5EsIbmDRCWs3k8N2xtDfjaMTF2DU3ahc_HPsSMw=',
  },
  {
    'name': 'John Doe',
    'message': 'Hello, whats up?',
    'time': '2:25 pm',
    'call': 'Missed call',
    'status': 'Do not talk, WhatsApp only.',
    'profilePic':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWBFEFpMBu2Dl7enYvMcId2WbPBSB4q--zMNmaQv3PMZelX8e8CZlOPFkwZPoYtiSeP4o&usqp=CAU',
  },
  {
    'name': 'Linda',
    'message': 'Call me, hane spme work.',
    'time': '12:02 pm',
    'call': 'Missed Call',
    'status': 'Hey There! I am using WhatsApp.',
    'profilePic':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJllJpYA4f_e51PKAg7adVHTcbslw-5FpFG2zmz3_my5a3BAxMgDQ4wtiGb5fQJwtn_hs&usqp=CAU',
  },
  {
    'name': 'Liam',
    'message': 'You ate food?',
    'time': '10:00 am',
    'call': 'Missed call',
    'status': 'If opportunity does not knock, build a door.',
    'profilePic':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCtmrmcG3JP-cujdnPNkMEaokWYK2GsDWHFKA-fraZ4kq7fAZWrzETTQP2WjLTX1VMdRk&usqp=CAU',
  },
  {
    'name': 'Jurice',
    'message': 'Yo!!!! Long time, no see!?',
    'time': '8:00 am',
    'call': 'Missed Call',
    'status': 'You have to be odd to be number one.',
    'profilePic':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1TS-dkCyP6MJ8Ooolj-9zKu-kujwihVIsK5yJKTnXAbbOezi6FZGzSlbyzLbrb0AJ2G8&usqp=CAU',
  },
  {
    'name': 'Albert Dera',
    'message': 'Am I fat?',
    'time': '7:20 am',
    'status': 'Do not tell people your dreams, SHOW THEM!',
    'profilePic':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjRR5ahjVpgV2-lFXpyV40xe69ry6M3ajJfteqnutYUorW2rAh4vB0NljpmVzuViLa50s&usqp=CAU',
  },
  {
    'name': 'Joseph',
    'message': 'I am form Interational Olym ...',
    'time': '5:30 am',
    'status': 'Be the change you wish to see in the world.',
    'profilePic':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrCIEtAlJbp6wt7hayOYBxCnaCBJe2A_P1A5jC_q2nImizRg-bcpPq5mLGgaGLhkMhGtw&usqp=CAU',
  },
  {
    'name': 'Sikander',
    'message': 'Lets Code!',
    'time': '4:59 am',
    'status': 'Bring out the kid in you.',
    'profilePic':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvO1YF5wefmXtyL-oUvYx_2X9uEMaNdVhB4FaxsNNlOD8VrxCOng2oUjh7zbu4xKr7JSo&usqp=CAU',
  },
  {
    'name': 'Ian Doeley',
    'message': 'Images by Unsplash',
    'time': '2:30 am',
    'status': 'Busy now!!',
    'profilePic':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcfpNiHqJLTt2Tvp1ULEBUPq0CblF51Y9wkw&usqp=CAU',
  },
  {
    'name': 'Olivia',
    'message': 'I am here!!!',
    'time': 'Yesterday',
    'status': 'Sometimes you win, sometimes you learn',
    'profilePic':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTR4b-bRiXgROLH6oJcummCHGRpqDoYpGxTk1siOkHrbqIKhzPlBzLFlkfYj-K613EKTkc&usqp=CAU',
  },
  {
    'name': 'Daniel',
    'message': 'Where are new?!',
    'time': 'Yesterday',
    'status': 'The world is so noisy.',
    'profilePic':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSR78Uv7KwdsWeNZO36aYq-IldVDYQZwvV8EFYlItqMCzFgVlb_ZvaBLCEgISeTczm_bqI&usqp=CAU',
  },
];

const messages = [
  {
    'isMe': false,
    'text': 'hey What  is up with you!!',
    'time': '10:00 am',
  },
  {
    'isMe': true,
    'text': 'I am fine, What about you?',
    'time': '11:00 am',
  },
  {
    'isMe': false,
    'text': 'I am graet man!',
    'time': '11:01 am',
  },
  {
    'isMe': false,
    'text': 'Just messaged cuz I had some work.',
    'time': '11:02 am',
  },
  {
    'isMe': false,
    'text': 'haha I wanted you to check out my new channel ^^',
    'time': '11:04 am',
  },
  {
    'isMe': false,
    'text': 'Sure, what is the channel name?',
    'time': '11:05 am',
  },
  {
    'isMe': false,
    'text': 'Rivan Ranawat',
    'time': '11:06 am',
  },
  {
    'isMe': true,
    'text': 'Looks great to me!',
    'time': '11:16 am',
  },
  {
    'isMe': false,
    'text': 'Thats bro!',
    'time': '11:17 am',
  },
  {
    'isMe': false,
    'text': 'Did you Subscribe?',
    'time': '11:19 am',
  },
  {
    'isMe': true,
    'text': 'Yes, Surely bro!',
    'time': '11:20 am',
  },
  {
    'isMe': false,
    'text': 'Cool, did you like the content?',
    'time': '11:20 am',
  },
  {
    'isMe': false,
    'text': 'I loved it?',
    'time': '11:21 am',
  },
  {
    'isMe': false,
    'text': 'OMG! Woah! Thanks!',
    'time': '11:21 am',
  },
];

const setting = [
  {
    'title': 'Account',
    'decouation': 'Privacy, security, number change.      ',
    'icon': Icons.security_sharp,
  },
  {
    'title': 'Chat',
    'decouation': 'Appearance, Wallpaper, Screen Record. ',
    'icon': Icons.app_registration_sharp,
  },
  {
    'title': 'Notifications',
    'decouation': 'Message tones, groups and calls.       ',
    'icon': Icons.security_sharp,
  },
  {
    'title': 'Storage and data',
    'decouation': 'Network usage, automatic download.   ',
    'icon': Icons.security_sharp,
  },
  {
    'title': 'Help',
    'decouation': 'Help Center, Contact, Privacy Policy.   ',
    'icon': Icons.security_sharp,
  },
];
