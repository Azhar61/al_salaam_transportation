import 'package:flutter/material.dart';
import 'package:salaam/App_Theme/app_theme_data.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //boolean variable to keep track of whether the password is hidden or shown.
  bool _isPasswordHidden = true;

  // Creating TextEditingController objects for email and password fields
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // Getting the size of the screen
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          // Setting the background image
          child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage('assets/images/car.png'))),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 35, bottom: 20),
                // Adding app logo to the screen
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: size.height * 0.20,
                    width: size.width * 0.40,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage('assets/images/logo.png'))),
                  ),
                ),
              ),
              // Adding the text "Welcome! مرحبا" to the screen
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  'Welcome!     مرحبا',
                  style: TextStyle(
                      fontFamily: AppTheme.h1HeadingFont,
                      color: AppTheme.textColor,
                      fontSize: 28),
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              // Adding the text "TO AL SALAAM TRANSPORTATION" to the screen
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  'TO AL SALAAM TRANSPORTATION',
                  style: TextStyle(
                      fontFamily: AppTheme.h2HeadingFont,
                      color: AppTheme.textColor,
                      fontSize: 28),
                ),
              ),

              //Text Fields
              // Adding email and password text fields to the screen
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 14, 10, 4),
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(7)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: TextField(
                            controller: _emailController,
                            style: const TextStyle(
                                fontFamily: AppTheme.appTextFont,
                                color: Colors.black),
                            decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Enter your email here',
                                hintStyle: TextStyle(
                                    fontFamily: AppTheme.appTextFont,
                                    color: AppTheme.placeholderTextColor)),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      //password
                      Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(7)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: TextField(
                            obscureText: _isPasswordHidden,
                            controller: _passwordController,
                            style: const TextStyle(
                                fontFamily: AppTheme.appTextFont,
                                color: Colors.black),
                            decoration: InputDecoration(
                                suffixIcon: IconButton(
                                  //setting icon of the button according to the value of _isPasswordHidden variable
                                  icon: Icon(
                                    _isPasswordHidden
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                    color: AppTheme.placeholderTextColor,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      //set state with changing boolean value of _isPasswordHidden variable
                                      _isPasswordHidden = !_isPasswordHidden;
                                    });
                                  },
                                ),
                                border: InputBorder.none,
                                hintText: 'Password',
                                hintStyle: TextStyle(
                                    fontFamily: AppTheme.appTextFont,
                                    color: AppTheme.placeholderTextColor)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // AddingCreate account text and login button to the screen
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        //Create Account Action
                      },
                      child: const Text(
                        'Dont have an account?\nCreate Account',
                        style: TextStyle(
                            fontFamily: AppTheme.appTextFont,
                            color: AppTheme.textColor,
                            fontSize: 14),
                      ),
                    ),
                    const Expanded(child: SizedBox()),
                    //Login Button
                    ElevatedButton(
                        style: ButtonStyle(
                          elevation: MaterialStateProperty.all<double>(8),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              AppTheme.buttonColor),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                          ),
                        ),
                        onPressed: () {
                          //Button Functionality
                        },
                        child: const Text(
                          "Login",
                          style: TextStyle(
                              fontFamily: AppTheme.h2HeadingFont,
                              fontSize: 17,
                              color: AppTheme.textColor),
                        ))
                  ],
                ),
              ),

              //Adding Forgot Password text and other social and phone signup buttons
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
                child: Container(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          //Action to the forget password
                        },
                        child: const Text(
                          "Forgot Password?",
                          style: TextStyle(
                              fontFamily: AppTheme.appTextFont,
                              fontSize: 16,
                              color: AppTheme.textColor),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      //Headind for social buttons
                      const Text(
                        "Use a Social Platforms to Login",
                        style: TextStyle(
                          fontFamily: AppTheme.appTextFont,
                          color: AppTheme.secondaryTextColor,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      //SOcial  Login Buttons Rows
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //Google Button
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: () {
                                //Google Login
                              },
                              child: CircleAvatar(
                                radius: 25,
                                backgroundColor: Colors.white,
                                child: SvgPicture.asset(
                                    'assets/social_svgs/google.svg'),
                              ),
                            ),
                          ),
                          Padding(
                            //Apple Button
                            padding: const EdgeInsets.all(8.0),

                            child: GestureDetector(
                              onTap: () {
                                // Apple Login
                              },
                              child: CircleAvatar(
                                radius: 25,
                                backgroundColor: Colors.white,
                                child: SvgPicture.asset(
                                    'assets/social_svgs/apple.svg'),
                              ),
                            ),
                          ),
                          //Phone Button
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: () {
                                //Phone Login
                              },
                              child: CircleAvatar(
                                radius: 25,
                                backgroundColor: Colors.white,
                                child: SvgPicture.asset(
                                    'assets/social_svgs/phone.svg'),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
