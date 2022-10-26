import 'package:flutter/material.dart';
import 'package:budaya_app/const.dart';
import '../model/budaya.dart';
import 'detail_budaya_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = TextEditingController();
  List<Budaya> budayas = allBudaya;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        //Gambar
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
          child: Stack(
            alignment: Alignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Image.asset(
                  imgHome,
                  // height: 150.0,
                  // width: 100.0,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(25),
                child: Text(
                  textAlign: TextAlign.center,
                  "Selamat Datang Di PanggyaBudaya!",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      background: Paint()
                        ..strokeWidth = 30.0
                        ..color = Colors.transparent
                        ..style = PaintingStyle.stroke
                        ..strokeJoin = StrokeJoin.round),
                ),
              ),
            ],
          ),
        ),

        //SEARCH BOX
        Container(
          margin: const EdgeInsets.fromLTRB(16, 4, 16, 4),
          child: TextField(
            cursorColor: Colors.brown,
            controller: controller,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.search),
              hintText: "cari budaya favoritemu!",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide: const BorderSide(width: 3, color: Colors.brown)),
            ),
            onChanged: searchBudaya,
          ),
        ),

        //LIST TILE
        Expanded(
            child: ListView.builder(
                padding: const EdgeInsets.only(top: 15),
                itemCount: budayas.length,
                itemBuilder: (context, index) {
                  final budaya = budayas[index];
                  return ListTile(
                    textColor: Colors.brown,
                    contentPadding: const EdgeInsets.fromLTRB(20, 0, 16, 5),
                    leading: Image.asset(
                      budaya.pathImage,
                      fit: BoxFit.fill,
                      width: 120,
                      height: 150,
                    ),
                    title: Text(budaya.title,
                        style: const TextStyle(
                          color: Colors.brown,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                        )),
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailBudaya(budaya: budaya),
                      ),
                    ),
                  );
                })),
      ],
    );
  }

  void searchBudaya(String query) {
    final suggestion = allBudaya.where((budaya) {
      final budayaTitle = budaya.title.toLowerCase();
      final input = query.toLowerCase();
      return budayaTitle.contains(input);
    }).toList();

    setState(() => budayas = suggestion);
  }
}
