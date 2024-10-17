import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_town_widget.dart' show AddTownWidget;
import 'package:flutter/material.dart';

class AddTownModel extends FlutterFlowModel<AddTownWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for DistrictDropDown widget.
  String? districtDropDownValue;
  FormFieldController<String>? districtDropDownValueController;
  // State field(s) for CityDropDown widget.
  String? cityDropDownValue;
  FormFieldController<String>? cityDropDownValueController;
  // State field(s) for TownTextField widget.
  FocusNode? townTextFieldFocusNode;
  TextEditingController? townTextFieldTextController;
  String? Function(BuildContext, String?)? townTextFieldTextControllerValidator;
  String? _townTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    townTextFieldTextControllerValidator =
        _townTextFieldTextControllerValidator;
  }

  @override
  void dispose() {
    townTextFieldFocusNode?.dispose();
    townTextFieldTextController?.dispose();
  }
}
