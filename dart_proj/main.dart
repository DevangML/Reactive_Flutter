Stream<int> getNumber() async* {
  for (var i = 1; i <= 10; i++) {
    yield i;
    await Future.delayed(Duration(seconds: 1));
  }
}

void main() {
  getNumber().listen((data) {
    print('Number is : $data');
  });
}
