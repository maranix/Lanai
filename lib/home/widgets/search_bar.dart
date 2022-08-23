import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({super.key});

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: MediaQuery.of(context).size.height * 0.06,
      child: TextFormField(
        controller: _searchController,
        onFieldSubmitted: (String query) {
          _searchController.clear();
        },
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(8.0),
          prefixIcon: const Icon(Icons.search_rounded),
          hintText: 'Search',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}
