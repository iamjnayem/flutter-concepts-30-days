import 'package:flutter/material.dart';

class DismissibleWidget extends StatefulWidget {
  const DismissibleWidget({super.key});

  @override
  State<DismissibleWidget> createState() => _DismissibleWidgetState();
}

class _DismissibleWidgetState extends State<DismissibleWidget> {
  List<String> fruits = [
    'orange',
    'apple',
    'banana',
    'mango',
    'grapes',
    'melon'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dismissable Widget'),
        backgroundColor: Colors.pink[500],
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: ListView.builder(
          itemBuilder: (context, index) {
            final fruit = fruits[index];
            return Dismissible(
              onDismissed: (direction) {
                if (direction == DismissDirection.startToEnd) {
                  var snackBar = SnackBar(
                    content: Text(fruits[index]),
                    backgroundColor: Colors.blue[400],
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                } else {
                  var snackBar = SnackBar(
                    content: Text(fruits[index]),
                    backgroundColor: Colors.green[400],
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }
              },
              key: Key(fruit),
              background: Container(color: Colors.blue[400]),
              secondaryBackground: Container(color: Colors.green[400]),
              child: Card(
                margin: EdgeInsets.fromLTRB(5, 15, 5, 15),
                child: ListTile(
                  title: Text(
                    fruits[index],
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: const Text('Nayem'),
                ),
              ),
            );
          },
          itemCount: fruits.length,
        ),
      ),
    );
  }
}
