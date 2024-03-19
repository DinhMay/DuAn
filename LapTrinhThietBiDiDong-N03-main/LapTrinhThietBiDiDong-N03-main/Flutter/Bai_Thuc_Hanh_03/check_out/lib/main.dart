import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar( centerTitle: true,
          backgroundColor: Colors.green,
          title:  Text( 'Checkout'),
          titleTextStyle: TextStyle( fontSize: 25, color: Colors.white),
          ),

        body: 
          ListView(

            padding: EdgeInsets.all( 10),

            children: <Widget>[
              Container(
                height:  280,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(0)
                ),

                child: Padding(
                  padding: const EdgeInsets.symmetric( horizontal: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text('Cart Summary',
                        style: const TextStyle( fontWeight: FontWeight.bold, 
                          color: Colors.black,
                          fontSize: 17
                          ),
                      ),
                
                      SizedBox(height: 8), 
                
                      Expanded(child: Row(children: const <Widget>[
                        Expanded(
                          child: Text('Subtotal( 4 items)', textAlign: TextAlign.left),
                        ),
                        Expanded(
                          child: Text('Rs.7,090.00', textAlign: TextAlign.right),
                        ),

                      ]),),
                
                      Expanded(child: Row(children: const <Widget>[
                        Expanded(
                          child: Text('Promotion Discounts', textAlign: TextAlign.left),
                        ),
                
                        Expanded(
                          child: Text('Rs.300.00', textAlign: TextAlign.right),
                        ),
                      ]),),
                
                      const Divider(
                          height: 1,
                          thickness: 0,
                          indent: 0,
                          endIndent: 0,
                      ),
                
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text( "Add Counpon"),
                          
                          Container(
                            width: 90,
                            height: 30,
                            child: TextFormField(
                              style: const TextStyle( fontWeight: FontWeight.bold),
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                            ),
                            onChanged: ( String value) {
                              
                            }),
                          )
                        ],
                      ),

                      Expanded(child: Row(children: const <Widget>[
                        Expanded(
                          child: Text('Delivery Charges', textAlign: TextAlign.left),
                        ),
                
                        Expanded(
                          child: Text('Rs.0.00', textAlign: TextAlign.right),
                        ),
                      ]),),
                
                      Expanded(child: Row(children: const <Widget>[
                        Expanded(
                          child: Text('Est.Total', textAlign: TextAlign.left, style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold
                          )),
                        ),
                
                        Expanded(
                          child: Text('Rs.6,790.00', textAlign: TextAlign.right, style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold
                          ),),
                        ),
                      ]),),
                
                    ],
                  ),
                ),
              ),

              Container(
                height:  180,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5)
                ),

                child: Padding(
                  padding: const EdgeInsets.symmetric( horizontal: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 10),
                      const Text('Recipient Details',
                        style: const TextStyle( fontWeight: FontWeight.bold, 
                          color: Colors.black,
                          fontSize: 17
                          ),
                      ),
                
                      SizedBox(height: 10),
                
                      Padding(
                        padding: const EdgeInsets.symmetric( horizontal: 5),
                        child: TextFormField(
                          keyboardType: TextInputType.streetAddress,
                          decoration: InputDecoration(
                            hintText: 'Ishan Madushka',
                            border: OutlineInputBorder(),
                            hintStyle: TextStyle( fontWeight: FontWeight.bold)
                        ),
                      
                        onChanged: ( String value) {
                          
                        }),
                      ),

                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric( horizontal: 5),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              OutlinedButton.icon(
                                onPressed: () {}, 
                                label: Text( "+98", 
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black
                                  )),
                                  icon: Icon( Icons.chevron_left, color: Colors.black,), 
                                  style: OutlinedButton.styleFrom(
                                    padding: EdgeInsets.symmetric( horizontal: 20),
                                    side: BorderSide( color: Colors.black),
                                    minimumSize: Size(70, 53)  //
                                  ),
                                ),
                          
                              Container(
                                width: 240,
                                height: 50,
                                child: TextFormField(
                                  style: const TextStyle( fontWeight: FontWeight.bold),
                                  decoration: InputDecoration(
                                    labelText: '71 87 86 729',
                                    border: OutlineInputBorder(),
                                ),
                                onChanged: ( String value) {
                                  
                                }),
                              )
                              ],
                        ),
                      ),
                  ]),
                ),
              ),

              Container(
                height:  180,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5)
                ),

                child: Padding(
                  padding: const EdgeInsets.symmetric( horizontal: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                
                      SizedBox(height: 20),
                      const Text('Delivery Information',
                        style: const TextStyle( fontWeight: FontWeight.bold, 
                          color: Colors.black,
                          fontSize: 17
                          ),
                      ),
                      
                      SizedBox(height: 20),
                
                      Padding(
                        padding: const EdgeInsets.symmetric( horizontal: 5),
                        child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          OutlinedButton(
                            onPressed: () {}, 
                            child: 
                            Text( "Home Delivery", 
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.green,
                            ),),
                            style: OutlinedButton.styleFrom(
                              padding: EdgeInsets.symmetric( horizontal: 20),
                              side: BorderSide( color: Colors.green),
                              minimumSize: Size(180, 50)  // điều chỉnh dài, rộng của button
                            ),
                          ),
                      
                          OutlinedButton(
                            onPressed: () {}, 
                            child: 
                            Text( "Pick up", 
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ),),
                            style: OutlinedButton.styleFrom(
                              padding: EdgeInsets.symmetric( horizontal: 20),
                              shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular( 10) ),
                              side: BorderSide( color: Colors.black),
                              minimumSize: Size(180, 50)  // điều chỉnh dài, rộng của button
                          ),
                                        ),
                            
                          ],
                        ),
                      ),
                
                      SizedBox(height: 10),
                
                      Padding(
                        padding: const EdgeInsets.symmetric( horizontal: 5),
                        child: TextFormField(
                          keyboardType: TextInputType.streetAddress,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                              onPressed: () {},
                              icon: Icon( Icons.location_on_outlined)
                              ),
                            hintText: '424/1D Palanwatta, Pannipitiya',
                            border: OutlineInputBorder(),
                            hintStyle: TextStyle( fontWeight: FontWeight.bold)
                        ),
                      
                        onChanged: ( String value) {
                          
                        }),
                      ),
                    ],
                  ),
                ),
              ),

              Container(
                height:  50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5)
                ),

                child: Padding(
                  padding: const EdgeInsets.symmetric( horizontal: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20),
                        const Text('Delivery Date',
                          style: const TextStyle( fontWeight: FontWeight.bold, 
                            color: Colors.black,
                            fontSize: 17
                            ),
                        ),
                      ]
                  
                  ),
                ),
              )
            ],
          )
      ),
    );
  }
}
