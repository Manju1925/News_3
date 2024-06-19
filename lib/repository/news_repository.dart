import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_3/Models/news_channels_headlines.dart';

class NewsRepository{

  Future<NewsChannelsHeadlinesModel> fetchNewsChannelHeadlinesApi()async{

    String url = 'https://newsapi.org/v2/top-headlines?sources=bbc-news&apiKey=4c79e52b19034da79200ad059ccbae7e';

    final response = await http.get(Uri.parse(url));
    if(response.statusCode == 200)
      {
        final body = jsonDecode(response.body);
        return NewsChannelsHeadlinesModel.fromJson(body);
      }
    throw Exception('Error');
  }
}