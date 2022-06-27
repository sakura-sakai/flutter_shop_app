library exceptions;

import 'dart:async';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../presentation/route/router.dart';
import '../api/api.dart';
import '../secure_storage/secure_storage.dart';
import '../shared_storage/shared_storage.dart';

part 'app_exception.dart';
part 'exception_helper.dart';
///
/// [ExceptionType] is an exception definition
///
enum ExceptionType {
  warn, // no designation
  alert, // alert (send a message to the user)
  forbidden, // authority error
  notFoundError, // couldn't find it.
  validationError, // validation error
  unauthorizedError, // authentication error
  serverError, // server error
  fatal, // fatal
  forcedUpdate, // Forced version upgrades are mandatory.
}
