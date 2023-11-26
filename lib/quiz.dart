
import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/questions_screen.dart';
import 'package:adv_basics/results_screen.dart';
import 'package:adv_basics/start_screen.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget{
  const Quiz({super.key});

  @override
  State<Quiz> createState(){
    return _QuizState();
  }
}

class _QuizState extends State<Quiz>{

  final List<String> selectedAnswer = [];
  // Widget? activeScreen;
  //
  // @override
  // void initState() {
  //   activeScreen = StartScreen(switchState);
  //   super.initState();
  // }
  //Aother Way without initState

  var activeScreen = 'start-screen';
  void switchState(){
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer){
    selectedAnswer.add(answer);

    if(selectedAnswer.length== questions.length){
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }


   void restartQuiz() {
     setState(() {
       selectedAnswer.clear();
       activeScreen = 'questions-screen';
     });
   }

  @override
  Widget build(context){

    Widget widgetScreen = StartScreen(switchState);

    if(activeScreen=='questions-screen'){
      widgetScreen=QuestionsScreen(
        onSelectAnswer:chooseAnswer,
      );
    }
if(activeScreen == 'results-screen') {
  widgetScreen = ResultsScreen(chosenAnswers:selectedAnswer,onRestart: restartQuiz,);
}

    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 75, 13, 151),
                  Color.fromARGB(255, 107, 15, 168),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            // child:activeScreen == 'start-screen'?StartScreen(switchState):const QuestionsScreen(),
          child: widgetScreen,
        ),
      ),
    );
  }
}