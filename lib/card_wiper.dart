import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class CardWiperscreen extends StatefulWidget {
  const CardWiperscreen({Key? key}) : super(key: key);

  @override
  State<CardWiperscreen> createState() => _CardWiperscreenState();
}

class _CardWiperscreenState extends State<CardWiperscreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height * 0.5,
      child: Swiper(
        itemCount: 10,
        layout: SwiperLayout.STACK,
        itemWidth: size.width * 0.6,
        itemHeight: size.height * 0.4,
        itemBuilder:(  _ , int index) { 
          return GestureDetector(
            onTap: () => Navigator.pushNamed(context, "details", arguments: "details", ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: const  FadeInImage(
                  placeholder: NetworkImage("http://via.placeholder.com/300x400"),
                  image: NetworkImage("http://via.placeholder.com/300x400"),
                  fit: BoxFit.cover,),
            ),
          );
        },
      ),
    );
  }
}
