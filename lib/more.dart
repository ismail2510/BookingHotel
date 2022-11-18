import 'package:booking_hotels/manage_account.dart';
import 'package:booking_hotels/questions.dart';
import 'package:booking_hotels/reviews.dart';
import 'package:booking_hotels/welcome.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/auth_controller/authentication.dart';
import 'controller/database_local/cacheHelper.dart';


class More extends StatelessWidget
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
          child: Text("Information",style: TextStyle(fontSize:20),),
        ),
      ),
      backgroundColor: Colors.white.withOpacity(0.9),
      body:ListView(
        children: [
          Center(
            child:   Icon(Icons.account_circle_outlined,size: 120,color: Colors.black54),
          ),
          Center(
            child: Text("             ${CacheHelper.get(key: 'firstname')}\n      ${CacheHelper.get(key: 'email')}"
            ),
          ),
          Text(""),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Account",style: TextStyle(fontSize: 20,color: Colors.brown),),
          ),
          ListTile(
            leading: Icon(Icons.manage_accounts),
            title: Text("Manage Account"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (_)=> Manage_Account()));
            },
          ),
          ListTile(
            leading: Icon(Icons.reviews),
            title: Text("Reviews"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (_)=> Reviews()));
            },
          ),
          ListTile(
            leading: Icon(Icons.question_mark),
            title: Text("Questions"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (_)=> Questions()));
            },
          ),
          Text(""),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Help & Support",style: TextStyle(fontSize: 20,color: Colors.brown),),
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text("Contact Customer Service"),
            onTap: (){

            },
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text("Safety information"),
            onTap: (){

            },
          ),
          Text(""),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Settings",style: TextStyle(fontSize: 20,color: Colors.brown),),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Contact Customer Service"),
            onTap: (){

            },
          ),
          ListTile(
            leading: Icon(Icons.logout,color: Colors.red.shade700,size: 25,),
            title: Text("Log out",style: TextStyle(fontSize: 20,color: Colors.red.shade700),),
            onTap: (){
              Get.put(AuthController()).signout();

            },
          ),





        ],
      ),

    );
  }
}