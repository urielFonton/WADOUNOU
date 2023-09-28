import 'dart:io';

import 'package:digitalis_restaurant_app/core/constants/constant.dart';
import 'package:digitalis_restaurant_app/module/create_restaurant/widgets/create_restaurant_background_image.dart';
import 'package:digitalis_restaurant_app/widgets/form_error.dart';
import 'package:digitalis_restaurant_app/widgets/restaurant_created_successfully.dart';
import 'package:flutter/material.dart';

class CreateRestaurant extends StatefulWidget {
  const CreateRestaurant({super.key});

  static String routeName = "/signup_form";

  @override
  State<CreateRestaurant> createState() => _CreateRestaurantState();
}

class _CreateRestaurantState extends State<CreateRestaurant> {
  final _formkey = GlobalKey<FormState>();
  String? restaurantName;
  String? restaurantLocalisationAdress;
  File? restaurantUrlImage;
  String? restaurantContact;
  String? restaurantDescription;
  final List<String> errors = [];

  bool isLoading = false;

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

  // Gestion du temps de chargement vers la page suivante

  Future<void> startLoading() async {
    setState(() {
      isLoading = true;
    });

    // Simuler le temps de chargement de 6 secondes
    await Future.delayed(const Duration(seconds: 6));

    setState(() {
      isLoading = false;
    });

    // une fois le chargement terminé, naviguez vers la page de succès !
    Navigator.of(context).pushNamed(RestaurantCreatedSuccessfully.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const CreateRestaurantBackgroundImage(),
        Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: SafeArea(
                  child: Column(children: [
                const SizedBox(
                  height: 20.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "WADOUNOU",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 233, 70, 0),
                                fontSize: 30.0),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            "Création d'un nouveau compte Restaurant",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: kTextColor,
                                fontSize: 20.0),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Form(
                      key: _formkey,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 217, 215, 215),
                                    borderRadius: BorderRadius.circular(16)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0, vertical: 3.0),
                                  child: _buildRestaurantNameFormField(),
                                )),
                          ),
                          const SizedBox(
                            height: 16.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 217, 215, 215),
                                    borderRadius: BorderRadius.circular(16)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0, vertical: 3.0),
                                  child:
                                      _buildRestaurantAdressLocationFormField(),
                                )),
                          ),
                          const SizedBox(
                            height: 16.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 7,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            255, 217, 215, 215),
                                        borderRadius:
                                            BorderRadius.circular(16)),
                                    child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10.0, vertical: 3.0),
                                        child: MaterialButton(
                                          onPressed: () {},
                                          child: const Text(
                                            "Choisissez une photo ou un logo",
                                            textAlign: TextAlign.justify,
                                            style: TextStyle(
                                                color: kTextColor,
                                                fontSize: 15.0),
                                          ),
                                        )),
                                  ),
                                ),
                                const SizedBox(
                                  width: 3.0,
                                ),
                                const Expanded(
                                    flex: 1,
                                    child: CircleAvatar(
                                      radius: 22,
                                      backgroundColor: Colors.red,
                                    ))
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 16.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 217, 215, 215),
                                    borderRadius: BorderRadius.circular(16)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0, vertical: 3.0),
                                  child: buildRestaurantContactFormField(),
                                )),
                          ),
                          const SizedBox(
                            height: 16.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 217, 215, 215),
                                    borderRadius: BorderRadius.circular(16)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0, vertical: 3.0),
                                  child: _buildRestaurantDescriptionFormField(),
                                )),
                          ),
                          FormError(errors: errors),
                          if (isLoading)
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(12.0)
                                  ),
                                  child: const Center(
                                    child: CircularProgressIndicator(),
                                  ),
                                ),
                                const SizedBox(height: 16.0),
                                const Text(
                                  "Veuillez patienter",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors
                                        .black, // Choisissez la couleur de texte appropriée
                                  ),
                                ),
                              ],
                            ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // Affichez le CircularProgressIndicator lorsque isLoading est true

                                Container(
                                  decoration: BoxDecoration(
                                      color: kWhite,
                                      borderRadius:
                                          BorderRadius.circular(12.0)),
                                  child: TextButton(
                                      onPressed: () {},
                                      child: const Text(
                                        "Retour",
                                        style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 15.0,
                                        ),
                                      )),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: kWhite,
                                      borderRadius:
                                          BorderRadius.circular(12.0)),
                                  child: TextButton(
                                      onPressed: () async {
                                        if (_formkey.currentState!.validate()) {
                                          _formkey.currentState!.save();
                                          await startLoading();
                                        }
                                      },
                                      child: const Text(
                                        "Suivant",
                                        style: TextStyle(
                                          color: kStandartDeepGreenColor,
                                          fontSize: 15.0,
                                        ),
                                      )),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ])),
            ))
      ],
    );
  }

  TextFormField _buildRestaurantDescriptionFormField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      onSaved: (newValue) => restaurantDescription = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kRestaurantDescriptionNullError);
        } else if (value.length > 2 || value.length == 10) {
          removeError(error: kRestaurantDescriptionNullError);
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kRestaurantDescriptionNullError);
          return "";
        } else if (value.length < 2 || value.length < 10) {
          addError(error: kRestaurantDescriptionNullError);
          return "";
        }
        return null;
      },
      maxLines: 5,
      textAlign: TextAlign.justify,
      style: const TextStyle(color: Colors.black),
      cursorColor: kTextColor,
      decoration: const InputDecoration(
          hintText:
              "Description(*). Une petite description du restaurant, ou une raison social ou encore un slogan",
          border: InputBorder.none,
          hintStyle: TextStyle(color: kTextColor)),
    );
  }

  TextFormField _buildRestaurantNameFormField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      onSaved: (newValue) => restaurantName = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kRestaurantNameNullError);
        } else if (value.length > 2) {
          removeError(error: kRestaurantNameNullError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kRestaurantNameNullError);
          return "";
        } else if (value.length <= 2) {
          addError(error: kRestaurantNameNullError);
          return "";
        }
        return null;
      },
      style: const TextStyle(color: Colors.black),
      cursorColor: kTextColor,
      decoration: const InputDecoration(
        hintText: "Nom du restaurant(*)",
        hintStyle: TextStyle(color: kTextColor),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        border: InputBorder.none,
      ),
    );
  }

  TextFormField buildRestaurantContactFormField() {
    return TextFormField(
      keyboardType: TextInputType.phone,
      onSaved: (newValue) => restaurantContact = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kRestaurantContactNullError);
        } else if (value.length >= 8 || value.length == 13) {
          removeError(error: kRestaurantContactNullError);
          return;
        }
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kRestaurantContactNullError);
          return "";
        } else if (value.length < 8 || value.length > 13) {
          addError(error: kRestaurantContactNullError);
          return "";
        }
        return null;
      },
      style: const TextStyle(color: Colors.black),
      cursorColor: kTextColor,
      decoration: const InputDecoration(
          hintText: "Contact du restaurant(*)",
          border: InputBorder.none,
          hintStyle: TextStyle(color: kTextColor)),
    );
  }

  TextFormField _buildRestaurantAdressLocationFormField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      onSaved: (newValue) => restaurantLocalisationAdress = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kRestaurantLocalisationNullError);
        } else if (value.length > 2) {
          removeError(error: kRestaurantLocalisationNullError);
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kRestaurantLocalisationNullError);
          return "";
        } else if (value.length <= 2) {
          addError(error: kRestaurantLocalisationNullError);
          return "";
        }
        return null;
      },
      style: const TextStyle(color: Colors.black),
      cursorColor: kPrimaryColor,
      decoration: const InputDecoration(
          hintText: "Adresse de localisation(*)",
          border: InputBorder.none,
          hintStyle: TextStyle(color: kTextColor)),
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
