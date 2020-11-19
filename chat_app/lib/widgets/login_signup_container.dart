import 'package:flutter/material.dart';
import 'custom_input.dart';

class Containment extends StatefulWidget {
  @override
  _ContainmentState createState() => _ContainmentState();
}

class _ContainmentState extends State<Containment> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: 300,
        width: 300,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.redAccent,
              width: 2,
            )
        ),
        padding: EdgeInsets.only(left: 10,right: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextBox(value: "Username",flag: false),
              TextBox(value: "Password",flag: true),
              SizedBox(height: 10,),
              SizedBox(
                width: 100,
                child: FlatButton(
                  child: Text("Login"),
                  color: Colors.redAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  onPressed: (){

                  },
                ),
              )
            ],
          ),
      ),
    );
  }
}

class Containment2 extends StatefulWidget {
  @override
  _Containment2State createState() => _Containment2State();
}

class _Containment2State extends State<Containment2> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: 350,
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.redAccent,
            width: 2,
          )
        ),
        padding: EdgeInsets.only(left: 10,right: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextBox(value: "Email",flag: false),
            TextBox(value: "Username",flag: false),
            TextBox(value: "Password",flag: true),
            SizedBox(height: 10,),
            SizedBox(
              width: 100,
              child: FlatButton(
                child: Text("Signup"),
                color: Colors.redAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                onPressed: (){

                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
