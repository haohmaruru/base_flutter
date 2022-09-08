class ApiResponse {
  ApiResponse({this.code, this.total, this.message, this.data, this.error});

  String? code;
  int? total;
  String? message;
  dynamic data;
  dynamic error;

  factory ApiResponse.fromJson(Map<String, dynamic> json) => ApiResponse(
      code: json["code"],
      total: json.containsKey("total") ? json["total"] : 0,
      message: json["message"],
      data: json["data"],
      error: json["error"]);

  Map<String, dynamic> toJson() => {
        "code": code,
        "total": total,
        "message": message,
        "data": data,
        "error": error
      };
}
