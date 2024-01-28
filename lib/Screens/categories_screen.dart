import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News Categories'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Technology'),
            onTap: () {
              Navigator.pop(context, 'technology')  ;
               },
          ),
          ListTile(
            title: Text('Science'),
            onTap: () {
              Navigator.pop(context, 'science')  ;
            },
          ),
          ListTile(
            title: Text('Health'),
            onTap: () {
              Navigator.pop(context, 'health')  ;
            },
          ),
          ListTile(
            title: Text('General'),
            onTap: () {
              Navigator.pop(context, 'general')  ;
            },
          ),
          ListTile(
            title: Text('Business'),
            onTap: () {
              Navigator.pop(context, 'business')  ;
            },
          ),
          ListTile(
            title: Text('Sports'),
            onTap: () {
              Navigator.pop(context, 'sports')  ;
            },
          ),
          ListTile(
            title: Text('Entertainment'),
            onTap: () {
              Navigator.pop(context, 'entertainment')  ;
            },
          ),
          // Add more categories as needed
        ],
      ),
    );
  }
}
