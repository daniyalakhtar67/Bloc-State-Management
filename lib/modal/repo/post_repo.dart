import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:Bloc/modal/PostModal.dart';
import 'package:http/http.dart' as http;

class PostRepo {
  Future<List<PostModal>> fetchPost() async {
    try {
      final response = await http.get(
        Uri.parse('https://jsonplaceholder.typicode.com/comments'),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body) as List;

        return data.map((e) {
          return PostModal(
            postId: e['postId'],
            id: e['id'],
            email: e['email'],
            name: e['name'],
            body: e['body'],
          );
        }).toList();
      } else {
        throw Exception(
          'Failed to fetch posts: ${response.statusCode}',
        );
      }
    } on SocketException {
      throw Exception('Error while fetching data');
    } on TimeoutException {
      throw Exception('Time is over while fetching data');
    }
  }
}