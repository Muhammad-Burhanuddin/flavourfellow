import 'package:flavour_fellow/utils/colors.dart';
import 'package:flutter/material.dart';

class Perferences extends StatefulWidget {
  const Perferences({super.key});

  @override
  State<Perferences> createState() => _PerferencesState();
}

class _PerferencesState extends State<Perferences> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.tertiary,
        title: Text("Preferences"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            Text(
              'In our food favor fellow app, user preferences play a pivotal role in enhancing their experience and satisfaction. We understand that everyone has unique tastes and dietary requirements, so providing a personalized approach to preferences is paramount. Within our app, users can easily set their food preferences by specifying their favorite cuisines, dietary restrictions, and preferred ingredients. This allows us to tailor their recommendations and search results to align with their individual tastes and needs, ensuring they discover new dishes they ll love while also accommodating any dietary restrictions they may have.',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        ),
      ),
    );
  }
}
