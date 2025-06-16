import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/screens/chats.dart';
import 'package:fooddeliveryapp/screens/order.dart';
import 'package:fooddeliveryapp/screens/home.dart';
import 'package:fooddeliveryapp/screens/settings.dart';
import 'package:fooddeliveryapp/screens/wallets.dart';
import 'package:fooddeliveryapp/utils/app_layout.dart';
import 'package:fooddeliveryapp/widgets/bottombar_icon.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const Home(),
    const Chats(),
    const Wallets(),
    const Order(),
    const Settings(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: BottomBarIcon(
              icon: FluentSystemIcons.ic_fluent_home_regular,
              currentIndex: _selectedIndex,
              itemIndex: 0,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: BottomBarIcon(
              icon: FluentSystemIcons.ic_fluent_chat_regular,
              currentIndex: _selectedIndex,
              itemIndex: 1,
            ),
            label: 'Charts',
          ),
          BottomNavigationBarItem(
            icon: BottomBarIcon(
              icon: FluentSystemIcons.ic_fluent_payment_regular,
              currentIndex: _selectedIndex,
              itemIndex: 2,
            ),
            label: 'Wallets',
          ),
          BottomNavigationBarItem(
            icon: BottomBarIcon(
              icon: FluentSystemIcons.ic_fluent_document_page_regular,
              currentIndex: _selectedIndex,
              itemIndex: 3,
            ),
            label: 'Order',
          ),

          BottomNavigationBarItem(
            icon: BottomBarIcon(
              icon: FluentSystemIcons.ic_fluent_settings_regular,
              currentIndex: _selectedIndex,
              itemIndex: 4,
            ),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.white,
        unselectedItemColor: const Color(0xFF526480),
        elevation: AppLayout.getHeight(context, 10),
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
