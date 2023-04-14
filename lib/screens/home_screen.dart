import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/widgest.dart';


class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Peliculas en Cines"),
        actions: [
         IconButton(onPressed: (){}, icon:const Icon(Icons.search)
         )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children:   [ 
            // tarjetas principales 
            CardWiperscreen(),
      
            // slider horizontal de peliculas
            
            Movislider(),
      
      
      
            
      
             
      
      
          ],
        ),
      )
    );
  }
}