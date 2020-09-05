import 'package:flutter/material.dart';
import 'Animation/FadeAnimation.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final FocusNode fnname = FocusNode();
    final FocusNode fnemail = FocusNode();
    final FocusNode fnpwd = FocusNode();
    final FocusNode fnconpwd = FocusNode();

    return Scaffold(
      appBar: AppBar(
        title: Text('signuppage'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
          child: FadeAnimation(1,
            Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 24),
                ),)
              ),
              SizedBox(height: 5),
              FadeAnimation(1.2,
               Text(
                  'Create an account to start doing more',
                  style: TextStyle(fontSize: 12),
                ),
              ),
              SizedBox(
                height: 30,
              ),
        FadeAnimation(1.3,
              TextField(
                autofocus: true,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 20),
                    hintText: 'Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                    )),
                textInputAction: TextInputAction.next,
                focusNode: fnname,
                onSubmitted: (value) {
                  fnname.unfocus();
                  FocusScope.of(context).requestFocus(fnemail);
                },

              ),),
              SizedBox(
                height: 20,
              ),
        FadeAnimation(1.4,
              TextField(
                focusNode: fnemail,
                textInputAction: TextInputAction.next,
                onSubmitted: (value) {
                  fnemail.unfocus();
                  FocusScope.of(context).requestFocus(fnpwd);
                },
                autofocus: true,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 20),
                    hintText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                    )),
              ),),
              SizedBox(
                height: 20,
              ),
        FadeAnimation(1.6,
              TextField(
                focusNode: fnpwd,
                textInputAction: TextInputAction.next,
                onSubmitted: (value) {
                  fnpwd.unfocus();
                  FocusScope.of(context).requestFocus(fnconpwd);
                },
                obscureText: true,
                autofocus: true,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 20),
                    hintText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                    )),
              ),),
              SizedBox(
                height: 20,
              ),
        FadeAnimation(1.8,
              TextField(
                focusNode: fnconpwd,
                obscureText: true,
                autofocus: true,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 20),
                    hintText: 'Confirm Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                    )),
              ),
        ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                height: 49,

                child: FadeAnimation(2,
                   FlatButton(
                    color: Colors.purple,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    onPressed: () {},
                    child: Text(
                      "REGISTER",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text('Already have an account?',style: TextStyle(fontSize: 12)),
                GestureDetector(
                  onTap:() => Navigator.pop(context),
                  child: Text('Log In',style: TextStyle(color: Colors.purple,fontSize: 12),),
                )
              ],)
            ],
          ),
        ),
      ),
    );
  }
}
