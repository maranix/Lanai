mixin SeeAllMixIn {
  String getPreviewImageUrl(state) {
    switch (state.runtimeType.toString()) {
      case r'_$PhotoData':
        return state.src.portrait;
      case r'_$VideoData':
        return state.image;
      default:
        return '';
    }
  }
}
