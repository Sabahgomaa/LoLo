import 'package:flutter/material.dart';

import '../../../../../Widget/custom_text.dart';

class CardItem extends StatefulWidget {
  const CardItem({Key? key}) : super(key: key);

  @override
  State<CardItem> createState() => _CardItemState();
}

class _CardItemState extends State<CardItem> {
  @override
  Widget build(BuildContext context) {
    int count = 1;
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 150,
                height: 120,
                child: Image.asset(
                  'assets/images/ba.jpg',
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomText(
                    text: 'جامبسوت بيج اوفر سايز',
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                  const CustomText(
                    text: 'اللون:بيج',
                    fontSize: 10,
                  ),
                  const CustomText(
                    text: 'المقاس:XL',
                    fontSize: 10,
                  ),
                  const Icon(Icons.star_rate),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const CircleAvatar(
                            maxRadius: 13,
                            child: Icon(
                              Icons.remove,
                              color: Colors.white,
                              size: 15,
                            ),
                            backgroundColor: Colors.deepPurple,
                          )),
                      const Text(
                        '1',
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const CircleAvatar(
                            maxRadius: 13,
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 15,
                            ),
                            backgroundColor: Colors.deepPurple,
                          )),
                    ],
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  const CustomText(
                    text: '200EGP',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    color: Colors.pink,
                    height: 30,
                    width: 90,
                    child: const Text(
                      'ازاله',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
