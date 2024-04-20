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
       // backgroundColor: Colors.white,
        appBar: AppBar( centerTitle: true,
          
          backgroundColor: Colors.green,
          title:  Text( 'Sign In'),
          titleTextStyle: TextStyle( fontSize: 40, color: Colors.white),
          
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 55),
              child: Form(
                child: Column(
                  children: [
                    TextFormField(
                      style: const TextStyle( fontWeight: FontWeight.bold),
                      decoration: InputDecoration(
                        
                        labelText: 'Username',
                        hintText: 'Enter username',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25)
                        ),
                  ),
                  onChanged: ( String value) {
                    
                  }),
                  SizedBox(height: 30,),

                  TextFormField(
                    style: const TextStyle( fontWeight: FontWeight.bold),
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Enter password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25)
                      ),
                  ),
                  onChanged: ( String value) {
                    
                  }),

                  SizedBox(height: 30,),

                  Container(
                    width: double.infinity,   // chiều rộng của container mở rộng được
                    child: RichText(
                      textAlign: TextAlign.right,
                      text: TextSpan(
                        text: 'Forgot ',
                        children: <TextSpan>[
                          TextSpan( text: 'Username/ Password', style: TextStyle( color: Colors.green)),
                        ],
                      ),
                      
                    ),
                  ),

                  SizedBox(height: 30,),

                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size( 500, 50),
                          backgroundColor: Colors.green,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular( 25),
                          ),
                      ),
                        child: Text( 'SIGN IN', style: TextStyle( fontSize:  20, color: Colors.white),),
                        onPressed: () {},
                  ),
                  

                  SizedBox(height: 120,),
                  Text(
                    "Don't have an account?",
                    textAlign: TextAlign.center,
                  ),

                  SizedBox(height: 30,),
                  Text(
                    'SIGN UP NOW',
                    textAlign: TextAlign.center,
                    style: const TextStyle( fontWeight: FontWeight.bold, color: Colors.green),
                  ),
                
              ],)),
            )
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}