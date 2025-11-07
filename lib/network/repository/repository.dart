import 'dart:convert';
import 'package:finview_lite/network/datamodel/portfolio.dart';
import 'package:flutter/services.dart';

class PortfolioRepository {
  Future<Portfolio> loadPortfolio() async {
    try {
      final String response = await rootBundle.loadString('assets/portfolio.json');
      final data = json.decode(response) as Map<String, dynamic>;
      return Portfolio.fromJson(data);
    } catch (e) {
      throw Exception('Failed to load portfolio: $e');
    }
  }
}