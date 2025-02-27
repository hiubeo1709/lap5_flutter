import 'package:flutter/material.dart';

class Button {
  final String audioName;
  final Color color;

  const Button({required this.audioName, required this.color});
}

const allButtons = [
  Button(audioName: 'note1', color: Colors.red),
  Button(audioName: 'note2', color: Colors.orange),
  Button(audioName: 'note3', color: Colors.yellow),
  Button(audioName: 'note4', color: Colors.lime),
  Button(audioName: 'note5', color: Colors.green),
  Button(audioName: 'note6', color: Colors.blue),
  Button(audioName: 'note7', color: Colors.purple),
];
