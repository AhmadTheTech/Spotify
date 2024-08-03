import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SpotifyFavouritePage extends StatefulWidget {
  const SpotifyFavouritePage({super.key});

  @override
  State<SpotifyFavouritePage> createState() => _SpotifyFavouritePageState();
}

class _SpotifyFavouritePageState extends State<SpotifyFavouritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Image(
              image: AssetImage('assets/images/favourite_page_image.png'),
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                "Billie Eilish",
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold, fontSize: 29),
              ),
            ),
            Center(
              child: Text(
                " 2 album , 67 track",
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w400, fontSize: 13),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur\nadipiscing elit. Turpis adipiscing vestibulum orci\nenim, nascetur vitae ",
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                    fontSize: 14, color: const Color(0xff838383)),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 34, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Albums",
                    style: GoogleFonts.roboto(
                        fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Image(image: AssetImage('assets/images/album(1).png')),
                        SizedBox(
                          width: 20,
                        ),
                        Image(image: AssetImage('assets/images/albums(2).png')),
                        SizedBox(
                          width: 20,
                        ),
                        Image(image: AssetImage('assets/images/albums(3).png'))
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 34, right: 20),
              child: Row(
                children: [
                  Text(
                    "Songs",
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
    );
  }
}
