class Post {
  Post(
      {required this.key,
      required this.title,
      required this.body,
      required this.picUrl,
      required this.authorName,
      required this.like});

  final int key;
  final String title;
  final String body;
  final String picUrl;
  final String authorName;
  int like;
}
