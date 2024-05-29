import '/flutter_flow/flutter_flow_util.dart';
import 'webview_copy_widget.dart' show WebviewCopyWidget;
import 'package:flutter/material.dart';

class WebviewCopyModel extends FlutterFlowModel<WebviewCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
