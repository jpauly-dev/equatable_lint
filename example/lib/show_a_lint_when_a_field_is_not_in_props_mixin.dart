import 'package:equatable/equatable.dart';

class FieldNotInPropsExampleWithMixin with EquatableMixin {
  const FieldNotInPropsExampleWithMixin({this.field});

  // A lint will appear here because field is not in not in props
  final String? field;

  @override
  List<Object?> get props => [];
}

class NoFieldToAddToPropsMixinExample extends FieldNotInPropsExampleWithMixin {
  const NoFieldToAddToPropsMixinExample();
}

class OtherFieldToAddToPropsMixinExample
    extends FieldNotInPropsExampleWithMixin {
  const OtherFieldToAddToPropsMixinExample({this.newField});

  final String? newField;

  @override
  List<Object?> get props => super.props..addAll([]);
}
