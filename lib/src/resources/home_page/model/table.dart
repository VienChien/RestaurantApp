class Test {
  final int userId;
  final int id;
  final String title;

  const Test({
    required this.userId,
    required this.id,
    required this.title,
  });

  factory Test.fromJson(Map<String, dynamic> json) {
    return Test(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
    );
  }
}
