import 'package:flutter/material.dart';
class ext extends StatelessWidget {
  const ext({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    title: Text('External Wash',style: TextStyle(fontSize: 30,
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
                   child: Image(image: NetworkImage('https://shreekanishkaamotors.com/images/services/water-wash/water-wash-service.webp'),
                    height: 100,width: 150,
                     ),),


                    Column(
                      children: [
                        Text('   National car wash',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                        ),
                        Row(mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.location_on_sharp),
                            Text('Vijaynagar 2nd stage\nBengaluru-560016',style: TextStyle(fontSize: 15),)
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
                        child: Image(image: NetworkImage('https://i.pinimg.com/564x/60/fa/70/60fa707bbf55720d395b748acd48b3f8.jpg'),
                          height: 100,width: 150,
                        ),),


                      Column(
                        children: [
                          Text('   Golden car wash',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                          ),
                          Row(mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.location_on_sharp),
                              Text('    Whitefield\nBengaluru-560016',style: TextStyle(fontSize: 15),)
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
