import 'package:flutter/material.dart';
class signup extends StatelessWidget {
  const signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage('https://e0.pxfuel.com/wallpapers/616/599/desktop-wallpaper-porsche-carrera-4s-iphone-iphone-iphone-car-iphone-super-cars-black-car-exotic-cars-iphone-thumbnail.jpg'),
              fit: BoxFit.fill
          ),
        ),
        child: Column(
          children: [SizedBox(height: 80,),
            Row(
              children: [
                Text('Signup',style: TextStyle(color: Colors.white,fontSize: 50),)
              ],
            ),
            SizedBox(height: 40,),

            Row(
              children: [

                Text('Username',style: TextStyle(color: Colors.white),),
              ],
            ),
            SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.horizontal()),
                  prefixIcon:Icon(Icons.account_circle_sharp,color: Colors.white,),label: Text('username',style: TextStyle(color: Colors.grey),)
              ),
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                Text('Email address'
                    '',style: TextStyle(color: Colors.white),),
              ],
            ),
            SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.horizontal()),
                prefixIcon:Icon(Icons.mail,color: Colors.white,),

                label: Text('Email address',style: TextStyle(color: Colors.grey),
                ),
              ),

            ),
            SizedBox(height: 30,),
            Row(
              children: [
                Text('Password'
                    '',style: TextStyle(color: Colors.white),),
              ],
            ),
            SizedBox(height: 10,),

            TextField(
              decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.horizontal()),
                prefixIcon:Icon(Icons.lock
                  ,color: Colors.white,),

                label: Text('Password',style: TextStyle(color: Colors.grey),
                ),
              ),

            ),
            SizedBox(height: 30,),
            Row(
              children: [
                Text('Confirm Password'
                    '',style: TextStyle(color: Colors.white),),
              ],
            ),
            SizedBox(height: 10,),

            TextField(
              decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.horizontal()),
                prefixIcon:Icon(Icons.lock
                  ,color: Colors.white,),

                label: Text('Confirm Password',style: TextStyle(color: Colors.grey),
                ),
              ),

            ),
            SizedBox(height: 50,),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text('Sign up',style: TextStyle(color: Colors.white,fontSize: 20),),style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20),
                ),
                ),minimumSize: Size(300, 60),backgroundColor: Colors.red
            ),

            ),


          ],

        ),
      ),
    );
  }
}