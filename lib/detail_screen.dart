// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  String title;
  String body;
  int id;
  int userId;

  DetailScreen(
      {super.key,
      required this.title,
      required this.body,
      required this.id,
      required this.userId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StackZeal Private Limited'),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(25.0),
          decoration: BoxDecoration(
              color: Colors.grey.shade900,
              borderRadius: BorderRadius.circular(25.0)),
          margin: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Row(
                children: [
                  const Text(
                    'ID :',
                    style: TextStyle(color: Colors.lightBlue),
                  ),
                  const SizedBox(width: 12.5),
                  Text(
                    id.toString(),
                    style: const TextStyle(color: Colors.lightGreen),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0),
                child: Divider(thickness: 1.0),
              ),
              Row(
                children: [
                  const Text(
                    'User ID :',
                    style: TextStyle(color: Colors.lightBlue),
                  ),
                  const SizedBox(width: 12.5),
                  Text(
                    userId.toString(),
                    style: const TextStyle(color: Colors.lightGreen),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0),
                child: Divider(thickness: 1.0),
              ),
              Row(
                children: [
                  const Text(
                    'Title :',
                    style: TextStyle(color: Colors.lightBlue),
                  ),
                  const SizedBox(width: 12.5),
                  Expanded(
                    child: Text(
                      title,
                      style: const TextStyle(color: Colors.lightGreen),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0),
                child: Divider(thickness: 1.0),
              ),
              Row(
                children: [
                  const Text(
                    'Body :',
                    style: TextStyle(color: Colors.lightBlue),
                  ),
                  const SizedBox(width: 12.5),
                  Expanded(
                    child: Text(
                      body,
                      style: const TextStyle(color: Colors.lightGreen),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
