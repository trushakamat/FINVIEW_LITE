import 'holdings.dart';

class Portfolio {
  final String user;
  final double portfolioValue;
  final double totalGain;
  final List<Holding> holdings;

  Portfolio({
    required this.user,
    required this.portfolioValue,
    required this.totalGain,
    required this.holdings,
  });

  double get totalGainPercentage {
    double totalCost = portfolioValue - totalGain;
    return totalCost > 0 ? (totalGain / totalCost) * 100 : 0;
  }

  bool get isPositive => totalGain >= 0;

  factory Portfolio.fromJson(Map<String, dynamic> json) {
    return Portfolio(
      user: json['user'] as String,
      portfolioValue: (json['portfolio_value'] as num).toDouble(),
      totalGain: (json['total_gain'] as num).toDouble(),
      holdings: (json['holdings'] as List)
          .map((h) => Holding.fromJson(h as Map<String, dynamic>))
          .toList(),
    );
  }
}