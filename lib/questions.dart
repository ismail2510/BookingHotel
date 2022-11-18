import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Questions extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    var size =MediaQuery.of(context).size;
    var height=size.height;
    var width=size.width;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black.withOpacity(0.8),

        title: Container(
          child: Text("Questions",style: TextStyle(fontSize:20,)),
          ),
      ),
      backgroundColor: Colors.white,
      body:ListView(
        children: [
          Container(
            width: width/2,
            height: 250,
            child:Center(
              child: Text(" Do you have any questions ?\n\n if yes,press the button below",style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,color: Colors.black,),),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 80,right: 80),
            width: 80,
            height: 50,
            child: RaisedButton(
              child: Text("Customer Service",style: TextStyle(color: Colors.white,fontSize: 16),),
              onPressed: (){

              },
              color: Colors.black,
            ),
          ),


        ],
      ),


    );
  }
}