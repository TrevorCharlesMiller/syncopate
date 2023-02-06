import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputBar extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  const InputBar({Key? key, required this.formKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
      child: Row(
        children: [
          const Text('Source:'),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: TextFormField(
              readOnly: true,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                width: 1,
              ))),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please select source folder';
                }
                return null;
              },
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          ElevatedButton(
            onPressed: () {

            },
            child: const SizedBox(height: 50, child: Center(child: FaIcon(FontAwesomeIcons.folderOpen))),
          ),
          const SizedBox(
            width: 24,
          ),
          const Text('Target:'),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: TextFormField(
              readOnly: true,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                width: 1,
              ))),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please select target folder';
                }
                return null;
              },
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          ElevatedButton(
            onPressed: () {

            },
            child: const SizedBox(height: 50, child: Center(child: FaIcon(FontAwesomeIcons.folderOpen))),
          ),
        ],
      ),
    );
  }
}
