import 'package:flutter/material.dart';
import 'package:myapp/details.dart';

class MyForm extends StatefulWidget {
  const MyForm({Key? key}) : super(key: key);

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _idClienteController = TextEditingController();
  final _nombreController = TextEditingController();
  final _apellidoController = TextEditingController();
  final _celularController = TextEditingController();
  final _direccionController = TextEditingController();
  final _correoController = TextEditingController();

  @override
  void dispose() {
    _idClienteController.dispose();
    _nombreController.dispose();
    _apellidoController.dispose();
    _celularController.dispose();
    _direccionController.dispose();
    _correoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 143, 172, 236),
        title: const Text("Suplementos alimenticios"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            MyTextField(
              myController: _idClienteController,
              fieldName: "ID Cliente",
              myIcon: Icons.numbers,
              prefixIconColor: const Color.fromARGB(255, 8, 62, 83),
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _nombreController,
              fieldName: "Nombre",
              myIcon: Icons.people,
              prefixIconColor: const Color.fromARGB(255, 8, 62, 83),
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _apellidoController,
              fieldName: "Apellido",
              myIcon: Icons.people_alt_outlined,
              prefixIconColor: const Color.fromARGB(255, 8, 62, 83),
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _celularController,
              fieldName: "Celular",
              myIcon: Icons.phone,
              prefixIconColor: const Color.fromARGB(255, 8, 62, 83),
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _direccionController,
              fieldName: "Direccion",
              myIcon: Icons.house,
              prefixIconColor: const Color.fromARGB(255, 8, 62, 83),
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _correoController,
              fieldName: "Correo",
              myIcon: Icons.email,
              prefixIconColor: const Color.fromARGB(255, 8, 62, 83),
            ),
            const SizedBox(height: 20.0),
            myBtn(context),
          ],
        ),
      ),
    );
  }

  OutlinedButton myBtn(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(minimumSize: const Size(200, 50)),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return Details(
              idCliente: _idClienteController.text,
              nombre: _nombreController.text,
              apellido: _apellidoController.text,
              celular: _celularController.text,
              direccion: _direccionController.text,
              correo: _correoController.text,
            );
          }),
        );
      },
      child: Text(
        "Enviar ".toUpperCase(),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 8, 62, 83),
        ),
      ),
    );
  }
}

class MyTextField extends StatelessWidget {
  const MyTextField({
    Key? key,
    required this.fieldName,
    required this.myController,
    this.myIcon = Icons.verified_user_outlined,
    this.prefixIconColor = Colors.blueAccent,
  }) : super(key: key);

  final TextEditingController myController;
  final String fieldName;
  final IconData myIcon;
  final Color prefixIconColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: myController,
      decoration: InputDecoration(
        labelText: fieldName,
        prefixIcon: Icon(myIcon, color: prefixIconColor),
        border: const OutlineInputBorder(),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromARGB(255, 19, 114, 106)),
        ),
        labelStyle: const TextStyle(color: Color.fromARGB(255, 35, 105, 99)),
      ),
    );
  }
}
