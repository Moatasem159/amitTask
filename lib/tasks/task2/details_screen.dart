import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_outlined,color: Colors.black),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text("Details",style: GoogleFonts.inter(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 15
        )),
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.bookmark_border_rounded,color: Colors.black,),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment:CrossAxisAlignment.start,
        children: [
          Container(
      height: 200,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
          image:NetworkImage("https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/pf-s121-td-3866-mockup_1.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=170c2c435ad92266cd9eba5733ef897d"),fit: BoxFit.cover)
              )
            ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15,vertical: 7),
            padding: const EdgeInsets.symmetric(horizontal: 17,vertical:2),
            decoration: BoxDecoration(
                color: Colors.orangeAccent,
                borderRadius: BorderRadius.circular(5)),
            child: Text("hot",
              style: GoogleFonts.inter(
                  color: Colors.black,
                  height:0,
                  fontSize:15
              ),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: NetworkImage("https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/pf-s121-td-3866-mockup_1.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=170c2c435ad92266cd9eba5733ef897d"),
                ),
                const SizedBox(width: 5,),
                Text("Anny Morriarty",style: GoogleFonts.inter(),)
              ],
            ),
          ),
          Padding(
           padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
           child: AutoSizeText(
             "Comic drawing essential for everyone!",
             maxLines: 2,
             style: GoogleFonts.inter(
               fontWeight: FontWeight.bold,
             fontSize: 25
           ),),
         ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Column(children: [
              Row(
                children: [
                  Row(
                    children: [
                      const Icon(Icons.watch_later_outlined,color: Colors.grey,),
                      const SizedBox(width: 5,),
                      Text("1.hour 30 min",style:GoogleFonts.inter(
                        color: Colors.grey
                      ),),
                    ],
                  ),
                  const SizedBox(width: 25,),
                  Row(
                    children: [
                      const Icon(Icons.video_call_sharp,color: Colors.grey,),
                      const SizedBox(width: 5,),
                      Text("12 lessons",style:GoogleFonts.inter(
                        color: Colors.grey
                      ),),
                    ],
                  ),


                ],
              ),
              const SizedBox(height: 10,),
              Row(
                children: [
                  Row(
                    children: [
                      const Icon(Icons.star_border_outlined,color: Colors.grey,),
                      const SizedBox(width: 5,),
                      Text("4.7 (753)",style:GoogleFonts.inter(
                        color: Colors.grey
                      ),),
                    ],
                  ),
                  const SizedBox(width: 55,),
                  Row(
                    children: [
                      const Icon(Icons.person,color: Colors.grey,),
                      const SizedBox(width: 5,),
                      Text("2k Students",style:GoogleFonts.inter(
                        color: Colors.grey
                      ),),
                    ],
                  ),


                ],
              ),
            ],),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: AutoSizeText("It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English",
            maxLines: 8,
            style: GoogleFonts.inter(fontSize:22,height: 1.1),),
          )
        ],
      ),
    ),
  );
 }
}
