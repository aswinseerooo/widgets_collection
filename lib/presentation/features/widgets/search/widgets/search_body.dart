import 'package:flutter/material.dart';

class SearchBody extends StatefulWidget {
  const SearchBody({super.key});

  @override
  State<SearchBody> createState() => _SearchBodyState();
}

class _SearchBodyState extends State<SearchBody> {
  final SearchController controller = SearchController();

  final List<String> items = [
    "Apple 🍎",
    "Banana 🍌",
    "Orange 🍊",
    "Grapes 🍇",
    "Mango 🥭",
    "Pineapple 🍍",
    "Watermelon 🍉",
  ];

  List<String> filteredItems = [];

  @override
  void initState() {
    super.initState();
    filteredItems = items;
  }

  void filterItems(String query) {
    setState(() {
      filteredItems = items
          .where((item) => item.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          SearchAnchor(
            searchController: controller,
            isFullScreen: false,
            builder: (context, controller) {
              return SearchBar(
                controller: controller,
                hintText: "Search fruits...",
                leading: const Icon(Icons.search),
                onChanged: filterItems,
                onTap: () {
                  controller.openView();
                },
              );
            },

            suggestionsBuilder: (context, controller) {
              final query = controller.text;

              final suggestions = items.where((item) {
                return item.toLowerCase().contains(query.toLowerCase());
              }).toList();

              return suggestions.map((item) {
                return ListTile(
                  title: Text(item),
                  onTap: () {
                    controller.closeView(item);
                  },
                );
              }).toList();
            },
          ),

          const SizedBox(height: 30),

          Expanded(
            child: Text(
              "SearchBar and SearchAnchor are Material 3 widgets used to build "
              "modern search experiences in Flutter.\n\n"
              "SearchBar provides the visual input field where the user can type "
              "their search query.\n\n"
              "SearchAnchor manages the search view and displays suggestions "
              "based on the user's input. It controls when the search suggestions "
              "open and close.\n\n"
              "Together, they help implement features like search suggestions, "
              "recent searches, and filtering results dynamically.",
              style: TextStyle(fontSize: 16, height: 1.6, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
