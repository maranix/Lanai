import 'package:http/http.dart' as http;
import 'package:lanai/data/repositories/pexels.dart';

// TODO: Implement PhotosRepository to retrieve photos from the api.
/// # PhotosRepository
/// The following class extends upon the base PexelsRepository to retrieve photos
/// from Pexels.
class PhotosRepository extends PexelsRepository {
  const PhotosRepository(this.httpClient);

  final http.Client httpClient;
}
