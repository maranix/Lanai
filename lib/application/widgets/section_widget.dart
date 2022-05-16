import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:lanai/application/screens/see_all.dart';
import 'package:lanai/application/utils/section_mixin.dart';

class SectionWidget extends StatelessWidget with SectionMixIn {
  const SectionWidget({Key? key, required this.stateNotifier})
      : super(key: key);

  final dynamic stateNotifier;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                getSectionString(stateNotifier),
                style: const TextStyle(fontSize: 45),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SeeAll(
                          data: stateNotifier,
                          section: getSectionString(stateNotifier)),
                    ),
                  );
                },
                child: const Text(
                  'See All',
                  style: TextStyle(fontSize: 20, color: Colors.lightBlue),
                ),
              )
            ],
          ),
        ),
        StateNotifierBuilder<List>(
          stateNotifier: stateNotifier,
          builder: (context, state, child) => state.isNotEmpty || state == []
              ? Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.45,
                    child: LayoutBuilder(builder: (context, constraints) {
                      if (constraints.maxWidth > 1200) {
                        return GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 15,
                            crossAxisSpacing: 10,
                          ),
                          itemBuilder: (context, index) {
                            return state[index].map(
                              data: (data) => getGridWidget(data, index),
                              error: (error) => Text(error.error.toString()),
                              loading: (value) {
                                return Text('$value');
                              },
                            );
                          },
                          scrollDirection: Axis.horizontal,
                          itemCount: state.length > 1 ? 20 : 0,
                        );
                      }
                      return GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 15,
                          crossAxisSpacing: 10,
                        ),
                        itemBuilder: (context, index) {
                          return state[index].map(
                            data: (data) => getGridWidget(data, index),
                            error: (error) => Text(error.error.toString()),
                            loading: (value) {
                              return Text('$value');
                            },
                          );
                        },
                        scrollDirection: Axis.horizontal,
                        itemCount: state.length > 1
                            ? MediaQuery.of(context).orientation ==
                                    Orientation.landscape
                                ? 16
                                : 6
                            : 0,
                      );
                    }),
                  ),
                )
              : const Center(
                  child: CircularProgressIndicator.adaptive(),
                ),
        ),
      ],
    );
  }
}
