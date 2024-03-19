import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget{
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State< MyApp>{
  @override
  Widget build( BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar( centerTitle: true,
          backgroundColor: Colors.green,
          title:  Text( 'Keells'),
          titleTextStyle: TextStyle( fontSize: 20, color: Colors.white),
          actions: [
            IconButton(onPressed: () {},
              icon: const Icon( Icons.search))
          ],
        ),
        body: 
           Padding(
             padding: const EdgeInsets.all(20.0),
             child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("All Categories",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 15
                    ),),
                    Text("View All",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.green,
                      fontSize: 10,
                    )),
           
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 120,
                          width: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            height: 60,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              image: DecorationImage(
                                image: AssetImage("assets/images/household.png")
                              )
                          ),
                        ),
                        ]
                      )),
                      Row(
                        //mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                          "Household",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                          )),
                          //SizedBox( width: 2,),
                          Icon(
                            Icons.chevron_right,
                            size: 14,
                            color: Colors.black,
                          )
                        ],
                      )
                      ],
                    ),

                    Column(
                      children: [
                        Container(
                          height: 120,
                          width: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            height: 60,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              image: DecorationImage(
                                image: AssetImage("assets/images/grocery.png")
                              )
                          ),
                        ),
                        ]
                      )),
                      Row(
                        //mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                          "Grocery",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                          )),
                          //SizedBox( width: 2,),
                          Icon(
                            Icons.chevron_right,
                            size: 14,
                            color: Colors.black,
                          )
                        ],
                      )
                      ],
                    ),

                    Column(
                      children: [
                        Container(
                          height: 120,
                          width: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            height: 60,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              image: DecorationImage(
                                image: AssetImage("assets/images/liquor.png")
                              )
                          ),
                        ),
                        ]
                      )),
                      Row(
                        //mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                          "Liquor",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                          )),
                          //SizedBox( width: 2,),
                          Icon(
                            Icons.chevron_right,
                            size: 14,
                            color: Colors.black,
                          )
                        ],
                      )
                      ],
                    ),

                    Column(
                      children: [
                        Container(
                          height: 120,
                          width: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            height: 60,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              image: DecorationImage(
                                image: AssetImage("assets/images/chilled.png")
                              )
                          ),
                        ),
                        ]
                      )),
                      Row(
                        //mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                          "Chilled",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                          )),
                          //SizedBox( width: 2,),
                          Icon(
                            Icons.chevron_right,
                            size: 14,
                            color: Colors.black,
                          )
                        ],
                      )
                      ],
                    ),
                  ],
                ),

                SizedBox( height: 20,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Nexus Member Deals",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 15
                    ),),
                    Text("View All",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.green,
                      fontSize: 10,
                    )),
           
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Colors.white,
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            height: 120,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white,
                                width: 2.0
                              ),
                              image: DecorationImage(
                                image: AssetImage("assets/images/gung.png")
                              )
                          ),
                        ),
                        ]
                      )),
                      SizedBox( height: 20),

                      Text(
                          "Ginger",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 10,
                            
                        )),

                        SizedBox( height: 20),

                      Text(
                          "Rs.690.00",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                        )),
                      ],
                    ),

                    SizedBox( height: 20),

                    Column(
                      children: [
                        Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Colors.white,
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            height: 120,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              image: DecorationImage(
                                image: AssetImage("assets/images/toi.png")
                              )
                          ),
                        ),
                        ]
                      )),

                      SizedBox( height: 20),

                      Text(
                          "Garlic Premium",
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 10,
                        )),

                      SizedBox( height: 20),

                      Text(
                          "Rs.380.00",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                        )),
                      ],
                    ),

                    SizedBox( height: 20),

                    Column(
                      children: [
                        Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Colors.white,
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            height: 120,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              image: DecorationImage(
                                image: AssetImage("assets/images/hanhtim.png")
                              )
                          ),
                        ),
                        ]
                      )),

                      SizedBox( height: 20),

                      Text(
                          "Red Onions",
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 10,
                        )),

                      SizedBox( height: 20),

                      Text(
                          "Rs.260.00",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                        )),
                      ],
                    ),
                  ],
                ),

                SizedBox( height: 20,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Keells Deals",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 15
                    ),),
                    Text("View All",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.green,
                      fontSize: 10,
                    )),
           
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Colors.white,
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            height: 120,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              image: DecorationImage(
                                image: AssetImage("assets/images/carot.png")
                              )
                          ),
                        ),
                        ]
                      )),
                      SizedBox( height: 20),

                      Text(
                          "Carrot",
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 10,
                        )),

                        SizedBox( height: 20),

                      Text(
                          "Rs.490.00",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                        )),
                      ],
                    ),

                    SizedBox( height: 20),

                    Column(
                      children: [
                        Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Colors.white,
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            height: 120,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              image: DecorationImage(
                                image: AssetImage("assets/images/xoai.png")
                              )
                          ),
                        ),
                        ]
                      )),

                      SizedBox( height: 20),

                      Text(
                          "Mango - Bud",
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 10,
                        )),

                      SizedBox( height: 20),

                      Text(
                          "Rs.210.00",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                        )),
                      ],
                    ),

                    SizedBox( height: 20),

                    Column(
                      children: [
                        Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Colors.white,
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            height: 120,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              image: DecorationImage(
                                image: AssetImage("assets/images/nho.png")
                              )
                          ),
                        ),
                        ]
                      )),

                      SizedBox( height: 20),

                      Text(
                          "Grapes - Green",
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 10,
                        )),

                      SizedBox( height: 20),

                      Text(
                          "Rs.1,120.00",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                        )),
                      ],
                    ),
                  ],
                ),

                SizedBox( height: 30),

              Container(
                width: double.infinity,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.amber,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          IconButton(
                            onPressed: (){}, 
                            icon: const Icon( 
                              Icons.store, 
                              color: Colors.green,
                              
                            )),
                          Text(
                            "Store",
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 10,
                              color: Colors.green,
                            ),
                          )
                        ],
                      ),
                    ),

                    Container(
                      child: Column(
                        children: [
                          IconButton(
                            onPressed: (){}, 
                            icon: const Icon( 
                              Icons.badge_sharp, 
                              color: Colors.white,
                              
                            )),
                          Text(
                            "My Cart",
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 10,
                              color: Colors.black
                            ),
                          )
                        ],
                      ),
                    ),

                    Container(
                      child: Column(
                        children: [
                          IconButton(
                            onPressed: (){}, 
                            icon: const Icon( 
                              Icons.favorite, 
                              color: Colors.white,
                              
                            )),
                          Text(
                            "Favourites",
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 10,
                              color: Colors.black
                            ),
                          )
                        ],
                      ),
                    ),

                    Container(
                      child: Column(
                        children: [
                          IconButton(
                            onPressed: (){}, 
                            icon: const Icon( 
                              Icons.supervised_user_circle, 
                              color: Colors.white,
                              
                            )),
                          Text(
                            "Profile",
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 10,
                              color: Colors.black
                            ),
                          )
                        ],
                      ),
                    ),

                    Container(
                      child: Column(
                        children: [
                          IconButton(
                            onPressed: (){}, 
                            icon: const Icon( 
                              Icons.more, 
                              color: Colors.white,
                              
                            )),
                          Text(
                            "More",
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 10,
                              color: Colors.black
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
                
              ],
             ),
           )
          ),
        );
  }
}
