import 'dart:io';
import 'dart:convert';
import 'package:foodyeah/model/dish.dart';
import 'package:http/http.dart' as http;
import 'package:foodyeah/model/usuario.dart';

class HttpHelper {
  final String urlBase = 'https://foodyeahrestapimoviles.herokuapp.com';
  final String urlIdentity = '/identity';
  final String urlProduct = '/products';
  final String urlPage = '?page=';
  final String urlTake = '&take=';
  // final String urlUpcoming = '/upcoming?';
  // final String urlKey = 'api_key=3cae426b920b29ed2fb1c0749f258325';
  //https://api.themoviedb.org/3/movie/upcoming?api_key=3cae426b920b29ed2fb1c0749f258325

  Future<Usuario> login(String email, String password) async{
    //Ejemplo de email: alexx@foodyeah.com password: contra123#
    final String url = urlBase + urlIdentity +'/login';    
    http.Response result = await http.post(url,    
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
     body: jsonEncode(<String,String>{'email': email, 'password': password})
     );
    if(result.statusCode == HttpStatus.ok){
      String token = result.body;
      Usuario aux = new Usuario.fromToken(token);
      return aux;
    }else {
      print(result.body);
      return null;
    }
  }
  Future<ListaProducto> getProductos(String token, int page, int take) async{
    final String url = urlBase+urlProduct+urlPage+page.toString()+urlTake+take.toString();
    http.Response result = await http.get(url,
    headers: <String, String>{
      'token':token
    });
    if(result.statusCode == HttpStatus.ok){
      //Parseamos los datos:
      final jsonResponse = json.decode(result.body);
      final listaProducto = ListaProducto.fromJson(jsonResponse);
      return listaProducto;
    } else{
      print(result.body);
      return null;
    }

  }
  // Future<List<Movie>> getUpcoming(String page) async {
  //   final String upcoming = urlBase + urlUpcoming + urlKey + urlPage + page;
  //   print(upcoming);
  //   http.Response result = await http.get(upcoming);

  //   if (result.statusCode == HttpStatus.ok) {
  //     final jsonResponse = json.decode(result.body);
  //     final moviesMap = jsonResponse['results'];

  //     List<Movie> movies = moviesMap.map<Movie>((i) =>
  //         Movie.fromJson(i)).toList();
  //     return movies;
  //   } else {
  //     print(result.body);
  //     return null;
  //   }
  // }
}