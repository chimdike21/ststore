import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisSize:MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/speaker.png',
              height:250,

            ),
            const SizedBox(height: 72),
            const Text(
              'Welcome to STStore!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                fontFamily: 'DMSans',
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height:16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 45),
              child: Text(
                'With long experience in the audio industry, we create the best quality products',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                  fontFamily: 'DMSans',
                ),
                textAlign: TextAlign.center,
              ),
             
            ),

            const SizedBox(height:48),
            SizedBox(
              width:305,
              height: 54,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor:const Color(0xFFC6AB59),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                  // Navigate to the next screen
                  Navigator.pushReplacementNamed(context, '/home');
                }, 
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'GET STARTED',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontFamily: 'DMSans',
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size:14,
                    ),

                  ],
                )
              )
            )
          ]
        )
      )
    );
  }
}