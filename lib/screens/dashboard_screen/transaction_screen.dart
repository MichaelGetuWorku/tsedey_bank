import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:tsedey_bank/screens/dashboard_screen/transaction_detail.dart';

import '../../utils/constants.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({super.key});

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
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: const Expanded(
                    child: SizedBox(
                      height: 145,
                      child: Builder(builder: _buildTransactionActivities),
                    ),
                  )),
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
                color: Colors.black.withOpacity(0.2),
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
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return TransactionDetail();
                },
              ));
            },
          ),
        );
      },
    ),
  );
}
