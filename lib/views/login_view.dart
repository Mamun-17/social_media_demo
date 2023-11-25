import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social_media_demo/all_providers/provider_for_login_view.dart';
import 'package:social_media_demo/all_providers/provider_for_signup_view.dart';
import 'package:social_media_demo/model_widgets/containers_for_login_signup.dart';
import 'package:social_media_demo/model_widgets/textfield_widget.dart';
import 'package:social_media_demo/views/signup_view.dart';

class LogInView extends StatefulWidget {
  const LogInView({super.key});

  @override
  State<LogInView> createState() => _LogInViewState();
}

class _LogInViewState extends State<LogInView> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Provider_For_LogIn>(
        builder: (ct,pfl,_) {
          return SafeArea(
            child: GestureDetector(
              onTap: (){
                FocusScope.of(context).unfocus();
              },
              child: Scaffold(


                  backgroundColor: Colors.grey.withOpacity(.3),

                  body: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextField_For_LogIn_SignUp(textEditingController: pfl.email_controller_for_login, labelText: "Email"),
                        TextField_For_LogIn_SignUp(textEditingController: pfl.email_controller_password, labelText: "Password"),
                        SizedBox(height: 60,),
                        InkWell(
                          onTap: (){

                          },
                          child: Containers_For_LogIn_SignUp(text: 'Log In',),
                        ),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don't have an account?",
                            style: TextStyle(color: Colors.white),),
                            SizedBox(width: 15,),
                            InkWell(
                              onTap: (){
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignUpView()),);
                              },
                              child: Text("Sign Up",
                              style: TextStyle(
                                color: Colors.blue
                              ),),
                            )
                          ],
                        ),
                        SizedBox(height: 100,)




                      ],


                    ),
                  )
              ),
            ),
          );
        }
    );
  }
}
