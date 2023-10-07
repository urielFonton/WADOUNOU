import 'package:digitalis_restaurant_app/core/constants/constant.dart';
import 'package:digitalis_restaurant_app/core/utils/size_config.dart';
import 'package:digitalis_restaurant_app/widgets/default_button.dart';
import 'package:flutter/material.dart';

class Restaurant {
  final String name;
  final int stars;
  final String location;

  Restaurant(this.name, this.stars, this.location);
}

class MakeReservationBody extends StatefulWidget {
  const MakeReservationBody({super.key});

  @override
  State<MakeReservationBody> createState() => _MakeReservationBodyState();
}

class _MakeReservationBodyState extends State<MakeReservationBody> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _dateController = TextEditingController();
  DateTime? _selectedDate;
  TextEditingController _partySizeController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();
  Restaurant? _selectedRestaurant;

  final List<Restaurant> restaurants = [
    Restaurant('Restaurant A', 4, 'Emplacement A'),
    Restaurant('Restaurant B', 5, 'Emplacement B'),
    Restaurant('Restaurant C', 3, 'Emplacement C'),
  ];

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            SizedBox(
              height: SizeConfig.screenHeight * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 217, 215, 215),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 3.0),
                  child: TextFormField(
                    controller: _nameController,
                    cursorColor: kTextColor,
                    style: const TextStyle(color: Colors.black),
                    decoration: const InputDecoration(
                        hintText: "Nom complet",
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: kTextColor)),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Veuillez saisir votre nom complet";
                      }
                      return null;
                    },
                  ),
                ),
              ),
            ),
            SizedBox(
              height: SizeConfig.screenHeight * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 217, 215, 215),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 3.0),
                  child: TextFormField(
                    keyboardType: TextInputType.phone,
                    controller: _phoneController,
                    cursorColor: kTextColor,
                    style: const TextStyle(color: Colors.black),
                    decoration: const InputDecoration(
                        hintText: "Numéro de téléphone",
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: kTextColor)),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Renseignez votre numéro de téléphone";
                      }
                      return null;
                    },
                  ),
                ),
              ),
            ),
            SizedBox(
              height: SizeConfig.screenHeight * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 217, 215, 215),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 3.0),
                  child: TextFormField(
                    readOnly: true,
                    onTap: () async {
                      final selectedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime.now(),
                        lastDate: DateTime(DateTime.now().year + 1),
                      );
                      if (selectedDate != null) {
                        setState(() {
                          _selectedDate = selectedDate;
                          _dateController.text =
                              "${selectedDate.toLocal()}".split(' ')[0];
                        });
                      }
                    },
                    controller: _dateController,
                    style: const TextStyle(color: Colors.black),
                    decoration: const InputDecoration(
                        hintText: "Date de la réservation",
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: kTextColor)),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "La date de réservation est obligatoire";
                      }
                      return null;
                    },
                  ),
                ),
              ),
            ),
            SizedBox(
              height: SizeConfig.screenHeight * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 217, 215, 215),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 3.0),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    controller: _partySizeController,
                    cursorColor: kTextColor,
                    style: const TextStyle(color: Colors.black),
                    decoration: const InputDecoration(
                        hintText: "Nombre de places à réserver",
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: kTextColor)),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Le nombre de places à réserver est obligatoire";
                      }
                      return null;
                    },
                  ),
                ),
              ),
            ),
            SizedBox(
              height: SizeConfig.screenHeight * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 217, 215, 215),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 3.0),
                  child: TextFormField(
                    controller: _descriptionController,
                    cursorColor: kTextColor,
                    style: const TextStyle(color: Colors.black),
                    decoration: const InputDecoration(
                        hintText:
                            "Dites nous plus sur la réservation (facultatif)",
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: kTextColor)),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: SizeConfig.screenHeight * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 217, 215, 215),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 3.0),
                  child: DropdownButtonFormField<Restaurant>(
                    value: _selectedRestaurant,
                    items: restaurants.map((restaurant) {
                      return DropdownMenuItem<Restaurant>(
                        value: restaurant,
                        child: Text(restaurant.name),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        _selectedRestaurant = value;
                      });
                    },
                    decoration: InputDecoration(
                      hintText: 'Choisissez un restaurant',
                      border: InputBorder.none,
                    ),
                    validator: (value) {
                      if (value == null) {
                        return 'Veuillez sélectionner un restaurant';
                      }
                      return null;
                    },
                  ),
                ),
              ),
            ),
            SizedBox(
              height: SizeConfig.screenHeight * 0.04,
            ),
            DefaultButton(
              press: () {
                if (_formKey.currentState!.validate()) {}
              },
              text: 'Réserver',
            ),
          ],
        ),
      ),
    );
  }
}
