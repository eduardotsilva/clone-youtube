class Video {
  String Id;
  String titulo;
  String descricao;
  String imagem;
  String canal;

  Video({this.Id, this.titulo, this.descricao, this.imagem, this.canal});

  /*
  static converterJson(Map<String, dynamic> json){
    return Video(
      Id: json["id"]["videoId"],
      titulo:json["snippet"]["title"],
      imagem:json["snippet"]["thumbnails"]["high"]["url"],
      canal:json["snippet"]["channelId"],
    );
  }
  */
  //factory cria uma única instância invés de instânciar varias vezes usando static
  factory Video.fromJson(Map<String, dynamic> json) {
    return Video(
      Id: json["id"]["videoId"],
      titulo: json["snippet"]["title"],
      descricao: json["snippet"]["description"],
      imagem: json["snippet"]["thumbnails"]["high"]["url"],
      canal: json["snippet"]["channelId"],
    );
  }
}
