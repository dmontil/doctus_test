class CatDTO {
  final String id;
  final String url;
  final int width;
  final int height;

  CatDTO({
    required this.id,
    required this.url,
    required this.width,
    required this.height,
  });

  factory CatDTO.fromJson(Map<String, dynamic> map) {
    return CatDTO(
      id: map['id'] as String,
      url: map['url'] as String,
      width: map['width'] as int,
      height: map['height'] as int,
    );
  }
}
