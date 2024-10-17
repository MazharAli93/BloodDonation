import '/auth/firebase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/city_dropdown/city_dropdown_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'blood_request_model.dart';
export 'blood_request_model.dart';

class BloodRequestWidget extends StatefulWidget {
  const BloodRequestWidget({super.key});

  @override
  State<BloodRequestWidget> createState() => _BloodRequestWidgetState();
}

class _BloodRequestWidgetState extends State<BloodRequestWidget> {
  late BloodRequestModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BloodRequestModel());

    _model.quantityTextFieldTextController ??= TextEditingController();
    _model.quantityTextFieldFocusNode ??= FocusNode();

    _model.patientFirstNameTextController ??= TextEditingController();
    _model.patientFirstNameFocusNode ??= FocusNode();

    _model.patientMiddleNameTextController ??= TextEditingController();
    _model.patientMiddleNameFocusNode ??= FocusNode();

    _model.patientLastNameTextController ??= TextEditingController();
    _model.patientLastNameFocusNode ??= FocusNode();

    _model.patientNumberTextController ??= TextEditingController();
    _model.patientNumberFocusNode ??= FocusNode();

    _model.reasonTextTextController ??= TextEditingController();
    _model.reasonTextFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Container(
          width: MediaQuery.sizeOf(context).width * 1.0,
          height: MediaQuery.sizeOf(context).height * 1.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: () {
                  if (MediaQuery.sizeOf(context).width <= 400.0) {
                    return functions.getwidth(
                        100, MediaQuery.sizeOf(context).width);
                  } else if (MediaQuery.sizeOf(context).width <= 1000.0) {
                    return functions.getwidth(
                        70, MediaQuery.sizeOf(context).width);
                  } else if (MediaQuery.sizeOf(context).width >= 1001.0) {
                    return functions.getwidth(
                        50, MediaQuery.sizeOf(context).width);
                  } else {
                    return 300.0;
                  }
                }(),
                height: MediaQuery.sizeOf(context).height * 1.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/KolonaAhlLogo-NOBG.png',
                          width: 200.0,
                          height: 200.0,
                          fit: BoxFit.contain,
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: 500.0,
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 40.0),
                            child: PageView(
                              physics: const NeverScrollableScrollPhysics(),
                              controller: _model.pageViewController ??=
                                  PageController(initialPage: 0),
                              scrollDirection: Axis.horizontal,
                              children: [
                                SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            FutureBuilder<List<DistrictRow>>(
                                              future: FFAppState().getDistrict(
                                                requestFn: () =>
                                                    DistrictTable().queryRows(
                                                  queryFn: (q) => q,
                                                ),
                                              ),
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return Center(
                                                    child: SizedBox(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      child:
                                                          CircularProgressIndicator(
                                                        valueColor:
                                                            AlwaysStoppedAnimation<
                                                                Color>(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<DistrictRow>
                                                    districtDropDownDistrictRowList =
                                                    snapshot.data!;

                                                return FlutterFlowDropDown<
                                                    String>(
                                                  controller: _model
                                                          .districtDropDownValueController ??=
                                                      FormFieldController<
                                                          String>(
                                                    _model.districtDropDownValue ??=
                                                        '',
                                                  ),
                                                  options: List<String>.from(
                                                      districtDropDownDistrictRowList
                                                          .map((e) => e
                                                              .districtId
                                                              .toString())
                                                          .toList()),
                                                  optionLabels:
                                                      districtDropDownDistrictRowList
                                                          .map((e) =>
                                                              e.districtName)
                                                          .withoutNulls
                                                          .toList(),
                                                  onChanged: (val) async {
                                                    safeSetState(() => _model
                                                            .districtDropDownValue =
                                                        val); // Empty Related Dropdowns
                                                    safeSetState(() {
                                                      _model
                                                          .cityDropDownValueController
                                                          ?.reset();
                                                      _model
                                                          .hospitalDropDownValueController
                                                          ?.reset();
                                                    });
                                                  },
                                                  width: () {
                                                    if (MediaQuery.sizeOf(
                                                                context)
                                                            .width <=
                                                        400.0) {
                                                      return (MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.7);
                                                    } else if (MediaQuery
                                                                .sizeOf(context)
                                                            .width <=
                                                        1000.0) {
                                                      return (MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.5);
                                                    } else if (MediaQuery
                                                                .sizeOf(context)
                                                            .width >=
                                                        1001.0) {
                                                      return (MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.4);
                                                    } else {
                                                      return (MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.5);
                                                    }
                                                  }(),
                                                  height: 40.0,
                                                  searchHintTextStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            letterSpacing: 0.0,
                                                          ),
                                                  searchTextStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            letterSpacing: 0.0,
                                                          ),
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            letterSpacing: 0.0,
                                                          ),
                                                  hintText: 'Select Distirct',
                                                  searchHintText:
                                                      'Search for District',
                                                  icon: Icon(
                                                    Icons
                                                        .keyboard_arrow_down_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 24.0,
                                                  ),
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  elevation: 2.0,
                                                  borderColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .kolnaAhl,
                                                  borderWidth: 2.0,
                                                  borderRadius: 8.0,
                                                  margin: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          16.0, 4.0, 16.0, 4.0),
                                                  hidesUnderline: true,
                                                  isOverButton: true,
                                                  isSearchable: true,
                                                  isMultiSelect: false,
                                                );
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 15.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            FutureBuilder<List<CitiesRow>>(
                                              future: CitiesTable().queryRows(
                                                queryFn: (q) => q.eq(
                                                  'District-Ref',
                                                  functions.stringtoint(_model
                                                      .districtDropDownValue),
                                                ),
                                              ),
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return SizedBox(
                                                    width: () {
                                                      if (MediaQuery.sizeOf(
                                                                  context)
                                                              .width <=
                                                          400.0) {
                                                        return (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width *
                                                            0.7);
                                                      } else if (MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width <=
                                                          1000.0) {
                                                        return (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width *
                                                            0.5);
                                                      } else if (MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width >=
                                                          1001.0) {
                                                        return (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width *
                                                            0.4);
                                                      } else {
                                                        return (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width *
                                                            0.5);
                                                      }
                                                    }(),
                                                    child: const CityDropdownWidget(),
                                                  );
                                                }
                                                List<CitiesRow>
                                                    cityDropDownCitiesRowList =
                                                    snapshot.data!;

                                                return FlutterFlowDropDown<
                                                    String>(
                                                  controller: _model
                                                          .cityDropDownValueController ??=
                                                      FormFieldController<
                                                          String>(
                                                    _model.cityDropDownValue ??=
                                                        '',
                                                  ),
                                                  options: List<String>.from(
                                                      cityDropDownCitiesRowList
                                                          .map((e) => e.cityId
                                                              .toString())
                                                          .toList()),
                                                  optionLabels:
                                                      cityDropDownCitiesRowList
                                                          .map(
                                                              (e) => e.cityName)
                                                          .withoutNulls
                                                          .toList(),
                                                  onChanged: (val) async {
                                                    safeSetState(() => _model
                                                            .cityDropDownValue =
                                                        val); // Empty Hospital Dropdown
                                                    safeSetState(() {
                                                      _model
                                                          .hospitalDropDownValueController
                                                          ?.reset();
                                                    });
                                                  },
                                                  width: () {
                                                    if (MediaQuery.sizeOf(
                                                                context)
                                                            .width <=
                                                        400.0) {
                                                      return (MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.7);
                                                    } else if (MediaQuery
                                                                .sizeOf(context)
                                                            .width <=
                                                        1000.0) {
                                                      return (MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.5);
                                                    } else if (MediaQuery
                                                                .sizeOf(context)
                                                            .width >=
                                                        1001.0) {
                                                      return (MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.4);
                                                    } else {
                                                      return (MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.5);
                                                    }
                                                  }(),
                                                  height: 40.0,
                                                  searchHintTextStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            letterSpacing: 0.0,
                                                          ),
                                                  searchTextStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            letterSpacing: 0.0,
                                                          ),
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            letterSpacing: 0.0,
                                                          ),
                                                  hintText: 'Select City',
                                                  searchHintText:
                                                      'Search By Name',
                                                  icon: Icon(
                                                    Icons
                                                        .keyboard_arrow_down_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 24.0,
                                                  ),
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  elevation: 2.0,
                                                  borderColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .kolnaAhl,
                                                  borderWidth: 2.0,
                                                  borderRadius: 8.0,
                                                  margin: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          16.0, 4.0, 16.0, 4.0),
                                                  hidesUnderline: true,
                                                  isOverButton: true,
                                                  isSearchable: true,
                                                  isMultiSelect: false,
                                                );
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 15.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            FutureBuilder<List<HospitalRow>>(
                                              future: HospitalTable().queryRows(
                                                queryFn: (q) => q.eq(
                                                  'City_Ref',
                                                  valueOrDefault<int>(
                                                    functions.stringtoint(_model
                                                        .cityDropDownValue),
                                                    0,
                                                  ),
                                                ),
                                              ),
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return Center(
                                                    child: SizedBox(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      child:
                                                          CircularProgressIndicator(
                                                        valueColor:
                                                            AlwaysStoppedAnimation<
                                                                Color>(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<HospitalRow>
                                                    hospitalDropDownHospitalRowList =
                                                    snapshot.data!;

                                                return FlutterFlowDropDown<
                                                    String>(
                                                  controller: _model
                                                          .hospitalDropDownValueController ??=
                                                      FormFieldController<
                                                          String>(null),
                                                  options:
                                                      hospitalDropDownHospitalRowList
                                                          .map((e) =>
                                                              valueOrDefault<
                                                                  String>(
                                                                e.hospitalName,
                                                                'N/A',
                                                              ))
                                                          .toList(),
                                                  onChanged: (val) =>
                                                      safeSetState(() => _model
                                                              .hospitalDropDownValue =
                                                          val),
                                                  width: () {
                                                    if (MediaQuery.sizeOf(
                                                                context)
                                                            .width <=
                                                        400.0) {
                                                      return (MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.7);
                                                    } else if (MediaQuery
                                                                .sizeOf(context)
                                                            .width <=
                                                        1000.0) {
                                                      return (MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.5);
                                                    } else if (MediaQuery
                                                                .sizeOf(context)
                                                            .width >=
                                                        1001.0) {
                                                      return (MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.4);
                                                    } else {
                                                      return (MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.5);
                                                    }
                                                  }(),
                                                  height: 40.0,
                                                  searchHintTextStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            letterSpacing: 0.0,
                                                          ),
                                                  searchTextStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            letterSpacing: 0.0,
                                                          ),
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            letterSpacing: 0.0,
                                                          ),
                                                  hintText: 'Select Hospital',
                                                  searchHintText:
                                                      'Search for Hospital',
                                                  icon: Icon(
                                                    Icons
                                                        .keyboard_arrow_down_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 24.0,
                                                  ),
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  elevation: 2.0,
                                                  borderColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .kolnaAhl,
                                                  borderWidth: 2.0,
                                                  borderRadius: 8.0,
                                                  margin: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          16.0, 4.0, 16.0, 4.0),
                                                  hidesUnderline: true,
                                                  isOverButton: true,
                                                  isSearchable: true,
                                                  isMultiSelect: false,
                                                );
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 15.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            FlutterFlowDropDown<String>(
                                              controller: _model
                                                      .donationTypeDropDownValueController ??=
                                                  FormFieldController<String>(
                                                      null),
                                              options: const [
                                                'Blood',
                                                'Powder Red',
                                                'Plasma',
                                                'Platelets'
                                              ],
                                              onChanged: (val) => safeSetState(
                                                  () => _model
                                                          .donationTypeDropDownValue =
                                                      val),
                                              width: () {
                                                if (MediaQuery.sizeOf(context)
                                                        .width <=
                                                    400.0) {
                                                  return (MediaQuery.sizeOf(
                                                              context)
                                                          .width *
                                                      0.7);
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <=
                                                    1000.0) {
                                                  return (MediaQuery.sizeOf(
                                                              context)
                                                          .width *
                                                      0.5);
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width >=
                                                    1001.0) {
                                                  return (MediaQuery.sizeOf(
                                                              context)
                                                          .width *
                                                      0.4);
                                                } else {
                                                  return (MediaQuery.sizeOf(
                                                              context)
                                                          .width *
                                                      0.5);
                                                }
                                              }(),
                                              height: 40.0,
                                              searchHintTextStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        letterSpacing: 0.0,
                                                      ),
                                              searchTextStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        letterSpacing: 0.0,
                                                      ),
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        letterSpacing: 0.0,
                                                      ),
                                              hintText: 'Select Donation Type',
                                              searchHintText:
                                                  'Search for Hospital',
                                              icon: Icon(
                                                Icons
                                                    .keyboard_arrow_down_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 24.0,
                                              ),
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              elevation: 2.0,
                                              borderColor:
                                                  FlutterFlowTheme.of(context)
                                                      .kolnaAhl,
                                              borderWidth: 2.0,
                                              borderRadius: 8.0,
                                              margin: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 4.0, 16.0, 4.0),
                                              hidesUnderline: true,
                                              isOverButton: true,
                                              isSearchable: true,
                                              isMultiSelect: false,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 15.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            FlutterFlowDropDown<String>(
                                              controller: _model
                                                      .bloodTypeDropDownValueController ??=
                                                  FormFieldController<String>(
                                                      null),
                                              options: const [
                                                'A+',
                                                'A-',
                                                'B+',
                                                'B-',
                                                'O+',
                                                'O-',
                                                'AB+',
                                                'AB-'
                                              ],
                                              onChanged: (val) => safeSetState(
                                                  () => _model
                                                          .bloodTypeDropDownValue =
                                                      val),
                                              width: () {
                                                if (MediaQuery.sizeOf(context)
                                                        .width <=
                                                    400.0) {
                                                  return (MediaQuery.sizeOf(
                                                              context)
                                                          .width *
                                                      0.7);
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <=
                                                    1000.0) {
                                                  return (MediaQuery.sizeOf(
                                                              context)
                                                          .width *
                                                      0.5);
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width >=
                                                    1001.0) {
                                                  return (MediaQuery.sizeOf(
                                                              context)
                                                          .width *
                                                      0.4);
                                                } else {
                                                  return (MediaQuery.sizeOf(
                                                              context)
                                                          .width *
                                                      0.5);
                                                }
                                              }(),
                                              height: 40.0,
                                              searchHintTextStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        letterSpacing: 0.0,
                                                      ),
                                              searchTextStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        letterSpacing: 0.0,
                                                      ),
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        letterSpacing: 0.0,
                                                      ),
                                              hintText: 'Select Blood Type',
                                              searchHintText:
                                                  'Search for Hospital',
                                              icon: Icon(
                                                Icons
                                                    .keyboard_arrow_down_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 24.0,
                                              ),
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              elevation: 2.0,
                                              borderColor:
                                                  FlutterFlowTheme.of(context)
                                                      .kolnaAhl,
                                              borderWidth: 2.0,
                                              borderRadius: 8.0,
                                              margin: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 4.0, 16.0, 4.0),
                                              hidesUnderline: true,
                                              isOverButton: true,
                                              isSearchable: true,
                                              isMultiSelect: false,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 15.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            if (_model.districtDropDownValue ==
                                                '1')
                                              Flexible(
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          8.0, 0.0, 8.0, 0.0),
                                                  child: SizedBox(
                                                    width: () {
                                                      if (MediaQuery.sizeOf(
                                                                  context)
                                                              .width <=
                                                          400.0) {
                                                        return (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width *
                                                            0.7);
                                                      } else if (MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width <=
                                                          1000.0) {
                                                        return (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width *
                                                            0.5);
                                                      } else if (MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width >=
                                                          1001.0) {
                                                        return (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width *
                                                            0.4);
                                                      } else {
                                                        return (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width *
                                                            0.5);
                                                      }
                                                    }(),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .quantityTextFieldTextController,
                                                      focusNode: _model
                                                          .quantityTextFieldFocusNode,
                                                      autofocus: true,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelText:
                                                            'Quantity Requested in Liters',
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Inter',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Inter',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .kolnaAhl,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            letterSpacing: 0.0,
                                                          ),
                                                      maxLines: null,
                                                      maxLength: 1,
                                                      maxLengthEnforcement:
                                                          MaxLengthEnforcement
                                                              .enforced,
                                                      buildCounter: (context,
                                                              {required currentLength,
                                                              required isFocused,
                                                              maxLength}) =>
                                                          null,
                                                      keyboardType:
                                                          TextInputType.number,
                                                      validator: _model
                                                          .quantityTextFieldTextControllerValidator
                                                          .asValidator(context),
                                                      inputFormatters: [
                                                        FilteringTextInputFormatter
                                                            .allow(
                                                                RegExp('[0-9]'))
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 15.0, 0.0, 15.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            FFButtonWidget(
                                              onPressed: () async {
                                                await _model.pageViewController
                                                    ?.animateToPage(
                                                  1,
                                                  duration: const Duration(
                                                      milliseconds: 500),
                                                  curve: Curves.ease,
                                                );
                                              },
                                              text: 'Next',
                                              options: FFButtonOptions(
                                                width: () {
                                                  if (MediaQuery.sizeOf(context)
                                                          .width <=
                                                      400.0) {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.7);
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
                                                          .width <=
                                                      1000.0) {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.5);
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
                                                          .width >=
                                                      1001.0) {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.4);
                                                  } else {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.5);
                                                  }
                                                }(),
                                                height: 55.0,
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        24.0, 0.0, 24.0, 0.0),
                                                iconPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .kolnaAhl,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              'Inter Tight',
                                                          color: Colors.white,
                                                          letterSpacing: 0.0,
                                                        ),
                                                elevation: 3.0,
                                                borderSide: const BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 30.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            FFButtonWidget(
                                              onPressed: () async {
                                                safeSetState(() {
                                                  _model
                                                      .patientFirstNameTextController
                                                      ?.clear();
                                                  _model
                                                      .patientNumberTextController
                                                      ?.clear();
                                                  _model
                                                      .reasonTextTextController
                                                      ?.clear();
                                                  _model
                                                      .quantityTextFieldTextController
                                                      ?.clear();
                                                });
                                                safeSetState(() {
                                                  _model
                                                      .donationTargetDropDownValueController
                                                      ?.reset();
                                                  _model
                                                      .bloodTypeDropDownValueController
                                                      ?.reset();
                                                  _model
                                                      .donationTypeDropDownValueController
                                                      ?.reset();
                                                  _model
                                                      .districtDropDownValueController
                                                      ?.reset();
                                                  _model
                                                      .hospitalDropDownValueController
                                                      ?.reset();
                                                });
                                                if (Navigator.of(context)
                                                    .canPop()) {
                                                  context.pop();
                                                }
                                                context.pushNamed(
                                                  'Home',
                                                  extra: <String, dynamic>{
                                                    kTransitionInfoKey:
                                                        const TransitionInfo(
                                                      hasTransition: true,
                                                      transitionType:
                                                          PageTransitionType
                                                              .rightToLeft,
                                                      duration: Duration(
                                                          milliseconds: 500),
                                                    ),
                                                  },
                                                );
                                              },
                                              text: 'Cancel',
                                              options: FFButtonOptions(
                                                width: () {
                                                  if (MediaQuery.sizeOf(context)
                                                          .width <=
                                                      400.0) {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.7);
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
                                                          .width <=
                                                      1000.0) {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.5);
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
                                                          .width >=
                                                      1001.0) {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.4);
                                                  } else {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.5);
                                                  }
                                                }(),
                                                height: 55.0,
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        24.0, 0.0, 24.0, 0.0),
                                                iconPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .kolnaAhl,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              'Inter Tight',
                                                          color: Colors.white,
                                                          letterSpacing: 0.0,
                                                        ),
                                                elevation: 3.0,
                                                borderSide: const BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 30.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            FlutterFlowDropDown<String>(
                                              controller: _model
                                                      .donationTargetDropDownValueController ??=
                                                  FormFieldController<String>(
                                                _model.donationTargetDropDownValue ??=
                                                    '',
                                              ),
                                              options:
                                                  List<String>.from(['1', '2']),
                                              optionLabels: const [
                                                'Myself',
                                                'Someone Else'
                                              ],
                                              onChanged: (val) async {
                                                safeSetState(() => _model
                                                        .donationTargetDropDownValue =
                                                    val);
                                                FFAppState().PersonUpdate = _model
                                                    .donationTargetDropDownValue!;
                                                safeSetState(() {});
                                              },
                                              width: () {
                                                if (MediaQuery.sizeOf(context)
                                                        .width <=
                                                    400.0) {
                                                  return (MediaQuery.sizeOf(
                                                              context)
                                                          .width *
                                                      0.7);
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <=
                                                    1000.0) {
                                                  return (MediaQuery.sizeOf(
                                                              context)
                                                          .width *
                                                      0.5);
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width >=
                                                    1001.0) {
                                                  return (MediaQuery.sizeOf(
                                                              context)
                                                          .width *
                                                      0.4);
                                                } else {
                                                  return (MediaQuery.sizeOf(
                                                              context)
                                                          .width *
                                                      0.5);
                                                }
                                              }(),
                                              height: 56.0,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        letterSpacing: 0.0,
                                                      ),
                                              hintText:
                                                  'To Whom Is The Request?',
                                              icon: Icon(
                                                Icons
                                                    .keyboard_arrow_down_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 24.0,
                                              ),
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              elevation: 2.0,
                                              borderColor:
                                                  FlutterFlowTheme.of(context)
                                                      .kolnaAhl,
                                              borderWidth: 2.0,
                                              borderRadius: 8.0,
                                              margin: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 4.0, 16.0, 4.0),
                                              hidesUnderline: true,
                                              isOverButton: true,
                                              isSearchable: false,
                                              isMultiSelect: false,
                                            ),
                                          ],
                                        ),
                                      ),
                                      if (_model.donationTargetDropDownValue ==
                                          'Other')
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 15.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              if (_model
                                                      .donationTargetDropDownValue ==
                                                  '2')
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          8.0, 0.0, 8.0, 0.0),
                                                  child: SizedBox(
                                                    width: () {
                                                      if (MediaQuery.sizeOf(
                                                                  context)
                                                              .width <=
                                                          400.0) {
                                                        return (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width *
                                                            0.7);
                                                      } else if (MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width <=
                                                          1000.0) {
                                                        return (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width *
                                                            0.5);
                                                      } else if (MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width >=
                                                          1001.0) {
                                                        return (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width *
                                                            0.4);
                                                      } else {
                                                        return (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width *
                                                            0.5);
                                                      }
                                                    }(),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .patientFirstNameTextController,
                                                      focusNode: _model
                                                          .patientFirstNameFocusNode,
                                                      autofocus: true,
                                                      textCapitalization:
                                                          TextCapitalization
                                                              .words,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelText:
                                                            'Patient First Name',
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Inter',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Inter',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .kolnaAhl,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            letterSpacing: 0.0,
                                                          ),
                                                      validator: _model
                                                          .patientFirstNameTextControllerValidator
                                                          .asValidator(context),
                                                    ),
                                                  ),
                                                ),
                                            ],
                                          ),
                                        ),
                                      if (_model.donationTargetDropDownValue ==
                                          'Other')
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 15.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              if (FFAppState().PersonUpdate ==
                                                  '2')
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          8.0, 0.0, 8.0, 0.0),
                                                  child: SizedBox(
                                                    width: () {
                                                      if (MediaQuery.sizeOf(
                                                                  context)
                                                              .width <=
                                                          400.0) {
                                                        return (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width *
                                                            0.7);
                                                      } else if (MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width <=
                                                          1000.0) {
                                                        return (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width *
                                                            0.5);
                                                      } else if (MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width >=
                                                          1001.0) {
                                                        return (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width *
                                                            0.4);
                                                      } else {
                                                        return (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width *
                                                            0.5);
                                                      }
                                                    }(),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .patientMiddleNameTextController,
                                                      focusNode: _model
                                                          .patientMiddleNameFocusNode,
                                                      autofocus: true,
                                                      textCapitalization:
                                                          TextCapitalization
                                                              .words,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelText:
                                                            'Patient Middle Name',
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Inter',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Inter',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .kolnaAhl,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            letterSpacing: 0.0,
                                                          ),
                                                      validator: _model
                                                          .patientMiddleNameTextControllerValidator
                                                          .asValidator(context),
                                                    ),
                                                  ),
                                                ),
                                            ],
                                          ),
                                        ),
                                      if (_model.donationTargetDropDownValue ==
                                          'Other')
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 15.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              if (_model
                                                      .donationTargetDropDownValue ==
                                                  '2')
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          8.0, 0.0, 8.0, 0.0),
                                                  child: SizedBox(
                                                    width: () {
                                                      if (MediaQuery.sizeOf(
                                                                  context)
                                                              .width <=
                                                          400.0) {
                                                        return (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width *
                                                            0.7);
                                                      } else if (MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width <=
                                                          1000.0) {
                                                        return (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width *
                                                            0.5);
                                                      } else if (MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width >=
                                                          1001.0) {
                                                        return (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width *
                                                            0.4);
                                                      } else {
                                                        return (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width *
                                                            0.5);
                                                      }
                                                    }(),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .patientLastNameTextController,
                                                      focusNode: _model
                                                          .patientLastNameFocusNode,
                                                      autofocus: true,
                                                      textCapitalization:
                                                          TextCapitalization
                                                              .words,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelText:
                                                            'Patient Last Name',
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Inter',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Inter',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .kolnaAhl,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            letterSpacing: 0.0,
                                                          ),
                                                      validator: _model
                                                          .patientLastNameTextControllerValidator
                                                          .asValidator(context),
                                                    ),
                                                  ),
                                                ),
                                            ],
                                          ),
                                        ),
                                      if (_model.donationTargetDropDownValue ==
                                          'Other')
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 15.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              if (_model
                                                      .donationTargetDropDownValue ==
                                                  '2')
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          8.0, 0.0, 8.0, 0.0),
                                                  child: SizedBox(
                                                    width: () {
                                                      if (MediaQuery.sizeOf(
                                                                  context)
                                                              .width <=
                                                          400.0) {
                                                        return (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width *
                                                            0.7);
                                                      } else if (MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width <=
                                                          1000.0) {
                                                        return (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width *
                                                            0.5);
                                                      } else if (MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width >=
                                                          1001.0) {
                                                        return (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width *
                                                            0.4);
                                                      } else {
                                                        return (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width *
                                                            0.5);
                                                      }
                                                    }(),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .patientNumberTextController,
                                                      focusNode: _model
                                                          .patientNumberFocusNode,
                                                      autofocus: true,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelText:
                                                            'Patient Phone Number',
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Inter',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Inter',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .kolnaAhl,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            letterSpacing: 0.0,
                                                          ),
                                                      keyboardType:
                                                          TextInputType.phone,
                                                      validator: _model
                                                          .patientNumberTextControllerValidator
                                                          .asValidator(context),
                                                      inputFormatters: [
                                                        _model.patientNumberMask
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                            ],
                                          ),
                                        ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 15.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(8.0, 0.0, 8.0, 0.0),
                                              child: SizedBox(
                                                width: () {
                                                  if (MediaQuery.sizeOf(context)
                                                          .width <=
                                                      400.0) {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.7);
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
                                                          .width <=
                                                      1000.0) {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.5);
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
                                                          .width >=
                                                      1001.0) {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.4);
                                                  } else {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.5);
                                                  }
                                                }(),
                                                child: TextFormField(
                                                  controller: _model
                                                      .reasonTextTextController,
                                                  focusNode: _model
                                                      .reasonTextFocusNode,
                                                  autofocus: true,
                                                  textCapitalization:
                                                      TextCapitalization
                                                          .sentences,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText:
                                                        'Reason For Request ?',
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    hintText:
                                                        'Example: For Surgery',
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .kolnaAhl,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  maxLength: 50,
                                                  maxLengthEnforcement:
                                                      MaxLengthEnforcement
                                                          .enforced,
                                                  buildCounter: (context,
                                                          {required currentLength,
                                                          required isFocused,
                                                          maxLength}) =>
                                                      null,
                                                  validator: _model
                                                      .reasonTextTextControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 15.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        // DobDatePicker
                                                        final datePickedDate =
                                                            await showDatePicker(
                                                          context: context,
                                                          initialDate:
                                                              getCurrentTimestamp,
                                                          firstDate:
                                                              getCurrentTimestamp,
                                                          lastDate:
                                                              DateTime(2050),
                                                          builder:
                                                              (context, child) {
                                                            return wrapInMaterialDatePickerTheme(
                                                              context,
                                                              child!,
                                                              headerBackgroundColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                              headerForegroundColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .info,
                                                              headerTextStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            'Inter Tight',
                                                                        fontSize:
                                                                            32.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                      ),
                                                              pickerBackgroundColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                              pickerForegroundColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                              selectedDateTimeBackgroundColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .kolnaAhl,
                                                              selectedDateTimeForegroundColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .info,
                                                              actionButtonForegroundColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                              iconSize: 24.0,
                                                            );
                                                          },
                                                        );

                                                        if (datePickedDate !=
                                                            null) {
                                                          safeSetState(() {
                                                            _model.datePicked =
                                                                DateTime(
                                                              datePickedDate
                                                                  .year,
                                                              datePickedDate
                                                                  .month,
                                                              datePickedDate
                                                                  .day,
                                                            );
                                                          });
                                                        }
                                                      },
                                                      child: Container(
                                                        width: () {
                                                          if (MediaQuery.sizeOf(
                                                                      context)
                                                                  .width <=
                                                              400.0) {
                                                            return (MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                0.7);
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <=
                                                              1000.0) {
                                                            return (MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                0.5);
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width >=
                                                              1001.0) {
                                                            return (MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                0.4);
                                                          } else {
                                                            return (MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                0.5);
                                                          }
                                                        }(),
                                                        height:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .height *
                                                                0.06,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          borderRadius:
                                                              const BorderRadius.only(
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    6.0),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    6.0),
                                                            topLeft:
                                                                Radius.circular(
                                                                    6.0),
                                                            topRight:
                                                                Radius.circular(
                                                                    6.0),
                                                          ),
                                                          border: Border.all(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .kolnaAhl,
                                                            width: 2.0,
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      0.0,
                                                                      10.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Expanded(
                                                                flex: 1,
                                                                child: Icon(
                                                                  Icons
                                                                      .date_range,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .kolnaAhl,
                                                                  size: 30.0,
                                                                ),
                                                              ),
                                                              Expanded(
                                                                flex: 2,
                                                                child: Text(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    dateTimeFormat(
                                                                        "d/M/y",
                                                                        _model
                                                                            .datePicked),
                                                                    '01/01/2000',
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Inter',
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ),
                                                              Expanded(
                                                                flex: 3,
                                                                child: Text(
                                                                  'Date Blood Needed',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Inter',
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 20.0, 0.0, 10.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            FFButtonWidget(
                                              onPressed: () async {
                                                if (_model
                                                        .donationTargetDropDownValue ==
                                                    'Other') {
                                                  if ((_model.patientFirstNameTextController
                                                                  .text !=
                                                              '') &&
                                                      (_model.patientNumberTextController
                                                                  .text !=
                                                              '')) {
                                                    // SupabaseOtherUser
                                                    await RequestsTable()
                                                        .insert({
                                                      'District_Ref': functions
                                                          .stringtoint(_model
                                                              .districtDropDownValue),
                                                      'District_Name': _model
                                                          .districtDropDownValue,
                                                      'Hospital_Name': _model
                                                          .hospitalDropDownValue,
                                                      'BloodType': _model
                                                          .bloodTypeDropDownValue,
                                                      'DonationType': _model
                                                          .donationTypeDropDownValue,
                                                      'Qunatity': _model
                                                          .quantityTextFieldTextController
                                                          .text,
                                                      'PatientFirstName': _model
                                                          .patientFirstNameTextController
                                                          .text,
                                                      'MobileNumber': _model
                                                          .patientNumberTextController
                                                          .text,
                                                      'ReasonRequest': _model
                                                          .reasonTextTextController
                                                          .text,
                                                      'DateNeeded':
                                                          supaSerialize<
                                                                  DateTime>(
                                                              _model
                                                                  .datePicked),
                                                      'RequestStatus':
                                                          'pending',
                                                      'PatientMiddleName': _model
                                                          .patientMiddleNameTextController
                                                          .text,
                                                      'PatientLastName': _model
                                                          .patientLastNameTextController
                                                          .text,
                                                      'CityName': _model
                                                          .cityDropDownValue,
                                                      'Citry_Ref': functions
                                                          .stringtoint(_model
                                                              .cityDropDownValue),
                                                    });
                                                  } else {
                                                    // Alert
                                                    await showDialog(
                                                      context: context,
                                                      builder:
                                                          (alertDialogContext) {
                                                        return AlertDialog(
                                                          title: const Text(
                                                              'Missing Information'),
                                                          content: const Text(
                                                              'Please Fill Patient Name and Valid Phone Number'),
                                                          actions: [
                                                            TextButton(
                                                              onPressed: () =>
                                                                  Navigator.pop(
                                                                      alertDialogContext),
                                                              child: const Text('Ok'),
                                                            ),
                                                          ],
                                                        );
                                                      },
                                                    );
                                                    return;
                                                  }
                                                } else {
                                                  // Supabase User
                                                  await RequestsTable().insert({
                                                    'District_Ref': functions
                                                        .stringtoint(_model
                                                            .districtDropDownValue),
                                                    'District_Name': _model
                                                        .districtDropDownValue,
                                                    'Hospital_Name': _model
                                                        .hospitalDropDownValue,
                                                    'BloodType': _model
                                                        .bloodTypeDropDownValue,
                                                    'DonationType': _model
                                                        .donationTypeDropDownValue,
                                                    'Qunatity': _model
                                                        .quantityTextFieldTextController
                                                        .text,
                                                    'PatientFirstName':
                                                        valueOrDefault(
                                                            currentUserDocument
                                                                ?.firstName,
                                                            ''),
                                                    'MobileNumber':
                                                        currentPhoneNumber,
                                                    'ReasonRequest': _model
                                                        .reasonTextTextController
                                                        .text,
                                                    'DateNeeded':
                                                        supaSerialize<DateTime>(
                                                            _model.datePicked),
                                                    'RequestStatus': 'pending',
                                                    'PatientMiddleName':
                                                        valueOrDefault(
                                                            currentUserDocument
                                                                ?.middleName,
                                                            ''),
                                                    'PatientLastName': _model
                                                        .patientLastNameTextController
                                                        .text,
                                                    'CityName': _model
                                                        .cityDropDownValue,
                                                    'Citry_Ref': functions
                                                        .stringtoint(_model
                                                            .cityDropDownValue),
                                                  });
                                                }

                                                safeSetState(() {
                                                  _model
                                                      .patientFirstNameTextController
                                                      ?.clear();
                                                  _model
                                                      .patientNumberTextController
                                                      ?.clear();
                                                  _model
                                                      .reasonTextTextController
                                                      ?.clear();
                                                  _model
                                                      .quantityTextFieldTextController
                                                      ?.clear();
                                                  _model
                                                      .patientMiddleNameTextController
                                                      ?.clear();
                                                  _model
                                                      .patientLastNameTextController
                                                      ?.clear();
                                                });
                                                safeSetState(() {
                                                  _model
                                                      .donationTargetDropDownValueController
                                                      ?.reset();
                                                  _model
                                                      .bloodTypeDropDownValueController
                                                      ?.reset();
                                                  _model
                                                      .donationTypeDropDownValueController
                                                      ?.reset();
                                                  _model
                                                      .districtDropDownValueController
                                                      ?.reset();
                                                  _model
                                                      .cityDropDownValueController
                                                      ?.reset();
                                                  _model
                                                      .hospitalDropDownValueController
                                                      ?.reset();
                                                });
                                                // SnackBar
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(
                                                  SnackBar(
                                                    content: Text(
                                                      'Request Sent',
                                                      style: TextStyle(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                      ),
                                                    ),
                                                    duration: const Duration(
                                                        milliseconds: 4000),
                                                    backgroundColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondary,
                                                  ),
                                                );

                                                context.pushNamed(
                                                  'Home',
                                                  extra: <String, dynamic>{
                                                    kTransitionInfoKey:
                                                        const TransitionInfo(
                                                      hasTransition: true,
                                                      transitionType:
                                                          PageTransitionType
                                                              .rightToLeft,
                                                      duration: Duration(
                                                          milliseconds: 500),
                                                    ),
                                                  },
                                                );
                                              },
                                              text: 'Request',
                                              options: FFButtonOptions(
                                                width: () {
                                                  if (MediaQuery.sizeOf(context)
                                                          .width <=
                                                      400.0) {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.7);
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
                                                          .width <=
                                                      1000.0) {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.5);
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
                                                          .width >=
                                                      1001.0) {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.4);
                                                  } else {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.5);
                                                  }
                                                }(),
                                                height: 55.0,
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        24.0, 0.0, 24.0, 0.0),
                                                iconPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .kolnaAhl,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              'Inter Tight',
                                                          color: Colors.white,
                                                          letterSpacing: 0.0,
                                                        ),
                                                elevation: 3.0,
                                                borderSide: const BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 30.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            FFButtonWidget(
                                              onPressed: () async {
                                                await _model.pageViewController
                                                    ?.previousPage(
                                                  duration: const Duration(
                                                      milliseconds: 300),
                                                  curve: Curves.ease,
                                                );
                                              },
                                              text: 'Back',
                                              options: FFButtonOptions(
                                                width: () {
                                                  if (MediaQuery.sizeOf(context)
                                                          .width <=
                                                      400.0) {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.7);
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
                                                          .width <=
                                                      1000.0) {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.5);
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
                                                          .width >=
                                                      1001.0) {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.4);
                                                  } else {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.5);
                                                  }
                                                }(),
                                                height: 55.0,
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        24.0, 0.0, 24.0, 0.0),
                                                iconPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .kolnaAhl,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              'Inter Tight',
                                                          color: Colors.white,
                                                          letterSpacing: 0.0,
                                                        ),
                                                elevation: 3.0,
                                                borderSide: const BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Text(
                                        valueOrDefault<String>(
                                          _model.donationTargetDropDownValue,
                                          '0',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
