
import 'package:carwash_project/homepage.dart';
import 'package:carwash_project/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class next extends StatelessWidget {
  const next({super.key});

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
            Column(
              children: [
                Text('Login',style: TextStyle(color: Colors.white,fontSize: 50),)
              ],
            ),
            SizedBox(height: 70,),

            Row(
              children: [

                Text('Username',style: TextStyle(color: Colors.white,fontSize: 20),),
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
                Text('Password'
                    ,style: TextStyle(color: Colors.white,fontSize: 20),),
              ],
            ),
            SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.horizontal()),
                prefixIcon:Icon(Icons.lock,color: Colors.white,),suffixIcon: Icon(Icons.remove_red_eye_outlined),
                label: Text('Password',style: TextStyle(color: Colors.grey),
                ),
              ),

            ),
            Align(alignment: Alignment.centerRight,child: TextButton(
              onPressed: (){

              },child: Text('Forgot paasword?'),
            ),
            ),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
            }, child: Text('Sign in',style: TextStyle(color: Colors.white,fontSize: 20),),style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20),
                ),
                ),minimumSize: Size(300, 60),backgroundColor: Colors.red
            ),

            ),
            Align(alignment: Alignment.center,child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?",style: TextStyle(color: Colors.white,fontSize: 16),
                ),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>signup()));
                }, child: Text('Signup',style: TextStyle(color: Colors.red,fontSize: 16),))
              ],
            ),)

          ],

        ),
      ),
    );
  }
}