import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/widget/Card.dart';
import 'package:untitled/widget/ElivetedButtom.dart';
import 'package:untitled/widget/Transform%20image.dart';

import '../Cubit/card_selection_cubit.dart';
import '../widget/containerSelect.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List credit = [
      CardSelect(imagePath: 'assets/card.png', title: 'Parent'),
      CardSelect(imagePath: 'assets/card.png', title: 'Officer'),
      CardSelect(imagePath: 'assets/card.png', title: 'MBAG'),
      CardSelect(imagePath: 'assets/card.png', title: 'Meta'),
    ];
    List color = [
Color(0XFFF1EDA6),
Color(0XFFFAC4C4),
Color(0XFFAAE6B0),
Color(0XFFA6F1ED),
    ];
    final cardSelectionCubit = context.read<CardSelectionCubit>();
    final colorSelectionCubit = context.read<ColorSelectionCubit>();
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset(
              'assets/background.png',
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Image.asset('assets/Title.png', fit: BoxFit.cover),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(credit.length, (index) {
                  return GestureDetector(
                    onTap: () {
                      cardSelectionCubit.updateIndex(index);
                      print(index);
                    },
                    child: credit[index],
                  );
                }),
              ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Select your colour',
                    style: TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  TransformImage(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(color.length, (index) {
                      return GestureDetector(
                        onTap: () {
                          colorSelectionCubit.updateIndex(index);
                          print(index);
                        },
                        child: ContainerSelect(color: color[index]),
                      );
                    }),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Buttoms(
                      onPressed: (){},
                      color: Color(0xFFEEBB49),
                      text: 'Activate',
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Buttoms(
                      onPressed: (){},
                      color: Colors.transparent,
                      text: 'Request card',
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
