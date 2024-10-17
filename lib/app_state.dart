import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import 'backend/supabase/supabase.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  int _count = 0;
  int get count => _count;
  set count(int value) {
    _count = value;
  }

  String _PersonUpdate = '0';
  String get PersonUpdate => _PersonUpdate;
  set PersonUpdate(String value) {
    _PersonUpdate = value;
  }

  String _CurrentPage = '';
  String get CurrentPage => _CurrentPage;
  set CurrentPage(String value) {
    _CurrentPage = value;
  }

  final _getDistrictManager = FutureRequestManager<List<DistrictRow>>();
  Future<List<DistrictRow>> getDistrict({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<DistrictRow>> Function() requestFn,
  }) =>
      _getDistrictManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearGetDistrictCache() => _getDistrictManager.clear();
  void clearGetDistrictCacheKey(String? uniqueKey) =>
      _getDistrictManager.clearRequest(uniqueKey);
}
