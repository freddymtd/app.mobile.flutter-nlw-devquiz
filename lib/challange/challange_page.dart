import 'package:devquiz/challange/widgets/next_button/next_button_widget.dart';
import 'package:devquiz/challange/widgets/question_indicator/question_indicator_widget.dart';
import 'package:devquiz/challange/widgets/quiz/quiz_widget.dart';
import 'package:devquiz/shared/models/question_model.dart';

import 'package:flutter/material.dart';

class ChallangePage extends StatefulWidget {
  final List<QuestionModel> questions;

  const ChallangePage({Key? key, required this.questions}) : super(key: key);

  @override
  _ChallangePageState createState() => _ChallangePageState();
}

class _ChallangePageState extends State<ChallangePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(86),
        child: SafeArea(
          top: true,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BackButton(),
              QuestionIndicatorWidget(),
            ],
          ),
        ),
      ),
      body: QuizWidget(
        question: widget.questions[0],
      ),
      bottomNavigationBar: SafeArea(
        bottom: true,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                  child: NextButtonWidget.white(
                label: "Fácil",
                onTap: () {},
              )),
              SizedBox(width: 8),
              Expanded(
                  child: NextButtonWidget.green(
                label: "Confirmar",
                onTap: () {},
              ))
            ],
          ),
        ),
      ),
    );
  }
}
