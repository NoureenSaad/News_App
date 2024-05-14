import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';
import 'package:news_app/core/api/api_manager.dart';
import 'package:news_app/core/api/endpoints.dart';
import 'package:news_app/data/datasource_contract/sources_datasource.dart';
import 'package:news_app/data/model/sources_response.dart';

@Injectable(as: SourcesDataSource)
class SourcesDataSourceImpl extends SourcesDataSource{
  final ApiManager apiManager;

  @factoryMethod
  SourcesDataSourceImpl(this.apiManager);

  @override
  Future<Either<SourcesResponse, String>> getSources(String categoryID) async{
    try{
      var response = await apiManager.getRequest(endpoint: Endpoints.sourcesEndpoint,queryParameters: {
        "category":categoryID
      });
      SourcesResponse sourcesResponse = SourcesResponse.fromJson(response.data);
      return Left(sourcesResponse);
    }catch(error){
      return Right(error.toString());
    }
  }
}