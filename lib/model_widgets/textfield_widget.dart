import 'package:flutter/material.dart';

class TextField_For_LogIn_SignUp extends StatelessWidget {
  TextEditingController textEditingController;
  String labelText;
 TextField_For_LogIn_SignUp({super.key,required this.textEditingController,required this.labelText});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width*.8,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            color: Colors.black
        ),

        child: TextField(
          controller: textEditingController,

          cursorColor: Colors.white,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: 5,right: 5,top: 5),

              hintStyle: TextStyle(
                  color: Colors.grey
              ),

              labelText: "   ${labelText}",
              labelStyle: TextStyle(
                  color: Colors.white
              ),
              border: InputBorder.none
          ),
        ),
      ),
    );
  }
}
