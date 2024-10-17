import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_hospital_widget.dart' show AddHospitalWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class AddHospitalModel extends FlutterFlowModel<AddHospitalWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for DistrictDropDown widget.
  String? districtDropDownValue;
  FormFieldController<String>? districtDropDownValueController;
  // State field(s) for CityDropDown widget.
  String? cityDropDownValue;
  FormFieldController<String>? cityDropDownValueController;
  // State field(s) for HospitalTextField widget.
  FocusNode? hospitalTextFieldFocusNode;
  TextEditingController? hospitalTextFieldTextController;
  String? Function(BuildContext, String?)?
      hospitalTextFieldTextControllerValidator;
  String? _hospitalTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for PhoneTextField widget.
  FocusNode? phoneTextFieldFocusNode;
  TextEditingController? phoneTextFieldTextController;
  final phoneTextFieldMask = MaskTextInputFormatter(mask: '########');
  String? Function(BuildContext, String?)?
      phoneTextFieldTextControllerValidator;
  // State field(s) for URLTextField widget.
  FocusNode? uRLTextFieldFocusNode;
  TextEditingController? uRLTextFieldTextController;
  String? Function(BuildContext, String?)? uRLTextFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {
    hospitalTextFieldTextControllerValidator =
        _hospitalTextFieldTextControllerValidator;
  }

  @override
  void dispose() {
    hospitalTextFieldFocusNode?.dispose();
    hospitalTextFieldTextController?.dispose();

    phoneTextFieldFocusNode?.dispose();
    phoneTextFieldTextController?.dispose();

    uRLTextFieldFocusNode?.dispose();
    uRLTextFieldTextController?.dispose();
  }
}
