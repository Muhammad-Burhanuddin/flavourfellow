import 'package:flavour_fellow/signin.dart';
import 'package:flavour_fellow/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'homescreen.dart';

bool? _value;

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _value = false;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false),
      body: Container(
        height: h,
        child: Column(
          children: [
            Center(
              child: Text(
                'Sign Up',
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
                    'EMAIL*',
                    style: GoogleFonts.karla(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    width: 220,
                    height: 45,
                    padding: EdgeInsets.fromLTRB(15, 0, 20, 0),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already a member? ',
                  style: GoogleFonts.karla(),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const SignIn(),
                      ),
                    );
                  },
                  child: Text(
                    "Log in",
                    style: GoogleFonts.karla(fontWeight: FontWeight.bold),
                  ),
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
              child: Text('Sign Up'),
            ),
            Spacer(),
            ElevatedButton(
              style: const ButtonStyle(
                elevation: MaterialStatePropertyAll(5),
                minimumSize: MaterialStatePropertyAll(
                  Size(175, 41),
                ),
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const MainPage(),
                  ),
                );
              },
              child: Text('Guest Login'),
            ),
            Spacer(),
            Text('or sign up with'),
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
  }
}
