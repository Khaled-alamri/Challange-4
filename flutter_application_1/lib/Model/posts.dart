
class Postes {
  int? userId;
  int? id;
  String? title;
  String? body;

  Postes({this.userId, this.id, this.title, this.body});

  factory Postes.fromJson({required Map json}) {
    return Postes(
      id: json["id"],
      userId: json["userId"],
      title: json["title"],
      body: json["body"],
     
    );
  }
}