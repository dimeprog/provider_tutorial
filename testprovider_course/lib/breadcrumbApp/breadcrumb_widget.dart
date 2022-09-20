import 'dart:collection';
import 'dart:typed_data';

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:testprovider_course/breadcrumbApp/breadCreumb_model.dart';

class BreadCrumbWidget extends StatelessWidget {
  final UnmodifiableListView<BreadCrumb> breadCrumbs;
  const BreadCrumbWidget({
    required this.breadCrumbs,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: breadCrumbs
          .map((b) => Text(
                b.title,
                style: TextStyle(
                  color: b.isActive ? Colors.blue : Colors.black,
                ),
              ))
          .toList(),
    );
  }
}
