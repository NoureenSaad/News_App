/// id : "abc-news"
/// name : "ABC News"
/// description : "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com."
/// url : "https://abcnews.go.com"
/// category : "general"
/// language : "en"
/// country : "us"

class SourceEntity {
  SourceEntity({
      this.id, 
      this.name, 
      this.url,
      this.category,});

  String? id;
  String? name;
  String? url;
  String? category;
}