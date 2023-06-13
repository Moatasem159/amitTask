import 'package:amit_task/tasks/task2/details_screen.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 40,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hola,sayef!",style: GoogleFonts.inter(
                          fontSize: 25
                        )),
                        const SizedBox(height: 10,),
                         Text("What do you want learn today?",
                            style: GoogleFonts.inter(
                                fontSize: 15,
                              color: Colors.grey[600]
                            )),
                      ],
                    ),
                    const Spacer(),
                    const Icon(Icons.person_pin,size: 60,)
                  ],
                ),
              ),
              const SizedBox(height: 40,),
              Container(
                width: 320,
                height: 60,
                padding: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Row(
                  children: [
                    Text("Graphic design",
                        style: GoogleFonts.inter(
                            fontSize: 15,
                            color: Colors.grey[800]
                        )),
                    const Spacer(),
                    const Icon(Icons.search,size: 30,)
                  ],
                ),
              ),
              const SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Our popular",
                        style: GoogleFonts.inter(
                          fontSize:20
                        )),
                        const SizedBox(height: 5,),
                        Text("Category in platform",
                        style: GoogleFonts.inter(
                          fontSize:20
                        )),
                      ],
                    ),
                    const Spacer(),
                    Text("read more",style:GoogleFonts.inter(),)
                  ],
                ),
              ),
              const SizedBox(height: 15,),
              SizedBox(
                height:150 ,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const DetailsScreen(),)
                      );
                    },
                    child: Container(
                    width: 150,
                    height:150,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        image: const DecorationImage(image:
                        NetworkImage("https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/pf-s121-td-3866-mockup_1.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=170c2c435ad92266cd9eba5733ef897d"),fit: BoxFit.cover)
                    ),
                    child:Text("interior design",
                      style: GoogleFonts.inter(
                          color: Colors.black,
                          height:7,
                          fontSize:15
                      ),) ,
                ),
                  ),),
              ),
              const SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Most Watching",
                            style: GoogleFonts.inter(
                                fontSize:20
                            )),
                        const SizedBox(height: 5,),
                        Text("Category in month",
                            style: GoogleFonts.inter(
                                fontSize:20
                            )),
                      ],
                    ),
                    const Spacer(),
                    Text("read more",style:GoogleFonts.inter(),)
                  ],
                ),
              ),
              const SizedBox(height: 15,),
              SizedBox(
                height: 250,
                child: ListView.builder(
                   itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) => Container(
                    margin: const EdgeInsets.symmetric(horizontal:10),
                  width: 180,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 180,
                        height:150,
                        alignment: Alignment.topLeft,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            image: const DecorationImage(image:
                            NetworkImage("https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/pf-s121-td-3866-mockup_1.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=170c2c435ad92266cd9eba5733ef897d"),fit: BoxFit.cover)
                        ),
                        child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5,vertical: 7),
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
                      ) ,
                      ),
                      AutoSizeText("html,CSS for noob and nerds!",
                        style: GoogleFonts.inter(
                            fontSize: 15
                        ),),
                      AutoSizeText("Sayef Mamud,PixelCo",
                        maxLines: 1,
                        style: GoogleFonts.inter(
                            fontSize: 8,
                            color: Colors.grey
                        ),),
                      const SizedBox(height: 5,),
                      Row(
                        children: [
                          Text("4.0",style: GoogleFonts.inter(
                              color: Colors.grey,
                              fontSize: 12
                          ),),
                          const SizedBox(width: 4,),
                          const Icon(Icons.star_rate_rounded,color: Colors.yellow,),
                          const Icon(Icons.star_rate_rounded,color: Colors.yellow,),
                          const Icon(Icons.star_rate_rounded,color: Colors.yellow,),
                          const Icon(Icons.star_rate_rounded,color: Colors.yellow,),
                          const Spacer(),
                          Text("(4096)",style: GoogleFonts.inter(
                              color: Colors.grey,
                              fontSize: 12))
                        ],
                      )

                    ],
                  ),
                ),),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Our top popular",
                            style: GoogleFonts.inter(
                                fontSize:20
                            )),
                        const SizedBox(height: 5,),
                        Text("Teachers this month",
                            style: GoogleFonts.inter(
                                fontSize:20
                            )),
                      ],
                    ),
                    const Spacer(),
                    Text("read more",style:GoogleFonts.inter(),)
                  ],
                ),
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 190,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (context, index) => Container(
                  margin: const EdgeInsets.symmetric(horizontal:10),
                  width: 180,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 180,
                        height:150,
                        alignment: Alignment.topLeft,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            image: const DecorationImage(image:
                            NetworkImage("https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/pf-s121-td-3866-mockup_1.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=170c2c435ad92266cd9eba5733ef897d"),fit: BoxFit.cover)
                        ),
                      ),
                      AutoSizeText("Sayef Mahmoud",
                        style: GoogleFonts.inter(
                            fontSize: 15
                        ),),
                      const SizedBox(height: 2,),
                      AutoSizeText("Programmer",
                        maxLines: 1,
                        style: GoogleFonts.inter(
                            fontSize: 8,
                            color: Colors.grey
                        ),),
                    ],
                  ),
                ),),
              ),
              const SizedBox(height: 15),
              Container(
                width: 330,
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 25),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  children: [
                    AutoSizeText("Start Your free trial to enhance your creative journey!",
                      style: GoogleFonts.inter(
                        fontSize: 22
                      ),
                        textAlign: TextAlign.center,
                        maxLines: 2,),
                    TextButton(onPressed: (){},
                        child:Text("Get free trial",style:GoogleFonts.inter()))
                  ],
                ),
              ),
              const SizedBox(height: 40,)
            ],
          ),
        ),
      ),
    );
  }
}
