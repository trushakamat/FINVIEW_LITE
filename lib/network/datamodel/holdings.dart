class Holding {
  final String symbol;
  final String name;
  final int units;
  final double avgCost;
  final double currentPrice;

  Holding({
    required this.symbol,
    required this.name,
    required this.units,
    required this.avgCost,
    required this.currentPrice,
  });

  double get totalCost => units * avgCost;
  double get currentValue => units * currentPrice;
  double get gain => currentValue - totalCost;
  double get gainPercentage => (gain / totalCost) * 100;
  bool get isPositive => gain >= 0;

  factory Holding.fromJson(Map<String, dynamic> json) {
    return Holding(
      symbol: json['symbol'] as String,
      name: json['name'] as String,
      units: json['units'] as int,
      avgCost: (json['avg_cost'] as num).toDouble(),
      currentPrice: (json['current_price'] as num).toDouble(),
    );
  }
}