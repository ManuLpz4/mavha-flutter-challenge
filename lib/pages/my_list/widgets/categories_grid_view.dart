import 'package:flutter/material.dart';

import 'package:outline_material_icons/outline_material_icons.dart';

class CategoriesGridView extends StatelessWidget {
  const CategoriesGridView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.all(16),
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      children: [
        _categoryGridTile(context, OMIcons.assignment, 'All tasks', 20),
        _categoryGridTile(context, Icons.person_outline, 'Personal', 100),
        _categoryGridTile(context, OMIcons.workOutline, 'Work', 100),
        _categoryGridTile(context, Icons.lightbulb_outline, 'Ideas', 1000),
        _categoryGridTile(context, OMIcons.palette, 'Art work', 42),
        _categoryGridTile(context, Icons.priority_high, 'Urgentry', 2),
      ],
    );
  }

  Widget _categoryGridTile(
    BuildContext context,
    IconData iconData,
    String name,
    int items,
  ) {
    return FlatButton(
      onPressed: () => null,
      color: Theme.of(context).dividerColor,
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Theme.of(context).primaryColor.withOpacity(.1),
            foregroundColor: Theme.of(context).primaryColor,
            child: Icon(iconData),
          ),
          const SizedBox(height: 16),
          Text(
            name,
            style: Theme.of(context).textTheme.headline6.copyWith(
                  color: Theme.of(context).primaryColor,
                ),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.access_time,
                size: 16,
                color: Theme.of(context).disabledColor,
              ),
              const SizedBox(width: 8),
              Text(
                '$items items',
                style: TextStyle(
                  color: Theme.of(context).disabledColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
