class User {
  String id = "";
  User({required this.id});
  User.fromJson(Map<String, dynamic> json) {
    id = json['id'] ?? "";
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    return data;
  }
}
