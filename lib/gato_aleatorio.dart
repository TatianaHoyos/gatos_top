import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class GatoAleatorio extends StatefulWidget {
  const GatoAleatorio({super.key});

  @override
  State<GatoAleatorio> createState() => _GatoAleatorioState();
}

class _GatoAleatorioState extends State<GatoAleatorio> {
  late Widget image;

@override
  void initState() {
    super.initState();
     loadImage("https://cataas.com/cat");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      image,
      const SizedBox(height: 25),
       Padding(
         padding:const EdgeInsets.symmetric(horizontal: 25.0),
         child: ElevatedButton(onPressed: (){
          loadImage("https://cataas.com/cat");
         
         },
         style: ElevatedButton.styleFrom(
          minimumSize: const Size.fromHeight(50),
          backgroundColor:const Color.fromARGB(255, 25, 23, 25),
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),      
          )    
         ),
         child: const Text("Refresh"),
         ),
                 
       ),
    ],
        ),
    );
  }

void loadImage(String url)async{
  setState(() {
    image= const CircularProgressIndicator();
  });

  var response = await http.get(Uri.parse(url));
  var imageData = response.bodyBytes;

  setState(() {
    image= Image.memory(imageData);
  });
     
  }
}
