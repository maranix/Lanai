import 'package:flutter/material.dart';
import 'package:lanai/home/widgets/widgets.dart';

/// {@template home_view}
/// Define your HomePage body/ui structure here.
/// {@endtemplate}
class HomeView extends StatelessWidget {
  /// {@macro home_view}
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
              child: UpperSection(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: Text(
                'Categories',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Expanded(
              child: CategoriesCarousel(),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
