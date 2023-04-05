// ignore_for_file: avoid_print,, must_be_immutable
import 'package:flutter/material.dart';
import 'networking.dart';
import 'detail_screen.dart';

List<Widget> cardDetails = [];

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    var datas = await getFetchData();

    for (var data in datas) {
      cardDetails.add(ReusableCard(
        id: data['id'],
        userId: data['userId'],
        title: data['title'],
        body: data['body'],
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StackZeal Private Limited'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: OutlinedButton(
                  onPressed: () {
                    setState(() {});
                  },
                  child: const Text('Fetch Data')),
            ),
            const SizedBox(
              width: double.infinity,
            ),
            Column(
              children: cardDetails,
            ),
          ],
        ),
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  String title;
  String body;
  int id;
  int userId;

  ReusableCard(
      {super.key,
      required this.title,
      required this.body,
      required this.id,
      required this.userId});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return DetailScreen(
            title: title,
            body: body,
            id: id,
            userId: userId,
          );
        }));
      },
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
    );
  }
}
