import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roamad/screens/signup.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            children: [
              OnboardingPage1(),
              OnboardingPage2(),
              OnboardingPage3(),
            ],
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child:
                _buildFloatingButtonWithProgress(), // Button with circular progress bar
          ),
        ],
      ),
    );
  }

  Widget _buildProgressBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (index) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 5),
          width: _currentPage == index ? 20 : 10,
          height: 10,
          decoration: BoxDecoration(
            color:
                _currentPage == index ? const Color(0xFFFF5475) : Colors.grey,
            borderRadius: BorderRadius.circular(5),
          ),
        );
      }),
    );
  }

  Widget _buildFloatingButtonWithProgress() {
    return Stack(
      alignment: Alignment.center, // Center the button inside the progress bar
      children: [
        SizedBox(
          width: 110, // Increased size for the circular progress bar
          height: 110,
          child: CircularProgressIndicator(
            value: (_currentPage + 1) /
                3, // Progress according to the current page
            strokeWidth: 3,
            backgroundColor: const Color(0xFFFFB0BF),
            valueColor: const AlwaysStoppedAnimation<Color>(
                Color(0xFFFF5475)), // Use #FF5475 for the progress bar
          ),
        ),
        SizedBox(
          width: 90, // Size of the button
          height: 90,
          child: FloatingActionButton(
            onPressed: () {
              if (_currentPage < 2) {
                _pageController.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              } else {
                // Handle finish onboarding
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Signup()),
                );
              }
            },
            child: const Icon(
              Icons.arrow_forward,
              size: 30,
              color: Colors.white,
            ),
            backgroundColor: Color(0xFFFF5475), // Use #FF5475 for the button
            shape: const CircleBorder(), // Keep the button circular
          ),
        ),
      ],
    );
  }
}

class OnboardingPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('images/onboarding03.png'), // Replace with your image
          const SizedBox(height: 20),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Combining both texts into one RichText to ensure they're on the same line
                  RichText(
                    // textAlign: TextAlign.center,  // Ensure content is centered
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Ai ',
                          style: GoogleFonts.kronaOne(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: screenWidth *
                                  0.08, // Scale font size based on screen width
                              color: const Color(0xFFFF5475),
                            ),
                          ),
                        ),
                        TextSpan(
                          text: 'based travel planning',
                          style: GoogleFonts.kronaOne(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: screenWidth *
                                  0.08, // Adjust font size for responsiveness
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Full itinerary planning",
                        style: GoogleFonts.kronaOne(
                          textStyle: const TextStyle(
                            fontSize:
                                25.0, // Set your preferred font size and other styles
                            fontWeight: FontWeight.w300,
                            color: Color(0xFFFF5475),
                          ),
                        ),
                      ),
                      Text(
                        "from Accommodation, Transportation, Food, Estimated cost, Rating, Reviews, Videos, Weather, Live updates and much more.",
                        style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                            fontSize:
                                25.0, // Set your preferred font size and other styles
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                      )
                    ]),
              )
            ],
          )
        ],
      ),
    );
  }
}

class OnboardingPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('images/onboarding01.png'), // Replace with your image
          const SizedBox(height: 20),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Combining both texts into one RichText to ensure they're on the same line
                  RichText(
                    // textAlign: TextAlign.center,  // Ensure content is centered
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Travel-Centric ',
                          style: GoogleFonts.kronaOne(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: screenWidth *
                                  0.08, // Scale font size based on screen width
                              color: const Color(0xFFFF5475),
                            ),
                          ),
                        ),
                        TextSpan(
                          text: 'Social media',
                          style: GoogleFonts.kronaOne(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: screenWidth *
                                  0.08, // Adjust font size for responsiveness
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Watch Short videos, Vlogs, Posts, Updates, Public itinerary, Groups and Communities.",
                        style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                            fontSize:
                                25.0, // Set your preferred font size and other styles
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                      )
                    ]),
              )
            ],
          )
        ],
      ),
    );
  }
}

class OnboardingPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('images/onboarding02.png'), // Replace with your image
          const SizedBox(height: 20),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Combining both texts into one RichText to ensure they're on the same line
                  RichText(
                    // textAlign: TextAlign.center,  // Ensure content is centered
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '• Packages ',
                          style: GoogleFonts.kronaOne(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: screenWidth *
                                  0.06, // Scale font size based on screen width
                              color: const Color(0xFFFF5475),
                            ),
                          ),
                        ),
                        TextSpan(
                          text: ' from 700+  travel agencies',
                          style: GoogleFonts.kronaOne(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: screenWidth *
                                  0.05, // Adjust font size for responsiveness
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  RichText(
                    // textAlign: TextAlign.center,  // Ensure content is centered
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '• Scan ',
                          style: GoogleFonts.kronaOne(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: screenWidth *
                                  0.06, // Scale font size based on screen width
                              color: const Color(0xFFFF5475),
                            ),
                          ),
                        ),
                        TextSpan(
                          text: ' and book from 1,200+ websites',
                          style: GoogleFonts.kronaOne(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: screenWidth *
                                  0.05, // Adjust font size for responsiveness
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  RichText(
                    // textAlign: TextAlign.center,  // Ensure content is centered
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '• Plan ',
                          style: GoogleFonts.kronaOne(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: screenWidth *
                                  0.06, // Scale font size based on screen width
                              color: const Color(0xFFFF5475),
                            ),
                          ),
                        ),
                        TextSpan(
                          text: ' with friends',
                          style: GoogleFonts.kronaOne(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: screenWidth *
                                  0.05, // Adjust font size for responsiveness
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  RichText(
                    // textAlign: TextAlign.center,  // Ensure content is centered
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '• Budget ',
                          style: GoogleFonts.kronaOne(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: screenWidth *
                                  0.06, // Scale font size based on screen width
                              color: const Color(0xFFFF5475),
                            ),
                          ),
                        ),
                        TextSpan(
                          text: ' Management.',
                          style: GoogleFonts.kronaOne(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: screenWidth *
                                  0.05, // Adjust font size for responsiveness
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  RichText(
                    // textAlign: TextAlign.center,  // Ensure content is centered
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'and ',
                          style: GoogleFonts.kronaOne(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: screenWidth *
                                  0.05, // Adjust font size for responsiveness
                              color: Colors.black,
                            ),
                          ),
                        ),
                        TextSpan(
                          text: 'much more. ',
                          style: GoogleFonts.kronaOne(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: screenWidth *
                                  0.06, // Scale font size based on screen width
                              color: const Color(0xFFFF5475),
                            ),
                          ),
                        ),
                        
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
         ],
      ),
    );
  }
}
