import '/backend/supabase/supabase.dart';
import '/components/city_dropdown/city_dropdown_widget.dart';
import '/components/empty_list/empty_list_widget.dart';
import '/components/empty_request_list/empty_request_list_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'donation_requests_model.dart';
export 'donation_requests_model.dart';

class DonationRequestsWidget extends StatefulWidget {
  const DonationRequestsWidget({super.key});

  @override
  State<DonationRequestsWidget> createState() => _DonationRequestsWidgetState();
}

class _DonationRequestsWidgetState extends State<DonationRequestsWidget> {
  late DonationRequestsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DonationRequestsModel());

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
                                color: FlutterFlowTheme.of(context).kolnaAhl,
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
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
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
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                ),
                              );
                            }
                            List<DistrictRow> districtDropDownDistrictRowList =
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
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
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
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                        child: FutureBuilder<List<CitiesRow>>(
                          future: CitiesTable().queryRows(
                            queryFn: (q) => q.eq(
                              'District-Ref',
                              functions
                                  .stringtoint(_model.districtDropDownValue),
                            ),
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
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
                                  child: const CityDropdownWidget(),
                                ),
                              );
                            }
                            List<CitiesRow> cityDropDownCitiesRowList =
                                snapshot.data!;

                            return FlutterFlowDropDown<String>(
                              controller: _model.cityDropDownValueController ??=
                                  FormFieldController<String>(null),
                              options: cityDropDownCitiesRowList
                                  .map((e) => valueOrDefault<String>(
                                        e.cityName,
                                        'N/A',
                                      ))
                                  .toList(),
                              onChanged: (val) async {
                                safeSetState(() => _model.cityDropDownValue =
                                    val); // GetSelectedCityID
                                _model.getSelectedCityID =
                                    await CitiesTable().queryRows(
                                  queryFn: (q) => q.eq(
                                    'City_Name',
                                    _model.cityDropDownValue,
                                  ),
                                );

                                safeSetState(() {});
                              },
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
                              height: 40.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                              hintText: 'City',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
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
                      FutureBuilder<List<RequestsRow>>(
                        future: RequestsTable().queryRows(
                          queryFn: (q) => q
                              .eq(
                                'RequestStatus',
                                'accepted',
                              )
                              .eq(
                                'Citry_Ref',
                                valueOrDefault<int>(
                                  _model.getSelectedCityID?.first.cityId,
                                  0,
                                ),
                              )
                              .order('created_at'),
                        ),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return const EmptyListWidget();
                          }
                          List<RequestsRow> listViewRequestsRowList =
                              snapshot.data!;

                          if (listViewRequestsRowList.isEmpty) {
                            return const Center(
                              child: EmptyRequestListWidget(),
                            );
                          }

                          return ListView.separated(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: listViewRequestsRowList.length,
                            separatorBuilder: (_, __) => const SizedBox(height: 20.0),
                            itemBuilder: (context, listViewIndex) {
                              final listViewRequestsRow =
                                  listViewRequestsRowList[listViewIndex];
                              return Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed(
                                        'PatientInfo',
                                        queryParameters: {
                                          'requestID': serializeParam(
                                            listViewRequestsRow,
                                            ParamType.SupabaseRow,
                                          ),
                                        }.withoutNulls,
                                        extra: <String, dynamic>{
                                          kTransitionInfoKey: const TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.leftToRight,
                                            duration:
                                                Duration(milliseconds: 500),
                                          ),
                                        },
                                      );
                                    },
                                    child: Container(
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
                                      height: 120.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .kolnaAhl,
                                          width: 3.0,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            5.0, 5.0, 5.0, 5.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  valueOrDefault<String>(
                                                    listViewRequestsRow
                                                        .bloodType,
                                                    'N/A',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 8.0, 0.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    valueOrDefault<String>(
                                                      listViewRequestsRow
                                                          .patientFirstName,
                                                      'N/A',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                  Text(
                                                    valueOrDefault<String>(
                                                      listViewRequestsRow
                                                          .patientMiddleName,
                                                      'N/A',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                  Text(
                                                    valueOrDefault<String>(
                                                      listViewRequestsRow
                                                          .patientLastName,
                                                      'N/A',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 8.0, 0.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Text(
                                                    valueOrDefault<String>(
                                                      listViewRequestsRow
                                                          .hospitalName,
                                                      'N/A',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                  Text(
                                                    valueOrDefault<String>(
                                                      listViewRequestsRow
                                                          .districtName,
                                                      'N/A',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          );
                        },
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
