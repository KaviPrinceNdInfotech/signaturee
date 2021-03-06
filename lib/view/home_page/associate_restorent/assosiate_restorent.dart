import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:signature/constant/colors.dart';
import 'package:sizer/sizer.dart';

class AssociatePage extends StatelessWidget {
  AssociatePage({Key? key}) : super(key: key);

  final List<String> text0 = [
    'RAMADAN CENTRAL',
    'ACHROL NIWAS(Presently not Associated)',
    'CAMBAY RESORT AND SPA',
    'AVALON RESORT',
    'RAMADA ENCORE',
    'OBETEL GRAND RESTORENT',
    'EAST BOURNE',
    'THE GOLDEN BEACH RESORT',
    'ARLIYAS RESORT',
    'ATULYA TAJ',
    'OBETEL GRAND RESTORENT',
    'EAST BOURNE',
    'THE GOLDEN BEACH RESORT',
    'ARLIYAS RESORT',
    'ATULYA TAJ',
  ];
  final List<String> text1 = [
    'GURGAON',
    'JAIPUR',
    'MUSSOORIE',
    'BANGALORE',
    'LONAVALA',
    'SHIMLA',
    'DAMAN',
    'UDAIPUR',
    'AGRA',
    'PURI',
    'SHIMLA',
    'DAMAN',
    'UDAIPUR',
    'AGRA',
    'PURI',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.themecolors,
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
      body: SafeArea(
        child: Container(
          height: 94.5.h,
          width: 100.w,
          color: Colors.white,
          child: Column(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 0.1.h,
                    ),
                    PhysicalModel(
                      color: Colors.white70,
                      //shadowColor: AppColors.golden,
                      elevation: 0,
                      child: Container(
                        height: 87.5.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                          color: Colors.white70,
                        ),
                        child: ListView.builder(
                            //physics: NeverScrollableScrollPhysics(),
                            itemCount: text0.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: 0.0.h,
                                ),
                                child: PhysicalModel(
                                  color: Colors.white,
                                  shadowColor: AppColors.golden,
                                  elevation: 0.5,
                                  child: Container(
                                    height: 6.h,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.grey.shade300,
                                          width: 0.5),
                                      color: Colors.white12,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            width: 72.w,
                                            child: Text(
                                              text0[index],
                                              style: TextStyle(
                                                color: AppColors.themecolors,
                                                fontSize: 9.sp,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 23.w,
                                            child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                text1[index],
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 10.sp,
                                                  fontWeight: FontWeight.w300,
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
                      height: 1.h,
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
