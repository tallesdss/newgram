import 'package:flutter/material.dart';
import 'app_spacing.dart';

/// Design System de Formas e Borders
/// Baseado nos padrões extraídos da aplicação
class AppShapes {
  AppShapes._();

  // Border Radius Padrão
  static BorderRadius radius8 = BorderRadius.circular(AppSpacing.radius8);
  static BorderRadius radius20 = BorderRadius.circular(AppSpacing.radius20);

  // Forms (Inputs)
  static InputBorder inputBorder = OutlineInputBorder(
    borderRadius: radius8,
    borderSide: const BorderSide(color: Color(0xFFDBDBDB)),
  );

  static InputBorder inputBorderFocused = OutlineInputBorder(
    borderRadius: radius8,
    borderSide: const BorderSide(color: Color(0xFF0095F6), width: 2),
  );

  // Botões Outlined
  static ShapeBorder outlinedButton = RoundedRectangleBorder(
    borderRadius: radius8,
    side: const BorderSide(color: Colors.grey),
  );

  // Botões Elevated
  static ShapeBorder elevatedButton = RoundedRectangleBorder(
    borderRadius: radius8,
  );

  // Container Card
  static BoxDecoration cardDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: radius8,
    border: Border.all(color: const Color(0xFFEFEFEF)),
  );

  // Container Story Highlight
  static BoxDecoration storyHighlight = BoxDecoration(
    shape: BoxShape.circle,
    border: Border.all(color: Colors.grey.shade300, width: 1),
  );

  // Container Story Highlight - Novo
  static BoxDecoration storyHighlightNew = BoxDecoration(
    shape: BoxShape.circle,
    border: Border.all(color: Colors.grey.shade300, width: 1),
    color: Colors.grey.shade100,
  );

  // Bottom Navigation Bar
  static BoxDecoration bottomNavDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: radius20,
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.1),
        blurRadius: 10,
        offset: const Offset(0, -2),
      ),
    ],
  );

  // Divider
  static Border divider = const Border(
    top: BorderSide(color: Colors.grey, width: 0.5),
  );

  // Tab ativa
  static BoxDecoration tabActive = BoxDecoration(
    border: Border(
      bottom: BorderSide(color: Colors.black, width: 1),
    ),
  );
}

