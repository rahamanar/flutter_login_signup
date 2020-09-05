import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Animation/FadeAnimation.dart';
import 'package:login_signup/signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        fontFamily: 'NotoSansHK',
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    FocusNode fnemail=FocusNode();
    FocusNode fnpwd=FocusNode();
    return Scaffold(
      //backgroundColor: Colors.white70,
      appBar: AppBar(
        title: Text("loginpage"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Center(
                  child: FadeAnimation(1,
                    Text(
                      "Sign In",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                ),
                ),

              SizedBox(
                height: 20,
              ),
              Material(
                elevation: 10,
                shadowColor: Colors.black,
                borderRadius: BorderRadius.circular(22),
                child: FadeAnimation(1.2,
                  TextFormField(
                  focusNode: fnemail,
                  textInputAction: TextInputAction.next,
                  onFieldSubmitted: (value) {
                    fnemail.unfocus();
                    FocusScope.of(context).requestFocus(fnpwd);
                  },
                  keyboardType: TextInputType.emailAddress,

                  decoration: InputDecoration(
                    hintText: "username or email",
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 20.0, horizontal: 20),
                  ),
                ),
                )
              ),
              SizedBox(
                height: 10,
              ),
              Material(
                elevation: 10,
                  shadowColor: Colors.black,
                borderRadius: BorderRadius.circular(22),
                child: FadeAnimation(1.3,
                  TextFormField(
                  focusNode: fnpwd,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "password",
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 20.0, horizontal: 20),
                  ),
                ),)
              ),
              SizedBox(
                height: 25,
              ),
              Material(
                shadowColor: Colors.purpleAccent,
                elevation: 10,
                color: Colors.purple,
                borderRadius: BorderRadius.circular(28),
                child: FadeAnimation(1.5, MaterialButton(
                  padding: EdgeInsets.symmetric(horizontal: 49, vertical: 14),
                  color: Colors.purple,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  onPressed: () {},
                  child: Text(
                    "SIGN IN",
                    style: TextStyle(color: Colors.white),
                  ),
                ),)
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "Or login with",
                style: TextStyle(color: Colors.black38),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 25,
                  child: FadeAnimation(1.7, RawMaterialButton(
                        focusColor: Colors.green,
                        padding: EdgeInsets.all(10),
                        elevation: 10,
                        fillColor: Colors.white70,
                        shape: CircleBorder(),
                        child:Image.asset("fonts/facebook.png"),
                        onPressed: () {},
                      ),)
                    ),
                    SizedBox(width: 10,),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 25,
                      child: FadeAnimation(1.9, RawMaterialButton(
                        focusColor: Colors.green,
                        padding: EdgeInsets.symmetric(vertical: 4,horizontal: 4),
                        elevation: 10,
                        fillColor: Colors.white70,
                        shape: CircleBorder(),
                        child:Image.asset("fonts/google_icon2.png"),
                        onPressed: () {},
                      ),)
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp(),));

                },
                child: FadeAnimation(1.8, Text("Sign Up",style: TextStyle(color: Colors.black54),),)
              )
            ],
          ),
        ),
      ),
    );
  }
}
