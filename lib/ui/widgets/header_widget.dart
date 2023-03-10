import 'package:flutter/material.dart';
import 'package:flutter_application/gen/assets.gen.dart';
import 'package:flutter_application/lib.dart';
import 'package:flutter_application/ui/widgets/header_tab_widget.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width,
      height: width / 1.4681,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Align(
              alignment: Alignment.topCenter,
              child: Assets.images.imgBgHeader.image(
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.black.withOpacity(0.81),
                const Color(0xff484848).withOpacity(0.0),
                const Color(0xff9E9E9E).withOpacity(0.0),
                Colors.white,
              ], stops: const [
                0,
                0.3125,
                0.776,
                1
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Your Imagination Is\nYour Only Limit",
                  textAlign: TextAlign.center,
                  style: context.textTheme.headline1,
                ),
                const SizedBox(height: 60),
                Text(
                  "We always try to make our customer Happy. We provide all kind of facilities.\n"
                  "Your Satisfaction is our main priority",
                  textAlign: TextAlign.center,
                  style: context.textTheme.bodyText2
                      ?.copyWith(color: Colors.white),
                ),
                const SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () {
                    print("123");
                  },
                  child: Text(
                    "Discover more",
                    style: context.textTheme.headline6?.copyWith(
                      height: 1.0,
                    ),
                  ),
                )
              ],
            ),
          ),
          const Align(
            alignment: Alignment.topCenter,
            child: HeaderTabWidget(),
          )
        ],
      ),
    );
  }
}
