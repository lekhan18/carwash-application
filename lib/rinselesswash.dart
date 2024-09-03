import 'package:flutter/material.dart';
class Rinse extends StatelessWidget {
  const Rinse({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rinseless wash',style: TextStyle(fontSize: 30,
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
                        child: Image(image: NetworkImage('https://media.licdn.com/dms/image/D4D12AQF8wrDLnpThrw/article-cover_image-shrink_720_1280/0/1701270521216?e=2147483647&v=beta&t=pvS_6gLcBH2g_2h8RdUj3niAXdqn8eNXGbkmfMCLmNc'),
                          height: 100,width: 150,
                        ),),


                      Column(
                        children: [
                          Text('   Ocean car wash',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Row(mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(Icons.location_on_sharp),
                                Text('Mallathalli 4th Block\nBengaluru-560016',style: TextStyle(fontSize: 15),)
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
                        child: Image(image: NetworkImage('https://itscarwash.com/wp-content/uploads/2022/03/Wash-Clean-Your-Car-Without-Water.jpg'),
                          height: 100,width: 150,
                        ),),


                      Column(
                        children: [
                          Text('   Red Cube car wash',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
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
