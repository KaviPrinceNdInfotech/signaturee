import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:signature/constant/colors.dart';
import 'package:sizer/sizer.dart';

import '../../../controllers/gallary_controller.dart';

class Gallerys extends StatelessWidget {
  Gallerys({Key? key}) : super(key: key);

  GellaryController _gellaryController = Get.put(GellaryController());
  // final List<String> images = [
  //   "https://images.unsplash.com/photo-1606046604972-77cc76aee944?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8aG90ZWxzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60",
  //   "https://images.unsplash.com/photo-1596436889106-be35e843f974?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGhvdGVsc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60",
  //   "https://images.unsplash.com/photo-1590447158019-883d8d5f8bc7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1632&q=80",
  //   "https://images.unsplash.com/photo-1495365200479-c4ed1d35e1aa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80",
  //   "https://images.unsplash.com/photo-1542314831-068cd1dbfeeb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80",
  //   "https://images.unsplash.com/photo-1445019980597-93fa8acb246c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1748&q=80",
  //   "https://images.unsplash.com/photo-1487017159836-4e23ece2e4cf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1742&q=80",
  // ];

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> _keyuser = GlobalKey();

    var imgpath = 'https://new.signatureresorts.in/Images/';

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.themecolors,
        title: Text(
          'Gallery',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 14.sp,
          ),
        ),
      ),
      body: Obx(
        () => (_gellaryController.isLoading.value)
            ? Center(child: CircularProgressIndicator())
            : _gellaryController.gelleryModel?.gallery == null
                ? Center(
                    child: Text('No Data'),
                  )
                : SafeArea(
                    child: Column(
                      children: [
                        Expanded(
                          flex: 2,
                          child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: _gellaryController
                                  .gelleryModel?.gallery?.length,
                              itemBuilder: (BuildContext context, int index) {
                                final items =
                                    _gellaryController.gelleryModel?.gallery;
                                return Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Container(
                                    height: 30.h,
                                    width: 100.w,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.red),
                                        color: Colors.purple,
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                '$imgpath${items?[index].imageName}' ??
                                                    ''),
                                            fit: BoxFit.cover,
                                            onError: (error, stackTrace) {
                                              Text("No Image Found");
                                              // .log(error, stackTrace);
                                            })),
                                    child: Center(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(6.0),
                                            child: Container(
                                              //height: 3.h,
                                              // width: 20.w,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(3),
                                                border: Border.all(
                                                    color: Colors.cyan),
                                                color: Colors.white60,
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(5.0),
                                                child: Text(
                                                    '${items?[index].caption.toString()}'),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              }),
                        ),
                      ],
                    ),
                  ),
      ),
    );
  }
}
