import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class login_pg extends StatefulWidget {
  const login_pg({super.key});

  @override
  State<login_pg> createState() => _login_pgState();
}

class _login_pgState extends State<login_pg> {
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
                    color: Colors.pink.shade200),
                child: Padding(
                  padding: const EdgeInsets.only(top: 90, left: 15),
                  child: RichText(
                    text: TextSpan(
                        style: TextStyle(color: Colors.white, fontSize: 60),
                        children: <TextSpan>[
                          TextSpan(text: 'LOGIN'),
                          TextSpan(
                              text: '\n Welcome Back!',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white))
                        ]),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30.h),
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
                        borderSide:
                            BorderSide(width: 4, color: Colors.pink.shade200)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:
                            BorderSide(width: 4, color: Colors.pink.shade200))),
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
                        borderSide:
                            BorderSide(width: 4, color: Colors.pink.shade200)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:
                            BorderSide(width: 4, color: Colors.pink.shade200))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 165),
              child: Text(
                'Forget Password?',
                style: TextStyle(fontSize: 15, color: Colors.pink.shade300),
              ),
            ),
            SizedBox(height: 30.h),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    side: BorderSide(width: 2, color: Colors.pink.shade300),
                    fixedSize: Size(200, 60),
                    backgroundColor: Colors.pink.shade200),
                onPressed: () {},
                child: Text(
                  'SIGNUP',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                )),
            SizedBox(height: 70.h),
            RichText(
              text: TextSpan(
                  style: TextStyle(color: Colors.black, fontSize: 20),
                  children: <TextSpan>[
                    TextSpan(text: 'Don\'t have Account?'),
                    TextSpan(
                        text: ' SignUp',
                        style: TextStyle(
                            fontSize: 18, color: Colors.pink.shade200))
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
