import 'package:flutter/material.dart';
import 'package:spotify_app/screens/Favourite/favourite_page.dart';
import 'package:spotify_app/screens/Home/home.dart';

class BottomTabs extends StatefulWidget {
  const BottomTabs({super.key});

  @override
  State<BottomTabs> createState() => _BottomTabsState();
}

class _BottomTabsState extends State<BottomTabs> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const SpotifyHomePage(),
    const ExplorePage(),
    const SpotifyFavouritePage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Stack(
        children: [
          BottomNavigationBar(
            backgroundColor: Colors.white,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedIndex,
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: _buildIcon('assets/icons/selected (3).png', 0),
                label: "",
                activeIcon: _buildActiveIcon('assets/icons/Home 2.png'),
              ),
              BottomNavigationBarItem(
                icon: _buildIcon('assets/icons/selected(4).png', 1),
                label: "",
                activeIcon: _buildActiveIcon('assets/icons/selected(4).png'),
              ),
              BottomNavigationBarItem(
                icon: _buildIcon('assets/icons/selected (2).png', 2),
                label: "",
                activeIcon: _buildActiveIcon('assets/icons/Vector.png'),
              ),
              BottomNavigationBarItem(
                icon: _buildIcon('assets/icons/selected (1).png', 3),
                label: "",
                activeIcon: _buildActiveIcon('assets/icons/Profile 1.png'),
              ),
            ],
          ),
          if (_selectedIndex != null)
            Positioned(
              top: 0,
              left: (MediaQuery.of(context).size.width / 4) * _selectedIndex + (MediaQuery.of(context).size.width / 4) / 2 - 33 / 2,
              child: Container(
                height: 4,
                width: 30, // Adjust the width to fit the icon
                decoration: BoxDecoration(
                  color: Colors.green
                ),// Change to desired line color
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildIcon(String assetPath, int index) {
    return Image.asset(assetPath);
  }

  Widget _buildActiveIcon(String assetPath) {
    return Image.asset(assetPath);
  }
}

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Explore"),
      ),
    );
  }
}

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Profile"),
      ),
    );
  }
}
