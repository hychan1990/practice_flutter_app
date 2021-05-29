import 'package:flutter/material.dart';
import 'package:practice_flutter_app/text_field.dart';
import 'text_editor.dart';
import 'package:flutter_parsed_text/flutter_parsed_text.dart';
void main() => runApp(myApp());

class myApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    //return a Widget here
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(title: Text("appBarTitle"), backgroundColor: Colors.orange, ),
        body: bodyWidget(),)
    );
  }

}
class bodyWidget extends StatefulWidget {
  @override
  _bodyWidgetState createState() => _bodyWidgetState();
}

class _bodyWidgetState extends State<bodyWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: "label",hintText: "hint")
          ),
          OutlinedButton(
            child:Text("BUTTON"),
            onPressed: (){}),
          ParsedText(
            text: "I am a [boy]",
            parse: [
              MatchText(
                type: ParsedType.CUSTOM,
                pattern: "[]"
              )],
          )
        ]
        ),
      );
  }
}
