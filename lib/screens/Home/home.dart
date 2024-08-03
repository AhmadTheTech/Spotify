import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spotify_app/screens/Home/songpage.dart';
import 'package:spotify_app/screens/RegisterOrLogin/signoutpage.dart';

class SpotifyHomePage extends StatefulWidget {
  const SpotifyHomePage({super.key});
  @override
  State<SpotifyHomePage> createState() => _SpotifyHomePageState();
}

class _SpotifyHomePageState extends State<SpotifyHomePage> {
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: const Image(
            image: AssetImage('assets/icons/search.png'),
          ),
          centerTitle: true,
          title: const Image(
            image: AssetImage('assets/images/logo-3.png'),
          ),
          actions: [
            const Icon(
              Icons.more_vert_rounded,
              size: 30,
              color: Color(0xff2D264B),
            ),
            IconButton(
              icon: const Icon(Icons.logout),
              onPressed: () async {
                try {
                  await auth.signOut();
                 Get.to(const AfterLogout() , transition: Transition.circularReveal , duration: const Duration(seconds: 2));
                } catch (e) {
                  // Handle error
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Error signing out: $e')),
                  );
                }
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 155,
                width: double.infinity,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Image(
                        image: AssetImage('assets/images/demo (1).png'),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: EdgeInsets.only(
                          right: 40,
                        ),
                        child: Image(
                          image: AssetImage('assets/images/demo (2).png'),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: EdgeInsets.only(left: 40),
                  child: Row(
                    children: [
                      Text(
                        "News",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 60,
                      ),
                      Text(
                        "Video",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xffBEBEBE),
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 60,
                      ),
                      Text(
                        "Artists",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xffBEBEBE),
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 60,
                      ),
                      Text(
                        "Podcast",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xffBEBEBE),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 25,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.to(const SongPlayingPage(),
                                transition: Transition.leftToRight,
                                duration: const Duration(seconds: 1));
                          },
                          child: Container(
                            height: 185,
                            width: 147,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/songs(2).png'))),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Container(
                                    transform:
                                        Matrix4.translationValues(10, 12, 0),
                                    height: 60,
                                    width: 40,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xffE6E6E6)),
                                    child: const Center(
                                        child: Image(
                                      image:
                                          AssetImage('assets/images/Play.png'),
                                    )),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 05),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Bad Guy",
                                style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              const SizedBox(
                                height: 0,
                              ),
                              Text(
                                "Billie Eilish",
                                style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 15),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(const SongPlayingPage(),
                            transition: Transition.upToDown,
                            duration: const Duration(seconds: 1));
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 185,
                            width: 147,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/songs(1).png'))),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Container(
                                    transform:
                                        Matrix4.translationValues(10, 12, 0),
                                    height: 60,
                                    width: 40,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xffE6E6E6)),
                                    child: const Center(
                                        child: Image(
                                      image:
                                          AssetImage('assets/images/Play.png'),
                                    )),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 05),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Scorpion",
                                  style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                const SizedBox(
                                  height: 0,
                                ),
                                Text(
                                  "Drake",
                                  style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 15),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(const SongPlayingPage(),
                            transition: Transition.rightToLeft,
                            duration: const Duration(seconds: 1));
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 185,
                            width: 147,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/songs(3).png'))),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Container(
                                    transform:
                                        Matrix4.translationValues(10, 12, 0),
                                    height: 60,
                                    width: 40,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xffE6E6E6)),
                                    child: const Center(
                                        child: Image(
                                      image:
                                          AssetImage('assets/images/Play.png'),
                                    )),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 05),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "WHEN WE ALL",
                                  style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                const SizedBox(
                                  height: 0,
                                ),
                                Text(
                                  "Billie Eilishs",
                                  style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 15),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 34, right: 20),
                child: Row(
                  children: [
                    Text(
                      "Playlist",
                      style: GoogleFonts.roboto(
                          fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    Text(
                      "See More",
                      style: GoogleFonts.roboto(
                          fontSize: 15, fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 34, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 60,
                      width: 40,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xffE6E6E6)),
                      child: const Center(
                          child: Image(
                        image: AssetImage('assets/images/Play.png'),
                      )),
                    ),
                    const SizedBox(
                      width: 33,
                    ),
                    Column(
                      children: [
                        Text(
                          "As It Was",
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Text(
                          "Harry Styles",
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.normal, fontSize: 13),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 103,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 19),
                      child: Text(
                        "5:33",
                        style: GoogleFonts.roboto(fontSize: 16),
                      ),
                    ),
                    const SizedBox(
                      width: 45,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 19),
                      child: Image(
                        image: AssetImage('assets/icons/Heart 1.png'),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 34, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 60,
                      width: 40,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xffE6E6E6)),
                      child: const Center(
                          child: Image(
                        image: AssetImage('assets/images/Play.png'),
                      )),
                    ),
                    const SizedBox(
                      width: 33,
                    ),
                    Column(
                      children: [
                        Text(
                          "God Did",
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Text(
                          "DJ Khaled",
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.normal, fontSize: 13),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 114,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 19),
                      child: Text(
                        "3:43",
                        style: GoogleFonts.roboto(fontSize: 16),
                      ),
                    ),
                    const SizedBox(
                      width: 45,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 19),
                      child: Image(
                        image: AssetImage('assets/icons/Heart 1.png'),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 34, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 60,
                      width: 40,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xffE6E6E6)),
                      child: const Center(
                          child: Image(
                        image: AssetImage('assets/images/Play.png'),
                      )),
                    ),
                    const SizedBox(
                      width: 33,
                    ),
                    Column(
                      children: [
                        Text(
                          "As It Was",
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Text(
                          "Harry Styles",
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.normal, fontSize: 13),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 103,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 19),
                      child: Text(
                        "5:33",
                        style: GoogleFonts.roboto(fontSize: 16),
                      ),
                    ),
                    const SizedBox(
                      width: 45,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 19),
                      child: Image(
                        image: AssetImage('assets/icons/Heart 1.png'),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 34, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 60,
                      width: 40,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xffE6E6E6)),
                      child: const Center(
                          child: Image(
                        image: AssetImage('assets/images/Play.png'),
                      )),
                    ),
                    const SizedBox(
                      width: 33,
                    ),
                    Column(
                      children: [
                        Text(
                          "As It Was",
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Text(
                          "Harry Styles",
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.normal, fontSize: 13),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 103,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 19),
                      child: Text(
                        "5:33",
                        style: GoogleFonts.roboto(fontSize: 16),
                      ),
                    ),
                    const SizedBox(
                      width: 45,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 19),
                      child: Image(
                        image: AssetImage('assets/icons/Heart 1.png'),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
