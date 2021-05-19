import 'package:devquiz/home/home_state.dart';
import 'package:devquiz/shared/models/awnser_model.dart';
import 'package:devquiz/shared/models/question_model.dart';
import 'package:devquiz/shared/models/quiz_model.dart';
import 'package:devquiz/shared/models/user_model.dart';
import 'package:flutter/material.dart';

class HomeController {
  UserModel? user;
  List<QuizModel>? quizzes;
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  void getUser() async {
    state = HomeState.loading;

    await Future.delayed(Duration(seconds: 2));

    user = UserModel(
        nome: "Freddy",
        photoUrl: "https://avatarfiles.alphacoders.com/105/105223.jpg");
    state = HomeState.success;
  }

  void getQuizzes() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));
    quizzes = [
      QuizModel(
        title: "NLW - 5 Flutter",
        questions: [
          QuestionModel(title: "Está curtindo o flutter?", awnsers: [
            AwnserModel(title: "Estou curtindo"),
            AwnserModel(title: "Amando Flutter"),
            AwnserModel(title: "Muito top"),
            AwnserModel(title: "Show de bola!", isRight: true),
          ])
        ],
        imagem: Icons.ac_unit_outlined.toString(),
        level: Level.facil,
      ),
    ];
    state = HomeState.success;
  }
}
