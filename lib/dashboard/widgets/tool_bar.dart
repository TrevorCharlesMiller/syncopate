import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Toolbar extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  const Toolbar({Key? key, required this.formKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
      child: Row(
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                minimumSize: const Size(100, 60)
            ),
            onPressed: () {},
            child: SizedBox(
              height: 50,
              child: Row(
                children: const [
                  FaIcon(FontAwesomeIcons.magnifyingGlass),
                  SizedBox(width: 10,),
                  Text('Analyze'),
                ],
              ),
            ),
          ),
          const SizedBox(width: 10,),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                minimumSize: const Size(100, 60)
            ),
            onPressed: () {},
            child: SizedBox(
              height: 50,
              child: Row(
                children: const [
                  FaIcon(FontAwesomeIcons.rotate),
                  SizedBox(width: 10,),
                  Text('Synchronize'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
