class ArticleModel {
  final String author;
  final String? title;
  final String? description;
  final String? articleUrl;
  final String? imageUrl;
  final String? publishedAt;
  final String? content;

  ArticleModel(
      {required this.author,
      required this.title,
      required this.description,
      required this.articleUrl,
      required this.imageUrl,
      required this.publishedAt,
      required this.content});

  factory ArticleModel.fromJson(Map<String, dynamic> json) {
    return ArticleModel(
      author: json['author'] ?? 'Unknown Author',
      title: json['title'] ?? json['description'],
      description: json['description'] ?? json['title'],
      articleUrl: json['url'] ?? 'https://www.google.com',
      imageUrl: json['urlToImage'] ??
          'https://www.shutterstock.com/image-vector/vector-progress-loading-bar-icon-600w-1551202754.jpg',
      publishedAt: json['publishedAt'] ?? '00000000000000',
      content: json['content'] ?? '00000000000000',
    );
  }
}
