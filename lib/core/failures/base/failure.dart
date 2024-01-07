abstract class Failure {
  const Failure();
  String get message;
  @override
  String toString() {
    return message;
  }
}
