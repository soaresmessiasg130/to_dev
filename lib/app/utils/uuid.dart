import 'package:uuid/uuid.dart';

const uuid = Uuid();

String getUuid() {
  return uuid.v1();
}
