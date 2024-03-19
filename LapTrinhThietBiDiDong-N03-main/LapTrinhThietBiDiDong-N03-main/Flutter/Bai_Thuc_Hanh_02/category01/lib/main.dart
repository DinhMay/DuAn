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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          actions: [
              IconButton(
                icon: const Icon(Icons.search, color: Colors.black),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.favorite, color: Colors.black),
                onPressed: () {
                },
              ),
              IconButton(
                icon: const Icon(Icons.shopping_cart, color: Colors.black),
                onPressed: () {
                },
              ),
            ],
          backgroundColor: Colors.white,
          title: Text( 'Categories'),
          titleTextStyle: TextStyle( fontSize:  24, color: Colors.black)
        ),
        body: Scrollbar(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            child: Row(
              children: <Widget> [
                Expanded(child: Container(
                  //  color: Colors.amber,
                  //  height: 2000,
                   child: Column(
                    children: <Widget>[
                      Container(
                        height: 120,
                        decoration: BoxDecoration(
                          color: Colors.white
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: 70,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey,
                                image: DecorationImage(image: AssetImage("assets/images/clothing.png")
                                )
                              ),
                            ),
                            SizedBox( height: 5,),
                            Positioned(
                              top: 100,
                              right: 40,
                              child: Text(
                                "Fashion",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                                ))
                          ],
                        ),
                      ),

                      Container(
                        height: 120,
                        decoration: BoxDecoration(
                          color: Colors.white
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: 70,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey,
                                image: DecorationImage(image: AssetImage("assets/images/beauty.png")
                                )
                              ),
                            ),
                            SizedBox( height: 5,),
                            Positioned(
                              top: 100,
                              right: 40,
                              child: Text(
                                "Beauty",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                                ))
                          ],
                        ),
                      ),

                      Container(
                        height: 120,
                        decoration: BoxDecoration(
                          color: Colors.white
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: 70,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey,
                                image: DecorationImage(image: AssetImage("assets/images/electronics.png")
                                )
                              ),
                            ),
                            SizedBox( height: 5,),
                            Positioned(
                              top: 100,
                              right: 40,
                              child: Text(
                                "Electronics",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                                ))
                          ],
                        ),
                      ),

                      Container(
                        height: 120,
                        decoration: BoxDecoration(
                          color: Colors.white
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: 70,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey,
                                image: DecorationImage(image: AssetImage("assets/images/jewellry.png")
                                )
                              ),
                            ),
                            SizedBox( height: 5,),
                            Positioned(
                              top: 100,
                              right: 40,
                              child: Text(
                                "Jewellry",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                                ))
                          ],
                        ),
                      ),

                      Container(
                        height: 120,
                        decoration: BoxDecoration(
                          color: Colors.white
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: 70,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey,
                                image: DecorationImage(image: AssetImage("assets/images/footwear.png")
                                )
                              ),
                            ),
                            SizedBox( height: 5,),
                            Positioned(
                              top: 100,
                              right: 40,
                              child: Text(
                                "Footwear",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                                ))
                          ],
                        ),
                      ),

                      Container(
                        height: 120,
                        decoration: BoxDecoration(
                          color: Colors.white
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: 70,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey,
                                image: DecorationImage(image: AssetImage("assets/images/toys.png")
                                )
                              ),
                            ),
                            SizedBox( height: 5,),
                            Positioned(
                              top: 100,
                              right: 40,
                              child: Text(
                                "Toys",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                                ))
                          ],
                        ),
                      ),

                      Container(
                        height: 120,
                        decoration: BoxDecoration(
                          color: Colors.white
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: 70,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey,
                                image: DecorationImage(image: AssetImage("assets/images/furniture.png")
                                )
                              ),
                            ),
                            SizedBox( height: 5,),
                            Positioned(
                              top: 100,
                              right: 40,
                              child: Text(
                                "Furniture",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                                ))
                          ],
                        ),
                      ),

                      Container(
                        height: 120,
                        decoration: BoxDecoration(
                          color: Colors.white
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: 70,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey,
                                image: DecorationImage(image: AssetImage("assets/images/mobiles.png")
                                )
                              ),
                            ),
                            SizedBox( height: 5,),
                            Positioned(
                              top: 100,
                              right: 40,
                              child: Text(
                                "Mobiles",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                                ))
                          ],
                        ),
                      ),
                      
                    ],
                   )
                //////////////////////////////////////////////////////////////////////////////////  
                )),
                SizedBox( width:  5,),
                Expanded(child: Container(
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 160,
                        decoration: BoxDecoration(
                          color: Colors.white
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/images/laptop.png")
                                )
                              ),
                            ),
                            SizedBox( height: 5,),
                            Positioned(
                              top: 100,
                              right: 40,
                              child: Text(
                                "Laptops/ PC",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                                ))
                          ],
                        ),
                      ),

                      Container(
                        height: 160,
                        decoration: BoxDecoration(
                          color: Colors.white
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/images/stying.png")
                                )
                              ),
                            ),
                            SizedBox( height: 5,),
                            Positioned(
                              top: 100,
                              right: 40,
                              child: Text(
                                "Dryers/ Stying",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                                ))
                          ],
                        ),
                      ),

                      Container(
                        height: 160,
                        decoration: BoxDecoration(
                          color: Colors.white
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/images/tablet.png")
                                )
                              ),
                            ),
                            SizedBox( height: 5,),
                            Positioned(
                              top: 100,
                              right: 40,
                              child: Text(
                                "Tablet",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                                ))
                          ],
                        ),
                      ),

                      Container(
                        height: 160,
                        decoration: BoxDecoration(
                          color: Colors.white
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/images/printer.png")
                                )
                              ),
                            ),
                            SizedBox( height: 5,),
                            Positioned(
                              top: 100,
                              right: 40,
                              child: Text(
                                "Printer",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                                ))
                          ],
                        ),
                      ),

                      Container(
                        height: 160,
                        decoration: BoxDecoration(
                          color: Colors.white
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/images/powerbank.png")
                                )
                              ),
                            ),
                            SizedBox( height: 5,),
                            Positioned(
                              top: 100,
                              right: 40,
                              child: Text(
                                "Powerbank",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                                ))
                          ],
                        ),
                      ),

                      Container(
                        height: 160,
                        decoration: BoxDecoration(
                          color: Colors.white
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/images/machine.png")
                                )
                              ),
                            ),
                            SizedBox( height: 5,),
                            Positioned(
                              top: 100,
                              right: 40,
                              child: Text(
                                "Machine",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                                ))
                          ],
                        ),
                      ),
                    ],
                   )
                )),
                ////////////////
                SizedBox( height: 5),
                Expanded(child: Container(
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 160,
                        decoration: BoxDecoration(
                          color: Colors.white
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/images/televisons.png")
                                )
                              ),
                            ),
                            SizedBox( height: 5,),
                            Positioned(
                              top: 100,
                              right: 40,
                              child: Text(
                                "Televions",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                                ))
                          ],
                        ),
                      ),

                      Container(
                        height: 160,
                        decoration: BoxDecoration(
                          color: Colors.white
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/images/headphones.png")
                                )
                              ),
                            ),
                            SizedBox( height: 5,),
                            Positioned(
                              top: 100,
                              right: 40,
                              child: Text(
                                "Headphones",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                                ))
                          ],
                        ),
                      ),

                      Container(
                        height: 160,
                        decoration: BoxDecoration(
                          color: Colors.white
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/images/covers.png")
                                )
                              ),
                            ),
                            SizedBox( height: 5,),
                            Positioned(
                              top: 100,
                              right: 40,
                              child: Text(
                                "Mobile Covers",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                                ))
                          ],
                        ),
                      ),

                      Container(
                        height: 160,
                        decoration: BoxDecoration(
                          color: Colors.white
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/images/heathcare.png")
                                )
                              ),
                            ),
                            SizedBox( height: 5,),
                            Positioned(
                              top: 100,
                              right: 40,
                              child: Text(
                                "Heathcare",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                                ))
                          ],
                        ),
                      ),

                      Container(
                        height: 160,
                        decoration: BoxDecoration(
                          color: Colors.white
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/images/smartwarches.png")
                                )
                              ),
                            ),
                            SizedBox( height: 5,),
                            Positioned(
                              top: 100,
                              right: 40,
                              child: Text(
                                "Smartwarches",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                                ))
                          ],
                        ),
                      ),

                      

                      Container(
                        height: 160,
                        decoration: BoxDecoration(
                          color: Colors.white
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/images/smoothie.png")
                                )
                              ),
                            ),
                            SizedBox( height: 5,),
                            Positioned(
                              top: 100,
                              right: 40,
                              child: Text(
                                "Smoothie Machine",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                                ))
                          ],
                        ),
                      ),
                    ],
                   )
                ))
            ]),
          ),
        )
              ],
            ),
          )
        ) 
        
        
      ),
    );
  }
}