import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatefulWidget {
  static const name = 'home';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late int _currentIndex;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 1);
    _currentIndex = _controller.initialPage;
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onTabTapped(int index) {
    _controller.jumpToPage(
      index,
    );
  }

  @override
  Widget build(BuildContext context) {
    ColorScheme colors = Theme.of(context).colorScheme;
    double iconSize = 30.0;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Technical Test'),
        actions: [
          IconButton(onPressed: () => context.pushNamed('notifications'), icon: const Icon(Icons.notifications))
        ],
      ),
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _controller,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        children: const [
          Center(
            child: Text('Settings Screen'),
          ),
          Center(
            child: Text('Home Screen'),
          ),
          Center(
            child: Text('Profile Screen'),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: colors.surfaceVariant,
          boxShadow: [
            BoxShadow(
              blurRadius: 5,
              color: colors.shadow,
              offset: const Offset(0, 0),
            ),
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.5.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // Ícono de Configuraciones
                Container(
                  decoration: _currentIndex == 0
                      ? BoxDecoration(
                          shape: BoxShape.circle,
                          color: colors.primaryContainer,
                        )
                      : null,
                  child: IconButton(
                    icon: const Icon(Icons.settings),
                    onPressed: () => _onTabTapped(0),
                    color: _currentIndex == 0 ? colors.primary : colors.onSurface,
                    iconSize: iconSize,
                  ),
                ),
                // Ícono de Inicio
                Container(
                  decoration: _currentIndex == 1
                      ? BoxDecoration(
                          shape: BoxShape.circle,
                          color: colors.primaryContainer,
                        )
                      : null,
                  child: IconButton(
                    icon: const Icon(Icons.home),
                    onPressed: () => _onTabTapped(1),
                    color: _currentIndex == 1 ? colors.primary : colors.onSurface,
                    iconSize: iconSize,
                  ),
                ),
                // Ícono de Perfil
                Container(
                  decoration: _currentIndex == 2
                      ? BoxDecoration(
                          shape: BoxShape.circle,
                          color: colors.primaryContainer,
                        )
                      : null,
                  child: IconButton(
                    icon: const Icon(Icons.person),
                    onPressed: () => _onTabTapped(2),
                    color: _currentIndex == 2 ? colors.primary : colors.onSurface,
                    iconSize: iconSize,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
