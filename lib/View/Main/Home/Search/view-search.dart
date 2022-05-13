import 'package:flutter/material.dart';
import 'package:lola/View/Main/Home/Search/Widgets/commom-search.dart';
import '../../../../Core/router/router.dart';
import '../../../../Widget/custom_text.dart';
import 'Component/view-search.dart';
import 'Widgets/last_search.dart';

class ViewSearch extends StatelessWidget {
  const ViewSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var formKey = GlobalKey<FormState>();
    var searchController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          color: Colors.purple,
          icon: const Icon(
            Icons.shopping_cart,
          ),
          onPressed: () {},
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const CustomText(
          text: 'البحث ',
          textAlign: TextAlign.center,
        ),
      ),
      body: Form(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              InkWell(
                child: Container(
                  height: 40,
                  decoration:
                  BoxDecoration(border: Border.all(color: Colors.purple)),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.search,
                        color: Colors.purple,
                      ),
                      CustomText(text: 'بحث',color: Colors.purple,)
                    ],
                  ),
                ),
                onTap: () {
                  MagicRouter.navigateTo(Search());
                },
              ),
              const SizedBox(
                height: 5,
              ),
              const CustomText(
                text: 'اخر البحث',
                color: Colors.black,
                alignment: Alignment.bottomRight,
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  LastSearch(text: 'حذاء',),
                  LastSearch(text:'بنطلون'),
                  LastSearch(text:'طرحه'),
                ],
              ),
              const SizedBox(height:10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                 LastSearch(text: 'بوركينى',),
                  LastSearch(text:'حلق'),
                  LastSearch(text:'ساعه'),
                ],
              ),
              const SizedBox(height:10,),
              const CustomText(
                text: '  البحث الشائع',
                color: Colors.black,
                alignment: Alignment.bottomRight,
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  CommmonSearch(text: 'حذاء',),
                  CommmonSearch(text:'بنطلون'),
                  CommmonSearch(text:'طرحه'),
                ],
              ),
              const SizedBox(height:10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  CommmonSearch(text: 'بوركينى',),
                  CommmonSearch(text:'حلق'),
                  CommmonSearch(text:'ساعه'),
                ],
              ),
              const SizedBox(height:10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  CommmonSearch(text: 'بوركينى',),
                  CommmonSearch(text:'حلق'),
                  CommmonSearch(text:'ساعه'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
