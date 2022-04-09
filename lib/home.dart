// ignore_for_file: avoid_print
import 'package:flutter/material.dart';
import './scan.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final curScaleFactor = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 227, 242, 253),
      body: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.fromLTRB(15, 45, 0, 0),
            child: IconButton(
              onPressed: () => {},
              icon: const Icon(
                Icons.settings_outlined,
                color: Color.fromARGB(255, 35, 151, 243),
              ),
              iconSize: 43,
            ),
          ),
          const SizedBox(
            height: 38,
          ),
          Text(
            "Tekan tombol kamera\nuntuk memindai kode QR",
            style: TextStyle(
              fontFamily: 'OpenSans',
              fontWeight: FontWeight.bold,
              fontSize: (27 * curScaleFactor),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 42),
            padding: EdgeInsets.zero,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
            // color: Colors.white,
            child: Image.asset(
              'assets/images/qr-code.png',
              // width: 700,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          Container(
            // color: Colors.black,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 35, 151, 243),
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 7,
                  offset: const Offset(0, 3.5), // changes position of shadow
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(7.0),
              child: IconButton(
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const Scanner(),
                  ),
                ),
                icon: const Icon(
                  Icons.camera_alt,
                  color: Colors.white,
                ),
                iconSize: 45,
              ),
            ),
          )
        ],
      ),
    );
  }
}
