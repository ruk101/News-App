import 'package:flutter/material.dart';
import 'package:news_app/api_service.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final ApiService apiService = ApiService();
  late Future<List<Map<String, dynamic>>> getNewsFuture;
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    getNewsFuture = apiService.getNews(country: 'us');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: controller,
        ),
        actions: [
          IconButton(onPressed: () {
          setState(() {});
          getNewsFuture = apiService.getNews(
            query: controller.text,
            country: 'us',
          );
        }, icon: Icon(Icons.search))],
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
