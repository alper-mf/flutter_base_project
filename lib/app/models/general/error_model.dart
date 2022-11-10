class ErrorModel {
  ErrorModel({
    this.errorCode,
    this.message,
  });

  String? errorCode;
  String? message;

  factory ErrorModel.fromJson(Map<String, dynamic> json) => ErrorModel(
        errorCode: json["error_code"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "error_code": errorCode,
        "message": message,
      };
}
