import 'package:flavour_fellow/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'utils/constants.dart';

bool? _value;

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _value = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: h,
        child: Column(
          children: [
            Center(
              child: Text(
                'Sign In',
                textAlign: TextAlign.center,
                style: GoogleFonts.markaziText(
                    fontSize: 50, fontWeight: FontWeight.bold),
              ),
            ),
            Spacer(),
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'FULL NAME*',
                    style: GoogleFonts.karla(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    width: 220,
                    height: 45,
                    padding: EdgeInsets.fromLTRB(15, 0, 20, 0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(7, 20, 7, 0),
                        suffixIcon: Icon(Icons.mouse_outlined),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'PASSWORD*',
                    style: GoogleFonts.karla(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    width: 220,
                    height: 45,
                    padding: EdgeInsets.fromLTRB(15, 0, 20, 0),
                    child: TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(7, 20, 7, 0),
                        suffixIcon: Icon(Icons.mouse_outlined),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Row(
              children: [
                Checkbox(
                  value: _value,
                  onChanged: (value) {
                    setState(() {
                      _value = value;
                    });
                  },
                  shape: CircleBorder(),
                ),
                Text(
                  'Keep me signed in on this device',
                )
              ],
            ),
            Spacer(),
            ElevatedButton(
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
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const MainPage(),
                  ),
                );
              },
              child: Text('Sign In'),
            ),
            Spacer(),
            Text('or sign in with'),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: InkWell(
                    child: Image(
                      image: AssetImage(google),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: InkWell(
                    child: Image(
                      image: AssetImage(facebook),
                    ),
                  ),
                )
              ],
            ),
            Spacer(),
          ],
        ),
      ),
    );
    ;
  }
}
