import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Hide the debug banner
      debugShowCheckedModeBanner: false,

      title: 'Assignment1',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  
  final List<String> myAnimals = ["1. Cat","2. Dog","3. Mouse"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Choose one animal:'),
        ),
         body:Column(
        children: [
          Expanded(
            child:  ListView.builder(
            // the number of items in the list
            itemCount: myAnimals.length,

            // display each item of the product list
            itemBuilder: (context, index) {
              return Card(
                
                
                child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(myAnimals[index])),

                    
              );
            },
           
             prototypeItem: const TextField(
              decoration: InputDecoration(
                  hintText: "Insert the choosen number",
                  labelText: "Number",
                  labelStyle: TextStyle(fontSize: 25, color: Colors.black),
                  border: OutlineInputBorder()),
              keyboardType: TextInputType.number,
            ),
            ),
            
      ),
        
        
        ]
        
        
          )
          
            );
            
          

  }

 
}
