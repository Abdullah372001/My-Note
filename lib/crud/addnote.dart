import 'package:first_app/lists.dart';
import 'package:flutter/material.dart';

class AddNote extends StatefulWidget {
  const AddNote({super.key});

  @override
  State<AddNote> createState() => _AddNoteState();
}

class _AddNoteState extends State<AddNote> {
  TextEditingController noteText = TextEditingController();
  TextEditingController titleText = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Note"),
      ),
      body: Column(
        children: [
          Form(
            child: Column(
              children: [
                TextFormField(
                  controller: titleText,
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
                  controller: noteText,
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
              onPressed: () {
                notes.add({"Title": titleText.text, "Note": noteText.text});
                Navigator.of(context).pushReplacementNamed('Home');
              },
              child: const Text(
                'Add',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
