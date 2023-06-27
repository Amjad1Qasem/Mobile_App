import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
// startFormController
  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();

  GlobalKey<FormState> formstatesingup = GlobalKey<FormState>();
  GlobalKey<FormState> formstatesingin = GlobalKey<FormState>();

  String? validusername(String val) {
    if (val.trim().isEmpty) {
      return "لايمكن ان يكون اسم المستخدم فارغ";
    }
    if (val.trim().length < 4) {
      return "لايمكن ان يكون اسم المستخدم اقل من 4 احرف";
    }
    if (val.trim().length > 20) {
      return "لايمكن ان يكون اسم المستخدم اكبر من 20 احرف";
    }
  }

  String? validpassword(String val) {
    if (val.trim().isEmpty) {
      return "لايمكن ان تكون كلمة المرور فارغة";
    }
    if (val.trim().length < 4) {
      return "لايمكن ان تكون كلمة المرور اقل من 4 احرف";
    }
    if (val.trim().length > 20) {
      return "لايمكن ان تكون كلمة المرور اكبر من 20 حرف";
    }
  }

  String? validconfirmpassword(String val) {
    if (val != password.text) {
      return "كلمة المرور غير متطابقة ";
    }
  }

  String? validemail(String val) {
    if (val.trim().isEmpty) {
      return "لايمكن ان يكون البريد الالكتروني فارغ";
    }
    if (val.trim().length < 4) {
      return "لايمكن ان يكون البريد الالكتروني اقل من 4 احرف";
    }
    if (val.trim().length > 20) {
      return "لايمكن ان يكون البريد الالكتروني اكبر من 20 احرف";
    }
    RegExp regex = RegExp('pattern');
    if (regex.hasMatch(val)) {
      return "عنوان البريد الالكتروني غير صحيح يجب ان يكون على سبيل المثال مثل(example@gmail.com)";
    }
  }

  singin() {
    var formdata = formstatesingin.currentState!;
    if (formdata.validate()) {
      formdata.save();
      var data = {
        "email": email.text,
      };
    } else {
      print("not valid");
    }
  }

  signup() {
    var formdata = formstatesingup.currentState!;
    if (formdata.validate()) {
      print("valid");
    } else {
      print("not valid");
    } // ${1:TextFormField}({required ${2|bool,Object|} obscureText, required decoration}) {}

    // ${1:TextFormField}({required ${2|bool,Object|} obscureText, required decoration}) {}

    // ${1:TextFormField}({required ${2|bool,Object|} obscureText, required decoration}) {}

    // ${1:TextFormField}({required ${2|bool,Object|} obscureText, required decoration}) {}
  }

  late TapGestureRecognizer _changesing;
  bool showsignin = true;

  @override
  void initState() {
    _changesing = TapGestureRecognizer()
      ..onTap = () {
        setState(() {
          showsignin = !showsignin;
        });
      };
    super.initState();
  }

  Center buildFormBoxSingnIn(double mdw) {
    return Center(
      child: AnimatedContainer(
        duration: Duration(milliseconds: 600),
        curve: Curves.easeOutBack,
        margin: EdgeInsets.only(top: 40),
        height: 250,
        width: mdw / 1.2,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              color: Colors.black,
              spreadRadius: 4,
              blurRadius: 3,
              offset: Offset(1, 1))
        ]),
        child: Form(
            key: formstatesingin,
            child: Container(
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.all(10),
                child: SingleChildScrollView(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //star Text Username
                    Text(
                      "اسم المستخدم",
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    buildTextFormFieldAll(
                        "ادخل اسم المستخدم", false, username, validusername),
                    //endText Username
                    //start Text Passworde
                    Text("كلمة المرور",
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.w600)),
                    SizedBox(
                      height: 10,
                    ),
                    buildTextFormFieldAll(
                        "ادخل كلمة المرور", true, password, validpassword),
                    //endText Passworde
                  ],
                )))),
      ),
    );
  }

  Center buildFormBoxSingnUp(double mdw) {
    return Center(
      child: AnimatedContainer(
        duration: Duration(milliseconds: 600),
        curve: Curves.easeInOutBack,
        margin: EdgeInsets.only(top: showsignin ? 40 : 20),
        height: 403,
        width: mdw / 1.2,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              color: Colors.black,
              spreadRadius: 4,
              blurRadius: 3,
              offset: Offset(1, 1))
        ]),
        child: Form(
            key: formstatesingup,
            child: Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.all(10),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //star Text Username
                    Text(
                      "اسم المستخدم",
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    buildTextFormFieldAll(
                        "ادخل اسم المستخدم", false, username, validusername),
                    //endText Username
                    //start Text Passworde
                    Text("كلمة المرور",
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.w600)),
                    SizedBox(
                      height: 10,
                    ),
                    buildTextFormFieldAll(
                        "ادخل كلمة المرور", true, password, validpassword),
                    //start Text Passworde CONFIRM
                    Text(" تأكيد كلمة المرور",
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.w600)),
                    SizedBox(
                      height: showsignin ? 250 : 430,
                    ),
                    buildTextFormFieldAll("ادخل كلمة المرور هنا مرة اخرى", true,
                        confirmPassword, validconfirmpassword),
