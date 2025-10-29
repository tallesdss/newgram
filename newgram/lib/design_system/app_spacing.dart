import 'package:flutter/material.dart';

/// Design System de Espaçamento
/// Baseado nos padrões extraídos da aplicação
class AppSpacing {
  AppSpacing._();

  // Espaçamentos Padrão
  static const double space2 = 2.0;
  static const double space4 = 4.0;
  static const double space8 = 8.0;
  static const double space12 = 12.0;
  static const double space16 = 16.0;
  static const double space20 = 20.0;
  static const double space24 = 24.0;
  static const double space32 = 32.0;

  // Padding Customizado para Componentes
  static const EdgeInsets paddingAppBar = EdgeInsets.all(0);
  static const EdgeInsets paddingHeader = EdgeInsets.all(16.0);
  static const EdgeInsets paddingStory = EdgeInsets.symmetric(horizontal: 16.0);
  static const EdgeInsets paddingBottomNav = EdgeInsets.only(left: 16, right: 16, bottom: 5);

  // Gaps Customizados
  static const SizedBox gap4 = SizedBox(height: 4, width: 4);
  static const SizedBox gap8 = SizedBox(height: 8, width: 8);
  static const SizedBox gap12 = SizedBox(height: 12, width: 12);
  static const SizedBox gap16 = SizedBox(height: 16, width: 16);
  static const SizedBox gap20 = SizedBox(height: 20, width: 20);

  // Espaçamento entre itens do grid
  static const double gridSpacing = 2.0;
  
  // Border Radius Padrão
  static const double radius4 = 4.0;
  static const double radius8 = 8.0;
  static const double radius12 = 12.0;
  static const double radius16 = 16.0;
  static const double radius20 = 20.0;
  
  // Tamanhos de Ícones
  static const double iconSize16 = 16.0;
  static const double iconSize20 = 20.0;
  static const double iconSize24 = 24.0;
  static const double iconSize30 = 30.0;
}

