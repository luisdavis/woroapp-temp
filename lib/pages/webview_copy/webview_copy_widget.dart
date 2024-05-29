import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'webview_copy_model.dart';
export 'webview_copy_model.dart';

class WebviewCopyWidget extends StatefulWidget {
  const WebviewCopyWidget({super.key});

  @override
  State<WebviewCopyWidget> createState() => _WebviewCopyWidgetState();
}

class _WebviewCopyWidgetState extends State<WebviewCopyWidget> {
  late WebviewCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WebviewCopyModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: FlutterFlowWebView(
                content: 'http://flutterflow.io',
                bypass: false,
                height: MediaQuery.sizeOf(context).height * 1.0,
                verticalScroll: false,
                horizontalScroll: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
