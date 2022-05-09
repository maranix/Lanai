import 'package:flutter/material.dart';
import 'package:lanai/application/theme/style.dart';

class LegalPage extends StatelessWidget {
  const LegalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFEF4),
      appBar: AppBar(
        title: const Text(
          'Legal',
          style: TextStyle(
            color: Color(0xFF000000),
            fontSize: 45,
          ),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
        toolbarHeight: MediaQuery.of(context).size.height * 0.1,
        elevation: 0,
        backgroundColor: const Color(0xFFFFFEF4),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: RichText(
              text: const TextSpan(
                style: Style.textStyleLegalPage,
                children: <TextSpan>[
                  TextSpan(
                    text: 'Guidelines\n\n',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text:
                        'I have tried my best to adhere to the guidelines of the Pexels API Documentation.\n\n',
                  ),
                  TextSpan(
                    text: 'Including\n\n',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: '1. Mentioning that it is Powered by Pexels API.\n\n',
                  ),
                  TextSpan(
                    text:
                        '2. Details of the Image and Photographers are provided.\n\n',
                  ),
                  TextSpan(
                    text:
                        '3. Photographer Url Links back to the profile on Pexels.\n\n',
                  ),
                  TextSpan(
                    text: '4. Image Url links back to the image on Pexels.\n\n',
                  ),
                  TextSpan(
                    text:
                        '5. No option to download or save images, This is not a Gallery or Wallpaper app.\n\n',
                  ),
                  TextSpan(
                    text:
                        '6. If the user wants to download the image then they must go to the Pexels website and download from there.\n\n',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
