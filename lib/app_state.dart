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
  set video(bool _value) {
    _video = _value;
    prefs.setBool('ff_video', _value);
  }

  int _requirements = 0;
  int get requirements => _requirements;
  set requirements(int _value) {
    _requirements = _value;
    prefs.setInt('ff_requirements', _value);
  }

  int _TwoSidesDocument = 0;
  int get TwoSidesDocument => _TwoSidesDocument;
  set TwoSidesDocument(int _value) {
    _TwoSidesDocument = _value;
    prefs.setInt('ff_TwoSidesDocument', _value);
  }

  bool _UploadedPaymentData = false;
  bool get UploadedPaymentData => _UploadedPaymentData;
  set UploadedPaymentData(bool _value) {
    _UploadedPaymentData = _value;
    prefs.setBool('ff_UploadedPaymentData', _value);
  }

  String _FrontDocumentPhoto = '';
  String get FrontDocumentPhoto => _FrontDocumentPhoto;
  set FrontDocumentPhoto(String _value) {
    _FrontDocumentPhoto = _value;
  }

  String _BackDocumentPhoto = '';
  String get BackDocumentPhoto => _BackDocumentPhoto;
  set BackDocumentPhoto(String _value) {
    _BackDocumentPhoto = _value;
    prefs.setString('ff_BackDocumentPhoto', _value);
  }

  String _UserVideo = '';
  String get UserVideo => _UserVideo;
  set UserVideo(String _value) {
    _UserVideo = _value;
    prefs.setString('ff_UserVideo', _value);
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
