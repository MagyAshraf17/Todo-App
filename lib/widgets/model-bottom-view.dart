import 'package:flutter/material.dart';

class BottomSheetView extends StatelessWidget {
  const BottomSheetView({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var theme = Theme.of(context);
    return Container(

      child:  Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 15,bottom: 10),
            child :Text(
              'Add New Task',
              style: theme.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: TextFormField(
              validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  return "please enter your task";
                }
            
            
                return null;
              },
             // controller: emailController,
              cursorColor: theme.primaryColor,
              cursorHeight: 25,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
                color: Colors.black,
              ),
              decoration: InputDecoration(
                // hintText: "Enter your Task",
                label: Text(
                  "New Task",
                  style: theme.textTheme.displaySmall,
                ),
                fillColor: Colors.white,
                focusedBorder: UnderlineInputBorder(
                  borderSide:
                  BorderSide(color: theme.primaryColor, width: 2),
                ),
            
                errorStyle: const TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 13,
                ),
              ),
            ),
          ),
          Container(
            
            //padding: EdgeInsets.only(top: 15,bottom: 10),
            child :Text(
              textAlign: TextAlign.start,
              'Select Time',
              style: theme.textTheme.bodySmall?.copyWith(fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
