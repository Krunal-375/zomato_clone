import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter/material.dart';
import 'package:zomato_clone/screens/home_screen.dart';

class VerificationOtpScreen extends StatefulWidget {
  final String phoneNumber;
  const VerificationOtpScreen({super.key, required this.phoneNumber});

  @override
  State<VerificationOtpScreen> createState() => _VerificationOtpScreenState();
}

class _VerificationOtpScreenState extends State<VerificationOtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text('We have sent a verification code to',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
            )),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Center(
                  child: Text(widget.phoneNumber),
                ),
                const SizedBox(height: 10),
                OtpTextField(
                  numberOfFields: 5,
                  borderColor: Colors.black,
                  //set to true to show as box or false to show as dash
                  showFieldAsBox: true, 
                  //runs when a code is typed in
                  onCodeChanged: (String code) {
                    //handle validation or checks here           
                  },
                  //runs when every textfield is filled
                  onSubmit: (String verificationCode){
                    showDialog(
                      context: context,
                      builder: (context){
                        return AlertDialog(
                          title: const Text("Verification Code"),
                          content: Text('Code entered is $verificationCode'),
                        );
                      }
                    );
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context) => const HomeScreen())
                              );
                    
                  }, // end onSubmit
                ),
              ],
            ),//1st
            Column(
              children: [
                //create a timer to count down till 20s
                const Text('00:19'),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Didn\'t receive the code?'),
                    //create a textbutton 'resend now'
                    TextButton(
                      onPressed: () {
                        //resend code
                      },
                      child: const Text('Resend now', style: TextStyle(color: Colors.grey)),
                    ),
                  ],
                )
                
          ])
          ],
        );
        },
    ),
    );
  }
}