import 'package:flutter/cupertino.dart';
import 'package:flutter_mvvm_template/core/base/model/base_view_model.dart';
import 'package:mobx/mobx.dart';
part 'example_view_model.g.dart';

class ExampleViewModel = _ExampleViewModelBase with _$ExampleViewModel;

abstract class _ExampleViewModelBase with Store, BaseViewModel {
  @override
  void setContext(BuildContext context) {
    this.context = context;
  }

  @override
  void init() {}

  @observable
  int number = 0;

  @action
  void incrementNumber() {
    number++;
  }
}
