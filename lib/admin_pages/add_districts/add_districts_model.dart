import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'add_districts_widget.dart' show AddDistrictsWidget;
import 'package:flutter/material.dart';

class AddDistrictsModel extends FlutterFlowModel<AddDistrictsWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for DistrictTextField widget.
  FocusNode? districtTextFieldFocusNode;
  TextEditingController? districtTextFieldTextController;
  String? Function(BuildContext, String?)?
      districtTextFieldTextControllerValidator;
  String? _districtTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // Stores action output result for [Backend Call - Create Document] action in SaveButton widget.
  DistrictRecord? creationofDistrictFirebase;

  @override
  void initState(BuildContext context) {
    districtTextFieldTextControllerValidator =
        _districtTextFieldTextControllerValidator;
  }

  @override
  void dispose() {
    districtTextFieldFocusNode?.dispose();
    districtTextFieldTextController?.dispose();
  }
}
