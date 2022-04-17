import 'package:to_dev/app/interfaces/ientity.dart';

abstract class IRepository<T extends IEntity> {
  Future<void> create(T obj);
  Future<T?> getOne(int id);
  Future<List<T>> getAll();
  Future<void> update(T obj);
  Future<void> delete(int id);
  Future<void> deleteAll();
}
