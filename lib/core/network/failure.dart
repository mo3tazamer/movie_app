import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String message;

  const Failure(this.message);
}

class ServicesFailure extends Failure {
  const ServicesFailure(super.message);

  @override
  List<Object?> get props => [message];
}

class LocalFailure extends Failure {
  const LocalFailure(super.message);

  @override
  List<Object?> get props => [message];
}
