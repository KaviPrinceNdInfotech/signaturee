import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:signature/constant/colors.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

class WebsitePage extends StatelessWidget {
  WebsitePage({Key? key}) : super(key: key);
  final List<String> images = [
    "https://c.tenor.com/gQqanko7otkAAAAd/our-earth-nature.gif",
    "https://thumbs.gfycat.com/FlickeringUnpleasantArgentineruddyduck-size_restricted.gif",
    "https://thumbs.gfycat.com/NiftyElectricBlackfly-size_restricted.gif",
    "https://images.unsplash.com/photo-1495365200479-c4ed1d35e1aa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80",
    "https://images.unsplash.com/photo-1542314831-068cd1dbfeeb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80",
    "https://images.unsplash.com/photo-1445019980597-93fa8acb246c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1748&q=80",
    "https://images.unsplash.com/photo-1487017159836-4e23ece2e4cf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1742&q=80",
  ];
  _launchURLBrowser() async {
    var url = Uri.parse("tel:+91 88888888888");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURLApp() async {
    var url = Uri.parse("https://www.facebook.com/SignatureClubResort/");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.themecolors,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: AppColors.themecolors,
        title: Text(
          'Signature Club',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 14.sp,
          ),
        ),
      ),
      body: Column(
        children: [
          InkWell(
            onTap: () {
              launch('https://www.facebook.com/SignatureClubResort/');
              //_launchURLApp();
            },
            child: Container(
              height: 7.h,
              width: 100.w,
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: PhysicalModel(
                      elevation: 2,
                      color: Colors.transparent,
                      //shadowColor: Colors.white,
                      borderRadius: BorderRadius.circular(3),
                      child: Container(
                        height: 3.h,
                        width: 6.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          //shape: BoxShape.rectangle,
                          color: AppColors.themecolors,
                          image: DecorationImage(
                            image: AssetImage('lib/assets/fb.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: PhysicalModel(
                      elevation: 2,
                      color: Colors.white,
                      shadowColor: Colors.white,
                      borderRadius: BorderRadius.circular(3),
                      child: InkWell(
                        onTap: () {
                          launch('https://mobile.twitter.com/sigclublex');
                          //launch('https://protocoderspoint.com/');
                        },
                        child: Container(
                          height: 3.h,
                          width: 6.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            //shape: BoxShape.rectangle,
                            color: AppColors.themecolors,
                            image: DecorationImage(
                              image: AssetImage('lib/assets/twitter.jpeg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: PhysicalModel(
                      elevation: 2,
                      color: Colors.white,
                      shadowColor: Colors.white,
                      borderRadius: BorderRadius.circular(3),
                      child: InkWell(
                        onTap: () {
                          launch(
                              'https://www.instagram.com/signatureclubresort/?hl=en'
                              //'mailto:rajatrrpalankar@gmail.com?subject=This is Subject Title&body=This is Body of Email'
                              );
                        },
                        child: Container(
                          height: 3.h,
                          width: 6.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            //shape: BoxShape.rectangle,
                            color: AppColors.themecolors,
                            image: DecorationImage(
                              image: AssetImage('lib/assets/insta.jpeg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: PhysicalModel(
                      elevation: 2,
                      color: Colors.white,
                      shadowColor: Colors.white,
                      borderRadius: BorderRadius.circular(3),
                      child: InkWell(
                        onTap: () {
                          launch(
                              'https://www.linkedin.com/in/signature-resorts-8ba080175/?original_referer=https%3A%2F%2Fwww%2Egoogle%2Ecom%2F&originalSubdomain=in'
                              //'mailto:rajatrrpalankar@gmail.com?subject=This is Subject Title&body=This is Body of Email'
                              );
                        },
                        child: Container(
                          height: 3.h,
                          width: 6.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            //shape: BoxShape.rectangle,
                            color: AppColors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Image.asset(
                                'lib/assets/linkedin-icon-black-linkedin-logo-11563284124worqz8j9jc.png'),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: PhysicalModel(
                      elevation: 2,
                      color: Colors.white,
                      shadowColor: Colors.white,
                      borderRadius: BorderRadius.circular(3),
                      child: InkWell(
                        onTap: () {
                          launch('https://www.youtube.com/watch?v=iCpOAK1VJnA'
                              //'mailto:rajatrrpalankar@gmail.com?subject=This is Subject Title&body=This is Body of Email'
                              );
                        },
                        child: Container(
                          height: 3.h,
                          width: 6.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            // image: DecorationImage(
                            //     image: AssetImage('lib/assets/youtube.png'),
                            //     fit: BoxFit.fill),
                            //shape: BoxShape.rectangle,
                            color: AppColors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Image.asset('lib/assets/youtube.png'),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: PhysicalModel(
                      elevation: 2,
                      color: Colors.white,
                      shadowColor: Colors.white,
                      borderRadius: BorderRadius.circular(3),
                      child: InkWell(
                        onTap: () {
                          launch(
                              'https://in.pinterest.com/signatureclubresorts/_saved/'
                              //'mailto:rajatrrpalankar@gmail.com?subject=This is Subject Title&body=This is Body of Email'
                              );
                          //https://in.pinterest.com/signatureclubresorts/_saved/
                        },
                        child: Container(
                          height: 3.h,
                          width: 6.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            //shape: BoxShape.rectangle,
                            color: AppColors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: Image.asset('lib/assets/pitret2.png'),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 17.h,
            width: 100.w,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 15.h,
                    width: 60.w,
                    color: Colors.white,
                    child: Image.asset('lib/assets/logo_signature.png'),
                  ),
                  Container(
                    height: 5.h,
                    width: 10.w,
                    decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 63.5.h,
            child: ListView.builder(
                itemCount: images.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Container(
                      height: 30.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                        //border: Border.all(color: Colors.red),
                        color: Colors.purple,
                        image: DecorationImage(
                            image: NetworkImage(
                              images[index],
                            ),
                            fit: BoxFit.fill),
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
