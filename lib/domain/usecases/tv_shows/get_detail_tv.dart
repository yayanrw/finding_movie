import 'package:dartz/dartz.dart';
import 'package:finding_movie/core/utils/errors/failure.dart';
import 'package:finding_movie/domain/entities/tv_shows/tv_detail.dart';
import 'package:finding_movie/domain/repositories/tv_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetDetailTv {
  final TvRepository tvRepository;

  GetDetailTv(this.tvRepository);

  Future<Either<Failure, TvDetail>> call(int id) async {
    return await tvRepository.getDetailTv(id);
  }
}
