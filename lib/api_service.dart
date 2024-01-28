import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService { // repository
  // Remove the hardcoded API key
  // final String apiKey = '2f5ca7bb9411424cac1a04844bfc752e';

  Future<List<Map<String, dynamic>>> getNews({
    required  String? country,
    String? category,
    String? query,
  }) async {
    // Fetch the API key from environment variables
    final String? apiKey = '2f5ca7bb9411424cac1a04844bfc752e';
    final args = {
      'apiKey': apiKey,
      'country': country ,
      'category': category,
      'q':query,
    };
    args.removeWhere((key, value) => value==null);
    final url = Uri.https('newsapi.org', '/v2/top-headlines', args);
    final response = await http.get(url);

    try {
      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);
        if (data['status'] == 'ok') {
          return List<Map<String, dynamic>>.from(data['articles']);
        }
      }
      return [];
    } catch (e) {
      print(e);
      return [];
    }
  }
}
