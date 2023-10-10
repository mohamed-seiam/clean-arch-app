import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMsg;

  Failure({required this.errorMsg});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errorMsg});

  factory ServerFailure.fromDioError(DioError error) {
    switch (error.type) {
      case DioErrorType.connectionTimeout:
        return ServerFailure(errorMsg: 'Connection Timeout With Server');
      case DioErrorType.sendTimeout:
        return ServerFailure(errorMsg: 'Send Timeout With Server');
      case DioErrorType.receiveTimeout:
        return ServerFailure(errorMsg: 'Receive Timeout With Server');
      case DioErrorType.badCertificate:
        return ServerFailure(errorMsg: 'BadCertificate With Server');
      case DioErrorType.badResponse:
        return ServerFailure.fromResponse(
            error.response!.statusCode!, error.response!.data);
      case DioErrorType.cancel:
        return ServerFailure(errorMsg: 'Request to Server Was Cancelled');
      case DioErrorType.connectionError:
        return ServerFailure(errorMsg: 'No Internet Connection');
      case DioErrorType.unknown:
        return ServerFailure(
            errorMsg: 'Oops There Was an Error , Please Try Again ');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 404) {
      return ServerFailure(
          errorMsg: 'Your Request was Not found, Please try later');
    } else if (statusCode >= 500) {
      return ServerFailure(
          errorMsg: 'There is a problem with server, please try later');
    } else if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(errorMsg: response['error']['message']);
    } else {
      return ServerFailure(errorMsg: 'There was an error , please try again');
    }
  }
}
// class CacheFailure extends Failure {}
// class NetWorkFailure extends Failure {}
