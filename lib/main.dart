import 'package:flutter/material.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter ListTile',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  var userName = ['Rizve', 'Rahman', 'Reza', 'Ruma', 'Yasmin', 'Mir Roshid', 'Masuma', 'Jannat', 'Saleha'];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter ListTile HomeScreen'),
      ),
      body: ListView.separated(itemCount: userName.length, itemBuilder: (context, index) {
        return ListTile(
          leading: Text('${index + 1}'),
          title: Text(userName[index]),
          subtitle: Text('Phone Number'),
          trailing: Icon(Icons.add),
        );
        },
        separatorBuilder: (context, index){
          return Divider(height: 35, thickness: 3,);
        },
      )
    );
  }
}