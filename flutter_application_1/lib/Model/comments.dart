class comments {
  int? postId;
  int? id;
  String? name;
  String? email;
  String? body;

  comments({this.postId, this.id, this.name, this.email, this.body});

  factory comments.fromJson({required Map json}) {
    return comments(
      id: json["id"],
      body: json["body"],
       name: json["name"],
     email: json["email"],
     postId: json["postId"],
    );
  }
}
