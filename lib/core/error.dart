import 'network/error_message.dart';

class ServerException implements Exception{

  ErrorMessageModel errorMessageModel;

  ServerException({required this.errorMessageModel});
}