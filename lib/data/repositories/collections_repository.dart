import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:lanai/data/constants.dart';
import 'package:lanai/data/repositories/pexels.dart';
import 'package:lanai/domain/models/collections_model.dart';

/// # CollectionsRepository
/// The following class extends upon the base PexelsRepository to retrieve collections
/// from Pexels.
class CollectionsRepository extends PexelsRepository {
  const CollectionsRepository(this.httpClient);

  final http.Client httpClient;

  Future<List<Collection>> getFeaturedCollections({int? page = 1}) async {
    final res = await httpClient.get(
      Uri.parse('$apiPREFIX/v1/collections/featured?&page=$page&per_page=80'),
      headers: {
        'Authorization': apiKEY,
        'Content-Type': 'application/json',
      },
    );

    if (res.statusCode == 200) {
      final body = jsonDecode(res.body)['collections'] as List;
      final List<Collection> collections = [];

      for (var i = 0; i < body.length; i++) {
        collections.add(Collection.fromJson(body[i]));
      }

      return collections;
    } else {
      throw Exception("Error getting featured collections: ${res.statusCode}");
    }
  }

  Future<CollectionMedia> getCollectionMedia(String id, {int? page = 1}) async {
    final res = await httpClient.get(
      Uri.parse('$apiPREFIX/v1/collections/$id?&page=$page&per_page=80'),
      headers: {
        'Authorization': apiKEY,
        'Content-Type': 'application/json',
      },
    );

    if (res.statusCode == 200) {
      return CollectionMedia.fromJson(jsonDecode(res.body));
    } else {
      throw Exception("Error getting collection media: ${res.statusCode}");
    }
  }
}
