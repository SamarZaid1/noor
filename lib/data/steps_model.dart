
class Steps {
  String? name;
  String? title;
  String? subTitle;
  String? imageURL;

  Steps({this.name, this.title, this.subTitle, this.imageURL});

  Steps.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    title = json['title'];
    subTitle = json['subTitle'];
    imageURL = json['imageURL'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['title'] = this.title;
    data['subTitle'] = this.subTitle;
    data['imageURL'] = this.imageURL;
    return data;
  }
}