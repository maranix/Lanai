part of 'home_bloc.dart';

enum HomeStatus {
  initial,

  fetched,

  failed,
}

/// {@template home_state}
/// HomeState description
/// {@endtemplate}
class HomeState extends Equatable {
  /// {@macro home_state}
  const HomeState({
    this.status = HomeStatus.initial,
    this.curated = const PexelsPhotoList(
      photos: [],
    ),
  });

  /// A description for customProperty
  final HomeStatus status;

  final PexelsPhotoList curated;

  @override
  List<Object> get props => <Object>[
        status,
        curated,
      ];

  /// Creates a copy of the current HomeState with property changes
  HomeState copyWith({
    HomeStatus? status,
    PexelsPhotoList? curated,
  }) {
    return HomeState(
      status: status ?? this.status,
      curated: curated ?? this.curated,
    );
  }
}
