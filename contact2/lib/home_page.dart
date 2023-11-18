import 'package:flutter/material.dart';
import 'package:contact2/routes.dart';

void main() => runApp( HomePage());

class HomePage extends StatelessWidget {
   HomePage({super.key});

  final List<Map<String, dynamic>> contactos = [
    {
      'nombre': 'Erick Mendez',
      'numero': '9665-9175',
      'correo': 'ronaldo.com',
    },
    {
      'nombre': 'Maria Alvarado',
      'numero': '98163348',
      'correo': 'maria.com',
    },
    {
      'nombre': 'Jose Mendez',
      'numero': '9558-9745',
      'correo': 'jose.com',
    },
    {
      'nombre': 'Jeyson Mnedez',
      'numero': '9887-2448',
      'correo': 'jeyson.com',
    },
    {
      'nombre': 'Filomena Garica',
      'numero': '9592-4218',
      'correo': 'filomena.com',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
       
        body:
        Scaffold(
        appBar: AppBar(
          title: const Text('Agregar contacto'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(40),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 200),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.person_add_alt,
                        color: Colors.blue,
                      ),
                      TextButton(
                        onPressed: () {

 Navigator.pushNamed(context, Routes.add.name,
                      );

                        },
                        child: const Text(
                          "Crear contacto nuevo",
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  color: Colors.grey.shade100,
                  height: 900,
                  child: ListView(
                    children: contactos.map((contacto) {
                      return ListTile(
                        leading: const Icon(
                          Icons.person,
                          color: Colors.yellow,
                        ),
                        title: TextButton(
                          onPressed: () {
                            //al precionar
                          

                          Navigator.pushNamed(context, Routes.info.name,
                          arguments: contacto);


                            //al precionar


                          },
                          child: Padding(
                            padding: const EdgeInsets.only(right: 250),
                            child: Text(
                              contacto['nombre'],
                              textAlign: TextAlign.left,
                              style: const TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
        ), 
      ),
    ));
  }
}