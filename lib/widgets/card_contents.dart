import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_stack_overflow/providers/reading_list_bloc.dart';

class CardContents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final readingItem = Provider.of<ReadingListBloc>(context);
    return GridTile(
        child: GestureDetector(
          child: readingItem.isFavorite
            ? Icon(Icons.check_circle, color: Colors.green)
            : Icon(Icons.check_circle, color: Colors.black),
          onTap: () {readingItem.toggleFavorite();},
    ));
  }
}
