// import 'webview_widget.dart' show WebviewWidget;
import 'package:flutter/material.dart';

class WebviewModel extends ChangeNotifier {
  final unfocusNode = FocusNode();

  void initState(BuildContext context) {
    // Initialize any state or start any operations if needed
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    super.dispose();
  }
}
