import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/services_view_model.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<String> navbarIconPaths = [
    'assets/icons/navbar_logo.png',
    'assets/icons/news.png',
    'assets/icons/music.png',
    'assets/icons/projects.png',
  ];

  final List<String> navbarLabels = ['Home', 'News', 'TrackBox', 'Projects'];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  double _calculateDotOffset(int index, double screenWidth) {
    final itemWidth = screenWidth / navbarIconPaths.length;
    return itemWidth * index + itemWidth / 2 - 4;
  }

  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      Provider.of<ServicesViewModel>(context, listen: false).loadServices();
    });
  }

  Widget build(BuildContext context) {
    final viewModel = Provider.of<ServicesViewModel>(context);
    return Scaffold(
      backgroundColor: Color(0xFF18171C),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        actionsPadding: EdgeInsets.only(right: 5.0),
        backgroundColor: Colors.transparent,
        title: Padding(
          padding: EdgeInsets.only(top: 10),
          child: TextField(
            style: GoogleFonts.syne(color: Colors.white),
            decoration: InputDecoration(
              hintText: 'Search "Punjabi Lyrics"',
              hintStyle: GoogleFonts.syne(color: Colors.grey),
              prefixIcon: Icon(Icons.search, color: Colors.white),
              suffixIcon: Icon(Icons.mic, color: Colors.white),
              filled: true,
              fillColor: Color(0xFF2F2F39),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
        actions: [Icon(Icons.account_circle, color: Colors.white)],
      ),
      body: viewModel.isLoading
          ? Center(child: CircularProgressIndicator())
          : Column(
              children: [
                Container(
                  height: 0.4 * MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFFA90140), Color(0xFF550120)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                    ),
                  ),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Transform.translate(
                              offset: Offset(0, 80),
                              child: ClipRect(
                                child: Transform.translate(
                                  offset: Offset(-30, 0),
                                  child: Image.asset(
                                    'assets/hero/cd.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Transform.translate(
                              offset: Offset(0, 80),
                              child: ClipRect(
                                child: Transform.translate(
                                  offset: Offset(40, 0),
                                  child: Image.asset(
                                    'assets/hero/piano.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 20),
                            Text(
                              "Claim your",
                              style: GoogleFonts.syne(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Free Demo",
                              style: GoogleFonts.lobster(
                                fontSize: 45,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "for custom Music Production",
                              style: GoogleFonts.syne(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 20),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.black,
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 5,
                                ),
                              ),
                              child: Text(
                                "Book Now",
                                style: GoogleFonts.syne(
                                  fontSize: 13,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 0.53 * MediaQuery.of(context).size.height,
                  color: Color(0xFF18171C),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(height: 20),
                      Text(
                        "Hire hand-picked Pros for popular music services",
                        style: GoogleFonts.syne(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 20),
                      Expanded(
                        child: ListView.builder(
                          padding: EdgeInsets.zero,
                          itemCount: viewModel.services.length,
                          itemBuilder: (context, index) {
                            final service = viewModel.services[index];
                            return Container(
                              margin: EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 10,
                              ),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(service.bg_path),
                                  fit: BoxFit.cover,
                                  opacity: 0.1,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10.0),
                                ),
                              ),
                              child: ListTile(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => Scaffold(
                                        backgroundColor: Color(0xFF18171C),
                                        appBar: AppBar(
                                          backgroundColor: Color(0xFF18171C),
                                          automaticallyImplyLeading: true,
                                          title: Text(
                                            "Service Detail",
                                            style: GoogleFonts.syne(
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        body: Center(
                                          child: Text(
                                            'You tapped on: ${service.title}',
                                            style: GoogleFonts.syne(
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                                title: Text(
                                  service.title,
                                  style: GoogleFonts.syne(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                subtitle: Text(
                                  service.description,
                                  style: GoogleFonts.syne(
                                    fontSize: 13,
                                    color: Colors.white,
                                  ),
                                ),
                                leading: Image.asset(service.icon_path),
                                trailing: Icon(
                                  Icons.arrow_right,
                                  color: Colors.white,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
      bottomNavigationBar: Stack(
        children: [
          BottomNavigationBar(
            backgroundColor: Color(0xFF18171C),
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            items: List.generate(navbarIconPaths.length, (index) {
              return BottomNavigationBarItem(
                icon: Image.asset(
                  navbarIconPaths[index],
                  height: 24,
                  color: _selectedIndex == index ? Colors.white : Colors.grey,
                ),
                label: navbarLabels[index],
              );
            }),
          ),
          // Dot indicator
          Positioned(
            top: 0,
            left: _calculateDotOffset(
              _selectedIndex,
              MediaQuery.of(context).size.width,
            ),
            child: AnimatedContainer(
              duration: Duration(milliseconds: 250),
              height: 8,
              width: 8,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
