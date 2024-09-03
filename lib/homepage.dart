
import 'package:carwash_project/bookingpage.dart';
import 'package:carwash_project/carpolish.dart';
import 'package:carwash_project/changecartype.dart';
import 'package:carwash_project/classicwash.dart';
import 'package:carwash_project/editprofile.dart';
import 'package:carwash_project/externalwash.dart';
import 'package:carwash_project/firstpage.dart';
import 'package:carwash_project/payment.dart';
import 'package:carwash_project/rinselesswash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    ListPage(),
    profilepage(),
  ];


  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        backgroundColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled, color: Colors.red, size: 30),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list, color: Colors.red, size: 30),
            label: 'List',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.red, size: 30),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: const [
                SizedBox(height: 100),
                Text(
                  'Hey, lekhan',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 250),
                Icon(Icons.notifications, size: 30, color: Colors.orange),
              ],
            ),
            const Text(
              'What do you need help today?',
              style: TextStyle(color: Colors.red, fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                prefixIcon: Icon(Icons.search, color: Colors.green),
                labelText: 'Search for services',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.horizontal(),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2.0, color: Colors.black),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 220,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.deepPurpleAccent,
                border: Border.all(),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  const Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      'Super offer Week',
                      style: TextStyle(color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text(
                        'Car cleaning offer! 60%\n off on full car wash',
                        style: TextStyle(color: Colors.white),
                      ),
                      Image(
                        image: NetworkImage(
                          'https://t3.ftcdn.net/jpg/05/06/30/22/360_F_506302234_eSaJD9b9MOrAjwtUcqnb04g2oWPsgHvW.jpg',
                        ),
                        height: 100,
                        width: 200,
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                    child: const Text(
                      'Grab offer',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Best Services',
                style: TextStyle(color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(child: serviceItem(Icons.directions_car, ' Classic\n washing'),
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>cla()));
                    } ,
                  ),
                  const SizedBox(width: 10),

                  GestureDetector(child: serviceItem(Icons.local_car_wash, ' External\n washing'
                  ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ext()
                      ),
                      );
                    },
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(child: serviceItem(Icons.car_crash_sharp, '  car\n polish'),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>polish()
                      ),
                      );
                    },
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(child: serviceItem(Icons.car_repair, 'Rinseless\n washing'),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Rinse()
                      ),
                      );
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Recommended Shops',
                style: TextStyle(color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              child: recommendedShop(
                'We Care car Wash',
                'Akshay Nagar 1st Block\nBengaluru-560016',
                'https://content.jdmagicbox.com/comp/def_content/car-washing-services/shutterstock-752921533-car-washing-services-2-cm5j6.jpg',
                '20%Off',
              ),onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>CarWashApp()));
            },
            ),
            const SizedBox(height: 10),
            GestureDetector(
              child: recommendedShop(
                'Ultimate car Wash',
                'Vijay Nagar 4th Block\nBengaluru-560016',
                'https://i.pinimg.com/736x/29/ae/18/29ae1842f9b468128aef7ca565080824.jpg',
                '30%Off',
              ),onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>CarWashApp()));
            },
            ),
            const SizedBox(height: 10),
            GestureDetector(
              child: recommendedShop(
                'Crystal car Wash',
                'HSR Layout 2nd stage\nBengaluru-560016',
                'https://5.imimg.com/data5/BW/MP/VN/SELLER-63992132/car-washing-500x500.jpg',
                '15%Off',
              ),onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>CarWashApp()));
            },
            ),
            const SizedBox(height: 10),
            GestureDetector(
              child: recommendedShop(
                'Black Pearl car Wash',
                'Malleshwara 2nd main\nBengaluru-560016',
                'https://img.freepik.com/free-photo/beautiful-car-washing-service_23-2149212221.jpg',
                '10%Off',
              ),onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>CarWashApp()));
            },
            ),
          ],
        ),
      ),
    );
  }

  Widget serviceItem(IconData icon, String label) {
    return Container(
      height: 50,
      width: 110,
      decoration: BoxDecoration(color:Colors.white
        ,
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.red, size: 40),
          Text(
            label,
            style: const TextStyle(color: Colors.black,fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }

  Widget recommendedShop(String name, String address, String imageUrl, String discount) {
    return Container(
      height: 120,
      width: 400,
      decoration: BoxDecoration(
        color: Colors.black12,
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(
                image: NetworkImage(imageUrl),
                height: 100,
                width: 140,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    const Icon(Icons.location_on),
                    Text(address),
                  ],
                ),
                Row(
                  children: [
                    const Icon(Icons.star, color: Colors.amber),
                    const Icon(Icons.star, color: Colors.amber),
                    const Icon(Icons.star, color: Colors.amber),
                    const Icon(Icons.star, color: Colors.amber),
                    const Icon(Icons.star, color: Colors.amber),
                    const SizedBox(width: 20),
                    Text(
                      discount,
                      style: const TextStyle(color: Colors.red),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      Column(
        children: [
          SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.only(left: 110),
            child: Row(
              children: [

                Text('Car Wash List',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.red),
                ),
                SizedBox(width: 62,),
                PopupMenuButton(itemBuilder: (context)=>[
                  PopupMenuItem(child: Text('delete All')
                  )
                ]

                )
              ],
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                " Booking List",
                style: TextStyle(color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),

          SizedBox(height: 20,),
          Container(child:
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ElevatedButton(onPressed: (){

                    }, child: Text('Booking id: 10',
                      style: TextStyle(color: Colors.black,fontSize: 16),
                    ),style: ElevatedButton.styleFrom(backgroundColor: Colors.amber,
                        minimumSize: Size(18, 25)
                    ),
                    ),
                    Text('Toyota Fortuner',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Text('Number :',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                        Text(' KA 02 R 1578',style: TextStyle(fontSize: 15),)
                      ],
                    ),
                    SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          Text('Amount:',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                          ),
                          Text(' 3000',style: TextStyle(fontSize: 20,color: Colors.red,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    )

                  ],
                ),
              ),
              SizedBox(width: 20,),
              Image(image: NetworkImage('https://images.summitmedia-digital.com/topgear/images/2022/08/05/toyota-fortuner-2023-thailand-updates-leader-variant-02-1659658839.jpg'),
                height: 110,width: 200,
              ),
            ],
          ),
            height: 140,width: 400,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                color: Colors.black12,
                border: Border.all(color: Colors.transparent)
            ),
          ),
          SizedBox(height: 20,),
          Container(child:
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ElevatedButton(onPressed: (){

                    }, child: Text('Booking id: 11',
                      style: TextStyle(color: Colors.black,fontSize: 16),
                    ),style: ElevatedButton.styleFrom(backgroundColor: Colors.amber,
                        minimumSize: Size(18, 25)
                    ),
                    ),
                    Text('Tata Harrier',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Text('Number :',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                        Text(' KA 02 Z 6932',style: TextStyle(fontSize: 15),)
                      ],
                    ),
                    SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          Text('Amount:',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                          ),
                          Text(' 2500',style: TextStyle(fontSize: 20,color: Colors.red,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    )

                  ],
                ),
              ),
              SizedBox(width: 20,),
              Image(image: NetworkImage('https://www.theindianwire.com/wp-content/uploads/2020/10/tata-harrier-dark-edition-front-launched-1068x619.jpg'),
                height: 110,width: 200,
              ),
            ],
          ),
            height: 140,width: 400,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                color: Colors.black12,
                border: Border.all(color: Colors.transparent)
            ),
          ),
          SizedBox(height: 20,),
          Container(child:
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ElevatedButton(onPressed: (){

                    }, child: Text('Booking id: 12',
                      style: TextStyle(color: Colors.black,fontSize: 16),
                    ),style: ElevatedButton.styleFrom(backgroundColor: Colors.amber,
                        minimumSize: Size(18, 25)
                    ),
                    ),
                    Text('Kia Seltos',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Text('Number :',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                        Text(' KA 02 N 2557',style: TextStyle(fontSize: 15),)
                      ],
                    ),
                    SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          Text('Amount:',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                          ),
                          Text(' 2500',style: TextStyle(fontSize: 20,color: Colors.red,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    )

                  ],
                ),
              ),
              SizedBox(width: 20,),
              Image(image: NetworkImage('https://i.pinimg.com/736x/5f/33/2d/5f332d3fbad470d3109cab05fb99beb6.jpg'),
                height: 110,width: 200,
              ),
            ],
          ),
            height: 140,width: 400,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                color: Colors.black12,
                border: Border.all(color: Colors.transparent)
            ),
          ),
        ],
      );
  }
}


