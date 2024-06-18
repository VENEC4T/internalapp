import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _video = prefs.getBool('ff_video') ?? _video;
    });
    _safeInit(() {
      _requirements = prefs.getInt('ff_requirements') ?? _requirements;
    });
    _safeInit(() {
      _TwoSidesDocument =
          prefs.getInt('ff_TwoSidesDocument') ?? _TwoSidesDocument;
    });
    _safeInit(() {
      _UploadedPaymentData =
          prefs.getBool('ff_UploadedPaymentData') ?? _UploadedPaymentData;
    });
    _safeInit(() {
      _BackDocumentPhoto =
          prefs.getString('ff_BackDocumentPhoto') ?? _BackDocumentPhoto;
    });
    _safeInit(() {
      _UserVideo = prefs.getString('ff_UserVideo') ?? _UserVideo;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _video = false;
  bool get video => _video;
  set video(bool value) {
    _video = value;
    prefs.setBool('ff_video', value);
  }

  int _requirements = 0;
  int get requirements => _requirements;
  set requirements(int value) {
    _requirements = value;
    prefs.setInt('ff_requirements', value);
  }

  int _TwoSidesDocument = 0;
  int get TwoSidesDocument => _TwoSidesDocument;
  set TwoSidesDocument(int value) {
    _TwoSidesDocument = value;
    prefs.setInt('ff_TwoSidesDocument', value);
  }

  bool _UploadedPaymentData = false;
  bool get UploadedPaymentData => _UploadedPaymentData;
  set UploadedPaymentData(bool value) {
    _UploadedPaymentData = value;
    prefs.setBool('ff_UploadedPaymentData', value);
  }

  String _FrontDocumentPhoto = '';
  String get FrontDocumentPhoto => _FrontDocumentPhoto;
  set FrontDocumentPhoto(String value) {
    _FrontDocumentPhoto = value;
  }

  String _BackDocumentPhoto = '';
  String get BackDocumentPhoto => _BackDocumentPhoto;
  set BackDocumentPhoto(String value) {
    _BackDocumentPhoto = value;
    prefs.setString('ff_BackDocumentPhoto', value);
  }

  String _UserVideo = '';
  String get UserVideo => _UserVideo;
  set UserVideo(String value) {
    _UserVideo = value;
    prefs.setString('ff_UserVideo', value);
  }

  String _defaultPassword = '123456';
  String get defaultPassword => _defaultPassword;
  set defaultPassword(String value) {
    _defaultPassword = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
