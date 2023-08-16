import 'AsyncFunctions.dart';

// Rather than directly using data streams in main we are calling various methods created using streams here

void main() async {
  await awaitFor();
  await first();
  await last();
  await length();
  await single();
  await any();
  await contains();
  await elementAt();
  await firstWhere();
  await join();
  await lastWhere();
  await singleWhere();
}
