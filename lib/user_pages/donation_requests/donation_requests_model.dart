import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'donation_requests_widget.dart' show DonationRequestsWidget;
import 'package:flutter/material.dart';

class DonationRequestsModel extends FlutterFlowModel<DonationRequestsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for DistrictDropDown widget.
  String? districtDropDownValue;
  FormFieldController<String>? districtDropDownValueController;
  // State field(s) for CityDropDown widget.
  String? cityDropDownValue;
  FormFieldController<String>? cityDropDownValueController;
  // Stores action output result for [Backend Call - Query Rows] action in CityDropDown widget.
  List<CitiesRow>? getSelectedCityID;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
