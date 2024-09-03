import 'package:flutter/material.dart';

class PaymentInformationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment Information',style: TextStyle(fontSize: 25),),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Payment Methods',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Card(
              child: ListTile(
                leading: Icon(Icons.credit_card,color: Colors.white,),
                title: Text('Credit Card',style: TextStyle(color: Colors.white),),
                subtitle: Text('**** **** **** 1234',style: TextStyle(color: Colors.white),),
                trailing: Icon(Icons.edit,color: Colors.white,),
                onTap: () {
                  // Navigate to credit card details/edit page
                },
              ),color: Colors.deepPurpleAccent,
            ),
            SizedBox(height: 10,),
            Card(
              child: ListTile(
                leading: Icon(Icons.account_balance_wallet,color: Colors.white,),
                title: Text('PayPal',style: TextStyle(color: Colors.white),),
                subtitle: Text('user@example.com',style: TextStyle(color: Colors.white),),
                trailing: Icon(Icons.edit,color: Colors.white,),
                onTap: () {
                  // Navigate to PayPal details/edit page
                },
              ),color: Colors.deepPurpleAccent,
            ),
            // Add more payment methods here
          ],
        ),
      ),
    );
  }
}
