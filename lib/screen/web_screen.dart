import "package:flutter/material.dart";
import 'package:webview_flutter/webview_flutter.dart';

class WebScreen extends StatelessWidget {
  WebViewController? controller;
  final homeUrl = "https://blog.codefactory.ai";
  WebScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('code factory'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              if (controller == null) {
                return;
              }
              controller!.loadUrl(homeUrl);
            },
            icon: const Icon(Icons.home),
          ),
        ],
      ),
      body: WebView(
        onWebViewCreated: (WebViewController controller) {
          this.controller = controller;
        },
        initialUrl: homeUrl,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
