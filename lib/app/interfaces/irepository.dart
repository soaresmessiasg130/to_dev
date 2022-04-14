import 'package:to_dev/app/interfaces/imodel.dart';

abstract class IRepository<T extends IModel> {
  Future<void> create(T obj);
  Future<T> getOne(int id);
  Future<void> update(int id, T obj);
  Future<void> delete(int id);
}
