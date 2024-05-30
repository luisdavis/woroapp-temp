import 'package:provider/provider.dart';
import '../../custom_webview.dart'; // Update the import path as necessary
import '/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'webview_model.dart';

class WebviewWidget extends StatefulWidget {
  const WebviewWidget({super.key});

  @override
  State<WebviewWidget> createState() => _WebviewWidgetState();
}

class _WebviewWidgetState extends State<WebviewWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<WebviewModel>(
      create: (context) => WebviewModel()..initState(context),
      child: Consumer<WebviewModel>(
        builder: (context, model, child) {
          return GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Scaffold(
              key: scaffoldKey,
              backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
              body: const Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: CustomWebView(
                      url: 'https://10.0.0.9', // Use custom WebView
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}