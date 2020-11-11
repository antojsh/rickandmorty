class Character {
  int id;
  String name;
  String image;
  String url;

  Character({this.id, this.name, this.image, this.url});

  factory Character.fromJson(Map<String, dynamic> json) {
    return Character(
      id: json['id'] ?? 0,
      name: json['name'] ?? "",
      image: json['image'] ?? "",
      url: json['url'] ?? "",
    );
  }

  static List<Character> fromJSONList(List<dynamic> jsonlist) {
    List<Character> items = List<Character>();
    jsonlist.forEach((dynamic json) {
      items.add(Character.fromJson(json));
    });
    return items;
  }
}
