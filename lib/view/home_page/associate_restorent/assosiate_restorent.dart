import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:signature/constant/colors.dart';
import 'package:sizer/sizer.dart';

import '../../../controllers/associate_resort_controllers.dart';

class AssociatePage extends StatelessWidget {
  AssociatePage({Key? key}) : super(key: key);

  GetAssociateController _getAssociateController =
      Get.put(GetAssociateController());
  //
  // final List<String> text0 = [
  //   'RAMADAN CENTRAL',
  //   'ACHROL NIWAS(Presently not Associated)',
  //   'CAMBAY RESORT AND SPA',
  //   'AVALON RESORT',
  //   'RAMADA ENCORE',
  //   'OBETEL GRAND RESTORENT',
  //   'EAST BOURNE',
  //   'THE GOLDEN BEACH RESORT',
  //   'ARLIYAS RESORT',
  //   'ATULYA TAJ',
  //   'OBETEL GRAND RESTORENT',
  //   'EAST BOURNE',
  //   'THE GOLDEN BEACH RESORT',
  //   'ARLIYAS RESORT',
  //   'ATULYA TAJ',
  // ];
  // final List<String> text1 = [
  //   'GURGAON',
  //   'JAIPUR',
  //   'MUSSOORIE',
  //   'BANGALORE',
  //   'LONAVALA',
  //   'SHIMLA',
  //   'DAMAN',
  //   'UDAIPUR',
  //   'AGRA',
  //   'PURI',
  //   'SHIMLA',
  //   'DAMAN',
  //   'UDAIPUR',
  //   'AGRA',
  //   'PURI',
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColors.themecolors,
      appBar: AppBar(
        backgroundColor: AppColors.themecolors,
        title: Text(
          'Our Resort',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 14.sp,
          ),
        ),
      ),
      body: Obx(
        () => (_getAssociateController.isLoading.value)
            ? Center(child: CircularProgressIndicator())
            : _getAssociateController.getresortModel?.ourResorts == null
                ? Center(
                    child: Text('No Data'),
                  )
                : SafeArea(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 0.0.h,
                        ),
                        PhysicalModel(
                          color: Colors.white70,
                          //shadowColor: AppColors.golden,
                          elevation: 2,
                          child: SizedBox(
                            height: 87.h,
                            child: ListView.builder(
                                shrinkWrap: true,
                                //physics: NeverScrollableScrollPhysics(),
                                itemCount: _getAssociateController
                                    .getresortModel?.ourResorts?.length,
                                //text0.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return Padding(
                                    padding: EdgeInsets.symmetric(
                                      vertical: 0.0.h,
                                    ),
                                    child: PhysicalModel(
                                      color: Colors.white,
                                      shadowColor: AppColors.golden,
                                      elevation: 0.6,
                                      child: Container(
                                        //height: 6.h,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.grey.shade300,
                                              width: 0.5),
                                          color: Colors.white12,
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(5.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              SizedBox(
                                                width: 62.w,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(0.0),
                                                  child: Text(
                                                    "${_getAssociateController.getresortModel!.ourResorts![index].resortName.toString()}",
                                                    //text0[index],
                                                    style: TextStyle(
                                                      color:
                                                          AppColors.themecolors,
                                                      fontSize: 9.sp,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 30.w,
                                                child: Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Text(
                                                      "${_getAssociateController.getresortModel!.ourResorts![index].place.toString()}",

                                                      //text1[index],
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 10.sp,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                }),
                          ),
                        ),
                        SizedBox(
                          height: 0.h,
                        ),
                      ],
                    ),
                  ),
      ),
    );
  }
}
