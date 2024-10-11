import 'package:quick_actions/quick_actions.dart';
import 'package:widgets_app/config/router/app_router.dart';

class QuickActionsPlugin {
  static registerActions() {
    const QuickActions quickActions = QuickActions();
    quickActions.initialize((shortcutType) {
      switch (shortcutType) {
        case 'badge':
          appRouter.push('/badge');
          break;
        case 'tutorial':
          appRouter.push('/tutorial');
          break;
        case 'infinite scroll':
          appRouter.push('/infinite');
          break;
        case 'theme changer':
          appRouter.push('/theme-changer');
          break;
      }
    });
    quickActions.setShortcutItems(<ShortcutItem>[
      const ShortcutItem(
          type: 'infinite scroll',
          localizedTitle: 'Infinite Scroll',
          icon: 'finger'),
      const ShortcutItem(
          type: 'badge', localizedTitle: 'Badge', icon: 'charmander'),
      const ShortcutItem(
          type: 'tutorial', localizedTitle: 'Tutorial', icon: 'compass'),
      const ShortcutItem(
          type: 'theme changer',
          localizedTitle: 'Theme changer',
          icon: 'pokemons'),
    ]);
  }
}
