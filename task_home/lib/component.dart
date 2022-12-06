import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

Widget CircleImage() => CircleAvatar(
      radius: 22.5,
      backgroundImage: AssetImage(
        'image/download.jfif',
      ),
    );
//---------------------------------------

Widget ButtonA({required String image, required String clor}) => Container(
    width: 45,
    decoration: BoxDecoration(
      color: HexColor('$clor'),
      //borderRadius: BorderRadius.circular(30),
      shape: BoxShape.circle,
    ),
    child: TextButton(
      onPressed: () {},
      child: SvgPicture.asset(
        'image/$image',
      ),
    ));
//------------------------------------------
Widget ButtonB({required String text, var function, var clor}) => Container(
      width: 80,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: clor,
      ),
      child: TextButton(
        // style: OutlinedButton.styleFrom(
        //   primary: Colors.black,
        //   backgroundColor: HexColor('0995EE'),
        // ),
        onPressed: function,
        child: Text(
          '$text',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
//  -------------------------------------------
Widget ButtonC({required String text, var function, var clor}) => Container(
      width: 110,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: clor,
      ),
      child: TextButton(
        // style: OutlinedButton.styleFrom(
        //   primary: Colors.black,
        //   backgroundColor: HexColor('0995EE'),
        // ),
        onPressed: function,
        child: Text(
          '$text',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
//-------------------------------------------------
Widget ButtonD({required String image, required String clor}) => Container(
    width: 45,
    decoration: BoxDecoration(
      color: HexColor('$clor'),
      border: Border.all(
        color: HexColor('1B182B'),
        width: 10,
        strokeAlign: StrokeAlign.outside,
      ),
      shape: BoxShape.circle,
    ),
    child: TextButton(
      onPressed: () {},
      child: SvgPicture.asset(
        'image/$image',
      ),
    ));
//---------------------------------------------------
Widget ButtonE({required String image, required String clor}) => Container(
      height: 55,
      width: 55,
      decoration: BoxDecoration(
        color: HexColor('$clor'),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child:
          TextButton(onPressed: () {}, child: SvgPicture.asset('image/$image')),
    );
//----------------------------------------------------------------
Widget Space(double h, double w) => SizedBox(
      width: w,
      height: h,
    );
// --------------------------------------
Widget TextA() => Text(
      'Hi, Vanessa',
      style: TextStyle(
          fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
    );
// --------------------------------
Widget TextB() => Text(
      'Where do you want be?',
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
//_----------------------------
Widget SearchPart() => Row(
      children: [
        Container(
          width: 290,
          child: TextFormField(
            style: TextStyle(
              color: Colors.white,
            ),
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.search,
                size: 30,
                color: HexColor('0995EE'),
              ),
              hintText: 'Search',
              hintStyle: TextStyle(
                color: Colors.white,
              ),
              filled: true,
              fillColor: HexColor('292639'),
              prefixIconColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        ButtonE(
          clor: '0995EE',
          image: 'location.svg',
        ),
      ],
    );
// ----------------------------
Widget PictureSec() => Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          height: 294,
          width: double.infinity,
          color: HexColor('1B182B'),
        ),
        Container(
          height: 270,
          width: double.infinity,
          color: HexColor('292639'),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.only(
            top: 12,
            start: 12,
            end: 12,
          ),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 180,
                decoration: BoxDecoration(
                  color: HexColor('0995EE'),
                  borderRadius: BorderRadius.circular(12),
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image(
                  image: AssetImage(
                    'image/river.jfif',
                  ),
                  fit: BoxFit.fill,
                ),
              ),
              Space(12, 0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Byron Beach',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Space(0, 158),
                        Text(
                          '4.9',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Space(0, 10),
                        Icon(
                          Icons.star_rate_rounded,
                          color: Colors.blue,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Image(
                          image: AssetImage('image/download.png'),
                          height: 40,
                          width: 40,
                        ),
                        Space(0, 8),
                        Text(
                          'Auastralia',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
            top: 247.5,
            right: 20,
            child: ButtonD(image: 'Star.svg', clor: '0995EE')),
      ],
    );
//=-----------------------------------------
Widget barButton() => BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          backgroundColor: HexColor('1B182B'),
          label: '.',
          icon: Icon(
            Icons.home_filled,
            color: HexColor('0995EE'),
            size: 40,
          ),
        ),
        BottomNavigationBarItem(
          label: '.',
          icon: Icon(
            Icons.business_center,
            size: 40,
          ),
        ),
        BottomNavigationBarItem(
          label: '.',
          icon: Icon(
            Icons.add,
            size: 40,
          ),
        ),
        BottomNavigationBarItem(
          label: '.',
          icon: Icon(
            Icons.bookmark,
            size: 40,
          ),
        ),
      ],
    );
