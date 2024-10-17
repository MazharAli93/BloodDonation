import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/supabase/supabase.dart';
import '/components/city_dropdown/city_dropdown_widget.dart';
import '/components/town_dropdown/town_dropdown_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'profile_model.dart';
export 'profile_model.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({super.key});

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  late ProfileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfileModel());

    _model.emailTextFieldTextController ??= TextEditingController();
    _model.emailTextFieldFocusNode ??= FocusNode();

    _model.firstNameTextController ??= TextEditingController(
        text: valueOrDefault(currentUserDocument?.firstName, ''));
    _model.firstNameFocusNode ??= FocusNode();

    _model.middleNameTextController ??= TextEditingController(
        text: valueOrDefault(currentUserDocument?.middleName, ''));
    _model.middleNameFocusNode ??= FocusNode();

    _model.lastNameTextController ??= TextEditingController(
        text: valueOrDefault(currentUserDocument?.lastName, ''));
    _model.lastNameFocusNode ??= FocusNode();

    _model.motherNameTextController ??= TextEditingController(
        text: valueOrDefault(currentUserDocument?.motherName, ''));
    _model.motherNameFocusNode ??= FocusNode();

    _model.mobileNumberTextController ??=
        TextEditingController(text: currentPhoneNumber);
    _model.mobileNumberFocusNode ??= FocusNode();

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
                  child: SingleChildScrollView(
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
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 50.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 20.0),
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
                                  child: TextFormField(
                                    controller:
                                        _model.emailTextFieldTextController,
                                    focusNode: _model.emailTextFieldFocusNode,
                                    autofocus: false,
                                    readOnly: true,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      isDense: true,
                                      labelText: 'Email Address',
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
                                          color: FlutterFlowTheme.of(context)
                                              .kolnaAhl,
                                          width: 3.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0x00000000),
                                          width: 3.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 3.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 3.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
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
                                    cursorColor: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    validator: _model
                                        .emailTextFieldTextControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 20.0),
                                child: AuthUserStreamWidget(
                                  builder: (context) => SizedBox(
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
                                    child: TextFormField(
                                      controller:
                                          _model.firstNameTextController,
                                      focusNode: _model.firstNameFocusNode,
                                      autofocus: false,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        isDense: true,
                                        labelText: 'First Name',
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
                                            color: FlutterFlowTheme.of(context)
                                                .kolnaAhl,
                                            width: 3.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color(0x00000000),
                                            width: 3.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 3.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 3.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
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
                                      cursorColor: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      validator: _model
                                          .firstNameTextControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 20.0),
                                child: AuthUserStreamWidget(
                                  builder: (context) => SizedBox(
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
                                    child: TextFormField(
                                      controller:
                                          _model.middleNameTextController,
                                      focusNode: _model.middleNameFocusNode,
                                      autofocus: false,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        isDense: true,
                                        labelText: 'Middle Name',
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
                                            color: FlutterFlowTheme.of(context)
                                                .kolnaAhl,
                                            width: 3.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color(0x00000000),
                                            width: 3.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 3.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 3.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
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
                                      cursorColor: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      validator: _model
                                          .middleNameTextControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 20.0),
                                child: AuthUserStreamWidget(
                                  builder: (context) => SizedBox(
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
                                    child: TextFormField(
                                      controller: _model.lastNameTextController,
                                      focusNode: _model.lastNameFocusNode,
                                      autofocus: false,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        isDense: true,
                                        labelText: 'Last Name',
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
                                            color: FlutterFlowTheme.of(context)
                                                .kolnaAhl,
                                            width: 3.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color(0x00000000),
                                            width: 3.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 3.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 3.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
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
                                      cursorColor: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      validator: _model
                                          .lastNameTextControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 20.0),
                                child: AuthUserStreamWidget(
                                  builder: (context) => SizedBox(
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
                                    child: TextFormField(
                                      controller:
                                          _model.motherNameTextController,
                                      focusNode: _model.motherNameFocusNode,
                                      autofocus: false,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        isDense: true,
                                        labelText: 'Mother Name',
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
                                            color: FlutterFlowTheme.of(context)
                                                .kolnaAhl,
                                            width: 3.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color(0x00000000),
                                            width: 3.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 3.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 3.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
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
                                      cursorColor: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      validator: _model
                                          .motherNameTextControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 20.0),
                                child: AuthUserStreamWidget(
                                  builder: (context) =>
                                      FlutterFlowDropDown<String>(
                                    controller:
                                        _model.genderDropDownValueController ??=
                                            FormFieldController<String>(
                                      _model.genderDropDownValue ??=
                                          valueOrDefault(
                                              currentUserDocument?.gender, ''),
                                    ),
                                    options: const ['Male', 'Female'],
                                    onChanged: (val) => safeSetState(
                                        () => _model.genderDropDownValue = val),
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
                                    height: 40.0,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          letterSpacing: 0.0,
                                        ),
                                    hintText: 'Gender',
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
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 20.0),
                                child: AuthUserStreamWidget(
                                  builder: (context) => SizedBox(
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
                                    child: TextFormField(
                                      controller:
                                          _model.mobileNumberTextController,
                                      focusNode: _model.mobileNumberFocusNode,
                                      autofocus: false,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        isDense: true,
                                        labelText: 'Mobile Number',
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
                                            color: FlutterFlowTheme.of(context)
                                                .kolnaAhl,
                                            width: 3.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color(0x00000000),
                                            width: 3.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 3.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 3.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
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
                                      cursorColor: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      validator: _model
                                          .mobileNumberTextControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 20.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    final datePickedDate =
                                        await showDatePicker(
                                      context: context,
                                      initialDate:
                                          (currentUserDocument?.dateofBirth ??
                                              DateTime.now()),
                                      firstDate: DateTime(1900),
                                      lastDate:
                                          (currentUserDocument?.dateofBirth ??
                                              DateTime.now()),
                                      builder: (context, child) {
                                        return wrapInMaterialDatePickerTheme(
                                          context,
                                          child!,
                                          headerBackgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                          headerForegroundColor:
                                              FlutterFlowTheme.of(context).info,
                                          headerTextStyle:
                                              FlutterFlowTheme.of(context)
                                                  .headlineLarge
                                                  .override(
                                                    fontFamily: 'Inter Tight',
                                                    fontSize: 32.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                          pickerBackgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          pickerForegroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryText,
                                          selectedDateTimeBackgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .kolnaAhl,
                                          selectedDateTimeForegroundColor:
                                              FlutterFlowTheme.of(context).info,
                                          actionButtonForegroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryText,
                                          iconSize: 24.0,
                                        );
                                      },
                                    );

                                    if (datePickedDate != null) {
                                      safeSetState(() {
                                        _model.datePicked = DateTime(
                                          datePickedDate.year,
                                          datePickedDate.month,
                                          datePickedDate.day,
                                        );
                                      });
                                    }
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
                                    height: 40.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(8.0),
                                      shape: BoxShape.rectangle,
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .kolnaAhl,
                                        width: 2.0,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          5.0, 2.0, 5.0, 2.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Date of Birth',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Inter',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          AuthUserStreamWidget(
                                            builder: (context) => Text(
                                              dateTimeFormat(
                                                              "d/M/y",
                                                              _model
                                                                  .datePicked) !=
                                                          ''
                                                  ? dateTimeFormat("d/M/y",
                                                      _model.datePicked)
                                                  : dateTimeFormat(
                                                      "d/M/y",
                                                      currentUserDocument!
                                                          .dateofBirth!),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 20.0),
                                child: AuthUserStreamWidget(
                                  builder: (context) =>
                                      FlutterFlowDropDown<String>(
                                    controller: _model
                                            .bloodTypeDropDownValueController ??=
                                        FormFieldController<String>(
                                      _model.bloodTypeDropDownValue ??=
                                          valueOrDefault(
                                              currentUserDocument?.bloodType,
                                              ''),
                                    ),
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
                                    onChanged: (val) => safeSetState(() =>
                                        _model.bloodTypeDropDownValue = val),
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
                                    height: 40.0,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          letterSpacing: 0.0,
                                        ),
                                    hintText: 'BloodType',
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
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 20.0),
                                child: AuthUserStreamWidget(
                                  builder: (context) =>
                                      FutureBuilder<List<DistrictRow>>(
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
                                                FlutterFlowTheme.of(context)
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
                                          _model.districtDropDownValue ??= '0',
                                        ),
                                        options: List<String>.from(
                                            districtDropDownDistrictRowList
                                                .map((e) =>
                                                    e.districtId.toString())
                                                .toList()),
                                        optionLabels:
                                            districtDropDownDistrictRowList
                                                .map((e) => e.districtName)
                                                .withoutNulls
                                                .toList(),
                                        onChanged: (val) => safeSetState(() =>
                                            _model.districtDropDownValue = val),
                                        width: () {
                                          if (MediaQuery.sizeOf(context)
                                                  .width <=
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
                                            FlutterFlowTheme.of(context)
                                                .kolnaAhl,
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
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 20.0),
                                child: AuthUserStreamWidget(
                                  builder: (context) =>
                                      FutureBuilder<List<CitiesRow>>(
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
                                            if (MediaQuery.sizeOf(context)
                                                    .width <=
                                                400.0) {
                                              return (MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.7);
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <=
                                                1000.0) {
                                              return (MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.5);
                                            } else if (MediaQuery.sizeOf(
                                                        context)
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
                                      List<CitiesRow>
                                          cityDropDownCitiesRowList =
                                          snapshot.data!;

                                      return FlutterFlowDropDown<String>(
                                        controller: _model
                                                .cityDropDownValueController ??=
                                            FormFieldController<String>(
                                          _model.cityDropDownValue ??= '',
                                        ),
                                        options: List<String>.from(
                                            cityDropDownCitiesRowList
                                                .map((e) => e.cityId.toString())
                                                .toList()),
                                        optionLabels: cityDropDownCitiesRowList
                                            .map((e) => e.cityName)
                                            .withoutNulls
                                            .toList(),
                                        onChanged: (val) => safeSetState(() =>
                                            _model.cityDropDownValue = val),
                                        width: () {
                                          if (MediaQuery.sizeOf(context)
                                                  .width <=
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
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 24.0,
                                        ),
                                        fillColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        elevation: 2.0,
                                        borderColor:
                                            FlutterFlowTheme.of(context)
                                                .kolnaAhl,
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
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 20.0),
                                child: AuthUserStreamWidget(
                                  builder: (context) =>
                                      FutureBuilder<List<TownRow>>(
                                    future: TownTable().queryRows(
                                      queryFn: (q) => q.eq(
                                        'City_Ref',
                                        functions.stringtoint(
                                            _model.cityDropDownValue),
                                      ),
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return const TownDropdownWidget();
                                      }
                                      List<TownRow> townDropDownTownRowList =
                                          snapshot.data!;

                                      return FlutterFlowDropDown<String>(
                                        controller: _model
                                                .townDropDownValueController ??=
                                            FormFieldController<String>(
                                          _model.townDropDownValue ??=
                                              valueOrDefault(
                                                  currentUserDocument?.town,
                                                  ''),
                                        ),
                                        options: townDropDownTownRowList
                                            .map((e) => e.townName)
                                            .withoutNulls
                                            .toList(),
                                        onChanged: (val) => safeSetState(() =>
                                            _model.townDropDownValue = val),
                                        width: () {
                                          if (MediaQuery.sizeOf(context)
                                                  .width <=
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
                                        height: 40.0,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              letterSpacing: 0.0,
                                            ),
                                        hintText: 'Town',
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
                                            FlutterFlowTheme.of(context)
                                                .kolnaAhl,
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
                              ),
                              FFButtonWidget(
                                onPressed: () async {
                                  // UpdateUserFirebase

                                  await currentUserReference!
                                      .update(createUserRecordData(
                                    displayName:
                                        '${_model.firstNameTextController.text} ${_model.lastNameTextController.text}',
                                    phoneNumber:
                                        _model.mobileNumberTextController.text,
                                    firstName:
                                        _model.firstNameTextController.text,
                                    middleName:
                                        _model.middleNameTextController.text,
                                    lastName:
                                        _model.lastNameTextController.text,
                                    bloodType: _model.bloodTypeDropDownValue,
                                    gender: _model.genderDropDownValue,
                                    district: _model.districtDropDownValue,
                                    city: _model.cityDropDownValue,
                                    town: _model.townDropDownValue,
                                    dateofBirth: _model.datePicked,
                                    motherName:
                                        _model.motherNameTextController.text,
                                  ));
                                  // Update User Supabase
                                  await UsersTable().update(
                                    data: {
                                      'FirstName':
                                          _model.firstNameTextController.text,
                                      'MiddleName':
                                          _model.middleNameTextController.text,
                                      'LastName':
                                          _model.lastNameTextController.text,
                                      'MothersName':
                                          _model.motherNameTextController.text,
                                      'MobileNumber': _model
                                          .mobileNumberTextController.text,
                                      'Gender': _model.genderDropDownValue,
                                      'BloodType':
                                          _model.bloodTypeDropDownValue,
                                      'DateOfBirth': supaSerialize<DateTime>(
                                          _model.datePicked),
                                      'City_Ref': functions.stringtoint(
                                          _model.cityDropDownValue),
                                    },
                                    matchingRows: (rows) => rows.eq(
                                      'FireBase_Ref',
                                      currentUserReference?.id,
                                    ),
                                  );
                                  // Alert
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: const Text('Update '),
                                        content:
                                            const Text('Your Information Is Updated'),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: const Text('Ok'),
                                          ),
                                        ],
                                      );
                                    },
                                  );

                                  context.pushNamed(
                                    'Home',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: const TransitionInfo(
                                        hasTransition: true,
                                        transitionType:
                                            PageTransitionType.rightToLeft,
                                        duration: Duration(milliseconds: 500),
                                      ),
                                    },
                                  );
                                },
                                text: 'Update',
                                options: FFButtonOptions(
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
                            ],
                          ),
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
    );
  }
}
