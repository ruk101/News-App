import 'package:flutter/material.dart';
import 'package:news_app/Screens/countries_screen.dart';
import 'Screens/home_page.dart';
import 'api_service.dart';
import 'Screens/search_page.dart';
import 'Screens/news_page.dart';
import 'Screens/categories_screen.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      showSemanticsDebugger: false,
      title: 'News App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/search': (context) => SearchPage(),
        '/news': (context) => NewsPage(),
        '/categories': (context) => CategoriesScreen(),
        '/countries': (context) => CountriesScreen(),
      },
    );
  }
}
