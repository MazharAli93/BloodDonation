import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'blood_request_widget.dart' show BloodRequestWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class BloodRequestModel extends FlutterFlowModel<BloodRequestWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // State field(s) for DistrictDropDown widget.
  String? districtDropDownValue;
  FormFieldController<String>? districtDropDownValueController;
  // State field(s) for CityDropDown widget.
  String? cityDropDownValue;
  FormFieldController<String>? cityDropDownValueController;
  // State field(s) for HospitalDropDown widget.
  String? hospitalDropDownValue;
  FormFieldController<String>? hospitalDropDownValueController;
  // State field(s) for DonationTypeDropDown widget.
  String? donationTypeDropDownValue;
  FormFieldController<String>? donationTypeDropDownValueController;
  // State field(s) for BloodTypeDropDown widget.
  String? bloodTypeDropDownValue;
  FormFieldController<String>? bloodTypeDropDownValueController;
  // State field(s) for QuantityTextField widget.
  FocusNode? quantityTextFieldFocusNode;
  TextEditingController? quantityTextFieldTextController;
  String? Function(BuildContext, String?)?
      quantityTextFieldTextControllerValidator;
  // State field(s) for DonationTargetDropDown widget.
  String? donationTargetDropDownValue;
  FormFieldController<String>? donationTargetDropDownValueController;
  // State field(s) for PatientFirstName widget.
  FocusNode? patientFirstNameFocusNode;
  TextEditingController? patientFirstNameTextController;
  String? Function(BuildContext, String?)?
      patientFirstNameTextControllerValidator;
  // State field(s) for PatientMiddleName widget.
  FocusNode? patientMiddleNameFocusNode;
  TextEditingController? patientMiddleNameTextController;
  String? Function(BuildContext, String?)?
      patientMiddleNameTextControllerValidator;
  // State field(s) for PatientLastName widget.
  FocusNode? patientLastNameFocusNode;
  TextEditingController? patientLastNameTextController;
  String? Function(BuildContext, String?)?
      patientLastNameTextControllerValidator;
  // State field(s) for PatientNumber widget.
  FocusNode? patientNumberFocusNode;
  TextEditingController? patientNumberTextController;
  final patientNumberMask = MaskTextInputFormatter(mask: '##-### ###');
  String? Function(BuildContext, String?)? patientNumberTextControllerValidator;
  // State field(s) for ReasonText widget.
  FocusNode? reasonTextFocusNode;
  TextEditingController? reasonTextTextController;
  String? Function(BuildContext, String?)? reasonTextTextControllerValidator;
  DateTime? datePicked;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    quantityTextFieldFocusNode?.dispose();
    quantityTextFieldTextController?.dispose();

    patientFirstNameFocusNode?.dispose();
    patientFirstNameTextController?.dispose();

    patientMiddleNameFocusNode?.dispose();
    patientMiddleNameTextController?.dispose();

    patientLastNameFocusNode?.dispose();
    patientLastNameTextController?.dispose();

    patientNumberFocusNode?.dispose();
    patientNumberTextController?.dispose();

    reasonTextFocusNode?.dispose();
    reasonTextTextController?.dispose();
  }
}
