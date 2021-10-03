import 'package:flutter/material.dart';
//import 'package:image_picker/image_picker.dart';
//import 'dart:io';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
              'Login',
            style: TextStyle(
              color: Colors.black,
              fontSize: 30.0,
            ),
          ),
          elevation: 0.0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Center(
                child: Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: [
                    CircleAvatar(
                    //  backgroundImage:( _image == null )? null : FileImage(_image!) ,
                      backgroundColor: Colors.black,
                      radius: 80.0,
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.blue,
                      child: IconButton(
                        onPressed: () {
                          
                        },

                       icon: Icon( Icons.camera_alt,
                         color: Colors.white,
                       ),
                      ),
                    ),

                  ],
                ),

              ),
              TextFormField(
                decoration:InputDecoration(
                  hintText: 'Your Name',
                ) ,
              ),
              SizedBox(
                height: 15.0,
              ),
              TextFormField(
                decoration:InputDecoration(
                  hintText: 'Your university',
                ) ,
              ),
              SizedBox(
                height: 15.0,
              ),
              TextFormField(
                decoration:InputDecoration(
                  hintText: 'Your Field',
                ) ,
              ),
              SizedBox(
                height: 15.0,
              ),
             // ExpansionTile(title:Text('Your Community'),
              //),
            ],
          ),
        ),
      ),
    );
  }
  void bottomSheet(BuildContext ctx)  {
    showModalBottomSheet(
        context : ctx,
        builder:(_) {
          return Container(
            color: Colors.black,
            //width: double.infinity,
            height: 150.0,
          );
        }
    );
  }
}

