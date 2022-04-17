import 'package:to_dev/app/interfaces/imodel.dart';

abstract class IRepository<T extends IModel> {
  Future<void> create(T obj);
  Future<Map<String, dynamic>?> getOne(int id);
  Future<List<Map<String, dynamic>>> getAll();
  Future<void> update(T obj);
  Future<void> delete(int id);
  Future<void> deleteAll();
}
