abstract class Failure implements Exception {
  const Failure({this.error});

  final Object? error;

  @override
  int get hashCode => error.hashCode;

  @override
  bool operator ==(Object other) {
    return identical(this, other) || other is Failure && error == other.error;
  }
}

class GetFailure extends Failure {
  const GetFailure({super.error});
}
