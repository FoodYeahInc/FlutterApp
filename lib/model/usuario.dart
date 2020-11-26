import 'package:jwt_decoder/jwt_decoder.dart';

class Usuario{
  String firstnames;
  String lastnames;
  String email;
  String rol;
  String id;
  String token;
  void parseFromJson(Map<String,dynamic> json){
    this.id=json['nameid'];
    this.firstnames=json['unique_name'];
    this.lastnames=json['family_name'];
    this.email=json['email'];
    this.rol=json['role'];
  }
  Usuario.fromJson(Map<String,dynamic> json){
    this.parseFromJson(json);
  }
  Usuario.fromToken(String token){
    //Recibimos el token y paraseamos los datos:
    Map<String,dynamic> decodedTokenjson = JwtDecoder.decode(token);
    print(decodedTokenjson);
    //Ahora paraseamos los datos:
    this.parseFromJson(decodedTokenjson);
    this.token = token;//Se guarda el token para los requests del usuario
  }
  //Que quede como referencia:
  // Map<String,dynamic> toJson(){
  //       final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['popularity'] = this.popularity;
  //   data['poster_path'] = this.posterPath;
  //   data['id'] = this.id;
  //   data['title'] = this.title;
  //   data['overview'] = this.overview;
  //   data['release_date'] = this.releaseDate;
  //   data['isFavorite'] = this.isFavorite;
  //   return data;
  // }
}