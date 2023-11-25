import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social_media_demo/all_providers/provider_for_signup_view.dart';
import 'package:social_media_demo/model_widgets/containers_for_login_signup.dart';
import 'package:social_media_demo/model_widgets/textfield_widget.dart';
import 'package:social_media_demo/views/login_view.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Provider_For_SignUp>(
      builder: (ct,pfs,_) {
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
                   Container(
                     height: 100,
                      width: 100,
                      color: Colors.transparent,
                      child: Stack(
                        children: [
                          Center(
                            child: CircleAvatar(

                              backgroundColor: Colors.amber,
                              radius: 45,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: CircleAvatar(
                              backgroundColor: Colors.black,
                              radius: 15,
                              child: Center(child: Icon(Icons.camera_alt_outlined,
                              color: Colors.white,
                              size: 15,)),
                            ),
                          ),

                        ],
                      ),
                    ),
                   SizedBox(height: 60,),
                   TextField_For_LogIn_SignUp(textEditingController: pfs.username_controller, labelText: "Username"),
                    TextField_For_LogIn_SignUp(textEditingController: pfs.email_controller, labelText: "Email"),
                    TextField_For_LogIn_SignUp(textEditingController: pfs.pass_controller, labelText: "Password"),
                TextField_For_LogIn_SignUp(textEditingController: pfs.confirm_pass_controller, labelText: "Confirm Password"),
                    SizedBox(height: 60,),
                    InkWell(
                      onTap: (){

                      },
                      child: Containers_For_LogIn_SignUp(text: 'Sign Up',),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have an account?",
                          style: TextStyle(color: Colors.white),),
                        SizedBox(width: 15,),
                        InkWell(
                          onTap: (){
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LogInView()),);
                          },
                          child: Text("Log In",
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
