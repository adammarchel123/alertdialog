import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String data = 'Data Masih Ada';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Dialog'),
      ),
      body: Center(
        child: Text(
          data,
          style: TextStyle(fontSize: 30),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text('Delete Data'),
                content: Text('Are you sure want to delete data?'),
                actions: [
                  TextButton(
                      onPressed: () {
                        setState(() {
                          data = 'Data Tidak Jadi Dihapus';
                        });
                        Navigator.pop(context);
                      },
                      child: Text('No')),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          data = 'Data Dihapus';
                        });
                        Navigator.pop(context);
                      },
                      child: Text('Yes'))
                ],
              );
            },
          );
        },
        child: Icon(Icons.delete),
      ),
    );
  }
}
