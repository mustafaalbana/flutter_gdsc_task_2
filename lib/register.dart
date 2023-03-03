// ignore_for_file: camel_case_types, prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_gdsc_task_2/share/comp.dart';

class register extends StatefulWidget {
  const register({super.key});

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  bool ispassword = true;
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
                child: Stack(children: [
                  Container(
                    height: size.height / 4,
                    child: Center(
                      child: Container(
                        padding: EdgeInsets.only(bottom: 29),
                        child: Text(
                          "Register",
                          style: TextStyle(fontSize: 33, color: Colors.white),
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.deepPurple, Colors.purple])),
                  ),
                  Positioned(
                      top: size.height / 40,
                      left: 7,
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          )))
                ]),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 19,
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 33),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(33),
                  color: Colors.grey[200],
                ),
                child: MyTextField(
                    keyboardType: TextInputType.name,
                    labelText: "Full Name",
                    prefixIcon: Icons.person),
              ),
              SizedBox(
                height: 19,
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
                          if (value != null ) {
                            return " please enter a valid email";
                          } else {
                            return null;
                          }
                        }
                        ),
                  )),
              SizedBox(
                height: 19,
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 33),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(33),
                    color: Colors.grey[200],
                  ),
                  child: Form(autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: MyTextField(
                        keyboardType: TextInputType.phone,
                        labelText: "phone",
                        prefixIcon: Icons.phone,
                        value: (value) {
                          if (value != null && value.length < 11 && value[0] ==0) {
                            return " please enter a valid phone number";
                          } else {
                            return null;
                          }
                        }
                        ),
                  )
                      ),
              SizedBox(
                height: 19,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 33),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(33),
                  color: Colors.grey[200],
                ),
                child: Form(autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: MyTextField(
                      obscureText: ispassword,
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
                height: 19,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 33),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(33),
                  color: Colors.grey[200],
                ),
                child: Form(autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: MyTextField(
                      obscureText: ispassword,
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
                height: 19,
              ),
              Container(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Register",
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
                height: 19,
              ),
              Container(
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/Login');
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 22, color: Colors.purple),
                  ),
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(27))),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(vertical: 11, horizontal: 133))),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
