import 'dart:async';

import 'package:flutter/material.dart';

import 'syncopate_app.dart';

void main() {
  runZonedGuarded(() {
    runApp(const SyncopateApp());
  }, (error, stack) {
    // TODO remove this and replace with calls to Sentry
    print(error);
    print(stack);
  });

}

