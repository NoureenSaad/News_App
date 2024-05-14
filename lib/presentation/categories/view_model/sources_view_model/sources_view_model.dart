import 'package:bloc/bloc.dart';
import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:news_app/domain/usecases/sources_usecase.dart';

import '../../../../domain/entities/source_entity.dart';

part 'sources_view_model_state.dart';

@injectable
class SourcesViewModel extends Cubit<SourcesViewModelState> {
  final SourcesUseCase sourcesUseCase;
  @factoryMethod
  SourcesViewModel(this.sourcesUseCase) : super(SourcesViewModelInitial());

  getSources(String categoryID){
    emit(SourcesViewModelLoading());
    var result = sourcesUseCase.call(categoryID);
    result.fold(
        (sources){
          emit(SourcesViewModelSuccess(sources));
        },
        (error){
          emit(SourcesViewModelError(error));
        }
    );
  }
}
