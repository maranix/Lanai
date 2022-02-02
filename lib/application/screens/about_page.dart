import 'package:flutter/material.dart';
import 'package:lanai/application/theme/style.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFEF4),
      appBar: AppBar(
        title: const Text(
          'About',
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
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                text: const TextSpan(
                  style: Style.textStyleAboutPage,
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Note\n\n',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text:
                          'This application was not meant to be used as a Gallery or Wallpaper application. It was mearly meant to be used for educational purpose to learn, grow and as a showcase app.\n\n',
                    ),
                  ],
                ),
              ),
              const Center(
                child: Text(
                  'Made with ❤️ and Flutter',
                  style: Style.textStyleAboutPage,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
