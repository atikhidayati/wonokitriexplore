import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:wonokitriexplore/src/dashboard/account_screen.dart';
import 'package:wonokitriexplore/src/dashboard/home_screen.dart';
import 'package:wonokitriexplore/src/dashboard/maps_screen.dart';
import 'package:wonokitriexplore/src/dashboard/payment_screen.dart';
import 'package:wonokitriexplore/src/dashboard/wishlist_screen.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int navIndex = 0;

  Widget returnScreen(int navIndex) {
    switch (navIndex) {
      case 0:
        return const HomeScreen();
      case 1:
        return const WishlisScreen();
      case 2:
        return const MapsScreen();
      case 3:
        return const PaymentScreen();
      case 4:
        return const AccountScreen();
      default:
        return const HomeScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //If you want to show body behind the navbar, it should be true
      backgroundColor: Colors.white,
      body: returnScreen(navIndex),
      bottomNavigationBar: FloatingNavbar(
        onTap: (val) {
          setState(() {
            navIndex = val;
          });
        },
        borderRadius: 25,
        itemBorderRadius: 25,
        currentIndex: navIndex,
        backgroundColor: Colors.green,
        selectedBackgroundColor: Colors.white,
        items: [
          FloatingNavbarItem(
            icon: Icons.home,
          ),
          FloatingNavbarItem(
            icon: Icons.bookmark,
          ),
          FloatingNavbarItem(
            icon: Icons.location_pin,
          ),
          FloatingNavbarItem(
            icon: Icons.payment_rounded,
          ),
          FloatingNavbarItem(
            icon: Icons.person,
          ),
        ],
      ),
    );
  }
}
