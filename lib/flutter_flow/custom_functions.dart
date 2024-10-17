import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/supabase/supabase.dart';
import '/auth/firebase_auth/auth_util.dart';

String? intToString(int? integerInput) {
  // change the integer to string
  return integerInput?.toString();
}

int? stringtoint(String? stringVar) {
  // change string input to integer
  // convert string to integer
  return int.tryParse(stringVar ?? '');
}

double? getwidth(
  int? percentage,
  double? currentwidth,
) {
  // get the percentage of the current screen width and return the value
  if (percentage != null && currentwidth != null) {
    return (percentage / 100) * currentwidth;
  } else {
    return null;
  }
}
