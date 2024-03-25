import 'package:flavour_fellow/utils/colors.dart';
import 'package:flutter/material.dart';

class HelpCenter extends StatefulWidget {
  const HelpCenter({super.key});

  @override
  State<HelpCenter> createState() => _HelpCenterState();
}

class _HelpCenterState extends State<HelpCenter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.5,
        centerTitle: true,
        title: const Text("How Can I Help You?",
            style: TextStyle(color: Colors.black, fontSize: 18)),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "How can i help you?",
                style: TextStyle(
                    fontSize: 22,
                    color: AppColors.tertiary,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "\u2022 Note: Lorem Ipsum is simply dummy text of the printing andry's standard dummy text ever since thcimen book.",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ExpansionTile(
                collapsedIconColor: AppColors.tertiary,
                iconColor: AppColors.tertiary,
                title: Text(
                  'Get help with my orders',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
                leading: Icon(
                  Icons.shopping_bag_outlined,
                  size: 30,
                ),
                children: <Widget>[
                  ListTile(
                    title: const Text(
                      ' Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                  )
                ],
              ),
              ExpansionTile(
                collapsedIconColor: AppColors.tertiary,
                iconColor: AppColors.tertiary,
                title: Text(
                  'Im having trouble with my account',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
                leading: Icon(
                  Icons.account_box_outlined,
                  size: 30,
                ),
                children: <Widget>[
                  ListTile(
                    title: const Text(
                      ' Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                  )
                ],
              ),
              ExpansionTile(
                collapsedIconColor: AppColors.tertiary,
                iconColor: AppColors.tertiary,
                title: Text(
                  'My Support Request',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
                leading: Icon(
                  Icons.email_outlined,
                  size: 30,
                ),
                children: <Widget>[
                  ListTile(
                    title: const Text(
                      ' Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                  )
                ],
              ),
              ExpansionTile(
                collapsedIconColor: AppColors.tertiary,
                iconColor: AppColors.tertiary,
                title: Text(
                  'My Account',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
                leading: Icon(
                  Icons.account_circle_outlined,
                  size: 30,
                ),
                children: <Widget>[
                  ListTile(
                    title: const Text(
                      ' Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                  )
                ],
              ),
              ExpansionTile(
                collapsedIconColor: AppColors.tertiary,
                iconColor: AppColors.tertiary,
                title: Text(
                  'Vouchers and Rewards',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
                leading: Icon(
                  Icons.card_giftcard_outlined,
                  size: 30,
                ),
                children: <Widget>[
                  ListTile(
                    title: const Text(
                      ' Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                  )
                ],
              ),
              ExpansionTile(
                collapsedIconColor: AppColors.tertiary,
                iconColor: AppColors.tertiary,
                title: Text(
                  'FAQs',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
                leading: Icon(
                  Icons.list_alt,
                  size: 30,
                ),
                children: <Widget>[
                  ListTile(
                    title: const Text(
                      ' Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
