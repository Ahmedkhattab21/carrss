import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool switchval=false;
  int number=0;
  double slideval=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.cyanAccent,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.cyanAccent,
        title: Text("Hello,Mark",style: TextStyle(color: Colors.black,fontSize: 25),),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.notifications,color: Colors.black,),
              SizedBox(width: 15,),
              CircleAvatar(
                backgroundColor: Colors.black,
              ),
            ],
          ),
          SizedBox(width: 10,),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                color: Colors.cyanAccent,
            ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RichText(text: TextSpan(
                      children: [
                        TextSpan(
                          text: "LiL NasX \n",
                          style: TextStyle(color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: "hey broo",
                          style: TextStyle(color: Colors.black87)
                        ),

                      ]),),
                  InkWell(onTap:(){},child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,color: Colors.white,),
                      child: Icon(Icons.play_arrow,size: 40,))),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("<<"),
                      Slider(
                          value: slideval, onChanged: (x){
                        setState(() {
                          slideval=x;
                        });
                      },
                          activeColor:Colors.black,
                          inactiveColor:Colors.white
                      ),
                      Text(">>"),
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: 1700,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black87,
                borderRadius: BorderRadius.only(topRight: Radius.circular(201),topLeft: Radius.circular(201)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(height: 20,),
                  Container(
                    height:5,
                    width: 15,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 20,),
                  RichText(
                    textAlign:TextAlign.center,
                    text: TextSpan(
                      children: [

                        TextSpan(
                          text: "Your Car \n",
                          style: TextStyle(color: Colors.white,
                          ),
                        ),
                        TextSpan(
                            text: "hey broo this is new car ",
                            style: TextStyle(color: Colors.white54)
                        ),

                      ]),),
                  SizedBox(height: 20,),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 200,
                        height: 200,
                        decoration: BoxDecoration(
                          color: Colors.cyanAccent,
                          shape: BoxShape.circle,
                        ),
                        ),
                      Container(
                        width: 158,
                        height: 158,
                        decoration: BoxDecoration(
                          color: Colors.black87,
                          shape: BoxShape.circle,
                        ),
                      ),
                      Text("300\n KM",style: TextStyle(color: Colors.white,fontSize: 30),),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Container(
                              height: 250,
                              width: 170,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text("Battery",style: TextStyle(color: Colors.white,fontSize: 20),),
                                  Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      Container(
                                        width: 60,
                                        height: 170,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: Colors.black12,
                                        ),
                                      ),
                                      Container(
                                        width: 60,
                                        height: 120,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: Colors.white,
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 55,
                                          child: Text("80%",style: TextStyle(fontSize: 20),)),

                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Container(
                              height: 250,
                              width: 170,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey,
                              ),
                              child:Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        Container(
                                          width: 30,
                                          height: 170,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            color: Colors.black12,
                                          ),
                                        ),
                                        Container(
                                          width: 30,
                                          height: 120,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            color: Colors.cyanAccent,
                                          ),
                                        ),


                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(width: 20,),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("90",style: TextStyle(fontSize: 30),),
                                    SizedBox(height: 10,),
                                    Text("80",style: TextStyle(fontSize: 20),),
                                    SizedBox(height: 10,),
                                    Text("70",style: TextStyle(fontSize: 20),),
                                  ],
                                ),
                              ],)
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              height: 120,
                              width: 170,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey,
                              ),
                              child:  Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(" Current",style: TextStyle(color:Colors.white,fontSize: 26),),
                                  Row(
                                    mainAxisAlignment:MainAxisAlignment.center,
                                      children: [
                                        InkWell(
                                          onTap: (){
                                            setState(() {
                                              if(number>=1){
                                                number--;
                                              }
                                            });
                                          },
                                          child: Text("-",style: TextStyle(color:Colors.white,fontSize: 36),),
                                        ),
                                    SizedBox(width: 10,),

                                    Text(number.toString(),style: TextStyle(color:Colors.white,fontSize: 25),),
                                    IconButton(onPressed: (){
                                      setState(() {
                                        number++;
                                      });
                                    }, icon: Icon(Icons.add,color: Colors.white,))
                                  ],),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              height: 120,
                              width: 170,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(" Cable",style: TextStyle(color:Colors.white,fontSize: 26),),
                                  Row(
                                    mainAxisAlignment:MainAxisAlignment.center,
                                    children: [
                                      Text("Locked"),
                                      Switch(value: switchval, onChanged: (i){
                                        setState(() {
                                          switchval=i;
                                        });
                                      },
                                        activeColor:Colors.white,
                                        activeTrackColor: Colors.green,
                                        inactiveThumbColor: Colors.black12,

                                      ),
                                    ],),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Container(
                              height: 250,
                              width: 170,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey,
                              ),
                              child: Column(
                                children: [
                                  Text("Coolant",style: TextStyle(color:Colors.white,fontSize: 26)),
                                  Icon(Icons.star,size: 90,color: Colors.cyanAccent,),
                                  Text("85 %",style: TextStyle(color:Colors.white,fontSize: 26,fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

