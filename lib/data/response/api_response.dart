import 'package:quotanic/configs/config.dart';

class ApiResponse<T> {
  Status? status;
  T? apiData;
  String? message;

  ApiResponse(this.status, this.apiData, this.message);

  ApiResponse.loading() : status = Status.loading;

  ApiResponse.completed(this.apiData) : status = Status.completed;

  ApiResponse.error(this.message) : status = Status.error;

  @override
  String toString() {
    return "Status : $status \n Message : $message \n Data: $apiData";
  }
}
