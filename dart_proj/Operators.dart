import 'Streams.dart';

Stream<int> expandStream(Stream<int> stream) {
  return stream.expand((data) => [data, data * 10, 123, 333]);
}

Stream<int> mapStream(Stream<int> stream) {
  return stream.map((i) {
    if (i % 2 == 0) {
      return i * 2;
    } else {
      return i - 1;
    }
  });
}

Stream<int> skipStream(Stream<int> stream, int count) {
  return stream.skip(count);
}

Stream<int> skipWhileStream(Stream<int> stream, bool Function(int) predicate) {
  return stream.skipWhile(predicate);
}

Stream<int> takeStream(Stream<int> stream, int count) {
  return stream.take(count);
}

Stream<int> takeWhileStream(Stream<int> stream, bool Function(int) predicate) {
  return stream.takeWhile(predicate);
}

Stream<int> whereStream(Stream<int> stream, bool Function(int) predicate) {
  return stream.where(predicate);
}

Stream<int> distinctStream(Stream<int> stream) {
  return stream.distinct();
}

Stream<int> chainingStream(Stream<int> stream) {
  return stream.distinct().map((item) => item * 10).where((item) => item != 20);
}
