abstract class IModel {
  int? id;

  IModel({int? this.id});

  List<String> getFields() => [];

  Map<String, dynamic> toMap() => {};

  String toString() => 'Model()';
}
