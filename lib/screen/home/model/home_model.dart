class HomeModel{
  String? status;
  List<SourcesModel>? sourcesList=[];

  HomeModel({this.status, this.sourcesList});

  factory HomeModel.mapToModel(Map m1){
    List l1 = m1['sources'];
    return HomeModel(
      status: m1['status'],
      sourcesList: l1.map((e) => SourcesModel.mapToModel(e)).toList(),
    );
  }
}
class SourcesModel{
  String? id,name,description,url,category,language,country;

  SourcesModel(
      {this.id,
      this.name,
      this.description,
      this.url,
      this.category,
      this.language,
      this.country});

  factory SourcesModel.mapToModel(Map m1){
    return SourcesModel(
      id: m1['id'],
      name: m1['name'],
      description: m1['description'],
      url: m1['url'],
      category: m1['category'],
      language: m1['language'],
      country: m1['country'],
    );
  }
}