import 'package:either_dart/either.dart';
import 'package:news_app/domain/entities/source_entity.dart';

abstract class SourcesRepo{
  Future<Either<List<SourceEntity>,String>> getSources(String categoryID);
}