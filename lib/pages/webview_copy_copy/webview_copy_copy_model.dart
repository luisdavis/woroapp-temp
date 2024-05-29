import '/flutter_flow/flutter_flow_util.dart';
import 'webview_copy_copy_widget.dart' show WebviewCopyCopyWidget;
import 'package:flutter/material.dart';

class WebviewCopyCopyModel extends FlutterFlowModel<WebviewCopyCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
