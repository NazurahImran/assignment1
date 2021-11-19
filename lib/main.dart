import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // Hide the debug banner
      debugShowCheckedModeBanner: false,
      title: 'Choose animal',
      home: MyCustomForm(),
    );
  }
}

// Define a custom Form widget.
class MyCustomForm extends StatefulWidget {
  const MyCustomForm({Key? key}) : super(key: key);

  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

// Define a corresponding State class.
// This class holds the data related to the Form.
class _MyCustomFormState extends State<MyCustomForm> {
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final myController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }
 //this is my idea to display the choosen animal based on user's input 
 checkAnimal(){
if (myController.text== '1'){
                  const Text('cat');
                }
          
         else if(myController.text== '2') {
            const Text('dog');
         }
          else if (myController.text== '3'){

            const Text('mouse');
            }
            
            else {
            const Text('Insert the correct number only');
          }
  }
final List<String> myAnimals = ["1. Cats", "2. Dogs", "3. Mouses"];

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Choose any animal: ^^ '),
      ),

      body:      Column(
          children: [
          // ignore: avoid_unnecessary_containers
          Expanded(
            child: ListView.builder(
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
              ),
          
            ),
            
            TextField( controller:myController, decoration: const InputDecoration(
              
                  hintText: "Insert the choosen number",
                  labelText: "Number",
                  // ignore: prefer_const_constructors
                  labelStyle: TextStyle(fontSize: 25, color: Colors.black),
                  // ignore: prefer_const_constructors
                  border: OutlineInputBorder()),
              keyboardType: TextInputType.number,),

            FloatingActionButton(
  // When the user presses the button, show an alert dialog containing the
  // text that the user has entered into the text field.
  onPressed: () {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          // Retrieve the text the user has entered by using the
          // TextEditingController.
          content: Text('You have choose animal no.' + myController.text),
          title :
          
         )
        );
      },
    );
    
  },
     child: const Text('Enter'),
        ),
         
         const Text('Test7'),
         
        ],               
                      
                      )
        
        );

    
             
    }
         
}
