class User {
  String id = '';
  String? email;

  User({required this.id, this.email});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'] ?? "";
    email = json['email'] ?? "";
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['email'] = email;
    return data;
  }
}
