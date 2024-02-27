import 'package:flutter/material.dart';

import '../../utils/constants.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [kPrimaryColor, kTertiaryColor, kSecondaryColor],
            ),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                top: MediaQuery.of(context).size.height * 0.25,
                left: 0.0,
                right: 0.0,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.8,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.0),
                      topRight: Radius.circular(50.0),
                    ),
                  ),
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Center(
                        child: CircleAvatar(
                          radius: 80.0,
                          backgroundColor: Colors.white,
                          backgroundImage:
                              AssetImage('assets/tsedey_bank_logo.png'),
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      const Text(
                        'Activate your Mobile Banking',
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text:
                                  'Enter the four-digit code that was sent to you at\n',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ), // Change color as needed
                            ),
                            TextSpan(
                              text: '+251 965 17 18 19',
                              style: TextStyle(
                                color: kSecondaryColor,
                                fontSize: 15,
                              ), // Change color as needed
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: List.generate(
                          6,
                          (index) => Container(
                            width: 50.0,
                            height: 60.0,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: const Text(
                              '-',
                              style: TextStyle(fontSize: 24.0),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                      const Text(
                        "Didn't get the code?",
                        style: TextStyle(
                          color: kSecondaryColor,
                        ), // Change color as needed
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            // Add onPressed function here
                          },
                          style: ElevatedButton.styleFrom(
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    15.0,
                                  ),
                                ),
                              ),
                              backgroundColor: kPrimaryColor,
                              padding: const EdgeInsets.all(20)),
                          child: const Text(
                            'Continue',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
