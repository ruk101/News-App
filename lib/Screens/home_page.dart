import 'package:flutter/material.dart';
import 'package:news_app/api_service.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final ApiService apiService = ApiService();
  late Future<List<Map<String, dynamic>>> getNewsFuture;

  @override
  void initState() {
    super.initState();
    getNewsFuture = apiService.getNews(country: 'us');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News App'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              Navigator.pushNamed(context, '/search');
            },
          ),
          IconButton(
            icon: Icon(Icons.category),
            onPressed: () async {
              final response =
                  await Navigator.pushNamed(context, '/categories');
              if (response is String?) {
                setState(() {});
                getNewsFuture = apiService.getNews(
                  category: response,
                  country: 'us',
                );
              }
            },
          ),
          IconButton(
            icon: Icon(Icons.location_on_outlined),
            onPressed: () async {
              final response =
                  await Navigator.pushNamed(context, '/countries');
              if (response is String?) {
                setState(() {});
                getNewsFuture = apiService.getNews(
                  country: response,
                );
              }
            },
          ),
        ],
      ),
      body: FutureBuilder(
        future: getNewsFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            List<Map<String, dynamic>> articles =
                snapshot.data as List<Map<String, dynamic>>;
            return ListView.builder(
              itemCount: articles.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 18.0),
                  child: ListTile(
                    onTap: (){
                      Navigator.pushNamed(context, '/news',
                          arguments:  articles[index]
                      );
                    },
                    leading: SizedBox(
                      height: 80,
                      width: 80,
                      child: Image.network(
                        articles[index]['urlToImage'] ?? '',
                      ),
                    ),
                    title: Text(articles[index]['title'] ?? ''),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
