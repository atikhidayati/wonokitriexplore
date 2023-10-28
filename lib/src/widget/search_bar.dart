import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: TextField(
          autofocus: true,
          style: TextStyle(color: Colors.black, fontSize: 18.0),
          decoration: InputDecoration(
            hintText: "Search Google",
            hintStyle: TextStyle(color: Colors.grey),
            border: InputBorder.none,
          ),
          onChanged: (query) {
            // Implementasi logika pencarian di sini
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.mic),
            onPressed: () {
              // Aksi ketika tombol mikrofon ditekan
            },
            color: Colors.blue,
          ),
        ],
      ),
      body: Center(
        child: Text(
          'Hasil Pencarian Akan Muncul Di Sini',
          style: TextStyle(fontSize: 18.0),
        ),
      ),
    );
  }
}
