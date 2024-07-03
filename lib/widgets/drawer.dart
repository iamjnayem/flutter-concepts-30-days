import 'package:flutter/material.dart';
import 'package:ui_concept/widgets/image.dart';
import 'package:ui_concept/widgets/NetImage.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer'),
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.grey[700],
          child: ListView(
            children: const [
              DrawerHeader(
                child: Center(
                  child: Row(
                    children: [
                      // CircleAvatar(
                      //   radius: 40,
                      //   backgroundColor: Colors.white,
                      // ),
                      ImageWidget(),
                      SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Nayem',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Text('iamj.nayem@gmail.com'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              ListTile(leading: Icon(Icons.folder), title: Text('My Files')),
              ListTile(
                  leading: Icon(Icons.group), title: Text('Shared with me')),
              ListTile(leading: Icon(Icons.star), title: Text('Starred')),
              ListTile(leading: Icon(Icons.delete), title: Text('Bin')),
              ListTile(leading: Icon(Icons.upload), title: Text('Upload')),
              Divider(),
              ListTile(leading: Icon(Icons.share), title: Text('Share')),
              ListTile(leading: Icon(Icons.logout), title: Text('Logout')),
              Divider(),
              NetworkImageWidget(),
            ],
          ),
        ), 
      ),
      body: Container(
        width: w,
        height: h,
        color: Colors.brown,
        child: const Center(
          child: Text('Hello'),
        ),
      ),
    );
  }
}
