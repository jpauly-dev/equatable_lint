// ignore_for_file: overridden_fields

import 'package:equatable/equatable.dart';

class FieldNotInPropsExampleWithMixin with EquatableMixin {
  FieldNotInPropsExampleWithMixin({this.field, this.field2});

  // A lint will appear because these fields are not in not in props

  final String? field;

  final String? field2;

  @override
  late final List<Object?> props = [];
}

class NoFieldToAddToPropsMixinExample extends FieldNotInPropsExampleWithMixin {
  NoFieldToAddToPropsMixinExample();
}

class OtherFieldToAddToPropsMixinExample
    extends FieldNotInPropsExampleWithMixin {
  OtherFieldToAddToPropsMixinExample({this.newField, this.newField2});

  // A lint will appear because these fields are not in not in props
  final String? newField;

  final String? newField2;

  @override
  List<Object?> get props => super.props..addAll([]);
}
