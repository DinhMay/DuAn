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
                icon: const Icon(Icons.favorite, color: Color.fromARGB(255, 51, 6, 6)),
                onPressed: () {
                  // Xử lý sự kiện khi người dùng nhấn vào biểu tượng yêu thích
                },
              ),
              IconButton(
                icon: const Icon(Icons.shopping_cart, color: Color.fromARGB(255, 94, 14, 14)),
                onPressed: () {
                  // Xử lý sự kiện khi người dùng nhấn vào biểu tượng giỏ hàng
                },
              ),
            ],
          backgroundColor: Colors.white,
          title: Text( 'Categories'),
          titleTextStyle: TextStyle( fontSize:  24, color: Colors.black)
        ),
        body:  
        GridView.count( 
          padding: EdgeInsets.all(10),
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          crossAxisCount: 2,
          childAspectRatio: 2/1.5,
          
          children: <Widget>[
              
              Container(
                
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 130, 231, 223),
                  borderRadius: BorderRadius.circular( 14)
                ),
              child: Column(
                
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const[
                    Align(
                        alignment: Alignment(-0.8, -0.7),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://tse3.mm.bing.net/th?id=OIP.xegARTNthD-qoWsE0kwNUQHaFr&pid=Api&P=0'),
                          radius: 50,
                    )
                    ),
                    Text( 'Fashion',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),)
                  ],
                ),
              ),

              Container(
                width: 200,
                height: 200,
                //padding: const EdgeInsets.all( 3),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 219, 118, 51),
                  borderRadius:  BorderRadius.circular( 14)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const[
                    Align(
                        alignment: Alignment(-0.8, -0.7),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://tse2.mm.bing.net/th?id=OIP.6ynD5GAlWkyY5_UXRLBqJwHaEv&pid=Api&P=0'),
                          radius: 50,
                    )
                    ),
                    Text( 'Beauty',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),)
                  ],
                ),
              ),

              Container(
                width: 200,
                height: 200,
                //padding: const EdgeInsets.all( 3),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 114, 84, 196),
                  borderRadius:  BorderRadius.circular( 14)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const[
                    Align(
                        alignment: Alignment(-0.8, -0.7),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://tse4.mm.bing.net/th?id=OIP.Lp4FQeFbi7qUfHGWmg173QHaFj&pid=Api&P=0'),
                          radius: 50,
                    )
                    ),
                    Text( 'Electronics',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),)
                  ],
                ),
              ),

              Container(
                width: 200,
                height: 200,
                //padding: const EdgeInsets.all( 3),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 231, 102, 231),
                  borderRadius:  BorderRadius.circular( 14)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const[
                    Align(
                        alignment: Alignment(-0.8, -0.7),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://tse2.mm.bing.net/th?id=OIP.kRhfxyE8kRdXth2twpkGJAHaE5&pid=Api&P=0'),
                          radius: 50,
                    )
                    ),
                    Text( 'Jewellery',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),)
                  ],
                ),
              ),

              Container(
                width: 200,
                height: 200,
                //padding: const EdgeInsets.all( 3),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 140, 31, 212),
                  borderRadius:  BorderRadius.circular( 14)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const[
                    Align(
                        alignment: Alignment(-0.8, -0.7),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://tse1.mm.bing.net/th?id=OIP.rVo44rniHVWyV-XyEOo8igHaGM&pid=Api&P=0'),
                          radius: 50,
                    )
                    ),
                    Text( 'Footwear',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),)
                  ],
                ),
              ),

              Container(
                width: 200,
                height: 200,
                //padding: const EdgeInsets.all( 3),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 36, 85, 97),
                  borderRadius:  BorderRadius.circular( 14)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const[
                    Align(
                        alignment: Alignment(-0.8, -0.7),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://tse4.explicit.bing.net/th?id=OIP.kqB_qVs62YKnhfGV8dzA0QHaEO&pid=Api&P=0'),
                          radius: 50,
                    )
                    ),
                    Text( 'Toys',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),)
                  ],
                ),
              ),

              Container(
                width: 200,
                height: 200,
                //padding: const EdgeInsets.all( 3),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 111, 170, 113),
                  borderRadius:  BorderRadius.circular( 14)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const[
                    Align(
                        alignment: Alignment(-0.8, -0.7),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://tse3.mm.bing.net/th?id=OIP.lf0RcJ9EgD-7lhS8zPMYNgHaFq&pid=Api&P=0'),
                          radius: 50,
                    )
                    ),
                    Text( 'Furniture',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),)
                  ],
                ),
              ),

              Container(
                width: 200,
                height: 200,
                //padding: const EdgeInsets.all( 3),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 150, 184, 59),
                  borderRadius:  BorderRadius.circular( 14)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const[
                    Align(
                        alignment: Alignment(-0.8, -0.7),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://tse1.mm.bing.net/th?id=OIP.JlmMU1EJnaLWQ5B2ROOD_QHaEK&pid=Api&P=0'),
                          radius: 50,
                    )
                    ),
                    Text( 'Mobiles',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),)
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      
 
    
  }
}

