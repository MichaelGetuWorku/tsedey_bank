import 'package:flutter/material.dart';

import '../../utils/constants.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [kPrimaryColor, kTertiaryColor, kSecondaryColor],
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                child: SizedBox(
                  height: 130,
                  width: double.infinity,
                  child: Column(
                    children: [
                      const Text(
                        'Services',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Image.asset('assets/logo_name.png'),
                    ],
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: GridView.count(
                  crossAxisCount: 3, // Adjust the number of columns as needed
                  children: [
                    _buildCard('Transfer to Tsedey Bank Account',
                        Icons.double_arrow_outlined),
                    _buildCard('Transfer to Own Account', Icons.refresh),
                    _buildCard(
                        'Transfer to Other Bank', Icons.maps_home_work_rounded),
                    _buildCard('Manage Beneficiary', Icons.credit_card),
                    _buildCard('Cash Services', Icons.monetization_on),
                    _buildCard('Load to TeleBirr', Icons.cached_sharp),
                    _buildCard('Utility Paymnet', Icons.receipt),
                    _buildCard('Loan Services', Icons.group),
                    _buildCard('Cheque Services', Icons.create_rounded),
                    _buildCard('Standing Order', Icons.bookmark_border),
                    _buildCard('Transfer to M-PESA', Icons.map),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildCard(String name, IconData iconData) {
  return GestureDetector(
    onTap: () {
      // Handle onTap event
    },
    child: Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            iconData,
            color: kPrimaryColor,
          ),
          Text(
            name,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 12,
              color: kPrimaryColor,
            ),
          ),
        ],
      ),
    ),
  );
}
