import 'package:codelab_3/colors.dart';
import 'package:codelab_3/screens/list_sreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 2),
      () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => ListScreen(),
        ),
      ),
    );

    return Stack(
      children: [
        Container(color: mainThemeColor),
        const Align(
          alignment: Alignment.center,
          child: Icon(Icons.pool, color: Colors.white, size: 80),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: LinearProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(
              Colors.white.withOpacity(0.4),
            ),
          ),
        )
      ],
    );
  }
}
