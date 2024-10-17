import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'signup_widget.dart' show SignupWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class SignupModel extends FlutterFlowModel<SignupWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // State field(s) for EmailTextField widget.
  FocusNode? emailTextFieldFocusNode;
  TextEditingController? emailTextFieldTextController;
  String? Function(BuildContext, String?)?
      emailTextFieldTextControllerValidator;
  String? _emailTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for PasswordTextField widget.
  FocusNode? passwordTextFieldFocusNode;
  TextEditingController? passwordTextFieldTextController;
  late bool passwordTextFieldVisibility;
  String? Function(BuildContext, String?)?
      passwordTextFieldTextControllerValidator;
  String? _passwordTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for ConfirmPasswordTextField widget.
  FocusNode? confirmPasswordTextFieldFocusNode;
  TextEditingController? confirmPasswordTextFieldTextController;
  late bool confirmPasswordTextFieldVisibility;
  String? Function(BuildContext, String?)?
      confirmPasswordTextFieldTextControllerValidator;
  String? _confirmPasswordTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for FirstName widget.
  FocusNode? firstNameFocusNode;
  TextEditingController? firstNameTextController;
  String? Function(BuildContext, String?)? firstNameTextControllerValidator;
  String? _firstNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for MiddleName widget.
  FocusNode? middleNameFocusNode;
  TextEditingController? middleNameTextController;
  String? Function(BuildContext, String?)? middleNameTextControllerValidator;
  String? _middleNameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for LastName widget.
  FocusNode? lastNameFocusNode;
  TextEditingController? lastNameTextController;
  String? Function(BuildContext, String?)? lastNameTextControllerValidator;
  String? _lastNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for MotherName widget.
  FocusNode? motherNameFocusNode;
  TextEditingController? motherNameTextController;
  String? Function(BuildContext, String?)? motherNameTextControllerValidator;
  String? _motherNameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for MobileNumber widget.
  FocusNode? mobileNumberFocusNode;
  TextEditingController? mobileNumberTextController;
  final mobileNumberMask = MaskTextInputFormatter(mask: '##-######');
  String? Function(BuildContext, String?)? mobileNumberTextControllerValidator;
  String? _mobileNumberTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for GenderDropDown widget.
  String? genderDropDownValue;
  FormFieldController<String>? genderDropDownValueController;
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
  void initState(BuildContext context) {
    emailTextFieldTextControllerValidator =
        _emailTextFieldTextControllerValidator;
    passwordTextFieldVisibility = false;
    passwordTextFieldTextControllerValidator =
        _passwordTextFieldTextControllerValidator;
    confirmPasswordTextFieldVisibility = false;
    confirmPasswordTextFieldTextControllerValidator =
        _confirmPasswordTextFieldTextControllerValidator;
    firstNameTextControllerValidator = _firstNameTextControllerValidator;
    middleNameTextControllerValidator = _middleNameTextControllerValidator;
    lastNameTextControllerValidator = _lastNameTextControllerValidator;
    motherNameTextControllerValidator = _motherNameTextControllerValidator;
    mobileNumberTextControllerValidator = _mobileNumberTextControllerValidator;
  }

  @override
  void dispose() {
    emailTextFieldFocusNode?.dispose();
    emailTextFieldTextController?.dispose();

    passwordTextFieldFocusNode?.dispose();
    passwordTextFieldTextController?.dispose();

    confirmPasswordTextFieldFocusNode?.dispose();
    confirmPasswordTextFieldTextController?.dispose();

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
