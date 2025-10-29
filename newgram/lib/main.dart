import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const InstagramProfileScreen(),
    );
  }
}

class InstagramProfileScreen extends StatelessWidget {
  const InstagramProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.settings_outlined, color: Colors.black),
          onPressed: () {},
        ),
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Text(
              'manuelroviradesign',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(width: 4),
            Icon(Icons.keyboard_arrow_down, color: Colors.black, size: 20),
          ],
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.menu, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Profile Header
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  // Stats and Avatar
                  Row(
                    children: [
                      // Followers
                      Expanded(
                        child: Column(
                          children: const [
                            Text(
                              '23.6K',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Followers',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.black87,
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Avatar with gradient border
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: 90,
                            height: 90,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: const LinearGradient(
                                colors: [
                                  Color(0xFFFCAF45),
                                  Color(0xFFFF5B7C),
                                  Color(0xFFC837AB),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 86,
                            height: 86,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: const DecorationImage(
                                image: NetworkImage(
                                  'https://via.placeholder.com/80',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              padding: const EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: Container(
                                width: 24,
                                height: 24,
                                decoration: BoxDecoration(
                                  color: Colors.orange,
                                  shape: BoxShape.circle,
                                ),
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 16,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      // Following
                      Expanded(
                        child: Column(
                          children: const [
                            Text(
                              '488',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Following',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.black87,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  // Name and Bio
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Manuel Rovira',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(width: 4),
                          Text(
                            '|',
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(width: 4),
                          Text(
                            'Photographer',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Like to travel and shoot cinematic and b/w photos.',
                        style: TextStyle(fontSize: 13),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Tools - Capture One for Raw ',
                            style: TextStyle(fontSize: 13),
                          ),
                          Text(
                            '@photolove21',
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xFF0095F6),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  // Action Buttons
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            side: const BorderSide(color: Colors.grey),
                          ),
                          child: const Text(
                            'Edit profile',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            side: const BorderSide(color: Colors.grey),
                          ),
                          child: const Text(
                            'Statistics',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF0095F6),
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            elevation: 0,
                          ),
                          child: const Text(
                            'Contact',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Story Highlights
            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                children: [
                  _buildStoryHighlight(Icons.add, 'New', true),
                  _buildStoryHighlight(null, 'Travels', false,
                      imageUrl: 'https://via.placeholder.com/60'),
                  _buildStoryHighlight(null, 'Cool', false,
                      imageUrl: 'https://via.placeholder.com/60'),
                  _buildStoryHighlight(null, 'Scot', false,
                      imageUrl: 'https://via.placeholder.com/60'),
                  _buildStoryHighlight(null, 'Holidays', false,
                      imageUrl: 'https://via.placeholder.com/60'),
                  _buildStoryHighlight(null, 'D...', false,
                      imageUrl: 'https://via.placeholder.com/60'),
                ],
              ),
            ),
            // Tab Bar
            Container(
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(color: Colors.grey, width: 0.5),
                ),
              ),
              child: Row(
                children: [
                  _buildTabIcon(Icons.grid_on, true),
                  _buildTabIcon(Icons.video_collection_outlined, false),
                  _buildTabIcon(Icons.person_pin_outlined, false),
                  _buildTabIcon(Icons.bookmark_border, false),
                  _buildTabIcon(Icons.link, false),
                  _buildTabIcon(Icons.list_alt, false),
                ],
              ),
            ),
            // Photo Grid
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 2,
                mainAxisSpacing: 2,
              ),
              itemCount: 9,
              itemBuilder: (context, index) {
                final colors = [
                  Colors.cyan.shade300,
                  Colors.amber.shade200,
                  Colors.pink.shade200,
                  Colors.blue.shade600,
                  Colors.brown.shade300,
                  Colors.purple.shade200,
                  Colors.orange.shade300,
                  Colors.teal.shade400,
                  Colors.grey.shade400,
                ];
                return Container(
                  color: colors[index],
                  child: Image.network(
                    'https://via.placeholder.com/150',
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 4,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Stack(
              children: [
                const Icon(Icons.favorite_border),
                Positioned(
                  right: 0,
                  top: 0,
                  child: Container(
                    width: 8,
                    height: 8,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            ),
            label: 'Likes',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  Widget _buildStoryHighlight(IconData? icon, String label, bool isNew,
      {String? imageUrl}) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Column(
        children: [
          Container(
            width: 64,
            height: 64,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.grey.shade300,
                width: 1,
              ),
              color: isNew ? Colors.grey.shade100 : null,
            ),
            child: icon != null
                ? Icon(icon, color: Colors.black, size: 30)
                : ClipOval(
                    child: Image.network(
                      imageUrl ?? 'https://via.placeholder.com/64',
                      fit: BoxFit.cover,
                    ),
                  ),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: const TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }

  Widget _buildTabIcon(IconData icon, bool isActive) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: isActive ? Colors.black : Colors.transparent,
              width: 1,
            ),
          ),
        ),
        child: IconButton(
          icon: Icon(
            icon,
            color: isActive ? Colors.black : Colors.grey,
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}