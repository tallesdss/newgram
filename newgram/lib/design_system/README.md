# Design System - Newgram

Design System criado com base na análise da interface do aplicativo Instagram-style.

## 📁 Estrutura

```
lib/design_system/
├── app_colors.dart       # Paleta de cores
├── app_typography.dart   # Tipografia
├── app_spacing.dart      # Espaçamentos e dimensões
├── app_shapes.dart       # Formas e bordas
├── app_theme.dart        # Tema principal
├── app_sizes.dart        # Tamanhos de componentes
├── app_icons.dart        # Ícones centralizados
└── README.md             # Este arquivo
```

## 🎨 Componentes do Design System

### Cores (app_colors.dart)
- **Primárias**: Azul Instagram (#0095F6)
- **Background**: Branco e tons de cinza
- **Texto**: Preto, cinza escuro e cinza claro
- **Gradientes**: Gradiente do Instagram Stories
- **Status**: Success, Error, Warning, Info

### Tipografia (app_typography.dart)
- **Família**: SF Pro Display (iOS padrão)
- **Pesos**: Regular (400), Medium (500), SemiBold (600), Bold (700)
- **Tamanhos**: 10, 12, 13, 14, 16, 18, 20, 24px
- **Estilos**: AppBar, Stats, Bio, Links, Buttons

### Espaçamentos (app_spacing.dart)
- **Gaps**: 2, 4, 8, 12, 16, 20, 24, 32px
- **Padding**: Customizado para cada componente
- **Border Radius**: 4, 8, 12, 16, 20px
- **Icon Sizes**: 16, 20, 24, 30px

### Formas (app_shapes.dart)
- **Borders**: Input, Outline, Card
- **Decorations**: Story Highlight, Bottom Nav, Tab Active
- **Shapes**: Botões, Cards, Containers

### Tamanhos (app_sizes.dart)
- **Avatares**: 40, 60, 80, 90px
- **Story Highlights**: 64px de diâmetro
- **Grid**: 3 colunas, spacing de 2px
- **Bottom Nav**: 80px de altura

### Ícones (app_icons.dart)
- **Navegação**: Home, Search, Add, Heart, User
- **Perfil**: Settings, Chevron, More
- **Tabs**: Grid, Video, Tag, Bookmark, Link, List
- **Story**: Plus icon

## 🚀 Como Usar

### 1. Importar o Design System

```dart
import 'package:flutter/material.dart';
import 'design_system/app_colors.dart';
import 'design_system/app_typography.dart';
import 'design_system/app_spacing.dart';
import 'design_system/app_shapes.dart';
import 'design_system/app_icons.dart';
```

### 2. Usar Cores

```dart
Container(
  color: AppColors.primary,
  child: Text(
    'Texto',
    style: TextStyle(color: AppColors.textPrimary),
  ),
)
```

### 3. Usar Tipografia

```dart
Text(
  'Nome do Usuário',
  style: AppTypography.userName,
)
```

### 4. Usar Espaçamentos

```dart
Column(
  children: [
    Widget1(),
    AppSpacing.gap16,
    Widget2(),
  ],
)
```

### 5. Usar Formas

```dart
Container(
  decoration: AppShapes.cardDecoration,
  child: Text('Card'),
)
```

### 6. Usar Ícones

```dart
Icon(AppIcons.home)
```

## 📱 Aplicação do Tema

No arquivo `main.dart`, adicione o tema:

```dart
import 'design_system/app_theme.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const InstagramProfileScreen(),
    );
  }
}
```

## 🎯 Princípios do Design

1. **Consistência**: Todas as cores, espaçamentos e estilos seguem padrões definidos
2. **Simplicidade**: Interface limpa e minimalista
3. **Usabilidade**: Componentes intuitivos e fáceis de usar
4. **Responsividade**: Adaptação a diferentes tamanhos de tela
5. **Acessibilidade**: Contraste adequado e tamanhos legíveis

## 🔄 Atualizações Futuras

- [ ] Adicionar tema escuro (dark mode)
- [ ] Criar componentes reutilizáveis baseados no design system
- [ ] Adicionar animações padronizadas
- [ ] Expandir paleta de cores
- [ ] Criar documentação de componentes

## 📝 Notas

Este design system foi extraído automaticamente da análise do código existente do aplicativo Newgram, seguindo os padrões visuais do Instagram.

