import 'package:flutter/material.dart';
import 'package:travel_partner/Dashboard/home.dart';

class MainController extends StatefulWidget {
  const MainController({super.key});

  @override
  State<MainController> createState() => _MainControllerState();
}

class _MainControllerState extends State<MainController> {
  int _currentIndex = 0;

  // Screens for each navigation item
  final List<Widget> _screens = [
    const HomeScreen(),
    const BuyScreen(),
    const SellScreen(),
    const InsuranceScreen(),
    const MenuScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: _buildBottomNavBar(),
    );
  }

  Widget _buildBottomNavBar() {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 10,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavItem(0, Icons.home, 'Home'),
          _buildNavItem(1, Icons.shopping_cart, 'Buy'),
          _buildNavItem(2, Icons.monetization_on, 'Sell'),
          _buildNavItem(3, Icons.security, 'Insurance'),
          _buildNavItem(4, Icons.menu, 'Menu'),
        ],
      ),
    );
  }

  Widget _buildNavItem(int index, IconData icon, String label) {
    bool isActive = _currentIndex == index;
    return GestureDetector(
      onTap: () => setState(() => _currentIndex = index),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Active indicator line
          Container(
            height: 3,
            width: 24,
            color: isActive ? const Color(0xFF7E3390) : Colors.transparent,
            margin: const EdgeInsets.only(bottom: 4),
          ),
          Icon(
            icon,
            color: isActive ? const Color(0xFF7E3390) : Colors.grey[600],
            size: 24,
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              color: isActive ? const Color(0xFF7E3390) : Colors.grey[600],
              fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}

class BuyScreen extends StatelessWidget {
  const BuyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Buy Content'));
  }
}

class SellScreen extends StatelessWidget {
  const SellScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Sell Content'));
  }
}

class InsuranceScreen extends StatelessWidget {
  const InsuranceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Insurance Content'));
  }
}

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Menu Content'));
  }
}
