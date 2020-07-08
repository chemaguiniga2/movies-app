import 'package:flutter/material.dart';

class DataSearch extends SearchDelegate{
  @override
  List<Widget> buildActions(BuildContext context) {
      // Acciones de nuestro app bar, como icono para borrar text en input de buscar
      throw UnimplementedError();
    }
  
    @override
    Widget buildLeading(BuildContext context) {
      // Icono a la izquiera del app bar
      throw UnimplementedError();
    }
  
    @override
    Widget buildResults(BuildContext context) {
      // Builder que crea los resultados que vamos a mostrar
      throw UnimplementedError();
    }
  
    @override
    Widget buildSuggestions(BuildContext context) {
    // Sugerencias que aparecen cuando la pesona escribe
    throw UnimplementedError();
  }

}