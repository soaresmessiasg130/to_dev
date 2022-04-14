class Todo {
  final int id;
  final String title;
  final String desc;
  final bool status;
  final int? projectId;

  Todo({
    required this.id,
    required this.title,
    required this.desc,
    required this.status,
    this.projectId,
  });
}
