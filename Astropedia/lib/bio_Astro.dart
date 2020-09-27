import 'package:Astropedia/objetos.dart';
import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';

class BioAstro extends StatelessWidget {
  String urlSistemaSolar =
      "https://plustatic.com/470/responsive-images/planetas-sistema-solar___large_990_660.jfif";
  String bioSistemaSolar =
      "El Sistema Solar “no es más” que un conjunto de cuerpos celestes atrapados por la gravedad de una estrella: el Sol. En constante movimiento por el espacio, estamos muy lejos de todo. Al menos, desde nuestra perspectiva. Y es que Próxima Centauri, la estrella más cercana al Sistema Solar, está a una distancia de 4’22 años luz.";
  bool meGusta = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading:
              Icon(Icons.brightness_3, size: 40, color: Colors.yellow[100]),
          title: Text(
            'Atropedia',
            style: GoogleFonts.kaushanScript(
              fontSize: 30,
              color: Colors.purple[50],
            ),
          ),
          backgroundColor: Colors.deepPurple[400]),
      body: Stack(
        children: [
          Container(
            //Degradado
            decoration: BoxDecoration(
                //Degradado
                gradient: LinearGradient(
                    //Donde comienza y termina el degradado
                    begin: Alignment(0.0, 0.0),
                    end: Alignment(0.6, 0.7),
                    colors: [
                  Colors.deepPurple[400],
                  Colors.blueAccent,
                ])),
          ),
          Column(
            children: [
              Expanded(child: Container()),
              sistemaSolar(),
              Expanded(child: Container()),
              Text(
                'Ver más del Sistema Solar',
                style: GoogleFonts.indieFlower(
                  fontSize: 25,
                  color: Colors.purple[50],
                ),
              ),
              Expanded(child: Container()),
              objetosCelestes(context),
              Expanded(child: Container()),
            ],
          )
        ],
      ),
    );
  } //build

  Widget sistemaSolar() {
    return Center(
      child: Container(
        height: 500,
        width: 350,
        child: Stack(
          children: [
            Positioned(
              top: 5,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: FadeInImage.assetNetwork(
                  placeholder: "assets/Gifs/loading.gif",
                  image: urlSistemaSolar,
                  width: 350,
                ),
              ),
            ),
            Positioned(
              top: 155,
              left: 10,
              child: Container(
                width: 330,
                height: 300,
                decoration: BoxDecoration(
                    color: Colors.deepPurple[50],
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //Sistema Solar
                  children: [
                    Text(
                      'Sistema Solar',
                      style: GoogleFonts.indieFlower(
                          fontSize: 28, color: Colors.purple[700]),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      child: Text(
                        bioSistemaSolar,
                        style: GoogleFonts.comfortaa(
                          fontSize: 16,
                          color: Colors.purple[700],
                        ),
                      ),
                    ),
                    Row(
                      //Centrar boton
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FlatButton(
                          color: Colors.teal[300],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          onPressed: () {},
                          child: Text(
                            'Ver mas',
                            style: GoogleFonts.prompt(
                                fontSize: 20, color: Colors.black),
                          ),
                        ),

                        //Separación
                        SizedBox(width: 30),

                        //Boton de me gusta
                        FlatButton(
                            color: Colors.purple[300],
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            onPressed: () {},
                            child: Row(
                              children: [
                                Text(
                                  'Me gusta',
                                  style: GoogleFonts.prompt(
                                      fontSize: 20, color: Colors.black),
                                ),
                                Icon(Icons.favorite_border)
                              ],
                            ))
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget objetosCelestes(BuildContext context) {
    return Center(
      child: Container(
        height: 120,
        width: 380,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            //El sol
            Container(
              margin: EdgeInsets.all(5),
              width: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/Objetos/Sol.jpg"),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10)),
              child: Container(
                margin: EdgeInsets.only(top: 85, left: 2),
                child: Text(
                  "El Sol",
                  style: GoogleFonts.comfortaa(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),

            //Container Sol
            Container(
              margin: EdgeInsets.all(5),
              width: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/Objetos/mercurio.png"),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10)),
              child: Container(
                margin: EdgeInsets.only(top: 85, left: 2),
                child: Text(
                  "Mercurio",
                  style: GoogleFonts.comfortaa(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.all(5),
              width: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/Objetos/venus.jpg"),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10)),
              child: Container(
                margin: EdgeInsets.only(top: 85, left: 2),
                child: Text(
                  "Venus",
                  style: GoogleFonts.comfortaa(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.all(5),
              width: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/Objetos/tierra.jpg"),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10)),
              child: Container(
                margin: EdgeInsets.only(top: 85, left: 2),
                child: Text(
                  "Tierra",
                  style: GoogleFonts.comfortaa(
                      fontSize: 18,
                      color: Colors.green[50],
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.all(5),
              width: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/Objetos/marte.jpg"),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10)),
              child: Container(
                margin: EdgeInsets.only(top: 85, left: 2),
                child: Text(
                  "Marte",
                  style: GoogleFonts.comfortaa(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.all(5),
              width: 100,
              decoration: BoxDecoration(
                  // color: Colors.amber,
                  image: DecorationImage(
                      image: AssetImage("assets/Objetos/sistemaSolar.jpg"),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10)),
              child: Container(
                  //Boton mas
                  child: IconButton(
                icon: Icon(
                  Icons.add_circle_outline,
                  color: Colors.purple[100],
                  size: 50,
                ),
                onPressed: () {
                  print("Más");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => objetos(),
                    ),
                  );
                },
              )),
            ),
          ],
        ),
      ),
    );
  }
}
