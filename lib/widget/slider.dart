import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:flutter/material.dart';

class SliderImage extends StatefulWidget {
  @override
  _SliderImageState createState() => _SliderImageState();
}

class _SliderImageState extends State<SliderImage> {
  int pageIndex=0;


 
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 300,
          width: double.infinity,
          child: PageView(
            children:[

              Images('images/2022-08-31 04.08.46.jpg'),
              Images('images/2022-08-31 04.08.43.jpg'),
              Images('images/2022-08-31 04.08.50.jpg'),

            ],

            onPageChanged: (index){
              setState(() {
                pageIndex=index;
              });
            },
          ),
        ),
        Positioned(
          right: 180,
          top: 230,

          child: CarouselIndicator(
            color: Colors.black,
            activeColor:Colors.white ,

            count: 3,
            index: pageIndex,
          ),
        ),
      ],
    );
  }
  Widget Images(String photo) => Container(height: 300,child: Image.asset(photo),);
}