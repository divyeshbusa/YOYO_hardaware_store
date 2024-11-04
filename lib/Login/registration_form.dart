import 'package:flutter/material.dart';
import 'package:yoyo_harware_store/Components/my_button.dart';

class Registration_form extends StatefulWidget {
  const Registration_form({Key? key}) : super(key: key);

  @override
  State<Registration_form> createState() => _Registration_formState();
}

class _Registration_formState extends State<Registration_form> {
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var mobileController = TextEditingController();
  var passController = TextEditingController();
  var confirmpassController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor:Colors.white,
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 70),
                  Text(
                    'Registration Form',
                    style: TextStyle(
                      color: Color.fromRGBO(185, 94, 68, 1),
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Enter your details carefully',
                    style: TextStyle(
                      color: Color.fromRGBO(33, 33, 33, 1),
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 35.0),
                    child: TextFormField(
                      style: TextStyle(color: Color.fromRGBO(250, 148, 77, 1)),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return "please enter name.";
                        } else {
                          return null;
                        }
                      },
                      controller: nameController,
                      obscureText: false,
                      decoration: const InputDecoration(

                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color.fromRGBO(67, 89, 101, 1),),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(250, 148, 77, 1),
                          ),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "Full Name",
                        hintStyle: TextStyle(
                          color: Color.fromRGBO(67, 89, 101, 1),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 35.0),
                    child: TextFormField(
                      style: TextStyle(color: Color.fromRGBO(250, 148, 77, 1)),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return "please enter email.";
                        } else {
                          return null;
                        }
                      },
                      controller: emailController,
                      obscureText: false,
                      decoration: const InputDecoration(

                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color.fromRGBO(67, 89, 101, 1),),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(250, 148, 77, 1),
                          ),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "Email",
                        hintStyle: TextStyle(
                          color: Color.fromRGBO(67, 89, 101, 1),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 35.0),
                    child: TextFormField(
                      style: TextStyle(color: Color.fromRGBO(250, 148, 77, 1)),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return "please enter mobile number.";
                        } else {
                          return null;
                        }
                      },
                      controller: mobileController,
                      obscureText: false,
                      decoration: const InputDecoration(

                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color.fromRGBO(67, 89, 101, 1),),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(250, 148, 77, 1),
                          ),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "Mobile no.",
                        hintStyle: TextStyle(
                          color: Color.fromRGBO(67, 89, 101, 1),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 35.0),
                    child: TextFormField(
                      style: TextStyle(color: Color.fromRGBO(250, 148, 77, 1)),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return "please enter password.";
                        } else {
                          return null;
                        }
                      },
                      controller: passController,
                      obscureText: false,
                      decoration: const InputDecoration(

                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color.fromRGBO(67, 89, 101, 1),),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(250, 148, 77, 1),
                          ),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "Password",
                        hintStyle: TextStyle(
                          color: Color.fromRGBO(67, 89, 101, 1),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 35.0),
                    child: TextFormField(
                      style: TextStyle(color: Color.fromRGBO(250, 148, 77, 1)),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return "please enter confirm password.";
                        } else {
                          return null;
                        }
                      },
                      controller: confirmpassController,
                      obscureText: false,
                      decoration: const InputDecoration(

                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color.fromRGBO(67, 89, 101, 1),),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(250, 148, 77, 1),
                          ),
                        ),

                        fillColor: Colors.white,
                        filled: true,
                        hintText: "Confirm Password",
                        hintStyle: TextStyle(
                          color:Color.fromRGBO(67, 89, 101, 1),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  MyButton(
                    name: 'Submit',
                    fontsize: 20,
                    ContainerColor: Color.fromRGBO(250, 148, 77, 1),
                    padding: 20,
                    onTap: () async {
                      if (_formKey.currentState!.validate()) {

                        if (passController.text.toString() ==
                            confirmpassController.text.toString()) {



                          print(':::::CALLED SHARED PREFERANCE:::::::');


                        } else {
                          showAlertDialogNotMatchPassword(context);
                        }
                      }
                    },
                  ),


                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  showAlertDialogNotMatchPassword(BuildContext context) {
    Widget okButton = TextButton(
      child: Text(
        "Close",
        style: TextStyle(color: Colors.white),
      ),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );

    AlertDialog alert = AlertDialog(
      backgroundColor: Color.fromRGBO(250, 148, 77, 1),
      shape: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
      title: Text(
        "",
        style: TextStyle(color: Colors.white),
      ),
      content: Text("Password and ConfirmPassword not matched.",
          style: TextStyle(color: Colors.white)),
      actions: [
        okButton,
      ],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
