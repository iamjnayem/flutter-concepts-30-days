import 'package:flutter/material.dart';

class ListGrid extends StatefulWidget {
  const ListGrid({super.key});

  @override
  State<ListGrid> createState() => _ListGridState();
}

class _ListGridState extends State<ListGrid> {
  var fruits = [
    'apple',
    'orange',
    'grape',
    'banana',
    'lemon',
    'mango',
    'pineapple',
    'strawberry',
    'blueberry',
    'watermelon',
    'peach',
    'kiwi',
    'pear',
    'cherry',
    'papaya',
    'plum',
    'apricot',
    'blackberry',
    'cantaloupe',
    'coconut',
    'cranberry',
    'dragonfruit',
    'fig',
    'guava',
    'honeydew',
    'jackfruit',
    'lime',
    'lychee',
    'nectarine',
    'passionfruit',
    'pomegranate',
    'raspberry',
    'starfruit',
    'tangerine',
    'clementine',
    'elderberry',
    'gooseberry',
    'mulberry',
    'persimmon',
    'quince'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List & Grid'),
        backgroundColor: Colors.amber[300],
        elevation: 100,
      ),
      body: Container(
          /** Uncomment List view. It works */

          // child: ListView.builder(
          //   itemCount: fruits.length,
          //   itemBuilder: (context, index) {
          //     return Card(
          //       child: ListTile(
          //         onTap: () => print(fruits[index]),
          //         leading: Icon(Icons.person),
          //         title: Text(
          //           fruits[index],
          //         ),
          //         subtitle: Text('Nayem'),
          //       ),
          //     );
          //   },
          // ),

          // child: GridView(
          //   // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: crossAxisCount),
          //   gridDelegate:
          //       SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          //   children: [
          //     Card(
          //       child: Center(
          //         child: Text('Hello'),
          //       ),
          //     ),
          //     Card(
          //       child: Center(
          //         child: Text('Hello'),
          //       ),
          //     ),
          //     Card(
          //       child: Center(
          //         child: Text('Hello'),
          //       ),
          //     ),
          //     Card(
          //       child: Center(
          //         child: Text('Hello'),
          //       ),
          //     ),
          //     Card(
          //       child: Center(
          //         child: Text('Hello'),
          //       ),
          //     ),
          //     Card(
          //       child: Center(
          //         child: Text('Hello'),
          //       ),
          //     ),
          //     Card(
          //       child: Center(
          //         child: Text('Hello'),
          //       ),
          //     ),
          //     Card(
          //       child: Center(
          //         child: Text('Hello'),
          //       ),
          //     ),
          //     Card(
          //       child: Center(
          //         child: Text('Hello'),
          //       ),
          //     ),
          //     Card(
          //       child: Center(
          //         child: Text('Hello'),
          //       ),
          //     ),
          //   ],
          // ),

          child: GridView.builder(
        itemCount: fruits.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return Card(
            child: Center(
              child: Text(
                fruits[index],
              ),
            ),
          );
        },
      )),
    );
  }
}
