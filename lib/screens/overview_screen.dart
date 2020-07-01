import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_stack_overflow/providers/bloc.dart';

import '../widgets/card_contents.dart';

class OverviewScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final blocs = Provider.of<Bloc>(context);
    final readingListItems = blocs.items;
    return Scaffold(
      appBar: AppBar(
        title: Text('Overview'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(15),
        itemCount: readingListItems.length,
        itemBuilder: (ctx, i) => ChangeNotifierProvider(create: (ctx) => readingListItems[i], child: CardContents()),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10)));
        }
}