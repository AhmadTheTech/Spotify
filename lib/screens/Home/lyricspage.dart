import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LyricsPage extends StatefulWidget {
  const LyricsPage({super.key});

  @override
  State<LyricsPage> createState() => _LyricsPageState();
}

class _LyricsPageState extends State<LyricsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/lyrics.png'),
                          fit: BoxFit.cover)),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            SafeArea(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                                child: Container(
                                  height: 24,
                                  width: 24,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: const Image(
                                    image: AssetImage('assets/icons/back.png'),
                                  ),
                                ),
                              ),
                            ),
                            const Spacer(),
                            const SizedBox(
                              height: 70,
                            ),
                            SafeArea(
                              child: Text(
                                "Bad Guy",
                                style: GoogleFonts.roboto(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                            const Spacer(),
                            const Padding(
                              padding: EdgeInsets.only(right: 06, top: 25),
                              child: Icon(
                                Icons.more_vert_rounded,
                                size: 30,
                                color: Color(0xff7D7D7D),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                " ( Verse 1 )",
                                style: GoogleFonts.roboto(
                                    fontSize: 17,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Center(
                                child: RichText(
                                  text: TextSpan(
                                    children: <TextSpan>[
                                      TextSpan(
                                        text:
                                        "Sleepin', you're on your tippy toes\n\nCreepin' around like no one knows\n\nThink you're so criminal\n\nBruises on both my knees for you\n\nDon't say thank you or please\n\nI do what I want when I'm wanting to\n",
                                        style: GoogleFonts.roboto(
                                          color: Colors.white24,
                                          fontSize: 19,
                                        ),
                                      ),
                                      TextSpan(
                                        text: "\nMy soul? So cynical",
                                        style: GoogleFonts.roboto(
                                          color: Colors.white,
                                          fontSize: 19,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              const Image(image: AssetImage('assets/icons/Play-green.png')),
                              const SizedBox(
                                height: 30,
                              ),
                              Text(
                                " ( Verse 2 )",
                                style: GoogleFonts.roboto(
                                    fontSize: 17,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Center(
                                child: RichText(
                                  text: TextSpan(
                                    children: <TextSpan>[
                                      TextSpan(
                                        text:
                                        "Sleepin', you're on your tippy toes\n\nCreepin' around like no one knows\n\nThink you're so criminal\n\nBruises on both my knees for you\n\nDon't say thank you or please\n\nI do what I want when I'm wanting to\n",
                                        style: GoogleFonts.roboto(
                                          color: Colors.white24,
                                          fontSize: 19,
                                        ),
                                      ),
                                      TextSpan(
                                        text: "\nMy soul? So cynical",
                                        style: GoogleFonts.roboto(
                                          color: Colors.white,
                                          fontSize: 19,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: 260,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 45,
                      top: 30,
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
                        height: 10,
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
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
