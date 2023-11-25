import 'package:flutter/material.dart';

class Containers_For_LogIn_SignUp extends StatelessWidget {
  String text;
   Containers_For_LogIn_SignUp({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(height:  50,
      width: MediaQuery.of(context).size.width*.8,
      child: Center(child: Text(text,
        style: TextStyle(
            color: Colors.black,
            fontSize: 20
        ),),),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          color: Colors.amber
      ),);
  }
}
