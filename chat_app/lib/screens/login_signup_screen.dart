import 'package:chat_app/widgets/content_for_switch_button.dart';
import 'package:chat_app/widgets/login_signup_container.dart';
import 'package:flutter/material.dart';

class ScreenLoginSignUp extends StatefulWidget {
  @override
  _ScreenLoginSignUpState createState() => _ScreenLoginSignUpState();
}

class _ScreenLoginSignUpState extends State<ScreenLoginSignUp> {
  List<Type>content=[Containment,Containment2];
  List<bool>isSelected=[true,false];
  Color selected=Colors.white;
  Color diSelected=Colors.grey;
  bool flag=true;
  List<Content>widgets=[Content(value:"Login"),
                    Content(value: "Register")];
  @override
  Widget build(BuildContext context) {
    print("hello");
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("hello"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            Row(
              children: [
                SizedBox(width: 20,),
                Container(
                height: 26,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                      width: 0.3,
                    )
                ),
                child: ToggleButtons(
                  color: Colors.grey,
                  children: [
                    widgets[0],
                    widgets[1]
                  ],
                  onPressed: (int index){
                    setState(() {
                      for(int i=0;i<isSelected.length;i++)
                        i==index?isSelected[i]=true:isSelected[i]=false;
                      flag=index==0;
                    });
                  },
                  isSelected: isSelected,
                  selectedColor: Colors.redAccent,
                  selectedBorderColor: Colors.redAccent,
                ),
          ),
              ],
            ),
          SizedBox(height: 30,),
          flag?Containment():Containment2(),
        ],
      ),
    );
  }
}
