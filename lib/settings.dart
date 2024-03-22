import 'package:flavour_fellow/utils/colors.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.5,
        title: const Text("Settings"),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Language",
                          style: TextStyle(
                              color: AppColors.secondary, fontSize: 16),
                        ),
                        Text(
                          "Edit",
                          style: TextStyle(
                              color: AppColors.tertiary,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "English",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            newMethod(),
            SizedBox(
              height: 20,
            ),
            newMethod(),
            SizedBox(
              height: 20,
            ),
            newMethod(),
          ],
        ),
      ),
    );
  }

  Container newMethod() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Checkbox(
              activeColor: AppColors.tertiary,
              value: isChecked,
              onChanged: (bool? value) {
                // This is where we update the state when the checkbox is tapped
                setState(() {
                  isChecked = value!;
                });
              },
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Receive Push Ntifications",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}
