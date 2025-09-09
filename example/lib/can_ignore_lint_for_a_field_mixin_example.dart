import 'package:equatable/equatable.dart';

class IgnoreOnePropExampleMixin with EquatableMixin {
  const IgnoreOnePropExampleMixin({this.ignoredField, this.nonIgnoredField});

  // expect_lint: missing_field_in_equatable_props
  final String? ignoredField;

  final String? nonIgnoredField;

  @override
  List<Object?> get props => [];
}