//start Text Email
                    Text(" البريد الالكتروني",
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.w600)),
                    SizedBox(
                      height: 10,
                    ),
                    buildTextFormFieldAll(
                        "ادخل البريد الالكتروني", false, email, validemail),
                  ],
                ),
              ),
            )),
      ),
    );
  }

  TextFormField buildTextFormFieldAll(String myhinttext, bool pass,
      TextEditingController myController, myvalid) {
    return TextFormField(
      controller: myController,
      obscureText: pass,
      validator: myvalid,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(4),
          hintText: myhinttext,
          filled: true,
          fillColor: Colors.grey[200],
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.grey.shade500,
                  style: BorderStyle.solid,
                  width: 1)),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.blue.shade500,
                  style: BorderStyle.solid,
                  width: 1))),
    );
  }

  AnimatedContainer buildcontaineravatar(double mdw) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      height: 100,
      width: 100,
      decoration: BoxDecoration(
          color: showsignin ? Colors.yellow : Colors.grey[700],
          borderRadius: BorderRadius.circular(100),
          boxShadow: [
            BoxShadow(color: Colors.black, blurRadius: 3, spreadRadius: 0.1)
          ]),
      child: Stack(
        children: [
          Positioned(
              top: 25,
              right: 25,
              child: Icon(Icons.person_outline, size: 50, color: Colors.white)),
          Positioned(
              top: 35,
              left: 60,
              child: Icon(Icons.arrow_back, size: 50, color: Colors.white))
        ],
      ),
    );
  }

  Positioned buildPositionetop(mdw) {
    return Positioned(
        child: Transform.scale(
            scale: 1.3,
            child: Transform.translate(
                offset: Offset(0, -mdw / 1.7),
                child: AnimatedContainer(
                    duration: Duration(milliseconds: 500),
                    height: mdw,
                    width: mdw,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(mdw),
                        color: showsignin ? Colors.grey[800] : Colors.blue)))));
  }

  Positioned buildPositioneBottom(double mdw) {
    return Positioned(
        top: 300,
        right: mdw / 1.5,
        child: AnimatedContainer(
            duration: Duration(milliseconds: 500),
            height: mdw,
            width: mdw,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(mdw),
                color: showsignin
                    ? Colors.blue.shade800.withOpacity(0.2)
                    : Colors.grey.shade800.withOpacity(0.3))));
  }

  @override
  Widget build(BuildContext context) {
    var mdw = MediaQuery.of(context).size.width;

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Stack(
          children: [
            Container(height: double.infinity, width: double.infinity),
            buildPositionetop(mdw),
            buildPositioneBottom(mdw),
            Container(
                height: 1000,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Center(
                          child: Container(
                              margin: EdgeInsets.only(top: 30),
                              child: Text(
                                showsignin ? "انشاءحساب" : "تسجيل الدخول",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ))),
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                      ),
                      buildcontaineravatar(mdw),
                      showsignin
                          ? buildFormBoxSingnIn(mdw)
                          : buildFormBoxSingnUp(mdw),
                      Container(
                          margin: EdgeInsets.only(top: 20),
                          child: Column(
                            children: [
                              showsignin
                                  ? InkWell(
                                      onTap: () {},
                                      child: Text(
                                        "?هل نسيت كلمة المرور",
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 18),
                                      ))
                                  : SizedBox(),
                              SizedBox(height: showsignin ? 24 : 5),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: showsignin
                                      ? Colors.blue
                                      : Colors.grey[700],
                                  elevation: 10,
                                  padding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 40),
                                ),
                                onPressed: showsignin ? singin : signup,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      showsignin ? "تسجيل الدخول" : "انشاءحساب",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18),
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(top: 4),
                                        padding: EdgeInsets.only(right: 10),
                                        child: Icon(Icons.arrow_forward,
                                            color: Colors.white))
                                  ],
                                ),
                              ),
                              Container(
                                  margin: EdgeInsets.only(top: 10),
                                  child: RichText(
                                    text: TextSpan(
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontFamily: 'cairo'),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: showsignin
                                                  ? " في حال ليس لديك حساب يمكنك"
                                                  : "اذا كان لديك حساب يمكنك"),
                                          TextSpan(
                                              recognizer: _changesing,
                                              text: showsignin
                                                  ? "تسجيل دخول من هنا"
                                                  : " انشاء حساب من هنا",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontWeight: FontWeight.w700,
                                              )),
                                        ]),
                                  ))
                            ],
                          )),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
