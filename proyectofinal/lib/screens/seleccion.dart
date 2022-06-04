import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../services/spoon_services.dart';
import '../widgets/calis.dart';

class Seleccion extends StatefulWidget {
  const Seleccion({Key? key}) : super(key: key);

  @override
  State<Seleccion> createState() => _SeleccionState();
}

class _SeleccionState extends State<Seleccion> {
  @override
  Widget build(BuildContext context) {
    final mostrarInfos = Provider.of<SpoonServices>(context);
    mostrarInfos.mostrarInfo();
    return Scaffold(
        // endDrawer: Drawer(
        //     child: ListView(padding: EdgeInsets.zero, children: [
        //   DrawerHeader(
        //       decoration: const BoxDecoration(
        //         gradient: LinearGradient(
        //           colors: <Color>[
        //             Color.fromARGB(255, 54, 138, 57),
        //             Color.fromARGB(255, 49, 159, 53)
        //           ],
        //         ),
        //       ),
        //       child: Column(
        //         children: <Widget>[
        //           Material(
        //             borderRadius: const BorderRadius.all(Radius.circular(50.0)),
        //             elevation: 10,
        //             child: Padding(
        //               padding: const EdgeInsets.all(8.0),
        //               child: Image.asset("assets/img/apple.png",
        //                   height: 70, width: 70),
        //             ),
        //           ),
        //           const Text(
        //             'Estilo saludable',
        //             style: TextStyle(color: Colors.white, fontSize: 25.0),
        //           )
        //         ],
        //       )),
        //   ListTile(
        //     leading: const Icon(Icons.info),
        //     title: const Text(' Acerca de nosotros'),
        //     onTap: () {
        //       Navigator.pop(context);
        //     },
        //   ),
        //   ListTile(
        //     leading: const Icon(Icons.help),
        //     title: const Text('Ayuda'),
        //     onTap: () {
        //       Navigator.pop(context);
        //     },
        //   ),
        //   ListTile(
        //     leading: const Icon(Icons.contact_page),
        //     title: const Text('Contactanos'),
        //     onTap: () {
        //       Navigator.pop(context);
        //     },
        //   ),
        // ])),
        appBar: AppBar(
          title: const Text("Estilo de vida saludable"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CardList(),
                CardList(),
                CardList(),
                CardList(),

                /*   Text(
                  "hola: ${mostrarInfos.propiedad[0].day}"
                  "nuevi: ${mostrarInfos.propiedad[0].mealPlanId}"
                  "hola: ${mostrarInfos.propiedad[0].type}",
                  style: const TextStyle(
                      color: Colors.black26, fontWeight: FontWeight.bold),
                )*/
              ],
            ),
          ),
        ));
  }
}
