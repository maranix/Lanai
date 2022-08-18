import 'dart:ui';

import 'package:flutter/material.dart';

class PhotoPreview extends StatefulWidget {
  const PhotoPreview({super.key});

  static Route<PhotoPreview> route() {
    return MaterialPageRoute<PhotoPreview>(
      builder: (_) => const PhotoPreview(),
    );
  }

  @override
  State<PhotoPreview> createState() => _PhotoPreviewState();
}

class _PhotoPreviewState extends State<PhotoPreview> {
  bool isHidden = false;

  void toggleIsHidden() {
    setState(() {
      isHidden = !isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            GestureDetector(
              onTap: toggleIsHidden,
              child: const SizedBox.expand(
                child: ColoredBox(color: Colors.greenAccent),
              ),
            ),
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 100),
              child: isHidden
                  ? const SizedBox.shrink()
                  : Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () => Navigator.pop(context),
                          icon: const Icon(Icons.arrow_back_rounded),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.more_vert_rounded),
                        ),
                      ],
                    ),
            ),
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 100),
              child: isHidden
                  ? const SizedBox.shrink()
                  : Align(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.15,
                        width: double.infinity,
                        child: ColoredBox(
                          color: Colors.indigoAccent,
                          child: ClipRect(
                            child: BackdropFilter(
                              filter: ImageFilter.blur(
                                sigmaX: 10,
                                sigmaY: 10,
                              ),
                              child: const Center(
                                child: Text('This is where image info would be shown'),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
