import 'package:flutter/material.dart';
import 'package:todo_app/core/page_route_name.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}
TextEditingController fullNameController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();
var formKey=GlobalKey<FormState>();
bool isObscured =true;

class _RegistrationState extends State<Registration> {

    @override
    Widget build(BuildContext context) {
      var mediaQuery = MediaQuery.of(context);
      var theme = Theme.of(context);
      return Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          decoration: const BoxDecoration(
            color: Color(0xFFDFECDB),
            image: DecorationImage(
              image: AssetImage('assets/loginbckground.jpg'),
              fit: BoxFit.cover, // This will cover the entire screen
            ),
          ),
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.only(
                  top: mediaQuery.size.height * 0.1, left: 20, right: 20),
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Create Account',
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodySmall,
                      // Use a larger text style
                    ),
                    SizedBox(
                      height: mediaQuery.size.height * 0.2,
                    ),

                    const SizedBox(height: 35),
                    Container(
                      padding: const EdgeInsets.only(top: 10),
                      child: TextFormField(
                        validator:(value){
                          if(value ==null || value.trim().isEmpty){
                            return "please enter Full Name ";

                          } return null;
                          },

                        controller: fullNameController,

                        cursorColor: theme.primaryColor,
                        cursorHeight: 25,
                        decoration: InputDecoration(
                          suffixIcon: const Icon(Icons.person_outline),
                          label: Text(
                            "Full Name ",
                            style: theme.textTheme.displaySmall,
                          ),
                          errorStyle: const TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 13,

                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide:
                            BorderSide(color: theme.primaryColor, width: 2),
                          ),
                        ),
                        style: const TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: Colors.black,
                        ),
                        // Hide password input


                      ),
                    ),
                    const SizedBox(height: 15),
                    Container(
                      padding: const EdgeInsets.only(top: 10),
                      child: TextFormField(
                        validator:(value){
                          if(value ==null || value.trim().isEmpty){
                            return "please enter valid Email";

                          }
                          RegExp emailRegExp = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
                          if (!emailRegExp.hasMatch(value)) {
                            return 'please enter valid Email!';
                          }

                          return null;

                        },
                        controller: emailController,
                        cursorColor: theme.primaryColor,
                        cursorHeight: 25,
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: Colors.black,
                        ),
                        decoration: InputDecoration(
                          hintText: "Enter your e-mail address",
                          label: Text(
                            "Email",
                            style: theme.textTheme.displaySmall,
                          ),
                          fillColor: Colors.white,
                          focusedBorder: UnderlineInputBorder(
                            borderSide:
                            BorderSide(color: theme.primaryColor, width: 2),
                          ),
                          suffixIcon: const Icon(Icons.email_outlined),
                          errorStyle: const TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 13,

                          ),),
                      ),
                    ),
                    const SizedBox(height: 15),

                    Container(
                      padding: const EdgeInsets.only(top: 10),
                      child: TextFormField(
                        validator:(value){
                          if(value ==null || value.trim().isEmpty){
                            return "please enter valid password";

                          }},
                        obscureText: isObscured,
                        controller: passwordController,
                        cursorColor: theme.primaryColor,
                        cursorHeight: 25,
                        decoration: InputDecoration(

                          label: Text(
                            "Password",
                            style: theme.textTheme.displaySmall,
                          ),
                          suffixIcon: InkWell(
                              onTap:(){
                                setState(() {
                                  isObscured =!isObscured;
                                });
                              },

                              child:

                              Icon(
                                  isObscured?
                                  Icons.visibility: Icons.visibility_off)),
                          errorStyle: const TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 13,

                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide:
                            BorderSide(color: theme.primaryColor, width: 2),
                          ),
                        ),
                        style: const TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: Colors.black,
                        ),
                        // Hide password input


                      ),
                    ),


                    SizedBox(height: 20,),


                    FilledButton(
                      style: FilledButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                        backgroundColor: theme.primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      onPressed: () {
                        if(formKey.currentState!.validate()){

                        }
                      },
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Create Account'),
                          Icon(Icons.arrow_forward),
                        ],

                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),
        ),
      );
    }
  }

