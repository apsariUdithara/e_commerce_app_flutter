import 'package:flutter/material.dart';

import '../../../../common/widgets/containers/primary_header_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            EPrimaryHeaderContainer(
              child: Container(
                child: Container(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
