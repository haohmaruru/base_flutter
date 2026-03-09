class NotificationModel {
  final String? id;
  final String? title;
  final String? body;
  bool seen;
  final String? createdDate;

  NotificationModel({
    this.id,
    required this.title,
    this.body,
    this.seen = false,
    this.createdDate,
  });

  factory NotificationModel.fromJson(Map<String, dynamic> json) {
    return NotificationModel(
      id: json['id'] as String?,
      title: json['title'],
      body: json['body'],
      seen: (json['seen'] as bool?) ?? false,
      createdDate: json['createdDate'],
    );
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    'title': title,
    'body': body,
    'seen': seen,
    'createdDate': createdDate,
  };
}
