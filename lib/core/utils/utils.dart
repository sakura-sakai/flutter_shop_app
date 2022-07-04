///
/// A collection of useful functions
///
library utils;

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'extensions/context.dart';

part 'extensions/list.dart';

part 'responsive/responsive.dart';

part 'semaphore.dart';

/// Returns [true] if the app runs on a phone,
/// [false] if the app runs on a tablet
bool get isMobile => Responsive.deviceType == DeviceType.mobile;

/// Returns [true] if the app runs on a tablet,
/// [false] if the app runs on a phone
bool get isTablet => Responsive.deviceType == DeviceType.tablet;
