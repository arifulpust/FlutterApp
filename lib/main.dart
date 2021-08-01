import 'package:flutter/material.dart';
import 'widgets/custom_widget.dart';
import 'constants/app_constant.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  void pressAnswer() {
    debugPrint("answer: ");
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
              title: TitleText('First flutter app', Colors.white, fontSize20),
            ),
            backgroundColor: Colors.white,
            body: Container(
              margin: EdgeInsets.only(left: fontSize20, right: fontSize20),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 50),
                  TitleText('First Collumn', Colors.black, fontSize30),
                  SizedBox(height: fontSize20),
                  TextButton(
                    onPressed: pressAnswer,
                    style: flatButtonStyle,
                    child: TitleText(
                      'Answer 1',
                      Colors.black,
                      fontSize20,
                    ),
                  ),
                  TextButton(
                    onPressed: pressAnswer,
                    style: flatButtonStyle,
                    child: TitleText(
                      'Answer 2',
                      Colors.black,
                      fontSize20,
                    ),
                  ),
                  TextButton(
                    onPressed: pressAnswer,
                    style: flatButtonStyle,
                    child: TitleText(
                      'Answer 3',
                      Colors.black,
                      fontSize20,
                    ),
                  )
                ],
              ),
            )));
  }
}
