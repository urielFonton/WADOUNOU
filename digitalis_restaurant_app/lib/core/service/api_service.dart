import 'dart:convert';
import 'dart:io';

import 'package:digitalis_restaurant_app/core/constants/api_constant_link.dart';
import 'package:digitalis_restaurant_app/core/service/storage_service.dart';
import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = API_BASE_URL;
  StorageService storageService = StorageService();

  // GET => Recevoir les données dans la base de données

  Future get(String url) async {
    final http.Response response = await http.post(
      Uri.parse(baseUrl + url),
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json; charset=UTF-8',
        HttpHeaders.authorizationHeader: 'Bearer ${storageService.getToken()}'
      }
    );

    if (response.statusCode == 200) {
      // Si le serveur retourne 200 comme réponse ==>> OK
      // alors on retourne le JSON
      return jsonDecode(response.body);
    } else {
      if (response.statusCode == 403) {
        throw Exception('OUPS! Vous n\'êtes pas autorisé à vous connecter');
      }
      if (response.statusCode == 400) {
        throw Exception('Ressource inexistante sur le serveur');
      }
      if (response.statusCode == 500) {
        throw Exception('OUPS! Veuillez réessayer, quelque chose s\'est mal passée');
      }
      // Si le serveur ne retourne pas 200 alors
      throw Exception('Failed to retrieve resources list.');
    }
  }

// POST => envoyer les données vers la base de données

  Future<dynamic> post(String url, data) async {
    final http.Response response = await http.post(
      Uri.parse(baseUrl + url),
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json; charset=UTF-8',
        HttpHeaders.authorizationHeader: 'Bearer ${storageService.getToken()}',
      },
      body: jsonEncode(data),
    );

    print(response.body);

    if (response.statusCode == 201) {
      // Si le serveur retourne 201 alors :
      // then parse the JSON.
      return jsonDecode(response.body);
    } else {
      if(response.statusCode == 403){
        throw Exception('Oups! Vous n\'êtes pas autorisé');
      }
      if(response.statusCode == 400){
        throw Exception('Ressource inexistante sur le serveur');
      }
      if(response.statusCode == 500){
        throw Exception('Oups! Veuillez réesayer, quelque chose s\'est mal passée');
      }
      // Si le serveur ne retourne pas 201 alors :
      // then throw an exception.
      throw Exception('Failed to retrieve resources list.');
    }
  }

  // PUT => Mettre à jour ou modifier les données de la base de données

  Future<dynamic> put(url, data) async {
    final http.Response response = await http.put(
      Uri.parse(baseUrl + url),
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json; charset=UTF-8',
        HttpHeaders.authorizationHeader: 'Bearer ${storageService.getToken()}',
      },
      body: jsonEncode(data),
    );
    print(data);
    print(response.body);

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return jsonDecode(response.body);
    } else {
      if(response.statusCode == 403){
        throw Exception('Oups! Vous n\'etes pas autorisé');
      }
      if(response.statusCode == 400){
        throw Exception('Ressource inexistante sur le serveur');
      }
      if(response.statusCode == 500){
        throw Exception('Oups! Veuillez réesayer, quelque chose s\'est mal passée');
      }
      // If the server did not return a "200 OK response",
      // then throw an exception.
      throw Exception('Failed to retrieve resources list.');
    }
  }

  // DELETE => Supprimer les données de la base de données

   Future<dynamic> delete(String url) async {
    final http.Response response = await http.delete(
      Uri.parse(baseUrl + url),
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json; charset=UTF-8',
        HttpHeaders.authorizationHeader: 'Bearer ${storageService.getToken()}',
      },
    );

    if (response.statusCode == 204) {
      // If the server did return a 204 response
      return response.statusCode;
    } else {
      if(response.statusCode == 403){
        throw Exception('Oups! Vous n\'etes pas autorisé');
      }
      if(response.statusCode == 400){
        throw Exception('Ressource inexistante sur le serveur');
      }
      if(response.statusCode == 500){
        throw Exception('Oups! Veuillez réesayer, quelque chose s\'est mal passée');
      }
      // If the server did not return a "200 OK response",
      // then throw an exception.
      throw Exception('Failed to retrieve resources list.');
    }
  }
}