// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/datasource_contract/sources_datasource.dart' as _i4;
import '../../data/datasource_impl/sources_datasource_impl.dart' as _i5;
import '../../data/repository_impl/sources_repo_impl.dart' as _i7;
import '../../domain/repository_contract/sources_repo.dart' as _i6;
import '../../domain/usecases/sources_usecase.dart' as _i8;
import '../../presentation/categories/view_model/sources_view_model/sources_view_model.dart'
    as _i9;
import '../api/api_manager.dart' as _i3;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i3.ApiManager>(() => _i3.ApiManager());
    gh.factory<_i4.SourcesDataSource>(
        () => _i5.SourcesDataSourceImpl(gh<_i3.ApiManager>()));
    gh.factory<_i6.SourcesRepo>(
        () => _i7.SourcesRepoImpl(gh<_i4.SourcesDataSource>()));
    gh.factory<_i8.SourcesUseCase>(
        () => _i8.SourcesUseCase(gh<_i6.SourcesRepo>()));
    gh.factory<_i9.SourcesViewModel>(
        () => _i9.SourcesViewModel(gh<_i8.SourcesUseCase>()));
    return this;
  }
}
