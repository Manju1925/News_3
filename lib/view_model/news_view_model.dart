import 'package:news_3/models/news_channels_headlines.dart';
import 'package:news_3/models/categories_news_model.dart';
import 'package:news_3/repository/news_repository.dart';

class NewsViewModel {

  final _rep = NewsRepository();

  Future<NewsChannelsHeadlinesModel> fetchNewChannelHeadlinesApi(String channelName) async{
    final response = await _rep.fetchNewChannelHeadlinesApi(channelName);
    return response ;
  }


  Future<CategoriesNewsModel> fetchCategoriesNewsApi(String category) async{
    final response = await _rep.fetchCategoriesNewsApi(category);
    return response ;
  }

}