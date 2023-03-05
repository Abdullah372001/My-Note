// ignore_for_file: avoid_print
import 'dart:async';
import 'dart:io' show Platform;

import 'package:baseflow_plugin_template/baseflow_plugin_template.dart';
import 'package:flutter/material.dart';
import 'package:first_app/lists.dart';
import 'package:geolocator/geolocator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future getPosition() async {
    //bool service;
    //service = await Geolocator.isLocationServiceEnabled();
    // print("$service");
    LocationPermission per;
    per = (await GeolocatorPlatform.instance.isLocationServiceEnabled())
        as LocationPermission;
    print(per);
  }

  @override
  void initState() {
    getPosition();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Notes',
          style: TextStyle(fontSize: 25),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('AddNote');
        },
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: notes.length,
        itemBuilder: (context, i) {
          return Dismissible(
            key: Key('$i'),
            child: ListNotes(
              cnote: notes[i],
            ),
          );
        },
      ),
    );
  }
}

class ListNotes extends StatelessWidget {
  final cnote;
  const ListNotes({super.key, this.cnote});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        child: ListTile(
          title: Container(
            margin: const EdgeInsets.only(bottom: 10),
            child: Text("${cnote['Title']}"),
          ),
          subtitle: Text("${cnote['Note']}"),
          trailing: IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed('EditNote');
            },
            icon: const Icon(Icons.edit, size: 20),
          ),
        ),
      ),
    );
  }
}
