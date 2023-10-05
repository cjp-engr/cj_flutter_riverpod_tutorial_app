class CartState {
  final String previousPage;

  CartState({
    this.previousPage = '',
  });

  CartState copyWith({String? previousPage}) {
    return CartState(
      previousPage: previousPage ?? this.previousPage,
    );
  }
}
