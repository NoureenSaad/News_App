import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';
import 'package:news_app/data/datasource_contract/sources_datasource.dart';
import 'package:news_app/domain/entities/source_entity.dart';
import 'package:news_app/domain/repository_contract/sources_repo.dart';

@Injectable(as: SourcesRepo)
class SourcesRepoImpl extends SourcesRepo {
  final SourcesDataSource sourcesDataSource;

  @factoryMethod
  SourcesRepoImpl(this.sourcesDataSource);

  @override
  Future<Either<List<SourceEntity>, String>> getSources(String categoryID) async {
    var result = await sourcesDataSource.getSources(categoryID);
    return result.fold((response) {
      var sourcesModelList = response.sources ?? [];
      var sourcesEntityList = sourcesModelList
          .map((source) => SourceEntity(
              id: source.id,
              name: source.name,
              category: source.category,
              url: source.url))
          .toList();
      return Left(sourcesEntityList);
    }, (error) {
      return Right(error.toString());
    });
  }
}
