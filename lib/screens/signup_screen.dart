import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:hexcolor/hexcolor.dart';
import 'package:zomato_clone/screens/verification_otp_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Material(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.topRight,
                colors: <Color>[
                  HexColor("#cb202d"),
                  HexColor("#ec0c92"),
                ],
                tileMode: TileMode.mirror,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Card(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(15),
                            right: Radius.circular(15),
                          ),
                        ),
                        color: const Color(0x66000000),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 1),
                          child: Text(
                            'Skip',
                            style: TextStyle(fontSize: 15, color: HexColor("#E5E5E5")),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        //create mobile number text field
                        TextField(
                            controller: _phoneController,
                            decoration: const InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(8),
                                right: Radius.circular(8),
                              ),
                            ),
                            hintText: 'Mobile Number',
                            hintStyle: TextStyle(
                              color: Colors.black,
                            ),
                            prefixIcon: Icon(
                              Icons.phone,
                              color: Colors.black,
                            ),
                            filled: true, // Set filled to true
                            fillColor: Colors.white, // Set the background color to white
                          ),
                        ),
                        const SizedBox(height: 20),
                        //create Send OTP button
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              String phoneNumber = _phoneController.text;
                              Navigator.push(context, 
                                MaterialPageRoute(builder: (context) => VerificationOtpScreen(phoneNumber: phoneNumber))
                              );
                             },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.all(15),
                              backgroundColor: Colors.black,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.horizontal(
                                  left: Radius.circular(8),
                                  right: Radius.circular(8),
                                ),
                              ),
                            ),
                            child: const Text('Send OTP', style: TextStyle(color: Colors.white,fontSize: 20)),
                          ),
                        ),
                        const SizedBox(height: 30),
                        const Row(
                          children: [
                            Expanded(
                              child: Divider(
                                color: Color.fromRGBO(196, 196, 196, 1),
                                thickness: 1,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              child: Text(
                                'OR',
                                style: TextStyle(
                                  color: Color.fromRGBO(196, 196, 196, 1),
                                  //fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Divider(
                                color: Color.fromRGBO(196, 196, 196, 1),
                                thickness: 1,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                        //create email text field
                        const TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(8),
                                right: Radius.circular(8),
                              ),
                            ),
                            hintText: 'Contine with Email',
                            hintStyle: TextStyle(
                              color: Colors.black,
                            ),
                            prefixIcon: Icon(
                              Icons.email,
                              color: Colors.black,
                            ),
                            filled: true, // Set filled to true
                            fillColor: Colors.white, // Set the background color to white
                          ),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            //two rectangular buttons facbook and google
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.all(15),
                                  backgroundColor: Colors.white,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.horizontal(
                                      left: Radius.circular(8),
                                      right: Radius.circular(8),
                                    ),
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/facebook.png',
                                      height: 20,
                                      width: 20,
                                    ),
                                    const SizedBox(width: 10),
                                    const Text(
                                      'Facebook',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.all(15),
                                  backgroundColor: Colors.white,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.horizontal(
                                      left: Radius.circular(8),
                                      right: Radius.circular(8),
                                    ),
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/google.png',
                                      height: 20,
                                      width: 20,
                                    ),
                                    const SizedBox(width: 10),
                                    const Text(
                                      'Google',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),                        
                          ],
                        ),
                        const SizedBox(height: 20),
                        const Text('By continuing, you agree to our', style: TextStyle(color: Colors.white)),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Terms of Service?",
                              style: TextStyle(
                              shadows: [
                                Shadow(
                                  color: Colors.white,
                                  offset: Offset(0, -5)
                                )
                              ],
                              color: Colors.transparent,
                              decoration:
                                TextDecoration.underline,
                                decorationColor: Colors.white,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Privacy Policy?",
                              style: TextStyle(
                                shadows: [
                                  Shadow(
                                    color: Colors.white,
                                    offset: Offset(0, -5)
                                  )
                                ],
                                color: Colors.transparent,
                                decoration:
                                  TextDecoration.underline,
                                  decorationColor: Colors.white,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Content Policy?",
                              style: TextStyle(
                                shadows: [
                                  Shadow(
                                      color: Colors.white,
                                      offset: Offset(0, -5))
                                ],
                                color: Colors.transparent,
                                decoration:
                                TextDecoration.underline,
                                decorationColor: Colors.white,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }
    );
  }
}
                 