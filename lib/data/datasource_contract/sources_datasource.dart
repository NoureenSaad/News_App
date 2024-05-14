import 'package:either_dart/either.dart';
import 'package:news_app/data/model/sources_response.dart';

abstract class SourcesDataSource{
  Future<Either<SourcesResponse,String>> getSources(String categoryID);
}