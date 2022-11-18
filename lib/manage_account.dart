import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Manage_Account extends StatelessWidget
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
        title: Text("Manage Account",style: TextStyle(fontSize:20,),),

      ),
      backgroundColor: Colors.white,
      body:  ListView(
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 15,left: 10),
                child: Text("User Name :",style: TextStyle(fontSize:17,color: Colors.black,fontWeight: FontWeight.bold),),
                height: 30,

              ),
              Container(
                margin: EdgeInsets.only(left: 100),
                child: TextField(

                ),
                width: width-120,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius:  BorderRadius.all(Radius.circular(5)),
                  border: Border.all(width: 1, color: Colors.blue.shade700,
                  ),

                ),
              ),

            ],
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 15,left: 10),
                child: Text("Email Address :",style: TextStyle(fontSize:17,color: Colors.black,fontWeight: FontWeight.bold),),
                height: 30,

              ),
              Container(
                margin: EdgeInsets.only(left: 100),
                child: TextField(
                  decoration: InputDecoration(icon: Icon(Icons.mail_outline,size: 20,)
                  ,hintText: "Enter Email"
                  ),
                ),
                width: width-120,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius:  BorderRadius.all(Radius.circular(5)),
                  border: Border.all(width: 1, color: Colors.blue.shade700,
                  ),

                ),
              ),

            ],
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 15,left: 10),

                child: Text("Password :",style: TextStyle(fontSize:17,color: Colors.black,fontWeight: FontWeight.bold),),
                height: 30,

              ),
              Container(
                margin: EdgeInsets.only(left: 100),
                child: TextField(
                  decoration: InputDecoration(icon: Icon(Icons.lock,size: 20,),
                  hintText:"Enter new assword",
                  ),
                ),
                width: width-120,
                height: 40,
                decoration:

                BoxDecoration(
                  borderRadius:  BorderRadius.all(Radius.circular(5)),
                  border: Border.all(width: 1, color: Colors.blue.shade700,
                  ),


                ),
              ),

            ],
          ),

          Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 15,left: 10),
                child: Text("Phone Number :",style: TextStyle(fontSize:17,color: Colors.black,fontWeight: FontWeight.bold),),
                height: 30,

              ),
              Container(
                margin: EdgeInsets.only(left: 100),
                child: TextField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.phone,size: 20,),
                    hintText: "Enter your number"

                  ),

                ),
                width: width-120,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius:  BorderRadius.all(Radius.circular(5)),
                  border: Border.all(width: 1, color: Colors.blue.shade700,
                  ),

                ),
              ),

            ],
          ),
          Row(
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 15,left: 10),
                    child: Text("Country :",style: TextStyle(fontSize:17,color: Colors.black,fontWeight: FontWeight.bold),),
                    height: 30,

                  ),
                  Container(
                    margin: EdgeInsets.only(left: 65),
                    child: TextField(
                    ),
                    width: width-250,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius:  BorderRadius.all(Radius.circular(5)),
                      border: Border.all(width: 1, color: Colors.blue.shade700,
                      ),

                    ),
                  ),

                ],
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 15,left: 10),
                    child: Text("City:",style: TextStyle(fontSize:17,color: Colors.black,fontWeight: FontWeight.bold),),
                    height: 30,

                  ),
                  Container(
                    margin: EdgeInsets.only(left: 60),
                    child: TextField(
                    ),
                    width: width-250,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius:  BorderRadius.all(Radius.circular(5)),
                      border: Border.all(width: 1, color: Colors.blue.shade700,
                      ),

                    ),
                  ),

                ],
              ),
            ],
          ),

          Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 15,left: 10),
                child: Text("Birthday Date :",style: TextStyle(fontSize:17,color: Colors.black,fontWeight: FontWeight.bold),),
                height: 30,

              ),
              Container(
                margin: EdgeInsets.only(left: 100),
                child: TextField(
                  decoration:InputDecoration(icon: Icon(Icons.calendar_month,size: 20,)
                  ,hintText: " Day/Month/Year"
                  ) ,
                ),
                width: width-120,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius:  BorderRadius.all(Radius.circular(5)),
                  border: Border.all(width: 1, color: Colors.blue.shade700,
                  ),

                ),
              ),

            ],
          ),



          Container(
            margin: EdgeInsets.only(top: 40,left: 120,right: 110),
            height: 35,
            child: RaisedButton(
              child: Text("Confirm",style: TextStyle(fontSize: 16,color: Colors.white),),
              onPressed: (){

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(" Editing in progress .."),
                    duration: Duration(seconds: 10),

                  ),
                );


              },
              color: Colors.black,
            ),
          ),


        ],
      ),


    );
  }
}