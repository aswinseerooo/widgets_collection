import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoCheckboxBody extends StatefulWidget {
  const CupertinoCheckboxBody({super.key});

  @override
  State<CupertinoCheckboxBody> createState() => _CupertinoCheckboxBodyState();
}

class _CupertinoCheckboxBodyState extends State<CupertinoCheckboxBody> {
  bool singleValue = false;

  final Map<String, bool> multipleValues = {
    "Apple 🍎": false,
    "Rocket 🚀": false,
    "Fire 🔥": false,
  };

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "CupertinoCheckbox is the iOS-style checkbox.\n\n"
            "It supports single and multiple selection "
            "and follows Cupertino design guidelines.",
            style: TextStyle(color: Colors.white, fontSize: 16, height: 1.6),
          ),

          const SizedBox(height: 30),

          CupertinoListSection.insetGrouped(
            backgroundColor: Colors.transparent,
            children: [
              CupertinoListTile(
                backgroundColor: Colors.black,
                title: const Text(
                  "Single Selection Example",
                  style: TextStyle(color: Colors.white),
                ),
                trailing: CupertinoCheckbox(
                  value: singleValue,
                  activeColor: CupertinoColors.systemGreen,
                  checkColor: Colors.white,
                  onChanged: (value) {
                    setState(() {
                      singleValue = value ?? false;
                    });
                  },
                ),
                onTap: () {
                  setState(() {
                    singleValue = !singleValue;
                  });
                },
              ),
            ],
          ),

          const SizedBox(height: 30),

          const Text(
            "Multiple Selection",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),

          const SizedBox(height: 10),

          CupertinoListSection.insetGrouped(
            backgroundColor: Colors.transparent,
            children: multipleValues.keys.map((key) {
              return CupertinoListTile(
                backgroundColor: Colors.black,
                title: Text(key, style: const TextStyle(color: Colors.white)),
                trailing: CupertinoCheckbox(
                  value: multipleValues[key],
                  activeColor: CupertinoColors.systemBlue,
                  checkColor: Colors.white,
                  onChanged: (value) {
                    setState(() {
                      multipleValues[key] = value ?? false;
                    });
                  },
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
