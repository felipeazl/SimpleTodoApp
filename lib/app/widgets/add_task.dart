// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:flutter/material.dart';

import 'package:simple_to_do_app/app/widgets/my_button.dart';

class AddTask extends StatelessWidget {
  VoidCallback onSave;
  final TextEditingController? controller;
  AddTask({
    Key? key,
    required this.onSave,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.grey[900],
      content: SizedBox(
        height: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Add new task",
                  style: TextStyle(color: Colors.white),
                ),
                IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: const Icon(
                    Icons.close,
                    color: Colors.white,
                    size: 24,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            TextField(
              controller: controller,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                border: const OutlineInputBorder(),
                hintText: "New Task...",
                hintStyle: TextStyle(
                  color: Colors.white.withOpacity(0.3),
                ),
              ),
            ),
            const Spacer(),
            SizedBox(
              width: 100,
              height: 40,
              child: MyButton(text: "Save", onPressed: onSave),
            )
          ],
        ),
      ),
    );
  }
}
