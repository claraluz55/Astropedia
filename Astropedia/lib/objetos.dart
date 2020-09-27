import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class objetos extends StatelessWidget {
  final String urlCeres =
      "https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Ceres_-_RC3_-_Haulani_Crater_%2822381131691%29.jpg/368px-Ceres_-_RC3_-_Haulani_Crater_%2822381131691%29.jpg";
  final String urlPluton =
      "https://upload.wikimedia.org/wikipedia/commons/thumb/e/ef/Pluto_in_True_Color_-_High-Res.jpg/375px-Pluto_in_True_Color_-_High-Res.jpg";
  final String urlCinturondeAsteriodes =
      "http://www.sistemasolarpedia.com/wp-content/uploads/2013/10/Cinturon-de-asteroides.jpg";
  final String urlSaturno =
      "https://www.republica.com/wp-content/uploads/2019/10/Saturno-1280x720.jpg";
  final String urlJupite =
      "https://upload.wikimedia.org/wikipedia/commons/2/2b/Jupiter_and_its_shrunken_Great_Red_Spot.jpg";
  final String urlUrano =
      "https://estaticos.muyinteresante.es/uploads/images/article/55365b6c34099b0279c8fbcc/anillos-urano.jpeg";
  final String urlNeptuno =
      "https://www.caracteristicas.co/wp-content/uploads/2017/05/neptuno-e1569255785939.jpg";
  final String urlKuiper =
      "https://enciclopediauniverso.com/wp-content/uploads/2019/08/El-Cinturon-de-Kuiper-en-el-Sistema-Solar-Exterior.png";
  final String urlLuna =
      "https://upload.wikimedia.org/wikipedia/commons/d/dd/Full_Moon_Luc_Viatour.jpg";
  final String urlHaley =
      "https://2380ie25r0n01w5tt7mvyi81-wpengine.netdna-ssl.com/wp-content/uploads/2016/08/Cometa_Halley_joya_life_1.jpg";
  final String urlEuropa =
      "https://upload.wikimedia.org/wikipedia/commons/5/54/Europa-moon.jpg";
  final String urlTitan =
      "https://elpais.com/elpais/imagenes/2015/12/10/ciencia/1449738113_825099_1449738284_noticia_grande.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'Sistema Solar',
            style: GoogleFonts.kaushanScript(
              fontSize: 30,
              color: Colors.purple[50],
            ),
          ),
          backgroundColor: Colors.deepPurple[400]),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  //Donde comienza y termina el degradado
                  begin: Alignment(0.0, 0.0),
                  end: Alignment(0.6, 0.7),
                  colors: [
                    Colors.deepPurple[400],
                    Colors.blueAccent,
                  ]),
            ),
          ),
          sistemaTable(),
        ],
      ),
    );
  } //build

  Widget sistemaTable() {
    return Table(
      children: [
        TableRow(children: [
          //Ceres
          Container(
            margin: EdgeInsets.all(10),
            height: 125,
            width: 60,
            child: ClipRRect(
              //Borde circular
              borderRadius: BorderRadius.circular(10.0),
              child: Container(
                width: 100,
                height: 125,
                child: Stack(
                  children: [
                    FadeInImage.assetNetwork(
                      placeholder: "assets/Gifs/loading.gif",
                      image: urlCeres,
                      width: 120,
                      height: 140,
                      //Para que la imagen lo cubra todo
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                        top: 105,
                        child: Text(
                          'Ceres',
                          style: GoogleFonts.comfortaa(
                              fontSize: 18,
                              color: Colors.yellow[50],
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
              ),
            ),
          ),
          //Pluton
          Container(
            margin: EdgeInsets.all(10),
            height: 125,
            width: 60,
            child: ClipRRect(
              //Borde circular
              borderRadius: BorderRadius.circular(10.0),
              child: Container(
                width: 100,
                height: 125,
                child: Stack(
                  children: [
                    FadeInImage.assetNetwork(
                      placeholder: "assets/Gifs/loading.gif",
                      image: urlPluton,
                      width: 120,
                      height: 140,
                      //Para que la imagen lo cubra todo
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                        top: 105,
                        child: Text(
                          'Pluton',
                          style: GoogleFonts.comfortaa(
                              fontSize: 18,
                              color: Colors.yellow[50],
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
              ),
            ),
          ),

          //Cinturon de asteroides
          Container(
            margin: EdgeInsets.all(10),
            height: 125,
            width: 60,
            child: ClipRRect(
              //Borde circular
              borderRadius: BorderRadius.circular(10.0),
              child: Container(
                width: 100,
                height: 125,
                child: Stack(
                  children: [
                    FadeInImage.assetNetwork(
                      placeholder: "assets/Gifs/loading.gif",
                      image: urlCinturondeAsteriodes,
                      width: 120,
                      height: 140,
                      //Para que la imagen lo cubra todo
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                        top: 80,
                        child: Text(
                          'Cinturon de\n Asteroides',
                          style: GoogleFonts.comfortaa(
                              fontSize: 18,
                              color: Colors.yellow[50],
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
              ),
            ),
          ),
        ]),
        //Fila 2
        TableRow(children: [
          //Ceres
          Container(
            margin: EdgeInsets.all(10),
            height: 125,
            width: 60,
            child: ClipRRect(
              //Borde circular
              borderRadius: BorderRadius.circular(10.0),
              child: Container(
                width: 100,
                height: 125,
                child: Stack(
                  children: [
                    FadeInImage.assetNetwork(
                      placeholder: "assets/Gifs/loading.gif",
                      image: urlKuiper,
                      width: 120,
                      height: 140,
                      //Para que la imagen lo cubra todo
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                        top: 80,
                        child: Text(
                          'Cinturon de\n Kuiper',
                          style: GoogleFonts.comfortaa(
                              fontSize: 18,
                              color: Colors.yellow[50],
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
              ),
            ),
          ),
          //Pluton
          Container(
            margin: EdgeInsets.all(10),
            height: 125,
            width: 60,
            child: ClipRRect(
              //Borde circular
              borderRadius: BorderRadius.circular(10.0),
              child: Container(
                width: 100,
                height: 125,
                child: Stack(
                  children: [
                    FadeInImage.assetNetwork(
                      placeholder: "assets/Gifs/loading.gif",
                      image: urlHaley,
                      width: 120,
                      height: 140,
                      //Para que la imagen lo cubra todo
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                        top: 10,
                        child: Text(
                          'Cometa\n Halley',
                          style: GoogleFonts.comfortaa(
                              fontSize: 18,
                              color: Colors.yellow[100],
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
              ),
            ),
          ),

          //Cinturon de asteroides
          Container(
            margin: EdgeInsets.all(10),
            height: 125,
            width: 60,
            child: ClipRRect(
              //Borde circular
              borderRadius: BorderRadius.circular(10.0),
              child: Container(
                width: 100,
                height: 125,
                child: Stack(
                  children: [
                    FadeInImage.assetNetwork(
                      placeholder: "assets/Gifs/loading.gif",
                      image: urlLuna,
                      width: 120,
                      height: 140,
                      //Para que la imagen lo cubra todo
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                        top: 105,
                        child: Text(
                          'Luna',
                          style: GoogleFonts.comfortaa(
                              fontSize: 18,
                              color: Colors.yellow[50],
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
              ),
            ),
          ),
        ]),
        //fila 3
        TableRow(children: [
          //Ceres
          Container(
            margin: EdgeInsets.all(10),
            height: 125,
            width: 60,
            child: ClipRRect(
              //Borde circular
              borderRadius: BorderRadius.circular(10.0),
              child: Container(
                width: 100,
                height: 125,
                child: Stack(
                  children: [
                    FadeInImage.assetNetwork(
                      placeholder: "assets/Gifs/loading.gif",
                      image: urlEuropa,
                      width: 120,
                      height: 140,
                      //Para que la imagen lo cubra todo
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                        top: 105,
                        child: Text(
                          'Europa',
                          style: GoogleFonts.comfortaa(
                              fontSize: 18,
                              color: Colors.yellow[50],
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
              ),
            ),
          ),
          //Pluton
          Container(
            margin: EdgeInsets.all(10),
            height: 125,
            width: 60,
            child: ClipRRect(
              //Borde circular
              borderRadius: BorderRadius.circular(10.0),
              child: Container(
                width: 100,
                height: 125,
                child: Stack(
                  children: [
                    FadeInImage.assetNetwork(
                      placeholder: "assets/Gifs/loading.gif",
                      image: urlTitan,
                      width: 120,
                      height: 140,
                      //Para que la imagen lo cubra todo
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                        top: 105,
                        child: Text(
                          'Titan',
                          style: GoogleFonts.comfortaa(
                              fontSize: 18,
                              color: Colors.yellow[50],
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
              ),
            ),
          ),

          //Cinturon de asteroides
          Container(
            margin: EdgeInsets.all(10),
            height: 125,
            width: 60,
            child: ClipRRect(
              //Borde circular
              borderRadius: BorderRadius.circular(10.0),
              child: Container(
                width: 100,
                height: 125,
                child: Stack(
                  children: [
                    FadeInImage.assetNetwork(
                      placeholder: "assets/Gifs/loading.gif",
                      image: urlJupite,
                      width: 120,
                      height: 140,
                      //Para que la imagen lo cubra todo
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                        top: 105,
                        child: Text(
                          'Jupiter',
                          style: GoogleFonts.comfortaa(
                              fontSize: 18,
                              color: Colors.yellow[50],
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
              ),
            ),
          ),
        ]),
        //fila 4
        TableRow(children: [
          //Ceres
          Container(
            margin: EdgeInsets.all(10),
            height: 125,
            width: 60,
            child: ClipRRect(
              //Borde circular
              borderRadius: BorderRadius.circular(10.0),
              child: Container(
                width: 100,
                height: 125,
                child: Stack(
                  children: [
                    FadeInImage.assetNetwork(
                      placeholder: "assets/Gifs/loading.gif",
                      image: urlSaturno,
                      width: 120,
                      height: 140,
                      //Para que la imagen lo cubra todo
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                        top: 105,
                        child: Text(
                          'Saturno',
                          style: GoogleFonts.comfortaa(
                              fontSize: 18,
                              color: Colors.yellow[50],
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
              ),
            ),
          ),
          //Pluton
          Container(
            margin: EdgeInsets.all(10),
            height: 125,
            width: 60,
            child: ClipRRect(
              //Borde circular
              borderRadius: BorderRadius.circular(10.0),
              child: Container(
                width: 100,
                height: 125,
                child: Stack(
                  children: [
                    FadeInImage.assetNetwork(
                      placeholder: "assets/Gifs/loading.gif",
                      image: urlUrano,
                      width: 120,
                      height: 140,
                      //Para que la imagen lo cubra todo
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                        top: 105,
                        child: Text(
                          'Urano',
                          style: GoogleFonts.comfortaa(
                              fontSize: 18,
                              color: Colors.yellow[50],
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
              ),
            ),
          ),

          //Cinturon de asteroides
          Container(
            margin: EdgeInsets.all(10),
            height: 125,
            width: 60,
            child: ClipRRect(
              //Borde circular
              borderRadius: BorderRadius.circular(10.0),
              child: Container(
                width: 100,
                height: 125,
                child: Stack(
                  children: [
                    FadeInImage.assetNetwork(
                      placeholder: "assets/Gifs/loading.gif",
                      image: urlNeptuno,
                      width: 120,
                      height: 140,
                      //Para que la imagen lo cubra todo
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                        top: 105,
                        child: Text(
                          'Neptuno',
                          style: GoogleFonts.comfortaa(
                              fontSize: 18,
                              color: Colors.yellow[50],
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
              ),
            ),
          ),
        ]),
        //fila 5
      ],
    );
  }
}
