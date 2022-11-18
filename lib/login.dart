
import 'package:booking_hotels/signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'controller/auth_controller/authentication.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController eMail= TextEditingController();

  TextEditingController cPass= TextEditingController();

  get prefixIcon => null;

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
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.8),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://i.stack.imgur.com/se2Co.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 50),
                  child: Icon(Icons.person_pin,size: 90,color: Colors.white.withOpacity(0.9),),
                ),
                Text("Log in",style:
                    GoogleFonts.lato(
                      textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white
                          ,letterSpacing: .9,fontStyle: FontStyle.italic
                      ),
                    ),
                )
              ],
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 3,top: 25,bottom: 8),
                  child: TextField(
                    controller: eMail,
                    decoration: InputDecoration(
                      fillColor: Colors.white70,
                      filled: true,

                      prefixIcon: prefixIcon??Icon(Icons.mail_outline,color: Colors.black,size: 22,),
                        border: UnderlineInputBorder(),
                      hintText: "Enter email",
                      hintStyle:GoogleFonts.lato(
                        textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black
                            ,letterSpacing: .9,fontStyle: FontStyle.italic
                        ),
                      ),



                    ),
                  ),
                  width: width-70,
                  height: 45,

                ),

              ],
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 3,top: 20),
                  child: TextField(
                    controller: cPass,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: _obscured,
                    focusNode: textFieldFocusNode,
                    decoration: InputDecoration(
                      fillColor: Colors.white70,
                      filled: true,
                      floatingLabelBehavior: FloatingLabelBehavior.never, //Hides label on focus or if filled
                      hintText: "Enter password",
                      hintStyle:GoogleFonts.lato(
                        textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black
                            ,letterSpacing: .9,fontStyle: FontStyle.italic
                        ),
                      ),
                      // Needed for adding a fill color
                      isDense: true,  // Reduces height a bit
                      prefixIcon: prefixIcon??Icon(Icons.lock,color: Colors.black,size: 22,),
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

                  ),
                  width: width-70,
                  height: 45,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15,right: 33),
                  child: Row(mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Forget Password?",style: GoogleFonts.lato(
                      textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,color: Colors.white
                          ,letterSpacing: .9,fontStyle: FontStyle.italic,decoration: TextDecoration.underline
                      ),
                    ),
                    ),
                  ],
                  ),
                )

              ],
            ),

            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top:25 ),
                  width:200,
                  height: 40,
                  child:  RaisedButton(
                      shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(15)),
                      child: Text("log in",style:GoogleFonts.lato(
                        textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.black
                            ,letterSpacing: 2,fontStyle: FontStyle.italic,
                        ),
                      ),),
                      color: Colors.white,
                      onPressed:(){
                        Get.put(AuthController()).loginUser(eMail.text, cPass.text);

                      }),

                ),
              ],
            ),
            Container(

              margin: EdgeInsets.only(top: 10),
              height: 60,
              child: Center(
                child: Text(" Creat an account?" ,style: GoogleFonts.lato(
                  textStyle: TextStyle(  fontSize: 16,color: Colors.white
                      ,letterSpacing: .9,fontStyle: FontStyle.italic,decoration: TextDecoration.underline,fontWeight: FontWeight.bold
                  ),
                ),),
              ),
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10,),
                  width: 200,
                  height: 40,
                  child:  RaisedButton(
                    shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(15)),
                    color: Colors.orangeAccent.withOpacity(0.7),
                    child: Text("sign up",style:  GoogleFonts.lato(
                      textStyle: TextStyle(  fontSize: 18,color: Colors.white
                          ,letterSpacing: 2,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold
                      ),
                    ),),
                    onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (_)=> Signup()));
                    },
                  ),
                ),
              ],
            ),


          ],
        ),
      ),




    );
  }
}
