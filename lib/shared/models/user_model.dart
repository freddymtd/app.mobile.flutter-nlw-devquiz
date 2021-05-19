class UserModel {
  final String nome;
  final String photoUrl;
  final int score;

  UserModel({
    required this.nome,
    required this.photoUrl,
    this.score = 0,
  });
}
