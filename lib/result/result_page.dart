import 'package:devquiz/challange/widgets/next_button/next_button_widget.dart';
import 'package:devquiz/core/core.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class ResultPage extends StatelessWidget {
  final String titulo;
  final int length;
  final int qtdAnwserRight;

  const ResultPage(
      {Key? key,
      required this.titulo,
      required this.length,
      required this.qtdAnwserRight})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(AppImages.trophy),
            Column(
              children: [
                Text(
                  'Parabéns',
                  style: AppTextStyles.heading40,
                ),
                SizedBox(height: 16),
                Text.rich(
                  TextSpan(
                    text: "Você conclui",
                    style: AppTextStyles.body,
                    children: [
                      TextSpan(
                          text: "\n$titulo", style: AppTextStyles.bodyBold),
                      TextSpan(
                          text: "\ncom $qtdAnwserRight de $length acertos",
                          style: AppTextStyles.body),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 68),
                        child: NextButtonWidget.purple(
                          label: 'Compartilhar',
                          onTap: () {
                            Share.share(
                                'DevQuiz NLW 5 - Meu resultado no quizz $titulo obtive o seguinte resultado $qtdAnwserRight respostas corretas de no total de $length questões');
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 68),
                        child: NextButtonWidget.white(
                          label: 'Voltar ao início',
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
