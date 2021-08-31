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
        appBar: AppBar(),
        body:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
         Card (
           color:Colors.white70,
           child:
             Column(
               children:[
                 Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                   CustomeText(text: "Android Date"),
                   DateTimePicker(
                     SelectedDate: DateTime.now(),
                     SelectedDateFunction: (DateTime SelectedTime) {
                       SelectedDate = SelectedTime;
                     },
                     dateMode: DateMode.normal,
                     dateChoices: DateChoices.date,
                   ),
                 ]),
                 Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                   CustomeText(text: "Android Time"),
                   DateTimePicker(
                     SelectedDate: DateTime.now(),
                     SelectedDateFunction: (DateTime SelectedTime) {
                       SelectedDate = SelectedTime;
                     },
                     dateMode: DateMode.normal,
                     dateChoices: DateChoices.time,
                   ),
                 ]),
                 Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                   CustomeText(text: "Android Date and Time"),
                   DateTimePicker(
                     SelectedDate: DateTime.now(),
                     SelectedDateFunction: (DateTime SelectedTime) {
                       SelectedDate = SelectedTime;
                     },
                     dateMode: DateMode.normal,
                     dateChoices: DateChoices.dateAndTime,
                   ),
                 ]),

               ]
             )
         ),

              Card(
                child:Column(

                 children:[
               Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children:[
                   CustomeText(text: "IOS Date "),

                   DateTimePicker(
                     SelectedDate: DateTime.now(),
                     SelectedDateFunction: (DateTime SelectedTime) {
                       SelectedDate = SelectedTime;
                     },
                     dateMode: DateMode.cupertino,
                     dateChoices: DateChoices.date,
                   ),

                 ]
               ),
                   Row(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children:[
                         CustomeText(text: "IOS TIME "),

                         DateTimePicker(
                           SelectedDate: DateTime.now(),
                           SelectedDateFunction: (DateTime SelectedTime) {
                             SelectedDate = SelectedTime;
                           },
                           dateMode: DateMode.cupertino,
                           dateChoices: DateChoices.time,
                         ),

                       ]
                   ),

                   Row(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children:[
                         CustomeText(text: "IOS  Date and TIME "),

                         DateTimePicker(
                           SelectedDate: DateTime.now(),
                           SelectedDateFunction: (DateTime SelectedTime) {
                             SelectedDate = SelectedTime;
                           },
                           dateMode: DateMode.cupertino,
                           dateChoices: DateChoices.dateAndTime,
                         ),

                       ]
                   ),
                 ]

                )
              )
        ]));
  }
}

// class CustomeRow extends StatelessWidget {
//   const CustomeRow({Key? key,required this.children}) : super(key: key);
//  final List<Widget> children ;
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children:[
//         [children]
//       ]
//     );
//   }
// }

class CustomeText extends StatelessWidget {
  const CustomeText(
      {Key? key,
      required this.text,
      this.fontSize = 16,
      this.fontColor = Colors.black})
      : super(key: key);
  final String text;

  final double fontSize;
  final Color fontColor;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(fontSize: fontSize, color: fontColor));
  }
}
