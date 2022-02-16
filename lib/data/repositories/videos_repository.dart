import 'package:http/http.dart' as http;
import 'package:lanai/data/repositories/pexels.dart';

// TODO: Implement VideosRepository to retrieve photos from the api.
/// # VideosRepository
/// The following class extends upon the base PexelsRepository to retrieve videos
/// from Pexels.
class VideosRepository extends PexelsRepository {
  const VideosRepository(this.httpClient);

  final http.Client httpClient;
}
