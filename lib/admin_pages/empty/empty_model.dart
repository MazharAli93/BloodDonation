import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'empty_widget.dart' show EmptyWidget;
import 'package:flutter/material.dart';

class EmptyModel extends FlutterFlowModel<EmptyWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // State field(s) for FireDistrictDropDown widget.
  String? fireDistrictDropDownValue;
  FormFieldController<String>? fireDistrictDropDownValueController;
  // Stores action output result for [Backend Call - Query Rows] action in FireDistrictDropDown widget.
  List<DistrictRow>? getSelectedDistrict;
  // State field(s) for DistrictDropDown widget.
  String? districtDropDownValue;
  FormFieldController<String>? districtDropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
