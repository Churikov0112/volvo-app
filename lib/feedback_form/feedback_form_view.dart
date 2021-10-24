import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:volvo_app/main.dart';

class FeedbackFormView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width - 36,
          height: MediaQuery.of(context).size.height * 0.72,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 2),
                    blurRadius: 18,
                    spreadRadius: 4,
                    color: Color(0xFF0000000A))
              ]),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                child: Image.asset(
                  'assets/images/service_volvo_photo.jpeg',
                  width: MediaQuery.of(context).size.width - 36,
                ),
              ),
              SizedBox(height: 36),
              RatingBar.builder(
                initialRating: 4,
                ignoreGestures: false,
                minRating: 0,
                glow: false,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemSize: 40,
                itemCount: 5,
                itemPadding: const EdgeInsets.symmetric(horizontal: 3.5),
                itemBuilder: (context, _) =>
                    SvgPicture.asset('assets/icons/star.svg'),
                onRatingUpdate: (rating) {
                  // ignore: avoid_print
                  print(rating);
                },
              ),
              SizedBox(height: 36),
              Text(
                'VOLVO CAR ТУЛЬСКАЯ',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'VolvoNovum',
                ),
              ),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'Оцените техобслуживание в сервисе. Для нас важно ваше мнение.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    fontFamily: 'VolvoNovum',
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(
                  right: 18.0,
                  left: 18,
                  bottom: 24,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        height: 56,
                        width: MediaQuery.of(context).size.width / 2 - 45,
                        decoration: BoxDecoration(
                          color: const Color(0xFFDDE7FF),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Center(
                          child: Text(
                            'Отменить',
                            style: TextStyle(
                              fontFamily: 'VolvoNovum',
                              color: VolvoColors.firstColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        height: 56,
                        width: MediaQuery.of(context).size.width / 2 - 45,
                        decoration: BoxDecoration(
                          color: const Color(0xFF162870),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Center(
                          child: Text(
                            'Подтвердить',
                            style: TextStyle(
                              fontFamily: 'VolvoNovum',
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
