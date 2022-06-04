import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:proyectofinal/screens/seleccion.dart';

import '../services/spoon_services.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final mostrarInfo = Provider.of<SpoonServices>(context);
    mostrarInfo.mostrarInfo();
    if (mostrarInfo.propiedad.isEmpty) {
      return Container(
        color: Colors.green,
        child: const CircularProgressIndicator(
          color: Colors.black38,
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          textAlign: TextAlign.center,
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://www.tododisca.com/wp-content/uploads/2021/06/Alimentos-saludables-para-bajar-trigliceridos-dieta-1140x703.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            padding: const EdgeInsets.symmetric(horizontal: 30),
            height: MediaQuery.of(context).size.height * 0.55,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Estilo de vida Saludable',
                    style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      color: Color.fromARGB(255, 54, 138, 57),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const SizedBox(height: 30),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Seleccion()),
                      );
                    },
                    //Text("dia:${mostrarInfo.propiedad[0].day}"),

                    color: const Color.fromARGB(255, 54, 138, 57),
                    child: const Text(
                      'Iniciar',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
