import '/backend/supabase/supabase.dart';
import '/components/city_dropdown/city_dropdown_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'add_town_model.dart';
export 'add_town_model.dart';

class AddTownWidget extends StatefulWidget {
  const AddTownWidget({super.key});

  @override
  State<AddTownWidget> createState() => _AddTownWidgetState();
}

class _AddTownWidgetState extends State<AddTownWidget> {
  late AddTownModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddTownModel());

    _model.townTextFieldTextController ??= TextEditingController();
    _model.townTextFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
          child: Form(
            key: _model.formKey,
            autovalidateMode: AutovalidateMode.always,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: () {
                      if (MediaQuery.sizeOf(context).width < 450.0) {
                        return MediaQuery.sizeOf(context).width;
                      } else if ((MediaQuery.sizeOf(context).width > 400.0) &&
                          (MediaQuery.sizeOf(context).width < 1000.0)) {
                        return (MediaQuery.sizeOf(context).width * 0.5);
                      } else {
                        return (MediaQuery.sizeOf(context).width * 0.25);
                      }
                    }(),
                    height: MediaQuery.sizeOf(context).height * 1.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 20.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.safePop();
                                  },
                                  child: Icon(
                                    Icons.arrow_back,
                                    color:
                                        FlutterFlowTheme.of(context).kolnaAhl,
                                    size: 24.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/KolonaAhlLogo-NOBG.png',
                              width: 200.0,
                              height: 200.0,
                              fit: BoxFit.contain,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 50.0, 0.0, 20.0),
                            child: FutureBuilder<List<DistrictRow>>(
                              future: DistrictTable().queryRows(
                                queryFn: (q) => q,
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50.0,
                                      height: 50.0,
                                      child: CircularProgressIndicator(
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                          FlutterFlowTheme.of(context).primary,
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                List<DistrictRow>
                                    districtDropDownDistrictRowList =
                                    snapshot.data!;

                                return FlutterFlowDropDown<String>(
                                  controller:
                                      _model.districtDropDownValueController ??=
                                          FormFieldController<String>(
                                    _model.districtDropDownValue ??= '0',
                                  ),
                                  options: List<String>.from(
                                      districtDropDownDistrictRowList
                                          .map((e) => e.districtId.toString())
                                          .toList()),
                                  optionLabels: districtDropDownDistrictRowList
                                      .map((e) => e.districtName)
                                      .withoutNulls
                                      .toList(),
                                  onChanged: (val) => safeSetState(
                                      () => _model.districtDropDownValue = val),
                                  width: () {
                                    if (MediaQuery.sizeOf(context).width <=
                                        400.0) {
                                      return (MediaQuery.sizeOf(context).width *
                                          0.7);
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <=
                                        1000.0) {
                                      return (MediaQuery.sizeOf(context).width *
                                          0.5);
                                    } else if (MediaQuery.sizeOf(context)
                                            .width >=
                                        1001.0) {
                                      return (MediaQuery.sizeOf(context).width *
                                          0.4);
                                    } else {
                                      return (MediaQuery.sizeOf(context).width *
                                          0.5);
                                    }
                                  }(),
                                  height: 40.0,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        letterSpacing: 0.0,
                                      ),
                                  hintText: 'District',
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 24.0,
                                  ),
                                  fillColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  elevation: 2.0,
                                  borderColor:
                                      FlutterFlowTheme.of(context).kolnaAhl,
                                  borderWidth: 2.0,
                                  borderRadius: 8.0,
                                  margin: const EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 12.0, 0.0),
                                  hidesUnderline: true,
                                  isOverButton: false,
                                  isSearchable: false,
                                  isMultiSelect: false,
                                );
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 20.0),
                            child: FutureBuilder<List<CitiesRow>>(
                              future: CitiesTable().queryRows(
                                queryFn: (q) => q.eq(
                                  'District-Ref',
                                  functions.stringtoint(
                                      _model.districtDropDownValue),
                                ),
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return SizedBox(
                                    width: () {
                                      if (MediaQuery.sizeOf(context).width <=
                                          400.0) {
                                        return (MediaQuery.sizeOf(context)
                                                .width *
                                            0.7);
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <=
                                          1000.0) {
                                        return (MediaQuery.sizeOf(context)
                                                .width *
                                            0.5);
                                      } else if (MediaQuery.sizeOf(context)
                                              .width >=
                                          1001.0) {
                                        return (MediaQuery.sizeOf(context)
                                                .width *
                                            0.4);
                                      } else {
                                        return (MediaQuery.sizeOf(context)
                                                .width *
                                            0.5);
                                      }
                                    }(),
                                    child: const CityDropdownWidget(),
                                  );
                                }
                                List<CitiesRow> cityDropDownCitiesRowList =
                                    snapshot.data!;

                                return FlutterFlowDropDown<String>(
                                  controller:
                                      _model.cityDropDownValueController ??=
                                          FormFieldController<String>(
                                    _model.cityDropDownValue ??= '0',
                                  ),
                                  options: List<String>.from(
                                      cityDropDownCitiesRowList
                                          .map((e) => e.cityId.toString())
                                          .toList()),
                                  optionLabels: cityDropDownCitiesRowList
                                      .map((e) => valueOrDefault<String>(
                                            e.cityName,
                                            'N/A',
                                          ))
                                      .toList(),
                                  onChanged: (val) => safeSetState(
                                      () => _model.cityDropDownValue = val),
                                  width: () {
                                    if (MediaQuery.sizeOf(context).width <=
                                        400.0) {
                                      return (MediaQuery.sizeOf(context).width *
                                          0.7);
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <=
                                        1000.0) {
                                      return (MediaQuery.sizeOf(context).width *
                                          0.5);
                                    } else if (MediaQuery.sizeOf(context)
                                            .width >=
                                        1001.0) {
                                      return (MediaQuery.sizeOf(context).width *
                                          0.4);
                                    } else {
                                      return (MediaQuery.sizeOf(context).width *
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
                                  searchTextStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        letterSpacing: 0.0,
                                      ),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        letterSpacing: 0.0,
                                      ),
                                  hintText: 'City',
                                  searchHintText: 'Search...',
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 24.0,
                                  ),
                                  fillColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  elevation: 2.0,
                                  borderColor:
                                      FlutterFlowTheme.of(context).kolnaAhl,
                                  borderWidth: 2.0,
                                  borderRadius: 8.0,
                                  margin: const EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 12.0, 0.0),
                                  hidesUnderline: true,
                                  isOverButton: false,
                                  isSearchable: true,
                                  isMultiSelect: false,
                                );
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 20.0),
                            child: SizedBox(
                              width: () {
                                if (MediaQuery.sizeOf(context).width <= 400.0) {
                                  return (MediaQuery.sizeOf(context).width *
                                      0.7);
                                } else if (MediaQuery.sizeOf(context).width <=
                                    1000.0) {
                                  return (MediaQuery.sizeOf(context).width *
                                      0.5);
                                } else if (MediaQuery.sizeOf(context).width >=
                                    1001.0) {
                                  return (MediaQuery.sizeOf(context).width *
                                      0.4);
                                } else {
                                  return (MediaQuery.sizeOf(context).width *
                                      0.5);
                                }
                              }(),
                              child: TextFormField(
                                controller: _model.townTextFieldTextController,
                                focusNode: _model.townTextFieldFocusNode,
                                autofocus: false,
                                textCapitalization: TextCapitalization.words,
                                obscureText: false,
                                decoration: InputDecoration(
                                  isDense: true,
                                  labelText: 'Town',
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        letterSpacing: 0.0,
                                      ),
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        letterSpacing: 0.0,
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color:
                                          FlutterFlowTheme.of(context).kolnaAhl,
                                      width: 3.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Color(0x00000000),
                                      width: 3.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 3.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 3.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  filled: true,
                                  fillColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Inter',
                                      letterSpacing: 0.0,
                                    ),
                                cursorColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                validator: _model
                                    .townTextFieldTextControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 0.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                // Validate District Text Box
                                if (_model.formKey.currentState == null ||
                                    !_model.formKey.currentState!.validate()) {
                                  return;
                                }
                                if (_model.districtDropDownValue == null) {
                                  return;
                                }
                                if (_model.cityDropDownValue == null) {
                                  return;
                                }
                                // Add Town to Supabase
                                await TownTable().insert({
                                  'City_Ref': valueOrDefault<int>(
                                    functions
                                        .stringtoint(_model.cityDropDownValue),
                                    0,
                                  ),
                                  'Town_Name':
                                      _model.townTextFieldTextController.text,
                                });
                                // Success Snackar
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Town Added',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    duration: const Duration(milliseconds: 4000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).secondary,
                                  ),
                                );
                                // Clearing District Texfield
                                safeSetState(() {
                                  _model.townTextFieldTextController?.clear();
                                });
                                // Reset Dropdown
                                safeSetState(() {
                                  _model.districtDropDownValueController
                                      ?.reset();
                                  _model.cityDropDownValueController?.reset();
                                });
                              },
                              text: 'Save',
                              options: FFButtonOptions(
                                width: () {
                                  if (MediaQuery.sizeOf(context).width <=
                                      400.0) {
                                    return (MediaQuery.sizeOf(context).width *
                                        0.7);
                                  } else if (MediaQuery.sizeOf(context).width <=
                                      1000.0) {
                                    return (MediaQuery.sizeOf(context).width *
                                        0.5);
                                  } else if (MediaQuery.sizeOf(context).width >=
                                      1001.0) {
                                    return (MediaQuery.sizeOf(context).width *
                                        0.4);
                                  } else {
                                    return (MediaQuery.sizeOf(context).width *
                                        0.5);
                                  }
                                }(),
                                height: 50.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).kolnaAhl,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Inter Tight',
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 0.0,
                                borderRadius: BorderRadius.circular(8.0),
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
        ),
      ),
    );
  }
}
