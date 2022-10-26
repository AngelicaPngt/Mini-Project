import 'package:flutter/material.dart';

import '../model/budaya.dart';

class DetailBudaya extends StatelessWidget {
  final Budaya budaya;

  const DetailBudaya({
    Key? key,
    required this.budaya,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(budaya.title),
      ),
      body: Container(
          alignment: Alignment.centerLeft,
          margin: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //Gambar
              Image.asset(
                budaya.pathImage,
                width: double.infinity,
                height: 300,
                fit: BoxFit.cover,
              ),

              //Jenis Budaya
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(top: 20),
                child: const Text(
                  "Jenis Budaya",
                  style: TextStyle(
                    color: Colors.brown,
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

              //Jenis Budaya value
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(top: 10),
                child: Text(
                  budaya.type,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),

              //Deskripsi Budaya
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(top: 20),
                child: const Text(
                  "Deskripsi",
                  style: TextStyle(
                    color: Colors.brown,
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

              //Deskripsi Budaya value
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  budaya.desc,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          )),
    );
  }
}
