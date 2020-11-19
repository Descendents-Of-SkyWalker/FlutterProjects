import 'package:flutter/material.dart';

class SwitchButton extends StatefulWidget {
  @override
  _SwitchButtonState createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  List<bool>isSelected=[true,false];
  Color selected=Colors.white;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 28,
      child: ToggleButtons(
        color: Colors.grey,
          children: [
            Content(value:"Login",),
            Content(value: "Register",)
          ],
        onPressed: (int index){
            setState(() {

            });
        },
        isSelected: isSelected,
        selectedColor: Colors.white,
      ),
    );
  }
}

class Content extends StatelessWidget {
  final String value;
  const Content({this.value});
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(value,
            style: TextStyle(
              ),
            ),
            Container(
              height: 2,
              width: 65,
              color: Colors.white,
            )
          ],
        ),
    );
  }
}
