import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-page';

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final profil = const Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/Dante.png'),
        ),
      ),
    );

    final welcome = const Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Selamat datang',
        style: TextStyle(fontSize: 28.0, color: Colors.black),
      ),
    );

    final paragraf1 = const Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Halo, nama saya Dante barbershop saya sekolah di Universitas nasional singapore .',
        style: TextStyle(fontSize: 16.0, color: Colors.black),
      ),
    );

    final paragraf2 = const Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Saat ini, saya adalah seorang programmer.',
        style: TextStyle(fontSize: 16.0, color: Colors.black),
      ),
    );

    final paragraf3 = const Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Pernah menempuh pendidikan di SMK MARHAS Margahayu disitu saya menggambil jurusan RPL .',
        style: TextStyle(fontSize: 16.0, color: Colors.black),
      ),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(28.0),
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromARGB(255, 250, 161, 161),
          Color.fromRGBO(247, 111, 111, 1),
          Color.fromRGBO(248, 29, 29, 1),
        ]),
      ),
      child: Column(
        children: <Widget>[profil, welcome, paragraf1, paragraf2, paragraf3],
      ),
    );

    return Scaffold(
      body: body,
    );
  }
}
