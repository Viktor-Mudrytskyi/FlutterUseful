class ResponseWrapper<Success, Failure> {
  const ResponseWrapper.success(Success this.data)
      : failure = null,
        isSuccessful = true;
  const ResponseWrapper.failure(Failure this.failure)
      : data = null,
        isSuccessful = false;

  final Success? data;
  final Failure? failure;
  final bool isSuccessful;

  void fold({
    required void Function(Success success) success,
    required void Function(Failure failure) failure,
  }) {
    if (isSuccessful) {
      success(this.data as Success);
    } else {
      failure(this.failure as Failure);
    }
  }

  @override
  String toString() {
    final part1 = isSuccessful ? 'Success: ' : 'Failure: ';
    final part2 = isSuccessful ? data.toString() : failure.toString();

    return '$part1 $part2';
  }
}
