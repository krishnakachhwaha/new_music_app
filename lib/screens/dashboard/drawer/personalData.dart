import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class personalData extends StatefulWidget {
  const personalData({Key? key}) : super(key: key);

  @override
  State<personalData> createState() => _personalDataState();
}

class _personalDataState extends State<personalData> {
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    final mqh = MediaQuery.of(context).size.height;
    final mqw = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 5, right: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: mqh * 0.05),
              BackButton(
                color: Colors.white,
              ),
              Text(
                '_______________________________________________________________________________________________________________________________________________________',
                style: TextStyle(fontSize: 5, color: Colors.grey),
              ),
              SizedBox(height: mqh * 0.02),
              Text(
                'Edit Profile',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              SizedBox(height: mqh * 0.03),
              Center(
                  child: Stack(
                children: [
                  Container(
                    width: mqw * 0.30,
                    height: mqh * 0.15,
                    child: Icon(
                      FontAwesomeIcons.userAstronaut,
                      color: Colors.black,
                      size: 60,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white10,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.white38,
                              offset: Offset(0, 10),
                              blurRadius: 10,
                              spreadRadius: 2)
                        ],
                        border: Border.all(
                            width: mqw * 0.01,
                            color: Theme.of(context).scaffoldBackgroundColor),
                        shape: BoxShape.circle),
                  ),
                  Positioned(
                      top: 65,
                      bottom: 0,
                      right: 0,
                      child: Container(
                        width: mqw * 0.09,
                        height: mqh * 0.09,
                        decoration: BoxDecoration(
                          color: Colors.purpleAccent,
                          shape: BoxShape.circle,
                          border: Border.all(
                              width: 3,
                              color: Theme.of(context).scaffoldBackgroundColor),
                        ),
                        child: Icon(
                          FontAwesomeIcons.pencil,
                          color: Colors.white,
                          size: 15,
                        ),
                      ))
                ],
              )),
              SizedBox(height: mqh * 0.05),
              buildTextField("Full Name", "Krishna Kachhwaha", false),
              buildTextField("E-mail", "krishnakachhwaha04@gmail.com", false),
              buildTextField("Password", "*********", true),
              buildTextField("Location", "Jodhpur, Rajasthan", false),
              SizedBox(height: mqh * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          side:
                              BorderSide(width: 2, color: Colors.purpleAccent),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'CANCEL',
                        style: TextStyle(
                            fontSize: 14,
                            letterSpacing: 7,
                            color: Colors.white),
                      )),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.purpleAccent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                              side: BorderSide(
                                  width: 2, color: Colors.purpleAccent))),
                      onPressed: () {},
                      child: Text(
                        'SAVE',
                        style: TextStyle(
                            fontSize: 15,
                            letterSpacing: 7,
                            color: Colors.white),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(
      String labelText, String placeholder, bool isPasswordTextField) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: TextField(
        obscureText: isPasswordTextField ? showPassword : false,
        decoration: InputDecoration(
          suffixIcon: isPasswordTextField
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      showPassword = !showPassword;
                    });
                  },
                  icon: Icon(FontAwesomeIcons.solidEye,
                      color: Colors.white, size: 15))
              : null,
          labelText: labelText,
          labelStyle: TextStyle(fontSize: 15, color: Colors.grey.shade400),
          hintText: placeholder,
          hintStyle: TextStyle(
              fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          enabledBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
        ),
      ),
    );
  }
}
