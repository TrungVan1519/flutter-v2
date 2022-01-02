// ignore_for_file: avoid_print, prefer_const_constructors

import 'dart:async';

/*
TODO:
if (need to wait and get Future value from a function) {
  1. use 'await' to get Future value from that function
  2. use 'async' to this function
  3. change return type to Future
} else {
  call async function normally
}
 */

// this function doesn't need to wait and get Future value from run() so it calls normally
void main(List<String> args) {
  run();
}

// this function needs wait and get Future value from t2() so it have to use async/await
Future<void> run() async {
  t1();
  String? data = await t2();
  t3(data!);
}

void t1() {
  print(1);
}

Future<String?> t2() async {
  String? data;
  await Future.delayed(Duration(seconds: 3), () {
    print(2);
    data = 'data';
  });
  return data;
}

void t3(String data) {
  print(3.toString() + data);
}
