import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoSwitchBody extends StatefulWidget {
  const CupertinoSwitchBody({super.key});

  @override
  State<CupertinoSwitchBody> createState() => _CupertinoSwitchBodyState();
}

class _CupertinoSwitchBodyState extends State<CupertinoSwitchBody> {
  bool wifiEnabled = true;

  final Map<String, bool> settings = {
    "Notifications 🔔": true,
    "Dark Mode 🌙": false,
    "Location 📍": true,
  };

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "CupertinoSwitch is the iOS-style toggle switch.\n\n"
            "It is commonly used for enabling/disabling settings "
            "in iOS apps.",
            style: TextStyle(color: Colors.white, fontSize: 16, height: 1.6),
          ),

          const SizedBox(height: 30),

          CupertinoListSection.insetGrouped(
            backgroundColor: Colors.transparent,
            children: [
              CupertinoListTile(
                backgroundColor: Colors.black,
                title: const Text(
                  "Wi-Fi",
                  style: TextStyle(color: Colors.white),
                ),
                trailing: CupertinoSwitch(
                  value: wifiEnabled,
                  activeTrackColor: CupertinoColors.systemGreen,
                  thumbColor: Colors.white,
                  onChanged: (value) {
                    setState(() {
                      wifiEnabled = value;
                    });
                  },
                ),
              ),
            ],
          ),

          const SizedBox(height: 30),

          const Text(
            "Multiple Settings",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),

          const SizedBox(height: 10),

          CupertinoListSection.insetGrouped(
            backgroundColor: Colors.transparent,
            children: settings.keys.map((key) {
              return CupertinoListTile(
                backgroundColor: Colors.black,
                title: Text(key, style: const TextStyle(color: Colors.white)),
                trailing: CupertinoSwitch(
                  value: settings[key] ?? false,
                  activeTrackColor: CupertinoColors.systemBlue,
                  thumbColor: Colors.white,
                  onChanged: (value) {
                    setState(() {
                      settings[key] = value;
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
