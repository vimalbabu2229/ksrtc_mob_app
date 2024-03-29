import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPageIndex = 0;
  final List<String> pageTitles = ['Home', 'Notifications', 'Profile'];

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(pageTitles[currentPageIndex],
            style: GoogleFonts.poppins(
                textStyle: const TextStyle(fontSize: 23, color: Colors.white))),
        backgroundColor: const Color(0xFFA40606),
        elevation: 20,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
            size: 30,
          ),
        ),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(10))),
      ),

      //bottomnavbar
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.transparent,
        backgroundColor: const Color(0xFFA40606),
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(
              Icons.home,
              color: Colors.white,
              size: 30,
            ),
            icon: Icon(
              Icons.home_outlined,
              color: Colors.white,
              size: 30,
            ),
            label: '',
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Icons.notifications,
              color: Colors.white,
              size: 30,
            ),
            icon: Icon(
              Icons.notifications_outlined,
              color: Colors.white,
              size: 30,
            ),
            label: '',
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Icons.person,
              color: Colors.white,
              size: 30,
            ),
            label: '',
            icon: Icon(
              Icons.person_outlined,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
        height: 60,
      ),
      body: <Widget>[
        /// Home page
        Card(
          //shadowColor: Colors.transparent,
          margin: const EdgeInsets.all(8.0),
          child: SizedBox.expand(
            child: Center(
              child: Text(
                'Home page',
                style: theme.textTheme.titleLarge,
              ),
            ),
          ),
        ),

        /// Notifications page
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Card(
                child: ListTile(
                  leading: Icon(Icons.notifications_sharp),
                  title: Text('Notification 1'),
                  subtitle: Text('This is a notification'),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.notifications_sharp),
                  title: Text('Notification 2'),
                  subtitle: Text('This is a notification'),
                ),
              ),
            ],
          ),
        ),

        /// Messages page
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Card(
                child: ListTile(
                  //leading: Icon(Icons.notifications_sharp),
                  title: Text('Profile'),
                  subtitle: Text('This is a profile page'),
                ),
              ),
            ],
          ),
        ),
      ][currentPageIndex],
    );
  }
}
