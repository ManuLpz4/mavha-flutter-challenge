import 'package:flutter/material.dart';

import 'package:mavha_flutter_challenge/pages/my_list/widgets/categories_grid_view.dart';
import 'package:mavha_flutter_challenge/pages/my_list/widgets/days_list_view.dart';
import 'package:mavha_flutter_challenge/utils/constants.dart';
import 'package:mavha_flutter_challenge/widgets/custom_shape_border.dart';

class MyListPage extends StatelessWidget {
  const MyListPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const CustomShapeBorder(),
        title: const Text('My list'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () => null,
            icon: const Icon(Icons.more_horiz),
          ),
        ],
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(119),
          child: DaysListView(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, RouteName.schedule),
        child: const Icon(Icons.add),
      ),
      body: const CategoriesGridView(),
    );
  }
}
