import 'package:flutter/material.dart';

import 'souradetail.dart';

class Itemsouraname extends StatelessWidget {
  final String name;
  final int index;

  const Itemsouraname({
    super.key,
    required this.name,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 2),
      title: Text(
        name,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.bodySmall,
      ),
      onTap: () {
        Navigator.of(context).pushNamed(
          Souradetail.routname,
          arguments: Souradataa(name: name, index: index),
        );
      },
    );
  }
}
