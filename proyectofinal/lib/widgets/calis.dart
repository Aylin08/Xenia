import 'package:flutter/material.dart';

class CardList extends StatelessWidget {
  const CardList({super.key});

  @override
  Widget build(BuildContext context) {
    return const CardRow(
      label: "",
    );
  }
}

class CardRow extends StatelessWidget {
  final String label;
  const CardRow({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      child: Stack(children: [
        cardFinal,
        imgs,
      ]),
    );
  }
}

final String label = "";
final cardFinal = Container(
    height: 130.0,
    width: 500.0,
    margin: const EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
      color: const Color(0xFF333366),
      shape: BoxShape.rectangle,
      borderRadius: BorderRadius.circular(8.0),
      boxShadow: const [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 10.0,
          offset: Offset(0.0, 10.0),
        ),
      ],
    ),
    child: Stack(children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "QUIERO TEXTO AQUII, QUE SE VEA",
            style: const TextStyle(color: Colors.black),
          ),
          TextButton(onPressed: () => {}, child: const Icon(Icons.next_plan)),
        ],
      ),
    ]));

final imgs = Container(
  margin: const EdgeInsets.symmetric(vertical: 16.0),
  alignment: FractionalOffset.centerLeft,
  child: const Image(
    image: AssetImage("assets/img/AYLIN 20.png"),
    height: 92.0,
    width: 92.0,
  ),
);
