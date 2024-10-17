import '/backend/backend.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'empty_model.dart';
export 'empty_model.dart';

class EmptyWidget extends StatefulWidget {
  const EmptyWidget({super.key});

  @override
  State<EmptyWidget> createState() => _EmptyWidgetState();
}

class _EmptyWidgetState extends State<EmptyWidget> {
  late EmptyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmptyModel());

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
                            width: double.infinity,
                            height: MediaQuery.sizeOf(context).height * 0.7,
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 40.0),
                              child: PageView(
                                physics: const NeverScrollableScrollPhysics(),
                                controller: _model.pageViewController ??=
                                    PageController(initialPage: 0),
                                scrollDirection: Axis.horizontal,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 20.0),
                                        child:
                                            StreamBuilder<List<DistrictRecord>>(
                                          stream: queryDistrictRecord(),
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
                                            List<DistrictRecord>
                                                fireDistrictDropDownDistrictRecordList =
                                                snapshot.data!;

                                            return FlutterFlowDropDown<String>(
                                              controller: _model
                                                      .fireDistrictDropDownValueController ??=
                                                  FormFieldController<String>(
                                                _model.fireDistrictDropDownValue ??=
                                                    '',
                                              ),
                                              options: List<String>.from(
                                                  fireDistrictDropDownDistrictRecordList
                                                      .map(
                                                          (e) => e.reference.id)
                                                      .toList()),
                                              optionLabels:
                                                  fireDistrictDropDownDistrictRecordList
                                                      .map(
                                                          (e) => e.districtName)
                                                      .toList(),
                                              onChanged: (val) async {
                                                safeSetState(() => _model
                                                        .fireDistrictDropDownValue =
                                                    val); // GetSelectedDistrict
                                                _model.getSelectedDistrict =
                                                    await DistrictTable()
                                                        .queryRows(
                                                  queryFn: (q) => q.eq(
                                                    'District_Name',
                                                    _model
                                                        .fireDistrictDropDownValue,
                                                  ),
                                                );

                                                safeSetState(() {});
                                              },
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.7,
                                              height: 40.0,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        letterSpacing: 0.0,
                                                      ),
                                              hintText: 'District fire',
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
                                            0.0, 5.0, 0.0, 20.0),
                                        child: FutureBuilder<List<DistrictRow>>(
                                          future: DistrictTable().queryRows(
                                            queryFn: (q) => q.eq(
                                              'FirebaseRef',
                                              _model.fireDistrictDropDownValue,
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

                                            return FlutterFlowDropDown<String>(
                                              controller: _model
                                                      .districtDropDownValueController ??=
                                                  FormFieldController<String>(
                                                      null),
                                              options:
                                                  districtDropDownDistrictRowList
                                                      .map(
                                                          (e) => e.districtName)
                                                      .withoutNulls
                                                      .toList(),
                                              onChanged: (val) => safeSetState(
                                                  () => _model
                                                          .districtDropDownValue =
                                                      val),
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.7,
                                              height: 40.0,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        letterSpacing: 0.0,
                                                      ),
                                              hintText: 'District supa',
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
                                                      12.0, 0.0, 12.0, 0.0),
                                              hidesUnderline: true,
                                              isOverButton: false,
                                              isSearchable: false,
                                              isMultiSelect: false,
                                            );
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [],
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
      ),
    );
  }
}
