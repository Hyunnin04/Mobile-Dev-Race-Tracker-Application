import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:mobile_dev_race_tracker_application/widgets/inputs/button.dart';

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  String? selectedGender;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _submitForm() {
    CollectionReference participant = FirebaseFirestore.instance.collection(
      'participant ',
    );
    participant.add({
      'name': _nameController.text,
      'gender': selectedGender,
      'age': _ageController.text,
    });
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Form submitted successfully!')));
    }
  }

  String? _validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your name';
    }
    return null;
  }

  String? _validateAge(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your age';
    }
    final age = int.tryParse(value);
    if (age == null || age < 0) {
      return 'Please enter a valid age';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Name',
                border: OutlineInputBorder(),
              ),
              validator: _validateName,
            ),
            SizedBox(height: 16.0),

            DropdownButtonFormField<String>(
              decoration: const InputDecoration(
                labelText: 'Gender',
                border: OutlineInputBorder(),
              ),
              value: selectedGender,
              items:
                  ['Male', 'Female', 'Prefer not to say']
                      .map(
                        (gender) => DropdownMenuItem(
                          value: gender,
                          child: Text(gender),
                        ),
                      )
                      .toList(),
              onChanged: (value) {
                setState(() {
                  selectedGender = value;
                });
              },
              validator:
                  (value) => value == null ? 'Please select your gender' : null,
            ),
            SizedBox(height: 16.0),

            TextFormField(
              controller: _ageController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Age',
                border: OutlineInputBorder(),
              ),
              validator: _validateAge,
            ),

            SizedBox(height: 24.0),
            Center(
              child: Button(
                text: 'Register',
                isPrimary: true, // or false for secondary style
                onPressed: _submitForm,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
