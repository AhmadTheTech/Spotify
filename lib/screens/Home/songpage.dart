import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spotify_app/screens/Home/lyricspage.dart';

class SongPlayingPage extends StatefulWidget {
  const SongPlayingPage({super.key});

  @override
  State<SongPlayingPage> createState() => _SongPlayingPageState();
}

class _SongPlayingPageState extends State<SongPlayingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (){
           Get.back();
          },
          child: const Image(
            image: AssetImage('assets/images/Left 2.png'),
          ),
        ),
        centerTitle: true,
        title: Text("Now Playing" , style: GoogleFonts.roboto(
          fontSize: 18,
          fontWeight: FontWeight.bold
        ),),
        actions: const [
          Icon(
            Icons.more_vert_rounded,
            size: 30,
            color: Color(0xff2D264B),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Image(image: AssetImage('assets/images/song1.png')),
            Padding(
              padding: const EdgeInsets.only(
                left: 45,
                top: 20,
                right: 45
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Text("Bad Guy" , style: GoogleFonts.roboto(
                    fontSize: 22,
                    fontWeight: FontWeight.bold
                  ),),
                  Row(
                    children: [
                      Text("Billie Eilish" , style: GoogleFonts.roboto(
                          fontSize: 20,
                          fontWeight: FontWeight.w300
                      ),),
                      const Spacer(),
                      const Image(image: AssetImage('assets/icons/selected (2).png'))
                    ],
                  ),
                  const SizedBox(
                    height: 56,
                  ),
                  const Row(
                    children: [
                      Image(image: AssetImage('assets/icons/Line 2.png')),
                      Image(image: AssetImage('assets/icons/Ellipse 6.png')),
                      Image(image: AssetImage('assets/icons/Line 1.png')),
                    ],
                  ),
                  Row(
                    children: [
                      Text("2;25" , style: GoogleFonts.roboto(
                        fontWeight: FontWeight.bold
                      ),),
                      const Spacer(),
                      Text("4:02" , style: GoogleFonts.roboto(
                        fontWeight: FontWeight.bold
                      ),),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      const Image(image: AssetImage('assets/icons/Repeate 3.png')),
                      const SizedBox(
                        width: 29,
                      ),
                      const Image(image: AssetImage('assets/icons/Previous.png')),
                      const SizedBox(
                        width: 29,
                      ),
                      Container(
                        height: 75,
                        width: 75,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                          color: const Color(0xff42C83C)
                        ),
                        child: const Image(image: AssetImage('assets/icons/Pause.png'),),
                      ),
                      const SizedBox(
                        width: 29,
                      ),
                      const Image(image: AssetImage('assets/icons/Next.png')),
                      const SizedBox(
                        width: 29,
                      ),
                      const Image(image: AssetImage('assets/icons/Shuffle 2.png')),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: (){
                      Get.to(const LyricsPage() , transition: Transition.downToUp , duration: const Duration(seconds: 1));
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Center(child: Image(image: AssetImage('assets/icons/Left 3.png'))),
                        Text("Lyrics" , style: GoogleFonts.roboto(
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                        ),)
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
