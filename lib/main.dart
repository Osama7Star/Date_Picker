import 'package:flutter/material.dart';

import 'date_picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,

      ),
      debugShowCheckedModeBanner: false,
      home: const ShowTime(),
    );
  }
}

class ShowTime extends StatefulWidget {
  const ShowTime({Key? key}) : super(key: key);

  @override
  _ShowTimeState createState() => _ShowTimeState();
}

class _ShowTimeState extends State<ShowTime> {
  DateTime SelectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children:[
          DateTimePicker(
            SelectedDate: DateTime.now(),
            SelectedDateFunction:
                (DateTime SelectedTime) {
              SelectedDate = SelectedTime;
            },
              dateMode :DateMode.normal,
              dateChoices: DateChoices.date,
          ),


          DateTimePicker(
            SelectedDate: DateTime.now(),
            SelectedDateFunction:
                (DateTime SelectedTime) {
              SelectedDate = SelectedTime;

            },
            dateMode :DateMode.normal,
            dateChoices: DateChoices.dateAndTime,
          ),
          DateTimePicker(
            SelectedDate: DateTime.now(),
            SelectedDateFunction:
                (DateTime SelectedTime) {
              SelectedDate = SelectedTime;
            },
            dateMode :DateMode.cupertino,
            dateChoices: DateChoices.date,
          ),
          DateTimePicker(
            SelectedDate: DateTime.now(),
            SelectedDateFunction:
                (DateTime SelectedTime) {
              SelectedDate = SelectedTime;
            },
            dateMode :DateMode.cupertino,
            dateChoices: DateChoices.dateAndTime,
          ),
        ]
      )
    );
  }
}
