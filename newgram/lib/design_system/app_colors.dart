import 'package:flutter/material.dart';

/// Design System de Cores
/// Baseado nos padrões extraídos da aplicação
class AppColors {
  AppColors._();

  // Cores Principais
  static const Color primary = Color(0xFF0095F6); // Azul Instagram
  static const Color primaryDark = Color(0xFF1877F2);
  
  // Cores de Fundo
  static const Color background = Colors.white;
  static const Color surface = Color(0xFFF5F5F5);
  
  // Cores de Texto
  static const Color textPrimary = Colors.black;
  static const Color textSecondary = Colors.black87;
  static const Color textTertiary = Colors.grey;
  
  // Cores de Borda e Divisor
  static const Color border = Color(0xFFDBDBDB);
  static const Color borderLight = Color(0xFFEFEFEF);
  static const Color divider = Colors.grey;
  
  // Cores de Gradiente (Story)
  static const Color gradientStart = Color(0xFFFCAF45); // Amarelo
  static const Color gradientMiddle = Color(0xFFFF5B7C); // Rosa
  static const Color gradientEnd = Color(0xFFC837AB); // Roxo
  
  // Cores de Status
  static const Color success = Colors.green;
  static const Color error = Colors.red;
  static const Color warning = Colors.orange;
  static const Color info = Color(0xFF0095F6);
  
  // Cores Adicionais
  static const Color accent = Colors.orange;
  static const Color disabled = Color(0xFFE0E0E0);
  
  // Gradiente Linear para Stories
  static const LinearGradient storyGradient = LinearGradient(
    colors: [gradientStart, gradientMiddle, gradientEnd],
  );
}

