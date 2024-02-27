
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:tsedey_bank/utils/constants.dart';

class OnbordingScreen extends StatelessWidget {
  final Color kDarkBlueColor = const Color(0xFF053149);

  const OnbordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return OnBoardingSlider(
      finishButtonText: 'Get Started',
      onFinish: () {
        // Navigator.push(
        //   context,
        //   CupertinoPageRoute(
        //     builder: (context) => const RegisterPage(),
        //   ),
        // );
      },
      // addButton: false,
      finishButtonStyle: const FinishButtonStyle(
        backgroundColor: kPrimaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(100.0,),),),
      ),
      skipTextButton: const Text(
        'Skip',
        style: TextStyle(
          fontSize: 16,
          color: kPrimaryColor,
          fontWeight: FontWeight.w600,
        ),
      ),
      trailing: const Text(
        'Login',
        style: TextStyle(
          fontSize: 16,
          color:kPrimaryColor,
          fontWeight: FontWeight.w600,
        ),
      ),
      trailingFunction: () {
        // Navigator.push(
        //   context,
        //   CupertinoPageRoute(
        //     builder: (context) => const LoginPage(),
        //   ),
        // );
      },
      controllerColor:  kPrimaryColor,
      totalPage: 4,
      headerBackgroundColor: Colors.white,
      pageBackgroundColor: Colors.white,
      background: [
        Image.asset(
          'assets/tsedey_bank_logo.png',
          height: 400,
        ), Image.asset(
          'assets/tsedey_bank_logo.png',
          height: 400,
        ),
        Image.asset(
          'assets/tsedey_bank_logo.png',
          height: 400,
        ),
        Image.asset(
          'assets/tsedey_bank_logo.png',
          height: 400,
        ),
      ],
      speed: 1.8,
      pageBodies: [
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 400,
              ),
              Text(
                'ፀደይ ባንክ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: kDarkBlueColor,
                  fontSize: 50.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'Tsedey Bank',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 45.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              // Container(
              //   width: 64, // Adjust width and height as needed
              //   height: 64,
              //   decoration: const BoxDecoration(
              //     shape: BoxShape.circle,
              //     color: Color(0xFF1FC2C2), // Background color
              //   ),
              //   child: const Icon(
              //     Icons.arrow_forward_ios,
              //     size: 30,
              //     color: Colors.white, // Icon color
              //   ),
              // ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 400,
              ),
              Text(
                'Receive Money From Anywhere',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: kDarkBlueColor,
                  fontSize: 38.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 20,
              ),

            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 400,
              ),
              Text(
                'Spend money and track your expense',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: kDarkBlueColor,
                  fontSize: 38.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 20,
              ),

            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 400,
              ),
              Text(
                'Safe and Trusted Easy Banking',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: kDarkBlueColor,
                  fontSize: 38.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 20,
              ),

            ],
          ),
        ),
      ],
    );
  }
}