import 'dart:convert';

class UserModel {
  final String nome;
  final String photoUrl;
  final int score;

  UserModel({
    required this.nome,
    required this.photoUrl,
    this.score = 0,
  });

  Map<String, dynamic> toMap() {
    return {
      'nome': nome,
      'photoUrl': photoUrl,
      'score': score,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      nome: map['nome'] ?? 'null',
      photoUrl: map['photoUrl'],
      score: map['score'],
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source));
}
