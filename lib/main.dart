import 'package:adv_basics/quiz.dart';
import 'package:adv_basics/start_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const Quiz(),
  );
}

/*
void main(){
  runApp(MaterialApp(
    home: Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.purple,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/quiz-logo.png',width: 200,height: 200),
              SizedBox(
                height: 150,
              ),
              ElevatedButton(onPressed:(){}, child: Text(
                'Start Quiz',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),)
            ],
          ),
        ),
      ),
    ),
  ),);
}
* */
