class CustomExceptions implements Exception {
  CustomExceptions(
    this.prefix, {
    required this.message,
  });

  final String prefix;
  final String message;

  @override
  String toString() => prefix + message;
}

class FetchDataException extends CustomExceptions {
  FetchDataException({
    required String message,
  }) : super('Fail to fetch data: ', message: message);
}

class BadRequestException extends CustomExceptions {
  BadRequestException({
    required String message,
  }) : super('Bad request: ', message: message);
}
