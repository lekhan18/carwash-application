
import 'package:carwash_project/signin.dart';
import 'package:flutter/material.dart';
class car extends StatelessWidget {
  const car({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:
      Column(crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 30,),
            Center(child: Text('Xtreme',style: TextStyle(color: Colors.red,fontSize: 80,
                fontWeight: FontWeight.bold
            ),
            ),
            ),
            Text('car wash',style: TextStyle(fontSize: 80,color: Colors.white,fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),

            Text('we have made it easy for you to book your car wash \n and detailing services through our platform',style: TextStyle(color: Colors.white,
                fontSize: 16
            ),
            ),
            SizedBox(height: 30,),
            Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: Image(image: NetworkImage('https://img.goodfon.com/wallpaper/big/7/e9/ai-art-muscle-car-road-bokeh-lights.jpg'),

                  height: 300,
                )
                )

              ],
            ),
            SizedBox(height: 50,),
            ElevatedButton(onPressed: (){
           Navigator.push(context, MaterialPageRoute(builder: (context)=>next()));
            }, child: Text('Get Started',style: TextStyle(fontSize: 40,
              color: Colors.white,),
            ),style: ElevatedButton.styleFrom(
                shape: ContinuousRectangleBorder(side: BorderSide(),borderRadius: BorderRadius.circular(30)
                ),minimumSize: Size(380, 50),
                backgroundColor: Colors.red
            ),
            )
          ]
      ),
    );
  }
}