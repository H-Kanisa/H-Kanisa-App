import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Log-in/signup_screen.dart';

import 'package:responsive_dashboard/page/OnBoardingScreen.dart';
import 'pallete.dart';
import 'package:responsive_dashboard/page/dashboard.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<LoginScreen> {
  @override
  bool _obscureText = true;

  String _password;

  // Toggles the password show status
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  Widget build(BuildContext context) {
    return initWidget();
  }

  initWidget() {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 242, 242, 242),
        body: SingleChildScrollView(
            child: Column(
          children: [
            //green box with rounded corners
            Container(
              height: 320,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40)),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 10,
                      color: Color(0xffEEEEEE))
                ],
                color: AppColor.whiteHK,
              ),
              padding: EdgeInsets.only(top: 50),
              child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 80),
                    child: Image.asset(
                      "assets/main-horizontal.png",
                      height: 100,
                      width: 700,
                    ),
                  ),
                  /* Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  alignment: Alignment.center,
                  child: Text(
                    "Sign-In",
                    style: TextStyle(
                        color: AppColor.greyHK,
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              )*/
                ],
              )),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 20, right: 20, top: 40),
              padding: EdgeInsets.only(left: 20, right: 20),
              height: 54,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey[200],
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xffEEEEEE)),
                ],
              ),
              child: TextField(
                style: TextStyle(color: AppColor.greyHK),
                cursorColor: AppColor.greenHK,
                decoration: InputDecoration(
                  focusColor: AppColor.greenHK,
                  prefixIcon: Icon(
                    Icons.person,
                    color: AppColor.greenHK,
                  ),
                  hintText: "Username",
                  hintStyle: Theme.of(context).textTheme.caption.copyWith(
                      fontSize: 17,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w100,
                      color: AppColor.greenHK),
                  fillColor: AppColor.greenHK,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 20, right: 20, top: 10),
              padding: EdgeInsets.only(left: 20, right: 20),
              height: 54,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color(0xffEEEEEE),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 20),
                      blurRadius: 100,
                      color: Color(0xffEEEEEE)),
                ],
              ),
              child: TextFormField(
                style: TextStyle(color: AppColor.greyHK),
                cursorColor: AppColor.greenHK,
                decoration: InputDecoration(
                  focusColor: AppColor.greenHK,
                  prefixIcon: Icon(
                    Icons.vpn_key,
                    color: AppColor.greenHK,
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscureText ? Icons.visibility : Icons.visibility_off,
                      color: AppColor.greenHK,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                    //Icons.remove_red_eye_sharp,
                  ),
                  hintText: "Enter Password",
                  hintStyle: Theme.of(context).textTheme.caption.copyWith(
                      fontSize: 17,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w100,
                      color: AppColor.greenHK),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
                validator: (val) =>
                    val.length < 6 ? 'Password too short.' : null,
                onSaved: (val) => _password = val,
                obscureText: _obscureText,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {
                  // Write Click Listener Code Here
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Center(
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                          color: AppColor.blueHK,
                          fontFamily: 'Poppins',
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Dashboard(),
                    ));
                // Write Click Listener Code Here.
              },
              child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 20, right: 20, top: 50),
                  padding: EdgeInsets.only(left: 8, right: 8),
                  height: 38,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: AppColor.redHK,
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: Color(0xffEEEEEE)),
                    ],
                  ),
                  //button text
                  child: Text(
                    "LOG IN",
                    style: TextStyle(
                        color: AppColor.whiteHK,
                        fontFamily: 'Poppins',
                        fontSize: 21,
                        fontWeight: FontWeight.w800),
                  )),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Forgot Tithing Code?  ",
                      style: TextStyle(
                          color: AppColor.blueHK,
                          fontFamily: 'Poppins',
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                    GestureDetector(
                      child: Text(
                        "Click Here",
                        style: TextStyle(
                            color: AppColor.greenHK,
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      ),
                      onTap: () {
                        // Write Tap Code Here.
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUpScreen(),
                            ));
                      },
                    )
                  ],
                ),
              ),
            )
          ],
        )));
  }
}
