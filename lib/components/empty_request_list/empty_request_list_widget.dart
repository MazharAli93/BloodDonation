import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'empty_request_list_model.dart';
export 'empty_request_list_model.dart';

class EmptyRequestListWidget extends StatefulWidget {
  const EmptyRequestListWidget({super.key});

  @override
  State<EmptyRequestListWidget> createState() => _EmptyRequestListWidgetState();
}

class _EmptyRequestListWidgetState extends State<EmptyRequestListWidget> {
  late EmptyRequestListModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmptyRequestListModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
      child: Container(
        width: () {
          if (MediaQuery.sizeOf(context).width <= 400.0) {
            return (MediaQuery.sizeOf(context).width * 0.7);
          } else if (MediaQuery.sizeOf(context).width <= 1000.0) {
            return (MediaQuery.sizeOf(context).width * 0.5);
          } else if (MediaQuery.sizeOf(context).width >= 1001.0) {
            return (MediaQuery.sizeOf(context).width * 0.4);
          } else {
            return (MediaQuery.sizeOf(context).width * 0.5);
          }
        }(),
        height: 56.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            color: FlutterFlowTheme.of(context).kolnaAhl,
            width: 2.0,
          ),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(10.0, 5.0, 10.0, 5.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'No Requests Found',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Inter',
                      letterSpacing: 0.0,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
