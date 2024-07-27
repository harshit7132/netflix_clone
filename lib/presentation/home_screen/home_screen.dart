import 'package:flutter/cupertino.dart';
import 'package:netflix_clone/domain/app_imports/app_imports.dart';
import 'package:netflix_clone/presentation/home_screen/bottom_nav_pages/my_profile_screen/netflix_profile_screen.dart';
import 'package:netflix_clone/presentation/home_screen/bottom_nav_pages/new&hot_screen/bottom_nav_new&hot_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const BottomHomeScreen(),
    NewHotScreen(items: AppConstants.newHotItems),
    NewHotScreen(items: AppConstants.newHotItems),
    NetflixProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 25.sp,
        elevation: 0,
        selectedFontSize: 12.sp,
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
            ),
            label: 'Home',
            backgroundColor: Colors.black,
          ),
          const BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.gamecontroller),
            tooltip: 'here',
            label: 'Games',
            backgroundColor: Colors.black,
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.video_library_outlined),
            label: 'New & Hot',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Image.network(
              'https://wallpapers.com/images/hd/netflix-profile-pictures-1000-x-1000-88wkdmjrorckekha.jpg',
              height: 25.h,
              width: 25.w,
            ),
            label: 'My Netflix',
            backgroundColor: Colors.black,
          ),
        ],
        showUnselectedLabels: true,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
