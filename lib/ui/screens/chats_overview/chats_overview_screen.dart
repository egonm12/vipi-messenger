import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:sandbox/routing/router.dart';

class ChatOverviewScreen extends StatelessWidget {
  const ChatOverviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('Vipi'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () =>
            Beamer.of(context).beamToNamed(AppRouter.contactsOverviewRoute),
        child: Icon(Icons.message_outlined),
      ),
    );
  }
}
