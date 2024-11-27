import 'package:flutter/material.dart';

class TaskView extends StatelessWidget {
  const TaskView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5,vertical: 8),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      height: mediaQuery.size.height * 0.16,
      child: ListTile(
        contentPadding: const EdgeInsets.only(left: 25, top: 20),
        title: Text(
          'Frist Task',
          style: theme.textTheme.displaySmall
              ?.copyWith(color: theme.primaryColor, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        subtitle: Row(
          children: [
            Icon(Icons.access_alarm,),
            SizedBox(width: 5,),
            Text(
              'go to school',
              style: theme.textTheme.displaySmall,
            ),
          ],
        ),
        leading: Container(
          height: 60,
          width: 6,
          color: theme.primaryColor,
        ),
        trailing: Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            
            width: 75,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            color: theme.primaryColor,
          ),
          child: Icon(Icons.check,size: 30,color: Colors.white,),
          ),
        ),
      ),
    );
  }
}
