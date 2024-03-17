import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_app/user_onboarding/login/login_pg.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';

class signup_pg extends StatefulWidget {
  const signup_pg({super.key});

  @override
  State<signup_pg> createState() => _signup_pgState();
}

class _signup_pgState extends State<signup_pg> {
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  // TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 120),
              child: Container(
                width: 250.w,
                height: 250.h,
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(250)),
                    color: Colors.deepPurple.shade200),
                child: Padding(
                  padding: const EdgeInsets.only(top: 90, left: 15),
                  child: RichText(
                    text: TextSpan(
                        style: TextStyle(color: Colors.white, fontSize: 55),
                        children: <TextSpan>[
                          TextSpan(text: 'SIGNUP'),
                          TextSpan(
                              text: '\nHey! Fill details to signup',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white))
                        ]),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30.h),
            Center(
              child: SizedBox(
                width: 270.w,
                child: TextField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.account_circle,
                        color: Colors.grey.shade600,
                      ),
                      hintText: 'Enter Your Name',
                      hintStyle: TextStyle(color: Colors.grey),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                              width: 4, color: Colors.deepPurple.shade200)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                              width: 4, color: Colors.deepPurple.shade200))),
                ),
              ),
            ),
            SizedBox(height: 15.h),
            SizedBox(
              width: 270.w,
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.mail,
                      color: Colors.grey.shade600,
                    ),
                    hintText: 'Enter Email-Id',
                    hintStyle: TextStyle(color: Colors.grey),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                            width: 4, color: Colors.deepPurple.shade200)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                            width: 4, color: Colors.deepPurple.shade200))),
              ),
            ),
            SizedBox(height: 15.h),
            SizedBox(
              width: 270.w,
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock_outline,
                      color: Colors.grey.shade600,
                    ),
                    suffixIcon: Icon(Icons.remove_red_eye, color: Colors.grey),
                    hintText: 'Enter Password',
                    hintStyle: TextStyle(color: Colors.grey),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                            width: 4, color: Colors.deepPurple.shade200)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                            width: 4, color: Colors.deepPurple.shade200))),
              ),
            ),
            SizedBox(height: 15.h),
            SizedBox(
              width: 270.w,
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock_outline,
                      color: Colors.grey.shade600,
                    ),
                    suffixIcon: Icon(Icons.remove_red_eye, color: Colors.grey),
                    hintText: 'Enter Confirm Password',
                    hintStyle: TextStyle(color: Colors.grey),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                            width: 4, color: Colors.deepPurple.shade200)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                            width: 4, color: Colors.deepPurple.shade200))),
              ),
            ),
            SizedBox(height: 25.h),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(200, 60),
                    backgroundColor: Colors.deepPurpleAccent.shade100),
                onPressed: () {
                  loginUser();
                },
                child: Text(
                  'SIGNUP',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                )),
            SizedBox(height: 70.h),
            RichText(
              text: TextSpan(
                  style: TextStyle(color: Colors.black, fontSize: 20),
                  children: <TextSpan>[
                    TextSpan(text: 'Already have Account?'),
                    TextSpan(
                        text: ' Login',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.deepPurpleAccent.shade100))
                  ]),
            ),
          ],
        ),
      ),
    );
  }

  loginUser() async {
    final firebaseIns = FirebaseAuth.instance;

    if (emailController.text.toString() == "" &&
        passwordController.text.toString() == "" &&
        nameController.text.toString() == "") {
      if (passwordController.text.toString() == "" &&
          nameController.text.toString() == "" &&
          passwordController.text.toString() == "") {
      } else {}
    } else {}

    await firebaseIns.signInWithEmailAndPassword(
        email: emailController.text.toString(),
        password: passwordController.text.toString());

    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => login_pg(),
        ));
  }
}
