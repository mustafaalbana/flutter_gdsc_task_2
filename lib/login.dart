// ignore_for_file: camel_case_types, prefer_const_constructors, duplicate_ignore, sort_child_properties_last, avoid_unnecessary_containers, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_gdsc_task_2/register.dart';
import 'package:flutter_gdsc_task_2/share/comp.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: GestureDetector(
        onTap: (() => FocusManager.instance.primaryFocus?.unfocus()),
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(children: [
              ClipPath(
                clipper: MyClipper(),
                child: Container(
                  height: size.height / 3,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.only(bottom: 29),
                      // ignore: prefer_const_constructors
                      child: Text(
                        "login",
                        style: TextStyle(fontSize: 33, color: Colors.white),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: const [Colors.deepPurple, Colors.purple])),
                ),
              ),
              Column(
                children: const [
                  SizedBox(
                    height: 33,
                  ),
                ],
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 33),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(33),
                    color: Colors.grey[200],
                  ),
                  child: Form(autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: MyTextField(
                        keyboardType: TextInputType.emailAddress,
                        labelText: "Email",
                        prefixIcon: Icons.email,
                        value: (value) {
                        if (value != null  ) {
                          return " please entera valid Email";
                        } else {
                          return null;
                        }
                      }),
                  )),
              SizedBox(
                height: 33,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 33),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(33),
                  color: Colors.grey[200],
                ),
                child: Form(autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: MyTextField(
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,
                      labelText: "Password",
                      prefixIcon: Icons.lock,
                      suffixIcon: Icons.visibility,
                      value: (value) {
                        if (value != null && value.length < 7) {
                          return " please enter more than 7 characters";
                        } else {
                          return null;
                        }
                      }),
                ),
              ),
              SizedBox(
                height: 33,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 33),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(33),
                  color: Colors.grey[200],
                ),
                child: Form(autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: MyTextField(
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,
                      labelText: "Confirm Password",
                      prefixIcon: Icons.lock,
                      suffixIcon: Icons.visibility,
                      value: (value) {
                        if (value != null && value.length < 7) {
                          return " please enter more than 7 characters";
                        } else {
                          return null;
                        }
                      }),
                ),
              ),
              SizedBox(
                height: 33,
              ),
              Container(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "login",
                    style: TextStyle(fontSize: 22),
                  ),
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(27))),
                      backgroundColor: MaterialStateProperty.all(Colors.purple),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(vertical: 11, horizontal: 122))),
                ),
              ),
              SizedBox(
                height: 33,
              ),
              Container(
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/Register');
                    // Navigator.push(context, MaterialPageRoute(builder: (context) {
                    //   return const register();
                    // }));
                  },
                  child: Text(
                    "Register",
                    style: TextStyle(fontSize: 22, color: Colors.purple),
                  ),
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(27))),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(vertical: 11, horizontal: 112))),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
