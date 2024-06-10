import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'payment_data_widget.dart' show PaymentDataWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PaymentDataModel extends FlutterFlowModel<PaymentDataWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Banco widget.
  FocusNode? bancoFocusNode;
  TextEditingController? bancoTextController;
  String? Function(BuildContext, String?)? bancoTextControllerValidator;
  // State field(s) for Numerodecuenta widget.
  FocusNode? numerodecuentaFocusNode;
  TextEditingController? numerodecuentaTextController;
  String? Function(BuildContext, String?)?
      numerodecuentaTextControllerValidator;
  // State field(s) for tipodeCuenta widget.
  FocusNode? tipodeCuentaFocusNode;
  TextEditingController? tipodeCuentaTextController;
  String? Function(BuildContext, String?)? tipodeCuentaTextControllerValidator;
  // State field(s) for numerodeAgencia widget.
  FocusNode? numerodeAgenciaFocusNode;
  TextEditingController? numerodeAgenciaTextController;
  String? Function(BuildContext, String?)?
      numerodeAgenciaTextControllerValidator;
  // State field(s) for direccion widget.
  FocusNode? direccionFocusNode;
  TextEditingController? direccionTextController;
  String? Function(BuildContext, String?)? direccionTextControllerValidator;
  // State field(s) for ciudad widget.
  FocusNode? ciudadFocusNode;
  TextEditingController? ciudadTextController;
  String? Function(BuildContext, String?)? ciudadTextControllerValidator;
  // State field(s) for pais widget.
  FocusNode? paisFocusNode;
  TextEditingController? paisTextController;
  String? Function(BuildContext, String?)? paisTextControllerValidator;
  // State field(s) for BinanceEmail widget.
  FocusNode? binanceEmailFocusNode;
  TextEditingController? binanceEmailTextController;
  String? Function(BuildContext, String?)? binanceEmailTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    bancoFocusNode?.dispose();
    bancoTextController?.dispose();

    numerodecuentaFocusNode?.dispose();
    numerodecuentaTextController?.dispose();

    tipodeCuentaFocusNode?.dispose();
    tipodeCuentaTextController?.dispose();

    numerodeAgenciaFocusNode?.dispose();
    numerodeAgenciaTextController?.dispose();

    direccionFocusNode?.dispose();
    direccionTextController?.dispose();

    ciudadFocusNode?.dispose();
    ciudadTextController?.dispose();

    paisFocusNode?.dispose();
    paisTextController?.dispose();

    binanceEmailFocusNode?.dispose();
    binanceEmailTextController?.dispose();
  }
}
