import 'package:flutter/material.dart';
import 'package:testprovider_course/breadcrumbApp/breadcrumb_provider.dart';
import 'package:testprovider_course/breadcrumbApp/breadcrumb_widget.dart';
import 'package:provider/provider.dart';

class BreadHomePage extends StatelessWidget {
  BreadHomePage();

  @override
  Widget build(BuildContext context) {
    // final Provider = context.read<BreadCrumbProvider>();
    ;
    return Scaffold(
      appBar: AppBar(
        title: Text("BreadCrumbApp"),
      ),
      body: Column(
        children: [
          Consumer<BreadCrumbProvider>(
              builder: (context, value, child) =>
                  BreadCrumbWidget(breadCrumbs: value.items)),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/new breadcrumb');
            },
            child: const Text('add to a BreadCrumb'),
          ),
          TextButton(
            onPressed: () {
              context.read<BreadCrumbProvider>().reset();
            },
            child: const Text('Reset'),
          ),
        ],
      ),
    );
  }
}
