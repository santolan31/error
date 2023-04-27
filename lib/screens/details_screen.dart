import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/widgest.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODO: cambiar luego por una instancia de movie

    final String movie =
        ModalRoute.of(context)?.settings.arguments.toString() ?? "no-movie";

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _CustomAppbar(),
          SliverList(
              delegate: SliverChildListDelegate([
            _PosterandTitle(),
            _Overview(),
            CastingCards()
          
            
          ]))
        ],
      ),
    );
  }
}

class _CustomAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextTheme = Theme.of(context).textTheme;
    return SliverAppBar(
      backgroundColor: Colors.indigo,
      expandedHeight: 100,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
          titlePadding: EdgeInsets.all(0),
          centerTitle: true,
          title: Container(
            width: double.infinity,
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.only(bottom: 10),
            color: Colors.indigo,
            child: Text(
              "Movie title",
              style: TextStyle(fontSize: 30),
            ),
          ),
          background: FadeInImage(
            placeholder: NetworkImage("https://via.placeholder.com/500x300"),
            image: NetworkImage("https://via.placeholder.com/500x300"),
            fit: BoxFit.cover,
          )),
    );
  }
}

class _PosterandTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: FadeInImage(
              placeholder: NetworkImage("https://via.placeholder.com/200x300"),
              image: NetworkImage("https://via.placeholder.com/200x300"),
              height: 150,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "movie.title",
                style: Theme.of(context).textTheme.headline5,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
              Text(
                "movie.OriginalTitle",
                style: Theme.of(context).textTheme.subtitle2,
                overflow: TextOverflow.ellipsis,
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    size: 20,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "movie.voteAverage",
                    style: Theme.of(context).textTheme.caption,
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class _Overview extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20 , vertical: 20),
      child: Text("Reprehenderit laboris laboris duis aute incididunt amet exercitation. Minim non Lorem officia officia minim exercitation ut tempor ex do. Commodo aute nulla dolore sit culpa reprehenderit. Ullamco sit labore pariatur irure labore nisi tempor ipsum velit nostrud ipsum anim voluptate in.Nisi Lorem nostrud aute sint nulla non dolore dolore ea ea. Velit incididunt amet eu commodo ea et mollit tempor sunt Lorem officia labore aliquip. Magna enim elit adipisicing fugiat consequat cupidatat Lorem consectetur enim qui minim proident.Nostrud sunt consequat esse est duis consequat qui consequat sunt. Labore sint laboris nostrud veniam velit et officia laborum ullamco anim sint. Adipisicing quis aliquip eu eu tempor non. Elit laboris velit aliqua do sint adipisicing aliqua ipsum est aliquip magna excepteur laborum.",
      textAlign: TextAlign.justify,
      style: Theme.of(context).textTheme.subtitle1,
      
      ),
      
      
    );
  }
}