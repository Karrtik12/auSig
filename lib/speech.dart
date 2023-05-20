import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;

class Speech extends StatefulWidget {
  const Speech({Key? key}) : super(key: key);

  @override
  State<Speech> createState() => SpeechState();
}

class SpeechState extends State<Speech> {
  var _speechToText = stt.SpeechToText();
  bool isListening = false;
  String myText = "Click on the button to start transcribing";
  void listen() async {
    if (!isListening) {
      bool available = await _speechToText.initialize(
        onStatus: (status) => print("$status"),
        onError: (errorNotification) => print("$errorNotification"),
      );
      if (available) {
        setState(() {
          isListening = true;
        });
        _speechToText.listen(
          onResult: (result) => setState(() {
            myText = result.recognizedWords;
          }),
        );
      }
    } else {
      setState(() {
        isListening = false;
      });
      _speechToText.stop();
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _speechToText = stt.SpeechToText();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFF5EAE3),
      appBar: AppBar(
        backgroundColor: Color(0xFF17262A),
        title: (Text("Au-Sig",
            style: TextStyle(
                fontSize: 25.0,
                color: Color(0XFFF5EAE3),
                fontFamily: 'Anton',
                letterSpacing: 2))),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              myText,
              style: TextStyle(
                  fontSize: 21.0,
                  fontFamily: 'Dosis',
                  letterSpacing: 3,
                  fontWeight: FontWeight.w900),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: AvatarGlow(
        animate: isListening,
        repeat: true,
        endRadius: 80,
        glowColor: Color(0xFF17262A),
        duration: Duration(milliseconds: 1000),
        child: FloatingActionButton(
          backgroundColor: Color(0xFF17262A),
          onPressed: () {
            listen();
          },
          child: Icon(isListening ? Icons.mic : Icons.mic_off),
        ),
      ),
    );
  }
}
