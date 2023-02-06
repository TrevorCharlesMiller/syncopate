import 'package:flutter/material.dart';
import 'package:syncopate/constants/text_styles.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      color: Colors.white,
      child: Row(
        children: [
          const Text(
            'Syncopate',
            style: appHeaderTextStyle,
          ),
          Expanded(
            child: Container(),
          ),
        ],
      ),
    );
  }
}
