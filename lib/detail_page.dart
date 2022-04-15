import 'package:flutter/material.dart';
import 'package:oraimoui/constants.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kHeaderColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kHeaderColor,
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: kBgColor,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: SizedBox(
              height: 240,
              child: Stack(
                //fit: StackFit.expand,
                //clipBehavior: Clip.antiAliasWithSaveLayer,
                children: [
                  Text(
                    'oraimo riff'.toUpperCase(),
                    style: const TextStyle(
                        color: kPainterColor,
                        fontSize: 50,
                        fontWeight: FontWeight.bold),
                  ),
                  Positioned(
                    top: 30,
                    left: 60,
                    child: SizedBox(
                      height: 200,
                      child: Image.asset(
                        'assets/oraimo pods.png',
                        alignment: Alignment.center,
                        //color: kHeaderColor,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 50,
                  width: 170,
                  decoration: BoxDecoration(
                      color: kHeaderColor,
                      borderRadius: BorderRadius.all(const Radius.circular(5)),
                      border: Border.all(color: kPainterColor, width: 1.5)),
                  child: Image.asset(
                    'assets/oraimo pods.png',
                    alignment: Alignment.center,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 50,
                  width: 170,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/bg pods.png',
                            //color: kHeaderColor,
                          ),
                          fit: BoxFit.cover)),
                  child: const Icon(
                    Icons.play_arrow_rounded,
                    color: kHeaderColor,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'smaller for comfort'.toUpperCase(),
              style: const TextStyle(
                color: kBgColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'Oraimo Riff features an innovative ergonomic '
              'design and the weight of single earbud is only '
              '3.5g, forming an exceptional experience of '
              'premium comfort',
              style: TextStyle(
                color: kTextColor,
                fontSize: 18,
              ),
            ),
          ),
          const CustomRichText(
            text: 'Dynamic Sound-Never Lose a Beat',
          ),
          const CustomRichText(
            text: 'Open and Connect-Convenience at your side',
          ),
          const CustomRichText(
            text: 'Touch Control',
          ),
          const CustomRichText(
            text: 'Enc 2-mic Technology',
          ),
          const SizedBox(
            height: 45,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: SizedBox(
                  height: 50,
                  width: 120,
                  child: RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: '\$33',
                          style: TextStyle(color: kBgColor, fontSize: 16, decoration: TextDecoration.lineThrough),
                        ),
                        TextSpan(
                          text: '  \$26',
                          style: TextStyle(color: kBgColor, fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                  height: 50,
                  width: 120,
                  alignment: Alignment.bottomRight,
                  decoration: const BoxDecoration(
                    color: kPainterColor,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(25)),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Add to cart',
                      style: TextStyle(color: kHeaderColor, fontSize: 16),
                    ),
                  )),
            ],
          )
        ],
      ),
    );
  }
}

class CustomRichText extends StatelessWidget {
  const CustomRichText({
    required this.text,
    Key? key,
  }) : super(key: key);
  final String? text;
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          const WidgetSpan(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.0),
              child: Icon(
                Icons.arrow_drop_down_rounded,
                color: kPainterColor,
                size: 20,
              ),
            ),
          ),
          TextSpan(
              text: text!,
              style: const TextStyle(color: kBgColor, fontSize: 15)),
        ],
      ),
    );
  }
}
