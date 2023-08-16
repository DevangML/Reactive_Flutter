import 'dart:async';

Stream<int> getNumbers() async* {
  for (int i = 1; i <= 3; i++) {
    yield i;
    await Future.delayed(Duration(seconds: 1));
  }
}

Stream<int> getNumbersException() async* {
  for (int i = 1; i <= 3; i++) {
    yield i;
    await Future.delayed(Duration(seconds: 1));
    if (i == 2) {
      throw Exception();
    }
  }
}
