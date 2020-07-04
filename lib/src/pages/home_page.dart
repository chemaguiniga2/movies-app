import 'package:flutter/material.dart';
import 'package:peliculas/src/providers/peliculas_provider.dart';
import 'package:peliculas/src/widgets/card_swiper_widget.dart';


class HomePage extends StatelessWidget {

  final peliculaProvider = new PeliculasProvider();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Películas en cines'),
        backgroundColor: Colors.indigoAccent,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){},
          )
        ],
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            _swiperTarjetas(),
            _footer(context),
          ],
        ),
      ),
      
      
    );
  }

  Widget _swiperTarjetas() {

    return FutureBuilder(
      future: peliculaProvider.getEnCines(),
      builder: (BuildContext context, AsyncSnapshot<List> snapshot) {

        if ( snapshot.hasData ) {

          return CardSwiper( peliculas: snapshot.data );
        } else {
          return Container(
            height: 400.0,
            child: Center(
              child: CircularProgressIndicator()
            )
          );
        }
      },
    );
    
    // peliculaProvider.getEnCines();
    // return CardSwiper(
    //   peliculas: [1,2,3,4,5],
    // );
    // return Container();
  }

  Widget _footer(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Text('Populares', style: Theme.of(context).textTheme.subhead),
          FutureBuilder(
            future: peliculaProvider.getPopulares(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              print(snapshot.data);
              return Container();
            },
          ),
        ],
      ),
    );
  }
}