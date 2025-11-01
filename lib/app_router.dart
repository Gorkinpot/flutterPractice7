import 'package:go_router/go_router.dart';
import 'package:work/screens/converter_screen.dart';
import 'package:work/screens/history_screen.dart';
import 'package:work/screens/rates_screen.dart';
import 'package:work/screens/settings_screen.dart';
import 'package:work/screens/currency_info_screen.dart';
import 'package:work/models/history_item.dart';
import 'package:work/screens/main_menu_screen.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: 'home',
      builder: (context, state) => const MainMenuScreen(),
    ),
    GoRoute(
      path: '/converter',
      name: 'converter',
      builder: (context, state) => const CurrencyConverterScreen(),
    ),
    GoRoute(
      path: '/rates',
      name: 'rates',
      builder: (context, state) => const RatesScreen(),
    ),
    GoRoute(
      path: '/settings',
      name: 'settings',
      builder: (context, state) => const SettingsScreen(),
    ),
    GoRoute(
      path: '/history',
      name: 'history',
      builder: (context, state) => HistoryScreen(
        history: state.extra as List<HistoryItem>? ?? [],
        onDelete: (index) {},
      ),
    ),
    GoRoute(
      path: '/info/:currency',
      name: 'info',
      builder: (context, state) {
        final currency = state.pathParameters['currency']!;
        return CurrencyInfoScreen(currency: currency);
      },
    ),
  ],
);
