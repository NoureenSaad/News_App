import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';
import 'package:news_app/domain/repository_contract/sources_repo.dart';

import '../entities/source_entity.dart';

@injectable
class SourcesUseCase{
  final SourcesRepo sourcesRepo;

  @factoryMethod
  SourcesUseCase(this.sourcesRepo);

  Future<Either<List<SourceEntity>, String>> call(String categoryID){
    return sourcesRepo.getSources(categoryID);
  }
}