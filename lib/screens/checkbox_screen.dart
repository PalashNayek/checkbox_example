import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../di/setup_locator.dart';
import '../view_models/checkbox_viewmodel.dart';

class CheckboxScreen extends StatelessWidget {
  late var isChecked = false;

  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(
      create: (_) => getIt<CheckboxViewModel>(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Checkbox with MVVM and DI'),
        ),
        body: Center(
          child: Consumer<CheckboxViewModel>(
            builder: (context, viewModel, child) {
              return CheckboxListTile(
                title: Text("Accept Terms and Conditions"),
                value: viewModel.isChecked,
                onChanged: (bool? value) {
                  viewModel.toggleCheckbox();
                  isChecked = value!;
                  print(isChecked);
                  print(value);
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
