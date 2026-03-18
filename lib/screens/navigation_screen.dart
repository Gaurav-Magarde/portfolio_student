import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio_student_assignment/screens/prtfolio_screen.dart';
import 'package:portfolio_student_assignment/themes.dart';

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  // Start at index 1 (Portfolio) to match Figma
  int _currentIndex = 1;

  // The list of screens for the body
  final List<Widget> _screens = [
    const Scaffold(body: Center(child: Text('Home'))),
    const PortfolioScreen(),
    const Scaffold(body: Center(child: Text('Input'))),
    const Scaffold(body: Center(child: Text('Profile'))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],

      bottomNavigationBar: Container(
        height: 80.h,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: const Offset(0, -5),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildNavItem(index: 0, iconPath: 'assets/icons/Home.svg', label: 'Home'),
            _buildNavItem(index: 1, iconPath: 'assets/icons/Portfolio.svg', label: 'Portfolio'),
            _buildNavItem(index: 2, iconPath: 'assets/icons/Input.svg', label: 'Input'),
            _buildNavItem(index: 3, iconPath: 'assets/icons/Profile.svg', label: 'Profile'),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem({required int index, required String iconPath, required String label}) {
    bool isActive = _currentIndex == index;

    Color activeColor =  ColorTheme.primaryDark;
    Color inactiveColor = Colors.grey;

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        setState(() {
          _currentIndex = index;
        });
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 3.h,
            width: 30.w,
            decoration: BoxDecoration(
              color: isActive ? activeColor : Colors.transparent,
              borderRadius: BorderRadius.circular(2.r),
            ),
          ),
          SizedBox(height: 8.h),

          SvgPicture.asset(
            iconPath,
            colorFilter: ColorFilter.mode(
              isActive ? activeColor : inactiveColor,
              BlendMode.srcIn,
            ),
          ),
          SizedBox(height: 4.h),

          Text(
            label,
            style: Theme.of(context).textTheme.bodyMedium?.apply(color: isActive ? activeColor : inactiveColor,  ),
          ),
        ],
      ),
    );
  }}