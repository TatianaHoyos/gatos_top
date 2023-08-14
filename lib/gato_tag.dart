import 'dart:convert';
import 'package:searchfield/searchfield.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class GatoTag extends StatefulWidget {
  const GatoTag({super.key});

  @override
  State<GatoTag> createState() => _GatoTagState();
}

class _GatoTagState extends State<GatoTag> {

List<dynamic>categoria=[];

 Future<void> obtenercategoria() async {
      var response = await http.get(Uri.parse("https://cataas.com/api/tags"));
      if (response.statusCode==200){
        categoria=jsonDecode(response.body)as List <dynamic>;
       
        setState(() { });
      }else{
      categoria= List.empty();
      }
    }
    @override
    void initState(){
      super.initState();
      obtenercategoria();
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SearchField<String>(
            hint: "Selecciona una opción",
            searchInputDecoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueGrey.shade200,width: 1),
                borderRadius: BorderRadius.circular(10),
                 ),
                 focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue.withOpacity(0.8),width: 2),
                borderRadius: BorderRadius.circular(10),
                 ), 
            ),
            itemHeight: 50,
            maxSuggestionsInViewPort: 10,
                 suggestions: categoria
                .map(
                (e) => SearchFieldListItem<String>(
                  e,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(e),
                  ),
              ),
              ).toList(),
            )
        ],
      ),
    );   
  }
}