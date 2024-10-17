import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'profile_widget.dart' show ProfileWidget;
import 'package:flutter/material.dart';

class ProfileModel extends FlutterFlowModel<ProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for EmailTextField widget.
  FocusNode? emailTextFieldFocusNode;
  TextEditingController? emailTextFieldTextController;
  String? Function(BuildContext, String?)?
      emailTextFieldTextControllerValidator;
  // State field(s) for FirstName widget.
  FocusNode? firstNameFocusNode;
  TextEditingController? firstNameTextController;
  String? Function(BuildContext, String?)? firstNameTextControllerValidator;
  // State field(s) for MiddleName widget.
  FocusNode? middleNameFocusNode;
  TextEditingController? middleNameTextController;
  String? Function(BuildContext, String?)? middleNameTextControllerValidator;
  // State field(s) for LastName widget.
  FocusNode? lastNameFocusNode;
  TextEditingController? lastNameTextController;
  String? Function(BuildContext, String?)? lastNameTextControllerValidator;
  // State field(s) for MotherName widget.
  FocusNode? motherNameFocusNode;
  TextEditingController? motherNameTextController;
  String? Function(BuildContext, String?)? motherNameTextControllerValidator;
  // State field(s) for GenderDropDown widget.
  String? genderDropDownValue;
  FormFieldController<String>? genderDropDownValueController;
  // State field(s) for MobileNumber widget.
  FocusNode? mobileNumberFocusNode;
  TextEditingController? mobileNumberTextController;
  String? Function(BuildContext, String?)? mobileNumberTextControllerValidator;
  DateTime? datePicked;
  // State field(s) for BloodTypeDropDown widget.
  String? bloodTypeDropDownValue;
  FormFieldController<String>? bloodTypeDropDownValueController;
  // State field(s) for DistrictDropDown widget.
  String? districtDropDownValue;
  FormFieldController<String>? districtDropDownValueController;
  // State field(s) for CityDropDown widget.
  String? cityDropDownValue;
  FormFieldController<String>? cityDropDownValueController;
  // State field(s) for TownDropDown widget.
  String? townDropDownValue;
  FormFieldController<String>? townDropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailTextFieldFocusNode?.dispose();
    emailTextFieldTextController?.dispose();

    firstNameFocusNode?.dispose();
    firstNameTextController?.dispose();

    middleNameFocusNode?.dispose();
    middleNameTextController?.dispose();

    lastNameFocusNode?.dispose();
    lastNameTextController?.dispose();

    motherNameFocusNode?.dispose();
    motherNameTextController?.dispose();

    mobileNumberFocusNode?.dispose();
    mobileNumberTextController?.dispose();
  }
}
