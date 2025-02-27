import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:lapp5/button.dart';
import 'package:lapp5/xylophone_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Xylophone',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late final AudioPlayer _player;
  final buttons = allButtons;

  @override
  void initState() {
    _player = AudioPlayer();
    super.initState();
  }

  @override
  void dispose() {
    _player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          children: allButtons
              .map((button) => XylophoneButton(
                  color: button.color,
                  onPressed: () async {
                    await _player.play(AssetSource('${button.audioName}.wav'));
                  }))
              .toList()),
    );
  }
}
