import 'package:flutter/material.dart';

/// Design System de Tipografia
/// Baseado nos padrões extraídos da aplicação
class AppTypography {
  AppTypography._();

  // Família de Fontes
  static const String fontFamily = 'SF Pro Display'; // iOS padrão
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.bold;

  // Tamanhos de Fonte
  static const double fontSize10 = 10.0;
  static const double fontSize12 = 12.0;
  static const double fontSize13 = 13.0;
  static const double fontSize14 = 14.0;
  static const double fontSize16 = 16.0;
  static const double fontSize18 = 18.0;
  static const double fontSize20 = 20.0;
  static const double fontSize24 = 24.0;

  // Estilos de Texto Padronizados

  // Título da AppBar
  static const TextStyle appBarTitle = TextStyle(
    fontSize: fontSize16,
    fontWeight: semiBold,
    color: Colors.black,
  );

  // Estatísticas (Followers, Following, Posts)
  static const TextStyle statsNumber = TextStyle(
    fontSize: fontSize18,
    fontWeight: bold,
    color: Colors.black,
  );

  static const TextStyle statsLabel = TextStyle(
    fontSize: fontSize13,
    color: Colors.black87,
  );

  // Nome do Usuário
  static const TextStyle userName = TextStyle(
    fontSize: fontSize14,
    fontWeight: semiBold,
    color: Colors.black,
  );

  // Biografia
  static const TextStyle bioText = TextStyle(
    fontSize: fontSize13,
    color: Colors.black,
  );

  // Links e Menções
  static const TextStyle link = TextStyle(
    fontSize: fontSize13,
    color: Color(0xFF0095F6),
    fontWeight: medium,
  );

  // Botões
  static const TextStyle buttonText = TextStyle(
    fontSize: fontSize14,
    fontWeight: semiBold,
    color: Colors.white,
  );

  static const TextStyle buttonTextOutline = TextStyle(
    fontSize: fontSize14,
    fontWeight: semiBold,
    color: Colors.black,
  );

  // Labels de Story Highlights
  static const TextStyle storyLabel = TextStyle(
    fontSize: fontSize12,
    color: Colors.black,
  );

  // Botão Adicionar Story
  static const TextStyle addStoryLabel = TextStyle(
    fontSize: fontSize12,
    color: Colors.black,
  );
}

