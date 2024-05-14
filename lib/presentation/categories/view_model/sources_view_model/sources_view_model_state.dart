part of 'sources_view_model.dart';

@immutable
abstract class SourcesViewModelState {}

class SourcesViewModelInitial extends SourcesViewModelState {}
class SourcesViewModelLoading extends SourcesViewModelState {}
class SourcesViewModelError extends SourcesViewModelState {
  String error;
  SourcesViewModelError(this.error);
}
class SourcesViewModelSuccess extends SourcesViewModelState {
  List<SourceEntity> sourceEntityList;
  SourcesViewModelSuccess(this.sourceEntityList);
}
