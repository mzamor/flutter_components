import 'package:fl_components_app/screens/screens.dart';
import 'package:fl_components_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Mariano',
      'last_name': 'Zamora',
      'email': 'zazaza@gmail.com',
      'password': '123456',
      'role': 'admin'
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Input Forms'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Form(
              key: myFormKey,
              child: Column(
                children: [
                  CustomInputField(
                    labelText: "Nombre",
                    formProperty: 'first_name',
                    formValues: formValues,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomInputField(
                    labelText: "Apellido",
                    formProperty: 'last_name',
                    formValues: formValues,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomInputField(
                    labelText: "Email",
                    emailType: TextInputType.emailAddress,
                    formProperty: 'email',
                    formValues: formValues,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomInputField(
                    labelText: "Contraseña",
                    obscureText: true,
                    formProperty: 'password',
                    formValues: formValues,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  DropdownButtonFormField<String>(
                    items: const [
                      DropdownMenuItem(
                        value: 'Admin',
                        child: Text('Admin'),
                      ),
                      DropdownMenuItem(
                        value: 'Superuser',
                        child: Text('Superuser'),
                      ),
                      DropdownMenuItem(
                        value: 'Developer',
                        child: Text('Developer'),
                      ),
                      DropdownMenuItem(
                        value: 'Jr. Developer',
                        child: Text('Jr. Developer'),
                      ),
                    ],
                    onChanged: (value) {
                      formValues['role'] = value ?? 'Admin';
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      child: const SizedBox(
                          width: double.infinity,
                          child: Center(child: Text('Guardar datos'))),
                      onPressed: () {
                        FocusScope.of(context).requestFocus(FocusNode());
                        if (!myFormKey.currentState!.validate()) {
                          return;
                        }
                        print(formValues);
                      }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
