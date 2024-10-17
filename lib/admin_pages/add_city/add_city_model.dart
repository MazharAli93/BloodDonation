import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_city_widget.dart' show AddCityWidget;
import 'package:flutter/material.dart';

class AddCityModel extends FlutterFlowModel<AddCityWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for DistrictDropDown widget.
  String? districtDropDownValue;
  FormFieldController<String>? districtDropDownValueController;
  // State field(s) for CityTextField widget.
  FocusNode? cityTextFieldFocusNode;
  TextEditingController? cityTextFieldTextController;
  String? Function(BuildContext, String?)? cityTextFieldTextControllerValidator;
  String? _cityTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    cityTextFieldTextControllerValidator =
        _cityTextFieldTextControllerValidator;
  }

  @override
  void dispose() {
    cityTextFieldFocusNode?.dispose();
    cityTextFieldTextController?.dispose();
  }
}
