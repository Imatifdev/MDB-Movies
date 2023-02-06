// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:mdb_movies/Model/moviemodel.dart';
import 'package:mdb_movies/ModelView/services/viewmodel.dart';
import 'package:shimmer/shimmer.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    MovieViewModel moviesview = MovieViewModel();
    return Scaffold(
      body: Column(
        children: [
          FutureBuilder(
            future: moviesview.getmoviesdata(),
            builder: ((context, AsyncSnapshot<MovieModel> snapshot) {
              if (!snapshot.hasData) {
                return Shimmer.fromColors(
                    child: ListTile(
                      leading: SizedBox(
                        height: 50,
                        width: 50,
                      ),
                      title: SizedBox(
                        height: 20,
                        width: 80,
                      ),
                      subtitle: SizedBox(
                        height: 20,
                        width: 80,
                      ),
                    ),
                    baseColor: Colors.grey,
                    highlightColor: Colors.black);
              } else {
                return Expanded(
                    child: ListView.builder(
                        itemCount: snapshot.data!.title!.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(snapshot.data!.title.toString()),
                          );
                        }));
              }
            }),
          ),
        ],
      ),
    );
  }
}
