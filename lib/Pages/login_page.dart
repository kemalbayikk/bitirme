import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _surnameController = TextEditingController();

  List<bool> _selections = [true, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(251, 231, 198, 1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 32.0),
            child: Align(
              alignment: Alignment.centerRight,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24.0)),
                width: MediaQuery.of(context).size.width / 3,
                height: MediaQuery.of(context).size.height / 1.5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    ToggleButtons(
                      children: [
                        Container(
                            child: Center(
                                child: Text(
                              "Login",
                              style: GoogleFonts.montserrat(),
                            )),
                            width: 100),
                        Container(
                            child: Center(
                                child: Text("Register",
                                    style: GoogleFonts.montserrat())),
                            width: 100),
                      ],
                      isSelected: _selections,
                      onPressed: (int index) {
                        setState(() {
                          if (index == 1) {
                            _selections[index] = !_selections[index];
                            _selections[index - 1] = !_selections[index - 1];
                          } else {
                            _selections[index] = !_selections[index];
                            _selections[index + 1] = !_selections[index + 1];
                          }
                        });
                      },
                      borderRadius: BorderRadius.circular(32),
                      fillColor: Color.fromRGBO(180, 248, 200, 1),
                      selectedColor: Colors.black,
                    ),
                    _selections[0] == true ? login(context) : register(context),
                    Container(
                      width: MediaQuery.of(context).size.width / 4.5,
                      height: 35,
                      child: ElevatedButton(
                        onPressed: () {
                          print("hey");
                        },
                        child: Text("Lets Go!",
                            style: GoogleFonts.montserrat(color: Colors.black)),
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(180, 248, 200, 1),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget login(BuildContext context) {
    return Column(
      children: [
        Container(
            width: MediaQuery.of(context).size.width / 4.5,
            child: Column(
              children: [
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: "Email",
                  ),
                ),
              ],
            )),
        const SizedBox(
          height: 20,
        ),
        Container(
            width: MediaQuery.of(context).size.width / 4.5,
            child: Column(
              children: [
                TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: "Password",
                  ),
                ),
              ],
            )),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }

  Widget register(BuildContext context) {
    return Column(
      children: [
        Container(
            width: MediaQuery.of(context).size.width / 4.5,
            child: Column(
              children: [
                TextFormField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    labelText: "Name",
                  ),
                ),
              ],
            )),
        const SizedBox(
          height: 20,
        ),
        Container(
            width: MediaQuery.of(context).size.width / 4.5,
            child: Column(
              children: [
                TextFormField(
                  controller: _surnameController,
                  decoration: InputDecoration(
                    labelText: "Surname",
                  ),
                ),
              ],
            )),
        const SizedBox(
          height: 20,
        ),
        Container(
            width: MediaQuery.of(context).size.width / 4.5,
            child: Column(
              children: [
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: "Email",
                  ),
                ),
              ],
            )),
        const SizedBox(
          height: 20,
        ),
        Container(
            width: MediaQuery.of(context).size.width / 4.5,
            child: Column(
              children: [
                TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: "Password",
                  ),
                ),
              ],
            )),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}
