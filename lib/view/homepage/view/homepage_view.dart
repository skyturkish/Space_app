import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_imbd_redesign_advanced/core/constants/image/image_constants.dart';
import 'package:flutter_imbd_redesign_advanced/product/widget/button/start_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(ImageConstants.instance.toJfif('space')),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Expanded(flex: 1, child: Text('  ')),
              Expanded(
                  flex: 1,
                  child: Padding(
                    padding: Paddings.symmetricMediumHorizontal,
                    child: Column(
                      children: [
                        Padding(
                          padding: Paddings.onlyBottomMedium,
                          child: Text(
                            'studyingSpace'.tr(),
                            style: Theme.of(context).textTheme.headline5,
                          ),
                        ),
                        Padding(
                          padding: Paddings.onlyBottomMedium,
                          child: Text(
                            'infoWelcome'.tr(),
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                        ),
                        StartButton(
                          primary: ColorUtilites.startButtonColor,
                          title: Text('knowMore'.tr()),
                          onPressed: () {},
                          height: MediaQuery.of(context).size.height * 0.07,
                        ),
                      ],
                    ),
                  )),
              //   Expanded(flex:1,child: ElevatedButton(onPressed: (){}, child: ))
            ],
          ),
        )
      ],
    ));
  }
}

class ColorUtilites {
  static const Color startButtonColor = Color.fromARGB(255, 17, 19, 124);
}

class Paddings {
  static const EdgeInsets onlyBottomMedium = EdgeInsets.only(bottom: 16.0);
  static const EdgeInsets symmetricMediumHorizontal = EdgeInsets.symmetric(horizontal: 12.0);
}