class profilepage extends StatelessWidget {
  get bookings => null;

  @override
  Widget build(BuildContext context) {
    return
      Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.only(left: 140),
            child: Row(
              children: [

                Text('Profile',style: TextStyle(fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
                ),
                SizedBox(width: 100,),
                PopupMenuButton(itemBuilder: (context)=>[
                  PopupMenuItem(child: Text('Help')
                  )
                ]

                )
              ],
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Container(
              child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Row(
                      children: [
                        CircleAvatar(
                          minRadius: 40,child: Icon(Icons.account_circle,size: 40,),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 15,),
                  Column(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Lekhan',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                      ),  Text('9108106932')
                    ],
                  ),

                ],
              ),
              height: 100,width: 400,
              decoration: BoxDecoration(color: Colors.lightBlue,
                  borderRadius: BorderRadiusDirectional.circular(20)
              ),
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text('Car Type',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)
              ],
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              children: [
                Container(
                  height: 150,width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.horizontal(),border: Border.all(color: Colors.transparent),
                    image: DecorationImage(image: NetworkImage('https://img.freepik.com/premium-photo/sleek-powerful-black-lamborghini-urus-roaming-vector-with-white-background_983420-10034.jpg')

                    ),
                  ),
                ),


                SizedBox(width: 20,),
                Text('SUV',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 50,),
                ElevatedButton(onPressed: (){
           Navigator.push(context, MaterialPageRoute(builder: (context)=>ChangeCarTypePage()));
                }, child: Text('change',style: TextStyle(color: Colors.white),),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.orange,
                      shape: ContinuousRectangleBorder(borderRadius:BorderRadiusDirectional.all(Radius.circular(20))
                      )
                  ),
                )

              ],
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text('Settings',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 10,),

