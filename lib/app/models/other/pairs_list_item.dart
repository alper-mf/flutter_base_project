class PairsListItemModel {
  final String baseAsset;
  final String quoteAsset;

  PairsListItemModel({
    required this.baseAsset,
    required this.quoteAsset,
  });

  PairsListItemModel copyWith({
    String? baseAsset,
    String? quoteAsset,
  }) =>
      PairsListItemModel(
        baseAsset: baseAsset ?? this.baseAsset,
        quoteAsset: quoteAsset ?? this.quoteAsset,
      );
}
