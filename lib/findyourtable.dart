// Import statements...

import 'package:flavour_fellow/utils/colors.dart';
import 'package:flavour_fellow/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// Import statements...

late bool _value1;

late bool _value2;

late bool _value3;

class FindYourTable extends StatefulWidget {
  const FindYourTable({Key? key}) : super(key: key);

  @override
  State<FindYourTable> createState() => _FindYourTableState();
}

class _FindYourTableState extends State<FindYourTable> {
  late TextEditingController dateInput = TextEditingController();
  int numberOfGuests = 1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _value1 = false;
    _value2 = false;
    _value3 = false;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: MyFloatingActionButton(),
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
      appBar: AppBar(
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
        color: AppColors.hover,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            Text(
              'Find Your Table',
              style: GoogleFonts.markaziText(
                  fontSize: 45, fontWeight: FontWeight.bold),
            ),
            Spacer(),
            SizedBox(
              width: w,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Center(
                        child: Text(
                      'Date and Time',
                      style: GoogleFonts.karla(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    )),
                    Container(
                      width: 220,
                      height: 45,
                      padding: EdgeInsets.fromLTRB(15, 0, 20, 0),
                      child: Center(
                        child: TextFormField(
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(7, 20, 7, 0),
                            prefixIcon: Icon(Icons.calendar_month_outlined),
                            suffixIcon: Icon(Icons.expand_circle_down),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          controller: dateInput,
                          readOnly: true,
                          onTap: () async {
                            DateTime? pickedDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(1950),
                                initialDatePickerMode: DatePickerMode.day,
                                //DateTime.now() - not to allow to choose before today.
                                lastDate: DateTime(2100));

                            final TimeOfDay? selectedTime =
                                await showTimePicker(
                              context: context,
                              initialTime: TimeOfDay.fromDateTime(pickedDate!),
                            );

                            DateTime newdate = DateTime(
                                pickedDate.year,
                                pickedDate.month,
                                pickedDate.day,
                                selectedTime!.hour,
                                selectedTime.minute);

                            if (pickedDate != null) {
                              setState(() {
                                dateInput.text = newdate
                                    .toString(); //set output date to TextField value.
                              });
                            } else {}
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
            SizedBox(
              width: w,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Center(
                        child: Text(
                      'Guests',
                      style: GoogleFonts.karla(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    )),
                    Container(
                      width: 220,
                      height: 45,
                      padding: EdgeInsets.fromLTRB(15, 0, 20, 0),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Center(
                              child: TextFormField(
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                                controller: TextEditingController(
                                  text: numberOfGuests.toString(),
                                ),
                                readOnly: true,
                                decoration: InputDecoration(
                                  contentPadding:
                                      EdgeInsets.fromLTRB(7, 20, 7, 0),
                                  prefixIcon: InkWell(
                                      onTap: () {
                                        setState(() {
                                          if (numberOfGuests > 1) {
                                            numberOfGuests--;
                                          }
                                        });
                                      },
                                      child:
                                          Icon(Icons.arrow_circle_down_sharp)),
                                  suffixIcon: InkWell(
                                      onTap: () {
                                        setState(() {
                                          numberOfGuests++;
                                        });
                                      },
                                      child: Icon(Icons.arrow_circle_up_sharp)),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
            SizedBox(
              width: w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'TABLE\n(Optional)',
                  ),
                  Text(
                    'Inside',
                  ),
                  Checkbox(
                    value: _value1,
                    onChanged: (value) {
                      setState(() {
                        _value1 = value!;
                      });
                    },
                    shape: CircleBorder(),
                  ),
                  Text(
                    'Outside',
                  ),
                  Checkbox(
                    value: _value2,
                    onChanged: (value) {
                      setState(() {
                        _value2 = value!;
                      });
                    },
                    shape: CircleBorder(),
                  ),
                  Text(
                    'Event\nZone',
                  ),
                  Checkbox(
                    value: _value3,
                    onChanged: (value) {
                      setState(() {
                        _value3 = value!;
                      });
                    },
                    shape: CircleBorder(),
                  ),
                ],
              ),
            ),
            Spacer(),
            Container(
              width: 175,
              child: ElevatedButton(
                style: const ButtonStyle(
                  elevation: MaterialStatePropertyAll(5),
                  minimumSize: MaterialStatePropertyAll(
                    Size(175, 41),
                  ),
                  backgroundColor: MaterialStatePropertyAll(
                    Color.fromRGBO(244, 206, 20, 1),
                  ),
                ),
                onPressed: () {
                  _showGuestsDialog(context);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Center(
                        child: Text(
                      'Place Order',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                    Icon(Icons.pedal_bike)
                  ],
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: h! / 3,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(tableasset))),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget drawerlistobject(String name) {
  return ListTile(
    title: Text(name),
    onTap: () {},
  );
}

void _showGuestsDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Your request has been successfully sent!'),
        content:
            Text('You can review reservation details in the personal account.'),
      );
    },
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
