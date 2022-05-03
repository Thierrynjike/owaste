import 'package:flutter/material.dart';


//final color = Color.fromRGBO(106, 171, 139, 100.0)

class Panier extends StatefulWidget {
  const Panier({ Key? key }) : super(key: key);

  @override
  State<Panier> createState() => _PanierState();
}

class _PanierState extends State<Panier> {

  //List<List<int>> debugy = [[1,2,3],[5,6,3],[8,7,9]];
  Color color = Color.fromRGBO(106, 171, 139, 100.0);
  List<Map<String, String>> articles = [
    {
      "article": "carrotes",
      "vendeur": "Rebecca",
      "img_vendeur": "assets/images/profile1.jpg",
      "distance": "1.2 Km",
      "image": "assets/images/carrotes.jpg",

    },
    
    {
      "article": "fromage",
      "vendeur": "Océane",
      "img_vendeur": "assets/images/profile.jpg",
      "distance": "1.4 Km",
      "image": "assets/images/fromage.jpg",

    },

    {
      "article": "jus d'orange",
      "vendeur": "Vivian",
      "img_vendeur": "assets/images/profile1.jpg",
      "distance": "2.0 Km",
      "image": "assets/images/jus.png",

    },

    {
      "article": "lait demi-écrémé",
      "vendeur": "Romain",
      "img_vendeur": "assets/images/profile.jpg",
      "distance": "2.3 Km",
      "image": "assets/images/lait.jpeg",

    },

    {
      "article": "Nutella",
      "vendeur": "Christopher",
      "img_vendeur": "assets/images/profile1.jpg",
      "distance": "3.1 Km",
      "image": "assets/images/nutella.jpeg",

    },

    {
      "article": "Poulet rôti",
      "vendeur": "Fabian",
      "img_vendeur": "assets/images/profile.jpg",
      "distance": "3.5 Km",
      "image": "assets/images/poulet.jpeg",

    },

    {
      "article": "tomates fraiches",
      "vendeur": "Maxime",
      "img_vendeur": "assets/images/profile1.jpg",
      "distance": "4.1 Km",
      "image": "assets/images/tomates.jpg",

    },
    
    {
      "article": "Vin blanc",
      "vendeur": "Loann",
      "img_vendeur": "assets/images/profile.jpg",
      "distance": "4.5 Km",
      "image": "assets/images/vin-blanc.jpg",

    },
            ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5.0,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        title: const Text("Panier", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),
        ),
      
      body: 
        ListView.builder(
          itemCount: articles.length,
          itemBuilder: (context, index) {
              return InkWell(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                  ),
                  padding: const EdgeInsets.only(left:20.0, right:20.0),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                     Container(

                       child: Card(
                         
                         child: Image.asset("${articles[index]["image"]}"),
                          elevation: 5.0,

                         ),
                         margin:const EdgeInsets.only(left:20.0, right:20.0, top:2.0, bottom: 2.0),
                         width: 50.0,
                         height: 50.0,
                       
            
                     ),
                     Container(
                     child: Column(
                       
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                          Text("${articles[index]['article']}",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold
                          ),
                          ),
                          Row(
                            children: [
                              const Icon(Icons.location_pin),
                              Text("${articles[index]['distance']}")
                            ],
                            ),
                          Row(children: [
/*                               Container(
                              
                                decoration: BoxDecoration(shape: BoxShape.circle),
                                width: 10.0,
                                height: 10.0,
                                padding: const EdgeInsets.only(right: 5.0),
                                child: FittedBox(
                                  fit: BoxFit.cover,
                                  child: Image.asset("${articles[index]['img_vendeur']}",),
                                  ),
                                
                              ), */
                              Text("${articles[index]['vendeur']}"),
                              
                          ],)
                          
                       ],
                       ),
                      ),
                      
                      Expanded(
                      child: Container(
                      alignment: Alignment.centerRight,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: color    
                        ),
                                         
                        
                        onPressed: (){

                        },
                        child: const Text("Finaliser")
                        )
                  )
                  )
                      
                    ]
                    ),
                ),
              );
          },
        )
    );
  }
}