import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:testprovider_course/breadcrumbApp/breadCreumb_model.dart';

class BreadCrumbProvider extends ChangeNotifier {
  List<BreadCrumb> _items = [];
  UnmodifiableListView<BreadCrumb> get items => UnmodifiableListView(_items);
// add breadcrumb to _item list
  void add(BreadCrumb breadCrumb) {
    for (final item in _items) {
      item.activate();
    }
    _items.add(breadCrumb);
    notifyListeners();
  }

  // reset or delete all breadcrumb in the _items list
  void reset() {
    _items.clear();
    notifyListeners();
  }
}
