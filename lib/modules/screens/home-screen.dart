import 'package:flutter/material.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:todo_app/modules/screens/settings.dart';
import 'package:todo_app/widgets/taskView.dart';

import '../../widgets/model-bottom-view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  var _focusedDate = DateTime.now();
  final EasyInfiniteDateTimelineController _controller =
      EasyInfiniteDateTimelineController();
  List<Widget> screen=[
   const TaskView(),
  const  SettingsView(),
  ];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
      // 3shan wra 2l add yban 2l scrollable mn wrah
      extendBody: true,

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body:
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 60 ),
            child: Stack(
              alignment: Alignment.bottomCenter,
              clipBehavior: Clip.none,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 10, right: 10, top: 55, bottom: 15),
                  color: theme.primaryColor,
                  width: mediaQuery.size.width,
                  height: mediaQuery.size.height * 0.23,
                  child: Text(
                    ' TO DO List',
                    style: theme.textTheme.displaySmall?.copyWith(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Positioned(
                  top: 150,
                  child: SizedBox(
                    width: mediaQuery.size.width,
                    child: EasyInfiniteDateTimeLine(
                      showTimelineHeader: false,
                      controller: _controller,
                      firstDate: DateTime(2024),
                      focusDate: _focusedDate,
                      lastDate: DateTime(2024, 12, 31),
                      onDateChange: (selectedDate) {
                        setState(() {
                          _focusedDate = selectedDate;
                        });
                      },
                      dayProps: EasyDayProps(
                        activeDayStyle: DayStyle(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          dayStrStyle: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold,
                            color: theme.primaryColor,
                            fontSize: 14,
                          ),
                          dayNumStyle: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold,
                            color: theme.primaryColor,
                            fontSize: 14,
                          ),
                          monthStrStyle: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold,
                            color: theme.primaryColor,
                            fontSize: 14,
                          ),
                        ),
                        inactiveDayStyle: DayStyle(
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.70),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          dayStrStyle: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 14,
                          ),
                          dayNumStyle: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 14,
                          ),
                          monthStrStyle: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: ListView.builder(
                itemBuilder: ( context,  index) => const TaskView(),
                itemCount: 10,
              ),
            ),
          ),
        ],
      ),
    floatingActionButton: FloatingActionButton(
        onPressed: () {
         showModalBottomSheet(context: context, builder: (context)=>const BottomSheetView(),);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        elevation: 5,
        child: CircleAvatar(
          radius: 23,
          backgroundColor: theme.primaryColor,
          child: Icon(
            Icons.add,
            size: 30,
            color: Colors.white,
          ),
        ),
      ),

      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 15,
        height: 95,
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/list.png"),
              ),
              label: "Tasks",

            ),
            BottomNavigationBarItem(

              icon: ImageIcon(
                AssetImage("assets/settings.png"),
              ),
              label: "Settings",
            ),
          ],
        ),
      ),
    );
  }
}
