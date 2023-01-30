class UserDataModel {
  UserDataModel({
    this.userid,
    this.id,
    this.title,
    this.body,
  });

  int? userid;
  int? id;
  String? title;
  String? body;

  factory UserDataModel.fromJson(Map<dynamic, dynamic> json) {
    return UserDataModel(
      userid: json["userId"],
      id: json["id"],
      title: json["title"],
      body: json["body"],
    );
  }
}
