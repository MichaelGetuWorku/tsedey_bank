import 'dart:convert';

import 'package:flutter/material.dart';

import '../../utils/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                  height: 250,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/logo_name.png'),
                          const Spacer(),
                          const Icon(Icons.notifications),
                          const Icon(
                            Icons.linear_scale_sharp,
                          ),
                          const Icon(Icons.power_settings_new),
                        ],
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Your Balance',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '68,889 Birr ',
                                style: TextStyle(
                                  fontSize: 44,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Icon(Icons.remove_red_eye_outlined)
                            ],
                          ),
                          Text(
                            'Acc Number: 123456789',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  // Adjust the value as needed
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.8),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.transfer_within_a_station,
                          color: kSecondaryColor,
                          size: 35,
                        ),
                        Text('Transfer')
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.login,
                          color: kSecondaryColor,
                          size: 35,
                        ),
                        Text('Top Up')
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.shopping_bag,
                          color: kSecondaryColor,
                          size: 35,
                        ),
                        Text('Withdraw')
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.home_work_outlined,
                          color: kSecondaryColor,
                          size: 35,
                        ),
                        Text('Other Banks')
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.white,
                height: 500,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Image.asset('assets/Banner.png'),
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Recent Transactions',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Spacer(),
                          Text('See all',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: kSecondaryColor,
                              )),
                          Icon(
                            Icons.arrow_forward_outlined,
                            color: kSecondaryColor,
                          )
                        ],
                      ),
                    ),
                    const Expanded(
                      child: SizedBox(
                        height: 145,
                        child: Builder(builder: _buildTransactionActivities),
                      ),
                    )
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

Widget _buildTransactionActivities(BuildContext context) {
  String jsonContent = '''
[
    {
    "id": 1,
    "name": "ATM Cash Withdrawal",
    "date": "2022-12-12",
    "type": "Credit",
    "amount": "-1000"
  },
  {
    "id": 2,
    "name": "ATM Cash Withdrawal",
    "date": "2023-01-01",
    "type": "Debit",
    "amount": "-10000"

  },
  {
    "id": 3,
    "name": "ATM Cash Withdrawal",
    "date": "2023-02-15",
    "type": "Debit",
        "amount": "-1000"

  },
  {
    "id": 4,
    "name": "Bonus Received",
    "date": "2023-03-05",
    "type": "Credit",
        "amount": "10"

  },
   {
    "id": 6,
    "name": "ATM Withdrawal",
    "date": "2022-12-12",
    "type": "Debit",
        "amount": "500"

  },
  {
    "id": 7,
    "name": "Gas Payment",
    "date": "2023-01-01",
    "type": "Debit",
        "amount": "-7000"

  },
  {
    "id": 8,
    "name": "DSTV",
    "date": "2023-02-15",
    "type": "Debit",
        "amount": "-900"

  }
 
]
''';

  List<Map<String, dynamic>> transactions =
      List<Map<String, dynamic>>.from(json.decode(jsonContent));

  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: ListView.separated(
      padding: const EdgeInsets.all(0),
      separatorBuilder: (_, b) => const Divider(
        height: 14,
        color: Colors.transparent,
      ),
      itemCount: transactions.length,
      itemBuilder: (BuildContext context, int index) {
        var transaction = transactions[index];

        return Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color:  Colors.black.withOpacity(0.2),
                blurRadius: 48,
                offset: const Offset(2, 8),
                spreadRadius: -16,
              ),
            ],
            color: Colors.white,
          ),
          child: ListTile(
            contentPadding: const EdgeInsets.only(
              left: 0,
              top: 0,
              bottom: 0,
              right: 6.18,
            ),
            leading: const CircleAvatar(
              radius: 25,
              backgroundColor: Color.fromARGB(255, 236, 105, 134),
              child: Icon(
                Icons.keyboard_arrow_up_rounded,
                color: Colors.white,
                size: 40,
              ),
            ),
            title: Text(
              transaction['name'],
              style: const TextStyle(
                fontSize: 16.5,
                color: kPrimaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Text(
                transaction['date'],
                style: const TextStyle(fontSize: 12, color: Color(0xff929BAB)),
              ),
            ),
            trailing: Text(
              transaction['amount'],
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: kPrimaryColor,
              ),
            ),
            onTap: () {},
          ),
        );
      },
    ),
  );
}
