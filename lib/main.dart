import 'package:flutter/material.dart';
import 'date_picker.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);

  final bool mode = false;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
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
        appBar: AppBar(),
        body:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Expanded(
            flex:2,
            child: Card(
                color: Colors.white70,
                child: Column(children: [
                  CustomeRow(
                    children: [
                      CustomeText(text: "Android Date"),
                      DateTimePicker(
                        SelectedDate: DateTime.now(),
                        SelectedDateFunction: (DateTime SelectedTime) {
                          SelectedDate = SelectedTime;
                        },
                        dateMode: DateMode.normal,
                        dateChoices: DateChoices.date,
                      ),
                    ],
                  ),

                  ///

                  CustomeRow(
                    children: [
                      CustomeText(text: "Android Time"),
                      DateTimePicker(
                        SelectedDate: DateTime.now(),
                        SelectedDateFunction: (DateTime SelectedTime) {
                          SelectedDate = SelectedTime;
                        },
                        dateMode: DateMode.normal,
                        dateChoices: DateChoices.time,
                      ),
                    ],
                  ),

                  ///

                  CustomeRow(
                    children: [
                      CustomeText(text: "Android Date and Time"),
                      DateTimePicker(
                        SelectedDate: DateTime.now(),
                        SelectedDateFunction: (DateTime SelectedTime) {
                          SelectedDate = SelectedTime;
                        },
                        dateMode: DateMode.normal,
                        dateChoices: DateChoices.dateAndTime,
                      ),
                    ],
                  ),
                ])),
          ),
          Expanded(
            flex:2,
            child: Card(
                child: Column(children: [
              CustomeRow(
                children: [
                  CustomeText(text: "IOS Date "),
                  DateTimePicker(
                    SelectedDate: DateTime.now(),
                    SelectedDateFunction: (DateTime SelectedTime) {
                      SelectedDate = SelectedTime;
                    },
                    dateMode: DateMode.cupertino,
                    dateChoices: DateChoices.date,
                  ),
                ],
              ),
              CustomeRow(
                children: [
                  CustomeText(text: "IOS TIME "),
                  DateTimePicker(
                    SelectedDate: DateTime.now(),
                    SelectedDateFunction: (DateTime SelectedTime) {
                      SelectedDate = SelectedTime;
                    },
                    dateMode: DateMode.cupertino,
                    dateChoices: DateChoices.time,
                  ),
                ],
              ),
              CustomeRow(
                children: [
                  CustomeText(text: "IOS  Date and TIME "),
                  DateTimePicker(
                    SelectedDate: DateTime.now(),
                    SelectedDateFunction: (DateTime SelectedTime) {
                      SelectedDate = SelectedTime;
                    },
                    dateMode: DateMode.cupertino,
                    dateChoices: DateChoices.dateAndTime,
                  ),
                ],
              ),
            ])),
          )
        ]));
  }
}

class CustomeRow extends StatelessWidget {
  CustomeRow({Key? key, required this.children}) : super(key: key);
  var children;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return screenWidth > 400
        ? Padding(
          padding:  EdgeInsets.all(15),
          child: Row(mainAxisAlignment:MainAxisAlignment.spaceEvenly,children: children),
        )
        : Padding(
          padding:  EdgeInsets.symmetric(horizontal: 15,vertical: 15),
          child: Column(mainAxisAlignment:MainAxisAlignment.start ,children: children),
        );
  }
}

class CustomeText extends StatelessWidget {
  const CustomeText(
      {Key? key,
      required this.text,
      this.fontSize = 20,
      this.fontColor = Colors.black})
      : super(key: key);
  final String text;

  final double fontSize;
  final Color fontColor;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(fontSize: 15, color: fontColor));
  }
}
