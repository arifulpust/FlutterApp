import 'package:flutter/material.dart';
import 'widgets/custom_widget.dart';
import 'constants/app_constant.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return QuizAppState();
  }
}

// class MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     throw UnimplementedError();
//   }
// }
class QuizAppState extends State<QuizApp> {
  // This widget is the root of your application.
  var questionsIndex = 0;
  var questions = [
    "What is your favorite animal?",
    "what is your favorite language?"
  ];
  void pressAnswer() {
    setState(() {
      if (questionsIndex == 1) {
        questionsIndex = 0;
      } else {
        questionsIndex = 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme:
            ThemeData(primarySwatch: Colors.blue, primaryColor: Colors.green),
        home: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: CustomText('First flutter app', Colors.white, fontSize20,
                  FontWeight.w600),
            ),
            backgroundColor: Colors.white,
            body: Container(
              margin: EdgeInsets.only(left: fontSize20, right: fontSize20),
              child: Column(
                children: <Widget>[
                  SizedBox(height: spacing20),
                  CustomContainer(
                    Colors.grey,
                    borderRedius6,
                    CustomText(questions[questionsIndex], Colors.white,
                        fontSize30, FontWeight.w500),
                  ),
                  SizedBox(height: fontSize20),
                  Answer(pressAnswer),
                  Answer(pressAnswer),
                  Answer(pressAnswer),
                  Answer(pressAnswer),
                ],
              ),
            )));
  }
}
