class FeaturedState {
  final bool isPromoDetailsHide;

  FeaturedState({
    this.isPromoDetailsHide = false,
  });

  FeaturedState copyWith({bool? isPromoDetailsHide}) {
    return FeaturedState(
      isPromoDetailsHide: isPromoDetailsHide ?? this.isPromoDetailsHide,
    );
  }
}
