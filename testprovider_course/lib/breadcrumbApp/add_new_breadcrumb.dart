import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:testprovider_course/breadcrumbApp/breadCreumb_model.dart';
import 'package:testprovider_course/breadcrumbApp/breadcrumb_provider.dart';

class AddNewBreadCrumb extends StatefulWidget {
  const AddNewBreadCrumb({super.key});

  @override
  State<AddNewBreadCrumb> createState() => _AddNewBreadCrumbState();
}

class _AddNewBreadCrumbState extends State<AddNewBreadCrumb> {
  TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add new BreadCrumb'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: _controller,
            decoration: const InputDecoration(
              hintText: 'Add new breadcrumb',
            ),
          ),
          TextButton(
            onPressed: () {
              if (_controller.text.isNotEmpty) {
                final breadcrumb =
                    BreadCrumb(name: _controller.text, isActive: false);
                context.read<BreadCrumbProvider>().add(breadcrumb);
              }
              Navigator.of(context).pop();
            },
            child: Text('Add'),
          ),
        ],
      ),
    );
  }
}
