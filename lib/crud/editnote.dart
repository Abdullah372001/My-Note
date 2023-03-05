import 'package:flutter/material.dart';

class EditNote extends StatefulWidget {
  const EditNote({super.key});

  @override
  State<EditNote> createState() => _EditNoteState();
}

class _EditNoteState extends State<EditNote> {
  TextEditingController titleText = TextEditingController();
  TextEditingController noteText = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Edit Note",
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: Column(
        children: [
          Form(
            child: Column(
              children: [
                TextFormField(
                  maxLength: 30,
                  style: const TextStyle(fontSize: 22),
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.note),
                    labelText: 'Title',
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
                TextFormField(
                  maxLength: 300,
                  maxLines: 3,
                  style: const TextStyle(fontSize: 22),
                  textInputAction: TextInputAction.done,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.note),
                    labelText: 'Note',
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 100,
            child: ElevatedButton(
              key: const Key('1'),
              onPressed: () {
                setState(() {});
                Navigator.of(context).pushReplacementNamed('Home');
              },
              child: const Text(
                'Save',
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
