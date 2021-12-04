class ArticleRequestParams {
  final String category;
  final String apiKey;
  final int page;
  final int pageSize;

  const ArticleRequestParams({
    this.category = '',
    this.apiKey = '',
    this.page = 1,
    this.pageSize = 15,
  });
}
