abstract class CensoViewModelState {
  const CensoViewModelState();
}

/* The default and initial State */
class DefaultCensoViewModelState extends CensoViewModelState {}

/* When something is Loading */
class LoadingCensoViewModelState extends CensoViewModelState {}

/* With loaded data State */
class WithDataCensoViewModelState extends CensoViewModelState {}

/* When an Error occurs */
class WithErrorCensoViewModelState extends CensoViewModelState {}
