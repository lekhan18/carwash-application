import 'package:flutter/material.dart';
class cla extends StatelessWidget {
  const cla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Classic Wash',style: TextStyle(fontSize: 30,
            fontWeight: FontWeight.bold,
            color:Colors.black),
        ),backgroundColor: Colors.tealAccent,
        centerTitle: true,
        actions: [
          PopupMenuButton(itemBuilder: (context)=>[
            PopupMenuItem(child: Text('delete All')
            )
          ]

          )
        ],

      ),
      body:
      Column(
        children: [SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,

                    children: [
                      ClipRRect(borderRadius: BorderRadius.all(Radius.circular(20)),
                        child: Image(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSN7hM3SyxbXikC7MMK0o0mio3yqazVFBQy3A&s'),
                          height: 100,width: 150,
                        ),),


                      Column(
                        children: [
                          Text('   Ocean car wash',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                          ),
                          Row(mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 25),
                                child: Icon(Icons.location_on_sharp),
                              ),
                              Text('Mallathalli 4th Block\nBengaluru-560016',style: TextStyle(fontSize: 15),)
                            ],
                          ),
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              Icon(Icons.star,color:Colors.orange ,),Icon(Icons.star,color:Colors.orange ,),Icon(Icons.star,color:Colors.orange ,),Icon(Icons.star,color:Colors.orange ,),

                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                height:120 ,width: 420,
                decoration: BoxDecoration(color: Colors.black12,
                    borderRadius: BorderRadiusDirectional.circular(20)

                )

            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,

                    children: [
                      ClipRRect(borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: Image(image: NetworkImage('https://media.istockphoto.com/id/1409891828/photo/car-wash-employee-thoroughly-washes-a-modern-car.webp?b=1&s=170667a&w=0&k=20&c=kY1JMfqQKNHZhyRDiqbQv5Y7ZvAyJOsBnVJ5YxvfAGQ='),
                          height: 100,width: 150,
                        ),),


                      Column(
                        children: [
                          Text('     Red Cube car wash',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Row(mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(Icons.location_on_sharp),
                                Text('  K R Market\nBengaluru-560016',style: TextStyle(fontSize: 15),)
                              ],
                            ),
                          ),
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              Icon(Icons.star,color:Colors.orange ,),Icon(Icons.star,color:Colors.orange ,),Icon(Icons.star,color:Colors.orange ,),Icon(Icons.star,color:Colors.orange ,),

                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                height:120 ,width: 420,
                decoration: BoxDecoration(color: Colors.black12,
                    borderRadius: BorderRadiusDirectional.circular(20)

                )

            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,

                    children: [
                      ClipRRect(borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: Image(image: NetworkImage('https://img.freepik.com/free-photo/professional-washer-blue-uniform-washing-luxury-car-with-water-gun-open-air-car-wash_496169-333.jpg'),
                          height: 100,width: 150,
                        ),),


                      Column(
                        children: [
                          Text('   Splash Services',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Row(mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(Icons.location_on_sharp),
                                  Text('Kormangla 3rd Block\n Bengaluru-560016',style: TextStyle(fontSize: 15),)
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              Icon(Icons.star,color:Colors.orange ,),Icon(Icons.star,color:Colors.orange ,),Icon(Icons.star,color:Colors.orange ,),Icon(Icons.star,color:Colors.orange ,),

                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                height:120 ,width: 420,
                decoration: BoxDecoration(color: Colors.black12,
                    borderRadius: BorderRadiusDirectional.circular(20)

                )

            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,

                      children: [
                        ClipRRect(borderRadius: BorderRadius.all(Radius.circular(10)),
                          child: Image(image: NetworkImage('https://www.shutterstock.com/image-photo/worker-washing-red-car-sponge-600nw-1859193349.jpg'),
                            height: 100,width: 150,
                          ),),


                        Column(
                          children: [
                            Text('   Bubbles car wash',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 25),
                              child: Row(mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(Icons.location_on_sharp),
                                  Text('RR Nagar BEML Layout\nBengaluru-560016',style: TextStyle(fontSize: 15),)
                                ],
                              ),
                            ),
                            SizedBox(height: 5,),
                            Row(
                              children: [
                                Icon(Icons.star,color:Colors.orange ,),Icon(Icons.star,color:Colors.orange ,),Icon(Icons.star,color:Colors.orange ,),Icon(Icons.star,color:Colors.orange ,),

                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                ),

                height:120 ,width: 420,
                decoration: BoxDecoration(color: Colors.black12,
                    borderRadius: BorderRadiusDirectional.circular(20)

                )

            ),
          ),
        ],
      ),
    );
  }
}
