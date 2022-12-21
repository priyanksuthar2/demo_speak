// ignore_for_file: library_private_types_in_public_api

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:speech_to_text/speech_to_text.dart';

import 'modal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  FlutterTts ftts = FlutterTts();
  SpeechToText _speechToText = SpeechToText();
  bool _speechEnabled = false;
  String _lastWords = '';
  String _clickitem = "Select item";
  var languages = ["en", "hi", "ar-eg", "de-ch"];
  List<modal> _modal = [];
  bool _iseditable = false;

  @override
  void initState() {
    super.initState();
    _initSpeech();
    _iseditable = false;
  }

  void _initSpeech() async {
    _speechEnabled = await _speechToText.initialize();
    setState(() {});
  }

  void Snackbar(String text) {
    final snackBar = SnackBar(
      content: Text(text),
      action: SnackBarAction(
        label: 'Undo',
        onPressed: () {},
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void _startListening(int index, bool bool) async {
    print("Start listening");
    Snackbar('Start Speaking');
    await _speechToText.listen(
      onResult: (result) {
        print(result);
        _lastWords = "";
        _lastWords = result.recognizedWords;
        if (bool) {
          _modal[index].name = _lastWords;
        } else {
          _modal[index].second_name = _lastWords;
        }
        print(_lastWords);
      },
    );
    setState(() {});
  }

  void _stopListening(int index) async {
    print("Stop listening");
    Snackbar("Stop listening");
    await _speechToText.stop();
    _modal[index].is_listening = false;
    _modal[index].is_listening_name = false;
    setState(() {});
  }

  void _speaking(String name) async {
    await ftts.setLanguage(_clickitem);
    await ftts.setSpeechRate(0.3);
    await ftts.setVolume(1.0);
    await ftts.setPitch(1);

    //play text to sp
    var result = await ftts.speak(name);
    if (result == 1) {
    } else {}
  }

  void items_1_add() {
    _modal.add(modal(
        id: 1,
        name: "Dishp",
        second_name: "Ravi",
        img_url:
            'https://images.pexels.com/photos/1133957/pexels-photo-1133957.jpeg',
        is_listening: false,
        is_listening_name: false));
    _modal.add(modal(
        id: 1,
        name: "Dishp1",
        second_name: "Ravi",
        img_url:
            'https://images.pexels.com/photos/1133957/pexels-photo-1133957.jpeg',
        is_listening: false,
        is_listening_name: false));
    _modal.add(modal(
        id: 1,
        name: "Dishp",
        second_name: "Ravi",
        img_url:
            'https://images.pexels.com/photos/1133957/pexels-photo-1133957.jpeg',
        is_listening: false,
        is_listening_name: false));
    _modal.add(modal(
        id: 1,
        name: "Dishp",
        second_name: "Ravi",
        img_url:
            'https://images.pexels.com/photos/1133957/pexels-photo-1133957.jpeg',
        is_listening: false,
        is_listening_name: false));
    _modal.add(modal(
        id: 1,
        name: "Dishp",
        second_name: "Ravi",
        img_url:
            'https://images.pexels.com/photos/1133957/pexels-photo-1133957.jpeg',
        is_listening: false,
        is_listening_name: false));
    _modal.add(modal(
        id: 1,
        name: "Dishp",
        second_name: "Ravi",
        img_url:
            'https://images.pexels.com/photos/1133957/pexels-photo-1133957.jpeg',
        is_listening: false,
        is_listening_name: false));
  }

  void items_2_add() {
    _modal.add(modal(
        id: 1,
        name: "Priyank",
        second_name: "Ravi",
        img_url:
            'https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg',
        is_listening: false,
        is_listening_name: false));
    _modal.add(modal(
        id: 1,
        name: "Priyank",
        second_name: "Ravi",
        img_url:
            'https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg',
        is_listening: false,
        is_listening_name: false));
    _modal.add(modal(
        id: 1,
        name: "Priyank",
        second_name: "Ravi",
        img_url:
            'https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg',
        is_listening: false,
        is_listening_name: false));
    _modal.add(modal(
        id: 1,
        name: "Priyank",
        second_name: "Ravi",
        img_url:
            'https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg',
        is_listening: false,
        is_listening_name: false));
    _modal.add(modal(
        id: 1,
        name: "Priyank",
        second_name: "Ravi",
        img_url:
            'https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg',
        is_listening: false,
        is_listening_name: false));
    _modal.add(modal(
        id: 1,
        name: "Priyank",
        second_name: "Ravi",
        img_url:
            'https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg',
        is_listening: false,
        is_listening_name: false));
  }

  void items_3_add() {
    _modal.add(modal(
        id: 1,
        name: "_priyank",
        second_name: "Ravi",
        img_url:
            'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg',
        is_listening: false,
        is_listening_name: false));
    _modal.add(modal(
        id: 1,
        name: "_priyank",
        second_name: "Ravi",
        img_url:
            'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg',
        is_listening: false,
        is_listening_name: false));
    _modal.add(modal(
        id: 1,
        name: "_priyank",
        second_name: "Ravi",
        img_url:
            'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg',
        is_listening: false,
        is_listening_name: false));
    _modal.add(modal(
        id: 1,
        name: "_priyank",
        second_name: "Ravi",
        img_url:
            'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg',
        is_listening: false,
        is_listening_name: false));
    _modal.add(modal(
        id: 1,
        name: "_priyank",
        second_name: "Ravi",
        img_url:
            'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg',
        is_listening: false,
        is_listening_name: false));
    _modal.add(modal(
        id: 1,
        name: "_priyank",
        second_name: "Ravi",
        img_url:
            'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg',
        is_listening: false,
        is_listening_name: false));
  }

  void items_4_add() {
    _modal.add(modal(
        id: 1,
        name: "_suthar",
        second_name: "Ravi",
        img_url:
            'https://cdn.pixabay.com/photo/2015/12/01/20/28/road-1072821_960_720.jpg',
        is_listening: false,
        is_listening_name: false));
    _modal.add(modal(
        id: 1,
        name: "_suthar",
        second_name: "Ravi",
        img_url:
            'https://cdn.pixabay.com/photo/2015/12/01/20/28/road-1072821_960_720.jpg',
        is_listening: false,
        is_listening_name: false));
    _modal.add(modal(
        id: 1,
        name: "_suthar",
        second_name: "Ravi",
        img_url:
            'https://cdn.pixabay.com/photo/2015/12/01/20/28/road-1072821_960_720.jpg',
        is_listening: false,
        is_listening_name: false));
    _modal.add(modal(
        id: 1,
        name: "_suthar",
        second_name: "Ravi",
        img_url:
            'https://cdn.pixabay.com/photo/2015/12/01/20/28/road-1072821_960_720.jpg',
        is_listening: false,
        is_listening_name: false));
    _modal.add(modal(
        id: 1,
        name: "_suthar",
        second_name: "Ravi",
        img_url:
            'https://cdn.pixabay.com/photo/2015/12/01/20/28/road-1072821_960_720.jpg',
        is_listening: false,
        is_listening_name: false));
    _modal.add(modal(
        id: 1,
        name: "_suthar",
        second_name: "Ravi",
        img_url:
            'https://cdn.pixabay.com/photo/2015/12/01/20/28/road-1072821_960_720.jpg',
        is_listening: false,
        is_listening_name: false));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text to Speech in Flutter"),
        backgroundColor: Colors.redAccent,
        actions: [
          IconButton(
              onPressed: () {
                if (_iseditable) {
                  _iseditable = false;
                } else {
                  _iseditable = true;
                }
                setState(() {});
              },
              icon: Icon(Icons.edit))
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        alignment: Alignment.center,
        child: Column(
          children: [
            DropdownButton(
              hint: Text(_clickitem),
              icon: const Icon(Icons.keyboard_arrow_down),
              items: languages.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _clickitem = newValue!;

                  if (newValue == "en") {
                    _modal.clear();
                    items_1_add();
                  }
                  if (newValue == "hi") {
                    _modal.clear();
                    items_2_add();
                  }
                  if (newValue == "ar-eg") {
                    _modal.clear();
                    items_3_add();
                  }
                  if (newValue == "de-ch") {
                    _modal.clear();
                    items_4_add();
                  }
                });
              },
            ),
            const SizedBox(
              height: 20,
            ),
            // TextFormField(
            //   controller: _controller,
            // ),
            // ElevatedButton(
            //     onPressed: () {
            //       opencheckout();
            //     },
            //     child: Text("click to pay")),
            // // Text(_lastWords),
            // const SizedBox(
            //   height: 20,
            // ),
            // Text(
            //   _speechToText.isNotListening
            //       ? 'Tap the microphone to start listening...'
            //       : 'Pause',
            // ),
            // const SizedBox(
            //   height: 10,
            // ),
            // ElevatedButton(
            //   onPressed: _speechToText.isNotListening
            //       ? _startListening
            //       : _stopListening,
            //   child: Icon(
            //       _speechToText.isNotListening ? Icons.mic_off : Icons.mic),
            // ),
            // ElevatedButton(
            //     onPressed: () async {
            //       //your custom configuration
            //       if (_clickitem == "") {
            //         final snackBar = SnackBar(
            //           content: const Text('Dropdown Value Not selected'),
            //           action: SnackBarAction(
            //             label: '',
            //             onPressed: () {
            //               // Some code to undo the change.
            //             },
            //           ),
            //         );
            //         ScaffoldMessenger.of(context).showSnackBar(snackBar);
            //       } else if (_lastWords == "") {
            //         final snackBar = SnackBar(
            //           content: const Text('Speak First'),
            //           action: SnackBarAction(
            //             label: '',
            //             onPressed: () {
            //               // Some code to undo the change.
            //             },
            //           ),
            //         );
            //         ScaffoldMessenger.of(context).showSnackBar(snackBar);
            //       } else {
            //         //_speaking();
            //       }
            //     },
            //     child: const Text("Text to Speech")),
            // const SizedBox(
            //   height: 20,
            // ),
            Expanded(
              //height: 200,
              child: ListView.builder(
                itemCount: _modal.length,
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 200,
                        child: _iseditable
                            ? overlay(context, _modal[index].img_url)
                            : Container(
                                child: Image.network(_modal[index].img_url),
                              ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text("ID ${_modal[index].id}"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () {
                              _speaking(_modal[index].name);
                            },
                            child: Text("Name:- ${_modal[index].name}"),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              if (_modal[index].is_listening) {
                                _modal[index].is_listening = false;
                              } else {
                                _modal[index].is_listening = true;
                              }

                              _modal[index].is_listening
                                  ? _startListening(index, true)
                                  : _stopListening(index);
                              setState(() {});
                            },
                            child: Icon(_modal[index].is_listening
                                ? Icons.mic
                                : Icons.mic_off),
                          ),
                          IconButton(
                            onPressed: () {
                              _speaking(_modal[index].name);
                            },
                            icon: Icon(Icons.volume_up_outlined),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () {
                              _speaking(_modal[index].second_name);
                            },
                            child: Text("Name:- ${_modal[index].second_name}"),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              if (_modal[index].is_listening_name) {
                                _modal[index].is_listening_name = false;
                              } else {
                                _modal[index].is_listening_name = true;
                              }

                              setState(() {});
                              _modal[index].is_listening_name
                                  ? _startListening(index, true)
                                  : _stopListening(index);
                            },
                            child: Icon(_modal[index].is_listening_name
                                ? Icons.mic
                                : Icons.mic_off),
                          ),
                          IconButton(
                            onPressed: () {
                              _speaking(_modal[index].second_name);
                            },
                            icon: const Icon(Icons.volume_up_outlined),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      )
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget overlay(BuildContext context, String img_url) {
    return Stack(
      alignment: FractionalOffset.center,
      children: <Widget>[
        Positioned.fill(
          child: AspectRatio(
            //aspectRatio: controller.value.aspectRatio,
            aspectRatio: 1,
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.camera_alt_outlined),
            ),
          ),
        ),
        Positioned.fill(
          child: Opacity(
            opacity: 0.4,
            child: Image.network(
              img_url,
              fit: BoxFit.fill,
              height: 200,
            ),
          ),
        ),
      ],
    );
  }
}
