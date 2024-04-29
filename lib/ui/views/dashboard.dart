import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  static String id = "dashboard";
  //const Dashboard({super.key});
  var height, width;
  List imgData = [
    "assets/images/pdf.png",
    "assets/images/quiz.png",
    "assets/images/pastpapers.png",
    "assets/images/job.png",
    "assets/images/mcqs.png",
    "assets/images/email2.png",

  ];

  List lista = [
    "PDF",
    "Preguntas",
    "Reportes",
    "Búsqueda",
    "Trabajos Listos",
    "Email",

  ];

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.indigo,
          width: width,
        
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                ),
                height: height * 0.23,
                width: width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 35,
                        left: 20,
                        right: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {}, // Evento del touch
                            child: Icon(
                                Icons.sort,
                                color: Colors.white,
                              size: 40,
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                              image: DecorationImage(
                                image: AssetImage("assets/images/woman.png"),
                              ),
                            ),
        
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 20,
                        left: 30,
        
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Dashboard",
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1,
        
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
        
                          Text("Última actualización: 28 Abril 2024",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white54,
                              letterSpacing: 1,
        
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
        
              ),
        
              SingleChildScrollView(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white70, // En esta línea le cambias la opcacidad.
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  // height: height,
                  width: width,
                  padding: EdgeInsets.only(bottom: 24),

                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.2,
                      mainAxisSpacing: 25,

                    ),

                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: imgData.length,
                    itemBuilder: (context, index){
                      return InkWell(
                        onTap: () {

                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                spreadRadius: 1,
                                blurRadius: 6,

                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(imgData[index],
                              width: 100,
                              ),
                              Text(
                                lista[index],
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],

                          ),


                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
