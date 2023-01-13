class ApiArtist {
  final String name, link, about;

  ApiArtist({
    required this.name,
    required this.link,
    required this.about,
  });

  ApiArtist.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        link = json['link'],
        about = json['about'];
}
