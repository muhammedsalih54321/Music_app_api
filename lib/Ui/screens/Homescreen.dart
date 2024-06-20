import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app/Bloc/Music/music_bloc.dart';
import 'package:music_app/Repository/Model/Music_model.dart';
import 'package:music_app/Ui/screens/Detailscreen.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  late Musicmodel music;
  @override
  void initState() {
    BlocProvider.of<MusicBloc>(context).add(Fetchmusicevent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A081D),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SafeArea(
                child: ListTile(
              leading: CircleAvatar(
                radius: 25.r,
                backgroundColor: Colors.white,
              ),
              title: Text(
                'Sarwar Jahan',
                style: GoogleFonts.nunito(
                  color: Color(0xFFF2F2F2),
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  height: 0.06,
                  letterSpacing: -0.24,
                ),
              ),
              subtitle: Text(
                'Gold member',
                style: GoogleFonts.nunito(
                  color: Color(0xFFF2F2F2),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  height: 0.10,
                  letterSpacing: -0.24,
                ),
              ),
              trailing: Icon(
                Icons.notifications_none_outlined,
                size: 35.sp,
                color: Color.fromARGB(255, 159, 156, 156),
              ),
            )),
            SizedBox(
              height: 15.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Listen The\nLatest Musics',
                  style: GoogleFonts.nunito(
                    color: Color(0xFFF2F2F2),
                    fontSize: 26.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Container(
                  height: 50.h,
                  width: 160.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.r),
                    color: Color.fromARGB(255, 34, 31, 85),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextFormField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.search),
                            hintText: 'search here',
                            hintStyle: TextStyle(
                                color: const Color.fromARGB(255, 98, 97, 97),
                                fontWeight: FontWeight.w400))),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Text(
              'Recommend for you',
              style: GoogleFonts.nunito(
                color: Color(0xFFF2F2F2),
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            Expanded(
              child: BlocBuilder<MusicBloc, MusicState>(
                builder: (context, state) {
                  if (state is Musicblocloading) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  if (state is Musicblocerror) {
                    return RefreshIndicator(
                      child: SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height * .9,
                          child: const Center(
                              child: Text('Oops something went wrong')),
                        ),
                      ),
                      onRefresh: () async {
                        return BlocProvider.of<MusicBloc>(context)
                            .add(Fetchmusicevent());
                      },
                    );
                  }
                  if (state is Musicblocloaded) {
                    music = BlocProvider.of<MusicBloc>(context).musicmodel;
                    return ListView.builder(
                      itemCount: music.tracks!.hits!.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: GestureDetector(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => Detailscreen(
                                        img: music.tracks!.hits![index].track!
                                            .images!.coverart
                                            .toString(),
                                        name: music
                                            .tracks!.hits![index].track!.title
                                            .toString(),
                                        sub: music.tracks!.hits![index].track!
                                            .subtitle
                                            .toString(),
                                        url: music
                                            .tracks!
                                            .hits![index]
                                            .track!
                                            .hub!
                                            .actions![1].uri
                                           
                                            .toString()))),
                            child: Container(
                              height: 100.h,
                              width: double.infinity,
                              child: Row(
                                children: [
                                  Container(
                                    height: 100.h,
                                    width: 100.w,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.r),
                                        color: Colors.white),
                                    child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(10.r),
                                        child: Image.network(
                                          music.tracks!.hits![index].track!
                                              .images!.coverart
                                              .toString(),
                                          fit: BoxFit.cover,
                                        )),
                                  ),
                                  SizedBox(
                                    width: 20.w,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 13.h,
                                      ),
                                      SizedBox(
                                        height: 26.h,
                                        width: 220.w,
                                        child: Text(
                                          music
                                              .tracks!.hits![index].track!.title
                                              .toString(),
                                          style: GoogleFonts.nunito(
                                            color: Color(0xFFF2F2F2),
                                            fontSize: 17.sp,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      SizedBox(
                                        height: 20.h,
                                        width: 200.w,
                                        child: Text(
                                          music.tracks!.hits![index].track!
                                              .subtitle
                                              .toString(),
                                          style: GoogleFonts.nunito(
                                            color: Color(0xFFF2F2F2),
                                            fontSize: 13.sp,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  } else {
                    return SizedBox();
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
