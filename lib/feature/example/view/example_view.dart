import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_mvvm_template/core/base/state/base_state.dart';
import 'package:flutter_mvvm_template/core/base/view/base_view.dart';

import '../viewmodel/example_view_model.dart';

class ExampleView extends StatefulWidget {
  const ExampleView({Key? key}) : super(key: key);

  @override
  State<ExampleView> createState() => _ExampleViewState();
}

class _ExampleViewState extends BaseState<ExampleView> {
  late ExampleViewModel viewModel;
  @override
  Widget build(BuildContext context) {
    return BaseView<ExampleViewModel>(
      viewModel: ExampleViewModel(),
      onModelReady: (model) {
        viewModel = model;
      },
      onPageViewBuilder: (context, value) => scaffoldBody,
    );
  }

  Widget get scaffoldBody => Scaffold(
        appBar: appBar(),
        floatingActionButton: floatingActionButtonIncrement,
        body: textNumber,
      );

  AppBar appBar() => AppBar(
        leading: const Text('deneme'),
      );

  Widget get textNumber {
    return Column(
      children: [
        Observer(
          builder: (context) => Text(
            viewModel.number.toString(),
          ),
        )
      ],
    );
  }

  FloatingActionButton get floatingActionButtonIncrement => FloatingActionButton(
        onPressed: () => viewModel.incrementNumber(),
      );
}
