import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yoyo_harware_store/Login/login.dart';
import 'package:yoyo_harware_store/Login/splashscreen.dart';
import 'package:yoyo_harware_store/products_%20page.dart';
import 'package:shared_preferences/shared_preferences.dart';

final List<String> imgList = [
  'assets/images/1.jpg',
  'assets/images/2.jpg',
  'assets/images/3.jpg',
  'assets/images/4.jpg',
  'assets/images/5.jpg',
];

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController controller = TextEditingController();
  int _current = 0;
  final CarouselSliderController _controller = CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.brown.shade900,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        // elevation: 10,

        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'YoYo Hardware Store',
              style: GoogleFonts.montserratAlternates(
                  color: Colors.brown.shade900,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        backgroundColor: Color.fromRGBO(249, 168, 125, 1),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/workshop.png",
                        height: 130,
                      ),
                    ],
                  )),
                ],
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pop();
              },
              title: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.brown.shade900,
                    ),
                    height: 40,
                    width: 40,
                    child: const Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 30),
                  const Text(
                    'Home',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
            ListTile(
              onTap: () async {},
              title: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.brown.shade900,
                    ),
                    height: 40,
                    width: 40,
                    child: const Icon(
                      Icons.list_alt_rounded,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 30),
                  const Text(
                    'About Us',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
            ListTile(
              onTap: () async {},
              title: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.brown.shade900,
                    ),
                    height: 40,
                    width: 40,
                    child: const Icon(
                      Icons.add_business,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 30),
                  const Text(
                    'Products',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
            ListTile(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => AboutUs(),
                //   ),
                // );
              },
              title: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.brown.shade900,
                      // color:  Colors.blueGrey.shade700,,
                    ),
                    height: 40,
                    width: 40,
                    child: const Icon(
                      Icons.feed_rounded,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 30),
                  const Text(
                    'Feedback',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
            ListTile(
              onTap: () async {},
              title: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.brown.shade900,
                    ),
                    height: 40,
                    width: 40,
                    child: const Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 30),
                  const Text(
                    'cart',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
            ListTile(
              onTap: () async {
                final SharedPreferences prefs =
                await SharedPreferences.getInstance();

                prefs.setBool(SplashScreenState.KEYLOGIN, false);
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => LoginPage(),
                ));
              },
              title: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.brown.shade900,
                    ),
                    height: 40,
                    width: 40,
                    child: const Icon(
                      Icons.logout_outlined,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 30),
                  const Text(
                    'Log out',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: EdgeInsets.fromLTRB(15, 15, 20, 10),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    children: [
                      Expanded(
                          flex: 2,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.deepOrange),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Icon(
                                size: MediaQuery.of(context).size.width * 0.08,
                                Icons.search_rounded,
                                color: Colors.white,
                              ),
                            ),
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        flex: 12,
                        child: TextField(
                            style: TextStyle(color: Colors.brown, fontSize: 17),
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                      color: Colors.blueGrey.shade900,
                                      width: 2),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                      color: Colors.deepOrange, width: 3),
                                ),
                                hintText: 'Search',
                                hintStyle: TextStyle(
                                    color: Colors.deepOrange,
                                    fontWeight: FontWeight.bold)),
                            controller: controller,
                            onChanged: (value) {}),
                      ),
                    ],
                  ), //search bar
                  SizedBox(
                    height: 25,
                  ),
                  CarouselSlider(
                    options: CarouselOptions(
                        height: 300,
                        aspectRatio: 16 / 9,
                        viewportFraction: 0.8,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 3),
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeCenterPage: true,
                        enlargeFactor: 0.3,
                        pauseAutoPlayOnManualNavigate: true,
                        scrollDirection: Axis.horizontal,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _current = index;
                          });
                        }),
                    items: [1, 2, 3, 4, 5].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image(
                                image: AssetImage("assets/images/$i.jpg"),
                                fit: BoxFit.fill,
                              ),
                            ),
// ClipRRect
                          );
                        },
                      );
                    }).toList(),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: imgList.asMap().entries.map((entry) {
                      return GestureDetector(
                        onTap: () => _controller.animateToPage(entry.key),
                        child: Container(
                          width: 12.0,
                          height: 12.0,
                          margin: EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 4.0),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: (Theme.of(context).brightness ==
                                          Brightness.dark
                                      ? Colors.white
                                      : Colors.black)
                                  .withOpacity(
                                      _current == entry.key ? 0.9 : 0.4)),
                        ),
                      );
                    }).toList(),
                  ), //indicator for CarouselSlider
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Expanded(
                          flex: 5,
                          child: Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Products_page(),
                                  ));
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color:
                                            Color.fromRGBO(242, 120, 130, 1)),
                                  ),
                                  width: 150,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image(
                                        image: AssetImage(
                                            "assets/images/splashscreen_animation.gif"),
                                        fit: BoxFit.contain),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Catogery 1",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.deepOrangeAccent,
                                ),
                              ),
                            ],
                          )),
                      Expanded(
                          flex: 5,
                          child: Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Products_page(),
                                  ));
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color:
                                            Color.fromRGBO(242, 120, 130, 1)),
                                  ),
                                  width: 150,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image(
                                        image: AssetImage(
                                            "assets/images/splashscreen_animation.gif"),
                                        fit: BoxFit.contain),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Catogery 2",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.deepOrangeAccent,
                                ),
                              ),
                            ],
                          )),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      Expanded(
                          flex: 5,
                          child: Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Products_page(),
                                  ));
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color:
                                            Color.fromRGBO(242, 120, 130, 1)),
                                  ),
                                  width: 150,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image(
                                        image: AssetImage(
                                            "assets/images/splashscreen_animation.gif"),
                                        fit: BoxFit.contain),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Catogery 3",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.deepOrangeAccent,
                                ),
                              ),
                            ],
                          )),
                      Expanded(
                          flex: 5,
                          child: Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Products_page(),
                                  ));
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color:
                                            Color.fromRGBO(242, 120, 130, 1)),
                                  ),
                                  width: 150,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image(
                                        image: AssetImage(
                                            "assets/images/splashscreen_animation.gif"),
                                        fit: BoxFit.contain),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Catogery 4",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.deepOrangeAccent,
                                ),
                              ),
                            ],
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  showAlertDialoglogout(BuildContext context) {
    Widget logoutButton = TextButton(
      child: Text("Log out", style: TextStyle(color: Colors.white)),
      onPressed: () async {
        final SharedPreferences prefs = await SharedPreferences.getInstance();

        prefs.setBool(SplashScreenState.KEYLOGIN, false);
        print(":::::::::::::::::::log out::::::::::");
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => LoginPage()));
      },
    );

    Widget closeButton = TextButton(
      child: Text("Close", style: TextStyle(color: Colors.white)),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );

    AlertDialog alert = AlertDialog(
      backgroundColor: Color.fromRGBO(250, 148, 77, 1),
      shape: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
      content: Text("Do you want to log out?",
          style: TextStyle(color: Colors.white)),
      actions: [logoutButton, closeButton],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
