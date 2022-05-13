import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../Widget/custom_text.dart';
import '../../../../Widget/custom_text_button.dart';
import 'Component/email_changes.dart';
import 'Component/pasword-changes.dart';
import 'Component/report - problem.dart';
import 'Component/save-address.dart';
import 'Component/search-info.dart';

class ViewSetting extends StatefulWidget {
  const ViewSetting({Key? key}) : super(key: key);

  @override
  State<ViewSetting> createState() => _ViewSettingState();
}

class _ViewSettingState extends State<ViewSetting> {
  @override
  Widget build(BuildContext context) {
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
          text: 'الاعدادات',
          textAlign: TextAlign.center,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              alignment: AlignmentDirectional.topCenter,
              child: Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: [
                   const CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('assets/images/ba.jpg'),
                  ),

                  Padding(
                    padding:
                        const EdgeInsetsDirectional.only(top: 40.0, start: 40),
                    child: IconButton(
                      icon: const Icon(Icons.edit),
                      color: Colors.pink,
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  child: Container(
                    decoration: const BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                      color: Colors.grey,
                    ))),
                    padding: const EdgeInsets.all(
                      5.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'معلومات البحث',
                        ),
                        Icon(
                          Icons.arrow_back_ios,
                          textDirection: TextDirection.ltr,
                          color: Colors.pink.withOpacity(.5),
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    showModalBottomSheet(
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(25.0))),
                        backgroundColor: Colors.black,
                        context: context,
                        builder: (context) => SearchInfo());
                  },
                ),
                SizedBox(height: 10,),
                InkWell(
                  child: Container(
                    decoration: const BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                              color: Colors.grey,
                            ))),
                    padding: const EdgeInsets.all(
                      5.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'تغير البريد الالكترونى',
                        ),
                        Icon(
                          Icons.arrow_back_ios,
                          textDirection: TextDirection.ltr,
                          color: Colors.pink.withOpacity(.5),
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    showModalBottomSheet(
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(25.0))),
                        backgroundColor: Colors.transparent,
                        context: context,
                        builder: (context) => EmailChanges());
                  },
                ),
                SizedBox(height: 10,),
                InkWell(
                  child: Container(
                    decoration: const BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                              color: Colors.grey,
                            ))),
                    padding: const EdgeInsets.all(
                      5.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'تغيير كلمة المرور',
                        ),
                        Icon(
                          Icons.arrow_back_ios,
                          textDirection: TextDirection.ltr,
                          color: Colors.pink.withOpacity(.5),
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    showModalBottomSheet(
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(25.0))),
                        backgroundColor: Colors.black,
                        context: context,
                        builder: (context) => PasswordChanges());
                  },
                ),
                const SizedBox(height: 10,),
                InkWell(
                  child: Container(
                    decoration: const BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                              color: Colors.grey,
                            ))),
                    padding: const EdgeInsets.all(
                      5.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'العنوان المحفوظ',
                        ),
                        Icon(
                          Icons.arrow_back_ios,
                          textDirection: TextDirection.ltr,
                          color: Colors.pink.withOpacity(.5),
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    showModalBottomSheet(
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(25.0))),
                        backgroundColor: Colors.black,
                        context: context,
                        builder: (context) => SaveAddress());
                  },
                ),
                const SizedBox(height: 10,),
                InkWell(
                  child: Container(
                    decoration: const BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                              color: Colors.grey,
                            ))),
                    padding: const EdgeInsets.all(
                      5.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'ابلاغ عن مشكله',
                        ),
                        Icon(
                          Icons.arrow_back_ios,
                          textDirection: TextDirection.ltr,
                          color: Colors.pink.withOpacity(.5),
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    showModalBottomSheet(
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(25.0))),
                        backgroundColor: Colors.black,
                        context: context,
                        builder: (context) => ReportPassword());
                  },
                ),
                Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  CustomTextButton(
                    text: 'تسجيل الخروج',
                    onpress: () {},
                    // labelColor:Colors.grey,
                  ),
                ]),
                // CustomTextFormField(
                //   label: 'تغير البريد الالكترونى',
                //   suffix: Icons.arrow_back_ios,
                // ),
                // CustomTextFormField(
                //   label: 'تغيير كلمة المرور',
                //   suffix: Icons.arrow_back_ios,
                // ),
                // CustomTextFormField(
                //   label: 'العنوان المحفوظ',
                //   suffix: Icons.arrow_back_ios,
                // ),
                // CustomTextFormField(
                //   label: 'ابلاغ عن مشكله ',
                //   suffix: Icons.arrow_back_ios,
                // ),
                // Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                //   CustomTextButton(
                //     text: 'تسجيل الخروج',
                //     onpress: () {},
                //     labelColor: Colors.grey,
                //   ),
                // ]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
