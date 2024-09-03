import 'package:flutter/material.dart';
class polish extends StatelessWidget {
  const polish({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Car Polish',style: TextStyle(fontSize: 30,
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
                      ClipRRect(borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: Image(image: NetworkImage('https://www.shutterstock.com/image-photo/car-detailing-polishing-concept-hands-600nw-1703968147.jpg'),
                          height: 100,width: 150,
                        ),),


                      Column(
                        children: [
                          Text('   Vanish car wash',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Row(mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(Icons.location_on_sharp),
                                Text('Mallathalli 4th Block\n Bengaluru-560016',style: TextStyle(fontSize: 15),)
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
                        child: Image(image: NetworkImage('https://grandcity.com/wp-content/uploads/2021/05/polishcarimg01.png'),
                          height: 100,width: 150,
                        ),),


                      Column(
                        children: [
                          Text('    Ice Blue car wash',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                          ),
                          Row(mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.location_on_sharp),
                              Text('    K R Market\nBengaluru-560016',style: TextStyle(fontSize: 15),)
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
        ],
      ),
    );
  }
}
