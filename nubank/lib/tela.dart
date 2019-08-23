import 'package:flutter/material.dart';


class Tela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,        
      body: Center(
        child: Image.network('https://aws1.discourse-cdn.com/nubank/original/2X/7/7d9b6a29078a193f564088d4c10f2f8e4fcbfce2.png', scale: 2,),
        
      ),
      
    );
  }
}