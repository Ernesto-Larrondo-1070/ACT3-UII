import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  final String idCliente;
  final String nombre;
  final String apellido;
  final String celular;
  final String direccion;
  final String correo;

  const Details({
    Key? key,
    required this.idCliente,
    required this.nombre,
    required this.apellido,
    required this.celular,
    required this.direccion,
    required this.correo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detalles del Cliente"),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            // Primera tarjeta (datos desde el formulario)
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(8),
              ),
              margin: const EdgeInsets.symmetric(vertical: 8),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.person, color: Color.fromARGB(255, 36, 43, 109)),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            "ID Cliente: $idCliente",
                            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.delete, color: Colors.redAccent),
                          onPressed: () {
                            // Acción de borrado si se necesita
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 6),
                    Text("Nombre: $nombre"),
                    Text("Apellido: $apellido"),
                    Text("Celular: $celular"),
                    Text("Dirección: $direccion"),
                    Text("Correo: $correo"),
                  ],
                ),
              ),
            ),

            // Segunda tarjeta (datos predefinidos)
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(8),
              ),
              margin: const EdgeInsets.symmetric(vertical: 8),
              child: const Padding(
                padding: EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.person_outline, color: Color.fromARGB(255, 36, 43, 109)),
                        SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            "ID Cliente: 12345",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ),
                        Icon(Icons.delete, color: Colors.redAccent),
                      ],
                    ),
                    SizedBox(height: 6),
                    Text("Nombre: Ana"),
                    Text("Apellido: González"),
                    Text("Celular: 987654321"),
                    Text("Dirección: Av. Principal 456, Ciudad XYZ"),
                    Text("Correo: ana.gonzalez@email.com"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
