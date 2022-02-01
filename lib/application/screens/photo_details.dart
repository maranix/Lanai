import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:lanai/application/constants/contants.dart';
import 'package:lanai/domain/models/photo_model.dart';

class PhotoDetails extends StatelessWidget {
  const PhotoDetails({Key? key, required this.data}) : super(key: key);

  final PhotoElement data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
          color: Colors.black,
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.share),
            onPressed: () {},
            color: Colors.black,
          ),
        ],
        elevation: 0,
        backgroundColor: const Color(0xFFFFFEF4),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: CachedNetworkImageProvider(data.src.large),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Constants.gap,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Photographer:',
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Photographer Url:',
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Color:',
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data.photographer,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        data.photographerUrl.toString(),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 10,
                        width: 10,
                        color: Color(int.parse(
                            '0xFF${data.avgColor.replaceFirst(RegExp(r'#'), '')}')),
                      )
                    ],
                  ),
                ],
              ),
              Constants.gap,
              Constants.gap,
              Constants.gap,
              const Text('Description:'),
              Constants.gap,
              Text(data.alt),
              Constants.gap,
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Visit on Pexels'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
