import 'package:booking_hotels/controller/auth_controller/authentication.dart';
import 'package:booking_hotels/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
class Signup extends StatefulWidget {


  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  int _value =1;
TextEditingController fName= TextEditingController();
  TextEditingController lName= TextEditingController();
  TextEditingController eMail= TextEditingController();
  TextEditingController cPass= TextEditingController();

  TextEditingController Pass= TextEditingController();
  final textFieldFocusNode = FocusNode();
  bool _obscured = false;
  void _toggleObscured() {
    setState(() {
      _obscured = !_obscured;
      if (textFieldFocusNode.hasPrimaryFocus) return; // If focus is on text field, dont unfocus
      textFieldFocusNode.canRequestFocus = false;     // Prevents focus if tap on eye
    });
  }

  @override
  Widget build(BuildContext context)
  // TODO: implement build
  {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.only(top: 18),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://st2.depositphotos.com/3837271/8402/i/950/depositphotos_84020488-stock-photo-hand-with-marker-writing-text.jpg"),
            fit: BoxFit.fitWidth,
            alignment:Alignment.topCenter
          ),
        ),
        child: SafeArea(
          child: ListView(
            children: [
              SizedBox(height: 60,),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    width: 280,
                    height: 60,
                    child: TextField(
                      controller: fName,
                      decoration: InputDecoration(
                          hintText: "First Name",
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    width: 280,
                    height: 60,
                    child: TextField(
                      controller:lName ,
                      decoration: InputDecoration(
                          hintText: "Last Name"
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    width: 280,
                    height: 60,
                    child: TextField(
                      controller: eMail,
                      decoration: InputDecoration(
                          hintText: "Email Address",
                        suffixIcon: Icon(Icons.mail_outline),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8),
                    width: 280,
                    height: 60,
                    child: TextField(
                      controller:  cPass,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: _obscured,
                      focusNode: textFieldFocusNode,
                      decoration: InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.never, //Hides label on focus or if filled
                        labelText: "Password",
                         // Needed for adding a fill color
                        isDense: true,  // Reduces height a bit
                        suffixIcon: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
                          child: GestureDetector(
                            onTap: _toggleObscured,
                            child: Icon(
                              _obscured
                                  ? Icons.visibility_off_rounded
                                  : Icons.visibility_rounded,
                              size: 24,
                            ),
                          ),
                        ),
                      ),
                    )
                  ),
                  SizedBox(height: 15),

                  Padding(
                    padding:const EdgeInsets.only(left:15 ),
                    child: Row(
                      children: [
                        Container(
                          child: Text("Gender :", style: TextStyle(fontSize: 18),),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding:const EdgeInsets.only(left:20 ),
                    child: Row(
                      children: [
                        Radio(value: 1, groupValue: _value, onChanged: ( value){
                          setState(() {
                            _value =1;
                          });

                        },),
                        Text("male"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:20 ),
                    child: Row(
                      children: [
                        Radio(value: 2, groupValue: _value, onChanged: (value){
                          setState((){
                            setState(() {
                              _value =2;

                            });
                          });

                        },),
                        Text("female"),
                      ],
                    ),
                  ),
                ],

              ),

              Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(15),
                    width: 180,
                    height: 45,
                    child:  RaisedButton(
                      shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(15)),
                      color: Colors.orangeAccent.withOpacity(0.7),
                      child: Text("Sign Up Now ",style:GoogleFonts.lato(
                      textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.black
                        ,letterSpacing: 1,fontStyle: FontStyle.italic,
                      ),
                    ),),
                      onPressed: (){
                        String gender= _value==1?'male':'female';
                        Get.put(AuthController()).registerUser(fName.text, eMail.text, Pass.text, lName.text,gender);

                      },
                    ),
                  ),
                ],
              ),




            ],
          ),
        ),
      ),




    );
  }
}
