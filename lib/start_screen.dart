import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz,{super.key});

  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(130, 255, 255, 255),
          ),
          // Opacity(
          //     opacity: 0.5,
          //     child: Image.asset('assets/images/quiz-logo.png', width: 300)
          // ),
          const SizedBox(
            height: 80,
          ),
          const Text(
            'Learn Flutter The Fun Way!',
            style: TextStyle(
                color: Color.fromARGB(255, 237, 223, 252), fontSize: 24),
          ),
          const SizedBox(
            height: 30,
          ),
          /*
               OutlinedButton(
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            child:const Text('Start Quiz') ,
            onPressed: (){
            },
          ),
          * */
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz'),
            onPressed:startQuiz,
          ),
        ],
      ),
    );
  }
}
