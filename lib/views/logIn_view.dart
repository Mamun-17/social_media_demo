import 'package:flutter/material.dart';

class LogInView extends StatefulWidget {
  const LogInView({super.key});

  @override
  State<LogInView> createState() => _LogInViewState();
}

class _LogInViewState extends State<LogInView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.withOpacity(.3),

        body: Center(
          child: Column(
            children: [
              CircleAvatar(
                backgroundColor: Colors.amber,
                radius: 45,
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width*.8,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.all(Radius.circular(5)),
                 color: Colors.black
               ),
              )
            ],


          ),
        )
      ),
    );
  }
}
