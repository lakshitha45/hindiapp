import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HindiVoiceDemo(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HindiVoiceDemo extends StatefulWidget {
  @override
  _HindiVoiceDemoState createState() => _HindiVoiceDemoState();
}

class _HindiVoiceDemoState extends State<HindiVoiceDemo> {
  FlutterTts flutterTts = FlutterTts();

  speakHindi() async {
    await flutterTts.setLanguage("hi-IN");
    await flutterTts.setPitch(1);
    await flutterTts.speak("नमस्ते");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hindi App")),
      body: Center(
        child: ElevatedButton(
          onPressed: speakHindi,
          child: Text("Click"),
        ),
      ),
    );
  }
}