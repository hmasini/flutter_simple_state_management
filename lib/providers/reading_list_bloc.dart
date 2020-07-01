import 'package:flutter/cupertino.dart';

class ReadingListBloc with ChangeNotifier{
  final String id;
  final String title;
  bool isFavorite;

  ReadingListBloc({this.id, this.title, this.isFavorite = false});

  void toggleFavorite(){
    isFavorite = !isFavorite;
    notifyListeners();
  }
}