import 'package:flutter/cupertino.dart';
import 'package:test_stack_overflow/providers/reading_list_bloc.dart';

class Bloc with ChangeNotifier{
  List<ReadingListBloc> _items = [
    ReadingListBloc(id: '1', title: 'Reading Bloc 1'),
    ReadingListBloc(id: '2', title: 'Reading Bloc 2'),
    ReadingListBloc(id: '3', title: 'Reading Bloc 3'),
    ReadingListBloc(id: '4', title: 'Reading Bloc 4'),
  ];

  List<ReadingListBloc> get items{
    return [..._items];
  }

}