          Row(
            children: [
              ElevatedButton(onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>EditProfilePage()));
              }, child:Icon(Icons.edit,color: Colors.white,),style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),minimumSize: Size(40, 50),backgroundColor: Colors.green
              ),
              ),
              Text('Edit Profile',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
              )
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              ElevatedButton(onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentInformationPage()));
              }, child:Icon(Icons.wallet,color: Colors.white,),style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),minimumSize: Size(40, 50),
                  backgroundColor: Colors.blue
              ),
              ),
              Text('Payment Information',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
              )
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              ElevatedButton(onPressed: (){
    showDialog(
    context: context,
    builder: (BuildContext context) {
    return AlertDialog(
    title: Text('Confirm Logout'),
    content: Text('Are you sure you want to log out?'),
    actions: [
    TextButton(
    child: Text('Yes'),
    onPressed: () {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>car())); // Close the dialog
    },
    ),
    TextButton(
    child: Text('No'),
    onPressed: () {
    Navigator.of(context).pop(); // Close the dialog
    // Add your logout logic here
    },
    ),
    ],
    );
    },
    );
    },



  child:Icon(Icons.logout,color: Colors.white,),style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),minimumSize: Size(40, 50),backgroundColor: Colors.red
              ),
              ),
              Text('Logout',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
              )
            ],
          ),

        ],
      );
  }
}