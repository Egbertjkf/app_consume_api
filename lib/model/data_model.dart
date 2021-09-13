class DataModel {
  late int id;
  late String title;
  late String imgUrl;
  late String thumbUrl;

  DataModel({id, title, imgUrl, thumbUrl});

  DataModel.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    title = json["title"];
    imgUrl = json["url"];
    thumbUrl = json["thumbnailUrl"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["title"] = title;
    data['img'] = imgUrl;
    data['thimbUrl'] = thumbUrl;
    return data;
  }
}
