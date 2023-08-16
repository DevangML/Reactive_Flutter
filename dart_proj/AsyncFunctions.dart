import 'Streams.dart';

// In this file we have defined reactive functions or operations which use the data stream and perform some action

// This function waits for all numbers to be mitted before iteration
Future<void> awaitFor() async {
  int sum = 0;
  await for (var number in getNumbers()) {
    sum += number;
    print(number);
  }
  print(sum);
}

Future<void> first() async {
  print(await getNumbers().first);
}

Future<void> last() async {
  print(await getNumbers().last);
}

Future<void> length() async {
  print(await getNumbers().length);
}

// It emits an exception in most cases, but if the stream emits only one value overall then it returns that value
Future<void> single() async {
  print(await getNumbers().single);
}

Future<void> any() async {
  if (await getNumbers().any((int i) => i < 1)) {
    print('there is a number that is less than 1');
  } else {
    print('there is not a number that is less than 1');
  }
}

Future<void> contains() async {
  if (await getNumbers().contains(7)) {
    print('there is a number equal to 7');
  } else {
    print('there is not a number equal to 7');
  }
}

Future<void> elementAt() async {
  print(await getNumbers().elementAt(10));
}

Future<void> firstWhere() async {
  print(await getNumbers().firstWhere((i) => i > 12));
}

Future<void> join() async {
  print(await getNumbers().join(', '));
}

Future<void> lastWhere() async {
  print(await getNumbers().lastWhere((i) => i > 1));
}

Future<void> singleWhere() async {
  print(await getNumbers().singleWhere((i) => i <= 0));
}
