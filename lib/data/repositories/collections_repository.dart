import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:lanai/data/repositories/pexels.dart';
import 'package:lanai/domain/models/collections_model.dart';

import '../constants.dart';

class CollectionsRepository extends PexelsCollectionsRepository {
  @override
  Future<List<Collection>> getCollections() async {
    final response = await http.get(
      Uri.parse(apiPREFIX + 'collections/featured?page=1'),
      headers: {
        'Authorization': apiKEY,
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      final collections = Collections.fromJson(json).collections;
      return collections;
    } else {
      throw Exception('Failed to load collections');
    }
  }
}
