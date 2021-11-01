import 'package:flutter/gestures.dart';
import 'package:jpnews/model/article_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ArticlePage extends StatelessWidget {
  final Article article;

  ArticlePage({this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Samsung Note 9",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.purple[400],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 200.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: (article.urlToImage == null)
                            ? AssetImage('images/back1.jpg')
                            : AssetImage('images/back1.jpg'),
                        fit: BoxFit.cover),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                // Container(
                //   padding: EdgeInsets.all(6.0),
                //   child: Text(
                //     article.source.name != null
                //         ? article.source.name
                //         : 'No source',
                //     style: TextStyle(
                //       color: Colors.purple[400],
                //       fontWeight: FontWeight.bold,
                //       fontSize: 20,
                //     ),
                //   ),
                // ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  'Samsung Note 9',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26.0,
                  ),
                ),
                Text(
                  article.description != null
                      ? 'Memory: 128 GB Built-in, 6 GB RAM\nCamera: 	Dual 12 MP, f/1.5-2.4, 26mm, 1/2.55" + 12 MP, f/2.4, 52mm, 1/3.6", dual pixel PDAF, LED Flash\nBattery: Capacity: (Li-ion Non removable), 4000 mAh'
                      : 'Samsung leads the market with Galaxy Note series, yet another new member 9 is on its way with a hell of looks that are beyond your imaginations lets see what the others have to offer this year, brands like Huawei and LG. Next in line Samsung Galaxy Note 9 got leaked months before launch. The leaked pictures revealed everything, clearly showing the bezels on the sides are almost gone while the legendary edge on sides of Samsungs Galaxy Note 9 is mesmerizing but still you will get some looks of Note 8 in this phone. Stylus Pen is coming with more color options as compare to previous phone. Samsung Galaxy Notes launch is getting closer and it is speculated that this time they will launch it earlier as compared to last year. Galaxy S9 and S9 Plus hit the shelves but now a new beast Galaxy Note 9 by Samsung is going to add more fun in smartphone world because of its next-generation technology. I am talking about the Under screen fingerprint scanner which Samsung Galaxys Note 9 is going to get for itself. It was speculated that devices from 2017 will have this technology but skipped due to uncertain reasons but now Samsung Note 9 acquired it for itself. 6.4 inch screen made up of Super AMOLED material got QHD Plus resolution. Bixby is also improved and now it got 2.0 version for Galaxy Note 9. Face scanning is improved with more accuracy in judging faces to unlock the device. 4000 mAh battery is slightly bigger than its predecessor. The dual camera of Note 9 is consist of 12 MP primary sensor where the front camera is 8 MP. Camera sensor is improved to enhance the quality of images taken at night',
                  style: TextStyle(
                    // fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                // SizedBox(
                //   height: 10,
                // ),
                // Text(
                //   ' ',
                //   style: TextStyle(
                //     fontSize: 13,
                //   ),
                // ),
                SizedBox(
                  height: 10,
                ),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(text: " ", style: TextStyle(color: Colors.black)),
                  TextSpan(
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      text: "Jawan Pakistan Store",
                      recognizer: TapGestureRecognizer()
                        ..onTap = () async {
                          var url = article.url != null
                              ? article.url
                              : 'Breaking News';
                          if (await canLaunch(url)) {
                            await launch(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        }),
                ])),
                SizedBox(
                  height: 10,
                ),
                // Text("Author:"),
                Text(
                  'Samsung',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.blue),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ));
  }
}
