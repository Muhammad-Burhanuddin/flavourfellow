import 'package:flavour_fellow/findyourtable.dart';
import 'package:flavour_fellow/helpcenter.dart';
import 'package:flavour_fellow/invitefriend.dart';
import 'package:flavour_fellow/loyaltypoints.dart';
import 'package:flavour_fellow/perferences.dart';
import 'package:flavour_fellow/settings.dart';
import 'package:flavour_fellow/signin.dart';
import 'package:flavour_fellow/utils/colors.dart';
import 'package:flavour_fellow/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final _advancedDrawerController = AdvancedDrawerController();
  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
        backdrop: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.white, Colors.white],
            ),
          ),
        ),
        controller: _advancedDrawerController,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 300),
        animateChildDecoration: true,
        rtlOpening: false,
        // openScale: 1.0,
        disabledGestures: false,
        childDecoration: const BoxDecoration(
          // NOTICE: Uncomment if you want to add shadow behind the page.
          // Keep in mind that it may cause animation jerks.
          // boxShadow: <BoxShadow>[
          //   BoxShadow(
          //     color: Colors.black12,
          //     blurRadius: 0.0,
          //   ),
          // ],
          borderRadius: const BorderRadius.all(Radius.circular(16)),
        ),
        drawer: SafeArea(
          child: Container(
            child: ListTileTheme(
              textColor: Colors.black,
              iconColor: AppColors.tertiary,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "Hafsa Shakeel",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const MainPage(),
                        ),
                      );
                    },
                    leading: Icon(Icons.home),
                    title: Text('Home'),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const LoyaltyPoint(),
                        ),
                      );
                    },
                    leading: Icon(Icons.power_input),
                    title: Text('flavour fellow loyalty points'),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const InviteFriend(),
                        ),
                      );
                    },
                    leading: Icon(Icons.people),
                    title: Text('Invite friends'),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const FindYourTable(),
                        ),
                      );
                    },
                    leading: Icon(Icons.table_bar_outlined),
                    title: Text('Table reservations'),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const Perferences(),
                        ),
                      );
                    },
                    leading: Icon(Icons.room_preferences_outlined),
                    title: Text('Preferences'),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const HelpCenter(),
                        ),
                      );
                    },
                    leading: Icon(Icons.help_center_outlined),
                    title: Text('Help Center'),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const Settings(),
                        ),
                      );
                    },
                    leading: Icon(Icons.settings),
                    title: Text('Settings'),
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.of(context).pop(
                        MaterialPageRoute(
                          builder: (context) => const SignIn(),
                        ),
                      );
                    },
                    leading: Icon(
                      Icons.logout_outlined,
                      color: Colors.red,
                    ),
                    title: Text('Logout'),
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
        ),
        // drawer: Drawer(
        //   // Add a ListView to the drawer. This ensures the user can scroll
        //   // through the options in the drawer if there isn't enough vertical
        //   // space to fit everything.
        //   child: ListView(
        //     // Important: Remove any padding from the ListView.
        //     padding: EdgeInsets.zero,
        //     children: [
        //       DrawerHeader(
        //         decoration: BoxDecoration(
        //           color: AppColors.secondary,
        //         ),
        //         child: Text(
        //           'Flavour Fellow',
        //           // ignore: unnecessary_const
        //           style: TextStyle(color: AppColors.tertiary),
        //         ),
        //       ),
        //       drawerlistobject("Orders"),
        //       // drawerlistobject("About Me", MyRoutes.about, context),
        //       // drawerlistobject("Interests", MyRoutes.interests, context),
        //       drawerlistobject("Reservations"),
        //       drawerlistobject("Profile"),
        //       SizedBox(
        //         height: 50,
        //       ),
        //     ],
        //   ),
        // ),
        child: Scaffold(
          floatingActionButton: MyFloatingActionButton(),
          appBar: AppBar(
            leading: IconButton(
              onPressed: _handleMenuButtonPressed,
              icon: ValueListenableBuilder<AdvancedDrawerValue>(
                valueListenable: _advancedDrawerController,
                builder: (_, value, __) {
                  return AnimatedSwitcher(
                    duration: Duration(milliseconds: 250),
                    child: Icon(
                      value.visible ? Icons.clear : Icons.menu,
                      key: ValueKey<bool>(value.visible),
                    ),
                  );
                },
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.border_all_rounded),
              )
            ],
            centerTitle: true,
            title: Text(
              'Flavour Fellow',
              textAlign: TextAlign.center,
              style: GoogleFonts.markaziText(fontSize: 30),
            ),
          ),
          body: Container(
            height: h,
            color: AppColors.primary,
            child: Column(
              children: [
                Expanded(
                  flex: 4,
                  child: Container(
                    width: w,
                    color: AppColors.secondary,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RichText(
                            text: TextSpan(
                              text: 'S&S Cheese Steaks',
                              style: GoogleFonts.markaziText(
                                  fontSize: 40, color: AppColors.tertiary),
                              children: [
                                TextSpan(text: '\n'),
                                TextSpan(
                                  text: 'Arlington',
                                  style: GoogleFonts.markaziText(
                                      fontSize: 30, color: AppColors.primary),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Container(
                            width: w,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: Padding(
                                    padding: const EdgeInsets.all(1.0),
                                    child: Text(
                                      description,
                                      style: GoogleFonts.karla(
                                          fontSize: 16,
                                          color: AppColors.primary),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Image(
                                    image: AssetImage(steak),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Container(
                            height: 35,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(
                                      AppColors.tertiary)),
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => const FindYourTable(),
                                  ),
                                );
                              },
                              child: Text(
                                'Reserve a table',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                      width: w,
                      color: AppColors.primary,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'ORDER FOR DELIVERY!',
                              style: GoogleFonts.karla(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                            child: SingleChildScrollView(
                              physics: BouncingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  Chip(
                                    shape: StadiumBorder(),
                                    color: MaterialStateProperty.all(
                                        Color.fromRGBO(237, 229, 238, 1)),
                                    label: Text(
                                      'Lunch',
                                      style: GoogleFonts.karla(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    side: BorderSide.none,
                                  ),
                                  Chip(
                                    shape: StadiumBorder(),
                                    color: MaterialStateProperty.all(
                                        Color.fromRGBO(237, 229, 238, 1)),
                                    label: Text(
                                      'Mains',
                                      style: GoogleFonts.karla(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    side: BorderSide.none,
                                  ),
                                  Chip(
                                    shape: StadiumBorder(),
                                    color: MaterialStateProperty.all(
                                        Color.fromRGBO(237, 229, 238, 1)),
                                    label: Text(
                                      'Desserts',
                                      style: GoogleFonts.karla(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    side: BorderSide.none,
                                  ),
                                  Chip(
                                    shape: StadiumBorder(),
                                    color: MaterialStateProperty.all(
                                        Color.fromRGBO(237, 229, 238, 1)),
                                    label: Text(
                                      'A La Carte',
                                      style: GoogleFonts.karla(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    side: BorderSide.none,
                                  ),
                                  Chip(
                                    shape: StadiumBorder(),
                                    color: MaterialStateProperty.all(
                                        Color.fromRGBO(237, 229, 238, 1)),
                                    label: Text(
                                      'Appetizers',
                                      style: GoogleFonts.karla(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    side: BorderSide.none,
                                  ),
                                  Chip(
                                    shape: StadiumBorder(),
                                    color: MaterialStateProperty.all(
                                        Color.fromRGBO(237, 229, 238, 1)),
                                    label: Text(
                                      'Specials',
                                      style: GoogleFonts.karla(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    side: BorderSide.none,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: Container(
                              child: ListView(
                                physics: BouncingScrollPhysics(),
                                shrinkWrap: true,
                                children: [
                                  Container(
                                    width: w,
                                    height: 100,
                                    color: AppColors.primary,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          flex: 5,
                                          child: Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Cheese and Steak',
                                                  style: GoogleFonts.karla(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(
                                                  'Seasoned Steak with Mayo and Swiss Cheese',
                                                  style: GoogleFonts.karla(
                                                      fontSize: 12),
                                                ),
                                                Text(
                                                  r'$ 9.99',
                                                  style: GoogleFonts.karla(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                            flex: 1,
                                            child: Image(
                                                image: AssetImage(cheesesteak)))
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: w,
                                    height: 100,
                                    color: AppColors.primary,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          flex: 5,
                                          child: Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Zinger',
                                                  style: GoogleFonts.karla(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(
                                                  'Freshly hand battered Chicken Breast, coleslaw, house sauce, Swiss cheese',
                                                  style: GoogleFonts.karla(
                                                      fontSize: 12),
                                                ),
                                                Text(
                                                  r'$ 10.99',
                                                  style: GoogleFonts.karla(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                            flex: 1,
                                            child: Image(
                                                image: AssetImage(zinger)))
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: w,
                                    height: 100,
                                    color: AppColors.primary,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          flex: 5,
                                          child: Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Philly Cheese Fries',
                                                  style: GoogleFonts.karla(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(
                                                  'Scumptuous Cheese Fries with fresh seasoning and Ranch',
                                                  style: GoogleFonts.karla(
                                                      fontSize: 12),
                                                ),
                                                Text(
                                                  r'$ 7.99',
                                                  style: GoogleFonts.karla(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                            flex: 1,
                                            child: Image(
                                                image: AssetImage(phillyfries)))
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: w,
                                    height: 100,
                                    color: AppColors.primary,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          flex: 5,
                                          child: Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Tater Tots',
                                                  style: GoogleFonts.karla(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(
                                                  'Special Sides',
                                                  style: GoogleFonts.karla(
                                                      fontSize: 12),
                                                ),
                                                Text(
                                                  r'$ 2.99',
                                                  style: GoogleFonts.karla(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                            flex: 1,
                                            child: Image(
                                                image: AssetImage(tatertots)))
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }

  void _handleMenuButtonPressed() {
    // NOTICE: Manage Advanced Drawer state through the Controller.
    // _advancedDrawerController.value = AdvancedDrawerValue.visible();
    _advancedDrawerController.showDrawer();
  }
}

Widget drawerlistobject(String name) {
  return ListTile(
    title: Text(name),
    onTap: () {},
  );
}

class MyFloatingActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        _showBottomSheet(context);
      },
      child: Icon(Icons.chat_outlined),
      backgroundColor: AppColors.tertiary,
    );
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Fellow',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16.0),
                _buildChatMessages(),
                _buildTextInputArea(),
                SizedBox(height: 16.0),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildChatMessages() {
    return Container(
      height: 200.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.grey[200],
      ),
      padding: EdgeInsets.all(16.0),
      child: Text('Hey There, How can I help You?'),
    );
  }

  Widget _buildTextInputArea() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Type your message...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
          ),
          SizedBox(width: 8.0),
          IconButton(
            icon: Icon(Icons.send),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
