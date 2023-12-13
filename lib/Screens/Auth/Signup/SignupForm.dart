import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sl_music/Screens/Auth/Login/LoginScreen.dart';
import 'package:sl_music/colors/colors.dart';
import 'package:sl_music/components/auth_button.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  @override
  Widget build(BuildContext context) {
    bool isChecked = true;
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    final usernameController = TextEditingController();

    final _formkey = GlobalKey<FormState>();

    return Form(
        key: _formkey,
        child: Column(
          children: [
            //name field
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              child: TextField(
                controller: usernameController,
                decoration: InputDecoration(
                  labelText: 'Username',
                  hintText: 'Enter your username',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14.0),
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.blue, width: 2.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 24.0,
                    horizontal: 18.0,
                  ),
                  filled: true,
                  fillColor: Colors.grey[600], // Set the background color
                  hintStyle: GoogleFonts.poppins(
                    color: Colors.grey[900],
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ), // Set the hint text color
                ),
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500, // Set the text color
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            //email field

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Email/Phone',
                  hintText: 'Enter your Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14.0),
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.blue, width: 2.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 24.0,
                    horizontal: 18.0,
                  ),
                  filled: true,
                  fillColor: Colors.grey[600], // Set the background color
                  hintStyle: GoogleFonts.poppins(
                    color: Colors.grey[900],
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ), // Set the hint text color
                ),
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500, // Set the text color
                ),
              ),
            ),

            //password field
            const SizedBox(
              height: 16,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              child: TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Enter your Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14.0),
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.blue, width: 2.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 24.0,
                    horizontal: 18.0,
                  ),
                  filled: true,
                  fillColor: Colors.grey[600], // Set the background color
                  hintStyle: GoogleFonts.poppins(
                    color: Colors.grey[900],
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ), // Set the hint text color
                ),
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500, // Set the text color
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Checkbox(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          5.0), // Set the border radius for the checkbox
                      side: const BorderSide(
                          color: Colors.white), // Set the border color
                    ),
                    side: const BorderSide(
                      color: Colors.white,
                    ),
                    checkColor: Colors.blue,
                    activeColor: Colors.white,
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value ?? false;
                      });
                    }),

                //rich text
                RichText(
                  text: TextSpan(
                    text: 'I agree with the ',
                    style: GoogleFonts.poppins(
                        color: whiteColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        fontStyle: FontStyle.normal),
                    children: const <TextSpan>[
                      TextSpan(
                        text: 'Terms and condition',
                        style: TextStyle(color: mainHeading),
                      ),
                      TextSpan(text: ' and\n '),
                      TextSpan(
                        text: 'Privacy Policy',
                        style: TextStyle(color: mainHeading),
                      ),
                      TextSpan(text: '.'),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),

            Button(text: "Create Account", onTap: () {}),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Do you have account?",
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        color: whiteColor),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                    },
                    child: Text(
                      "Sign In",
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          color: mainHeading),
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
