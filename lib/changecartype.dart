import 'package:flutter/material.dart';

class ChangeCarTypePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Change Car Type',style: TextStyle(fontSize: 25),),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select New Car Type',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ListTile(
              title: Text('SUV',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.green),),
              onTap: () {
                // Add your logic to handle car type change
                Navigator.pop(context, 'SUV');
              },
            ),
            ListTile(
              title: Text('Sedan',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.green),),
              onTap: () {
                // Add your logic to handle car type change
                Navigator.pop(context, 'Sedan');
              },
            ),
            ListTile(
              title: Text('Hatchback',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.green),),
              onTap: () {
                // Add your logic to handle car type change
                Navigator.pop(context, 'Hatchback');
              },
            ),
            // Add more car types as needed
          ],
        ),
      ),
    );
  }
}
