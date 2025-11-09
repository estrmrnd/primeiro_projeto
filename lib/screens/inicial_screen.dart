import 'package:flutter/material.dart';
import 'package:primeiro_projeto/components/task.dart';

class InicialScreen extends StatefulWidget {
  const InicialScreen({super.key});

  @override
  State<InicialScreen> createState() => _InicialScreenState();
}

class _InicialScreenState extends State<InicialScreen> {
  bool opacidade = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text('Tarefas'),
      ),
      body: AnimatedOpacity(
        opacity: opacidade ? 1 : 0,
        duration: const Duration(milliseconds: 800),
        child: ListView(
          children: const [
            Task(
                'Andar de Bicicleta',
                'https://images.emojiterra.com/google/android-10/512px/1f6b4.png',
                1),
            Task(
                'Ler Um Capítulo',
                'https://w7.pngwing.com/pngs/540/827/png-transparent-emoji-reading-book-illustration-smiley-reading-emoticon-emoji-reading-smile-s-face-reading-comprehension-reading-smile-cliparts.png',
                4),
            Task(
                'Se Hidratar',
                'https://st.depositphotos.com/1001911/1476/v/450/depositphotos_14764029-stock-illustration-drinking-water-emoticon.jpg',
                1),
            Task(
                'Dormir antes das 22h',
                'https://w7.pngwing.com/pngs/1018/609/png-transparent-sleepy-emoji-illustration-emoji-domain-iphone-sleep-face-smiley-sleep-thumbnail.png',
                5),
            Task(
                'Meditar',
                'https://images.emojiterra.com/google/noto-emoji/unicode-15/color/512px/1f9d8-2640.png',
                5),
            SizedBox(height: 80,)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          opacidade = !opacidade;
        });

      },
        child: const Icon(Icons.remove_red_eye),),
    );
  }
}