import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Image(image: AssetImage('assets/landscape.jpg')),
          const Title(),
          const ButtonSection(),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: const Text('Nostrud laborum fugiat aute esse. Consectetur ipsum eu do quis. Nisi esse excepteur nostrud eiusmod duis ea dolore cupidatat. Eu consectetur sunt ad aliqua mollit anim in minim ullamco qui ullamco nulla. Culpa laboris dolor in ullamco id minim amet reprehenderit. Sunt laboris et exercitation ipsum nostrud occaecat culpa ipsum id irure anim. Ea velit voluptate fugiat qui.'))
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomButton(icon: Icons.call, texto: 'CALL',),     
          CustomButton(icon: Icons.route, texto: 'ROUTE',),     
          CustomButton(icon: Icons.share, texto: 'SHARE',),     
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String texto;
  const CustomButton({
    super.key, required this.icon, required this.texto,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
        ),
        Text(
          texto,
          style: const TextStyle(color: Colors.blue),
        )
      ],
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Ea aute ex fugiat veniam cillum',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'commodo id non aute',
                style: TextStyle(color: Colors.black12),
              )
            ],
          ),
        ),
        const Row(
          children: [
            Icon(
              Icons.star,
              color: Colors.red,
            ),
            Text('41')
          ],
        )
      ],
    );
  }
}
