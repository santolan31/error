import 'package:flutter/material.dart';

class CastingCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      width: double.infinity,
      height: 180,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: ( _, int index) {
          return _CastCard();
        },
      ),
    );
  }
}

class _CastCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      
      width: 130,
      height: 190,
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: FadeInImage(placeholder:NetworkImage("https://via.placeholder.com/200x200") ,image:NetworkImage("https://via.placeholder.com/150x200"),
            height: 140 ,
            width: 115,
            fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 10,),
          Text("Actor.name data ",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}
