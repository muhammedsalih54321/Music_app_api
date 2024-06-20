

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app/Ui/extra/playerarea.dart';

class Detailscreen extends StatefulWidget {
  final String img;
  final String name;
  final String sub;
  final String url;
  const Detailscreen({super.key, required this.img, required this.name, required this.sub, required this.url});

  @override
  State<Detailscreen> createState() => _DetailscreenState();
}

class _DetailscreenState extends State<Detailscreen> {
  late AudioPlayer player = AudioPlayer();

  @override
  void initState() {
    super.initState();

    // Create the audio player.
    player = AudioPlayer();

    // Set the release mode to keep the source after playback has completed.
    player.setReleaseMode(ReleaseMode.stop);

    // Start the player as soon as the app is displayed.
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await player.setSourceUrl(widget.url);
      await player.resume();
    });
  }

  @override
  void dispose() {
    // Release all sources and dispose the player.
    player.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A081D),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            
            children: [
              AppBar(
                backgroundColor: Color(0xFF0A081D),
                leading: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      size: 25.sp,
                      Icons.arrow_back,
                      color: Colors.white,
                    )),
                centerTitle: true,
                title: Text(
                  'Ophelia by Steven',
                  style: GoogleFonts.nunito(
                    color: Color(0xFFF2F2F2),
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                actions: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Icon(
                      size: 25.sp,
                      Icons.favorite,
                      color: const Color.fromARGB(255, 183, 180, 180),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              Container(
                height: 350.h,
                width: 320.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40.r),
                    color: Colors.white),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40.r),
                      child: Image.network(widget.img,fit: BoxFit.cover,)),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                widget.name,
                style: GoogleFonts.nunito(
                  color: Color(0xFFF2F2F2),
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                widget.sub,
                style: GoogleFonts.nunito(
                  color: Color(0xFF8E8E8E),
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                height: 200.h,
                width: double.infinity,
                child: Container(
                  child: PlayerWidget(player: player),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


