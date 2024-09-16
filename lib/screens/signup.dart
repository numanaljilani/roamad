import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Sign In"),
      // backgroundColor: Colors.white, // Customize your app bar color
      // ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title Text
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sign In',
                    // textAlign: Te,
                    style: GoogleFonts.kronaOne(
                        textStyle: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w500)),
                  ),
                  Text(
                    'So we can curated content for you',
                    style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w300)),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),

            // Email/Phone number Input
            TextField(
              decoration: InputDecoration(
                labelText: 'Email or Phone Number',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30), // Rounded corners
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Password Input
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30), // Rounded corners
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Forgot Password
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  // Handle forgot password action
                },
                child: Text(
                  'Forgot Password?',
                  style: GoogleFonts.roboto(
                      textStyle:
                          TextStyle(color: Colors.black38, fontSize: 17)),
                ),
              ),
            ),
            SizedBox(height: 30),

            // Login Button
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFFF5475), // Background color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30), // Rounded corners
                ),
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 10),
                  Text('Sign in',
                      style: GoogleFonts.kronaOne(
                          textStyle: TextStyle(color: Colors.white))),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Divider with "or" text
            Row(
              children: <Widget>[
                Expanded(
                  child: Divider(
                    thickness: 1,
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text('or'),
                ),
                Expanded(
                  child: Divider(
                    thickness: 1,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),

            // Gmail Login Button
            ElevatedButton(
              onPressed: () {
                // Handle Gmail login action
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white, // Background color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30), // Rounded corners
                ),
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.mail, color: Colors.black),
                  SizedBox(width: 10),
                  Text('Login with Gmail',
                      style: TextStyle(color: Colors.black)),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Facebook Login Button
            ElevatedButton(
              onPressed: () {
                // Handle Facebook login action
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white, // Background color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30), // Rounded corners
                ),
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.facebook, color: Colors.black),
                  SizedBox(width: 10),
                  Text('Login with Facebook',
                      style: TextStyle(color: Colors.black)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
