import 'package:digitalis_restaurant_app/core/constants/constant.dart';
import 'package:digitalis_restaurant_app/module/create_restaurant/create_restaurant_page.dart';
import 'package:digitalis_restaurant_app/module/screens/login/widgets/background_image_login_signup.dart';
import 'package:digitalis_restaurant_app/widgets/custom_suffi_icon.dart';
import 'package:digitalis_restaurant_app/widgets/form_error.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  static String routeName = "/signup_form";

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formkey = GlobalKey<FormState>();
  String? username;
  String? email;
  String? password;
  String? confirm_password;
  final List<String> errors = [];

  void addError({String? error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error!);
      });
    }
  }

  void removeError({String? error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error!);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackgroundImageLoginSignup(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  SizedBox(
                    height: 110,
                    child: Center(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 50.0,
                          ),
                          const Text('WADOUNOU',
                              style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                          Container(
                            color: Colors.white,
                            width: 150,
                            height: 3.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  const Text(
                    "Inscrivez-vous pour afin d'ajouter votre restaurant à notre répertoire",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Form(
                    key: _formkey,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[600]!.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: buildUserNameFormField()),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[600]!.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: buildEmailFormField()),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[600]!.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: buildPasswordFormField()),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[600]!.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: buildConfirmPasswordFormField()),
                        ),
                        FormError(errors: errors),
                        const SizedBox(
                          height: 8.0,
                        ),
                        LoginSignuoBtn(
                          text: "Inscription",
                          press: () {
                            if (_formkey.currentState!.validate()) {
                              _formkey.currentState!.save();
                              Navigator.pushNamed(
                                  context, CreateRestaurant.routeName);
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  TextFormField buildConfirmPasswordFormField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      obscureText: true,
      onSaved: (newValue) => confirm_password = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.isNotEmpty && password == confirm_password) {
          removeError(error: kMatchPassError);
        }
        confirm_password = value;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if (password != value) {
          addError(error: kMatchPassError);
          return "";
        }
        return null;
      },
      style: const TextStyle(color: Colors.white),
      decoration: const InputDecoration(
        hintText: "Confirmez le mot de passe",
        hintStyle: TextStyle(color: Colors.white60),
        suffixIcon: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: CustomSuffixIcon(
            svgIcon: "assets/icons/Lock.svg",
          ),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 22, horizontal: 25),
        border: InputBorder.none,
      ),
    );
  }

  TextFormField buildUserNameFormField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      onSaved: (newValue) => username = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kNamelNullError);
        } else if (value.length > 2) {
          removeError(error: kNamelNullError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kNamelNullError);
          return "";
        } else if (value.length <= 2) {
          addError(error: kNamelNullError);
          return "";
        }
        return null;
      },
      style: const TextStyle(color: Colors.white),
      cursorColor: kPrimaryColor,
      decoration: const InputDecoration(
        hintText: "Nom et Prénom(s)",
        hintStyle: TextStyle(color: Colors.white60),
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding: EdgeInsets.symmetric(vertical: 22, horizontal: 25),
        border: InputBorder.none,
        suffixIcon: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: CustomSuffixIcon(svgIcon: "assets/icons/User Icon.svg"),
        ),
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      obscureText: true,
      onSaved: (newValue) => password = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 8) {
          removeError(error: kShortPassError);
          // return; //
        }
        password = value;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if (value.length < 8) {
          addError(error: kShortPassError);
          return "";
        }
        return null;
      },
      style: const TextStyle(color: Colors.white),
      decoration: const InputDecoration(
        hintText: "Mot de passe",
        hintStyle: TextStyle(color: Colors.white60),
        suffixIcon: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: CustomSuffixIcon(
            svgIcon: "assets/icons/Lock.svg",
          ),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 22, horizontal: 25),
        border: InputBorder.none,
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kEmailNullError);
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          addError(error: kInvalidEmailError);
          return "";
        }
        return null;
      },
      style: const TextStyle(color: Colors.white),
      cursorColor: kPrimaryColor,
      decoration: const InputDecoration(
        hintText: "Enter your email",
        hintStyle: TextStyle(color: Colors.white60),
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding: EdgeInsets.symmetric(vertical: 22, horizontal: 25),
        border: InputBorder.none,
        suffixIcon: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: CustomSuffixIcon(svgIcon: "assets/icons/Mail.svg"),
        ),
      ),
    );
  }
}

class LoginSignuoBtn extends StatelessWidget {
  const LoginSignuoBtn({
    super.key,
    required this.text,
    required this.press,
  });

  final String text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: SizedBox(
        width: double.infinity,
        child: MaterialButton(
            height: 55.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0)),
            color: Colors.white,
            onPressed: press,
            child: Text(
              text,
              style: const TextStyle(
                  fontSize: 18.0,
                  color: kPrimaryColor,
                  fontWeight: FontWeight.bold),
            )),
      ),
    );
  }
}
