import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testprovider_course/breadcrumbApp/add_new_breadcrumb.dart';
import 'package:testprovider_course/breadcrumbApp/bread_Homepage.dart';
import 'package:testprovider_course/breadcrumbApp/breadcrumb_provider.dart';

class BreadCrumbApp extends StatelessWidget {
  const BreadCrumbApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => BreadCrumbProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: BreadHomePage(),
        routes: {'/new breadcrumb': (context) => AddNewBreadCrumb()},
      ),
    );
  }
}
