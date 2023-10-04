import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:signature/controllers/post_payment_controller.dart';
import 'package:signature/controllers/rozarpay_post_payment_controller.dart';

class Post_payment_pagge extends StatelessWidget {
  Post_payment_pagge({Key? key}) : super(key: key);
  TextEditingController walletAmount = TextEditingController();

  post_payment_Controller _post_payment_controller =
      Get.put(post_payment_Controller());
  RozarPostPaymentController _rozarPostPaymentController =
      Get.put(RozarPostPaymentController());
  String text = "No Value Entered";

  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  get newvalue => null!;

  // LoginpasswordController _loginpasswordController =
  //     Get.put(LoginpasswordController());

  @override
  Widget build(BuildContext context) {
    print("jdfkjsdfksldnsdjg: ${_post_payment_controller.walletAmount.text}");
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        backgroundColor: Colors.white30,
        title: Text("Pay your Amount"),
      ),
      body: SafeArea(
        child: Form(
          key: _post_payment_controller.postpaymentkey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Padding(
            padding: EdgeInsets.all(15),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: size.height * 0.045,
                  ),
                  Text(
                    "Enter Your Amount and Pay:",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: size.height * 0.02,
                    ),
                  ),

                  SizedBox(
                    height: size.height * 0.01,
                  ),

                  ///todo: add ammount..........
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.00,
                        vertical: size.height * 0.003),
                    child: InkWell(
                      onTap: () {
                        //Get.to(() => DoctorListUser());
                      },
                      child: Container(
                        //height: size.height * 0.5,
                        width: size.width,
                        padding:
                            EdgeInsets.symmetric(vertical: size.height * 0.004),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              const BoxShadow(
                                color: Colors.black38,
                                offset: Offset(5, 5),
                                blurRadius: 0,
                                spreadRadius: 0,
                              ),
                              const BoxShadow(
                                color: Colors.black26,
                                offset: Offset(0, -0),
                                blurRadius: 0,
                                spreadRadius: 0,
                              ),
                            ]),
                        child: Column(
                          children: [
                            Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Container(
                                  //height: size.height * 0.06,
                                  width: double.infinity,
                                  margin:
                                      EdgeInsets.symmetric(vertical: 30 / 2),
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          begin: Alignment.centerLeft,
                                          end: Alignment.centerRight,
                                          colors: [
                                            Colors.white,
                                            Colors.cyan,
                                          ]),
                                      borderRadius: BorderRadius.circular(12),
                                      boxShadow: [
                                        BoxShadow(
                                          offset: Offset(-0, -0),
                                          spreadRadius: 1,
                                          blurRadius: 0,
                                          color: Colors.grey.shade300,
                                        ),
                                        BoxShadow(
                                          offset: Offset(3, 3),
                                          spreadRadius: 1,
                                          blurRadius: 0,
                                          color: Colors.grey.shade300,
                                        ),
                                      ]),
                                  child: TextFormField(
                                    style: TextStyle(
                                        fontSize: size.height * 0.02,
                                        fontWeight: FontWeight.w800),
                                    autofillHints: [
                                      AutofillHints.transactionAmount
                                    ],
                                    controller:
                                        _post_payment_controller.walletAmount,
                                    onSaved: (value) {
                                      _post_payment_controller.amount = value!;
                                    },
                                    validator: (value) {
                                      return _post_payment_controller
                                          .validateAmount(value!);
                                    },
                                    cursorColor: Colors.black,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      prefixText: '₹ ',
                                      prefixStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: size.height * 0.02,
                                          fontWeight: FontWeight.bold),
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: size.width * 0.03),
                                      hintText: 'Amount',
                                      hintStyle: TextStyle(
                                        fontWeight: FontWeight.w600,
                                      ),
                                      helperStyle: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      // prefixIcon: Icon(
                                      //   Icons.phone_android_outlined,
                                      //   color: black.withOpacity(0.7),
                                      //   size: 20,
                                      // ),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                )),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: size.width * 0.03,
                                  vertical: size.height * 0.02),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: size.width * 0.01,
                                        vertical: size.height * 0.001),
                                    child: InkWell(
                                      onTap: () {
                                        _post_payment_controller
                                            .walletAmount.text = '100';

                                        // Get.to(() => DoctorListUser());
                                      },
                                      child: Container(
                                        height: size.height * 0.04,
                                        width: size.width * 0.15,
                                        padding: EdgeInsets.symmetric(
                                            vertical: size.height * 0.004),
                                        decoration: BoxDecoration(
                                            color: Colors.orange.shade300,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey.shade300,
                                                offset: Offset(2, 2),
                                                blurRadius: 0,
                                                spreadRadius: 0,
                                              ),
                                              const BoxShadow(
                                                color: Colors.black26,
                                                offset: Offset(0, -0),
                                                blurRadius: 1,
                                                spreadRadius: 0,
                                              ),
                                            ]),
                                        child: Padding(
                                          padding: EdgeInsets.all(
                                              size.height * 0.001),
                                          child: Center(
                                            child: Text(
                                              '₹100',
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: GoogleFonts.sunflower(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.blue,
                                                fontSize: size.width * 0.038,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: size.width * 0.01,
                                        vertical: size.height * 0.001),
                                    child: InkWell(
                                      onTap: () {
                                        _post_payment_controller
                                            .walletAmount.text = '200';
                                        // Get.to(() => DoctorListUser());
                                      },
                                      child: Container(
                                        height: size.height * 0.04,
                                        width: size.width * 0.15,
                                        padding: EdgeInsets.symmetric(
                                            vertical: size.height * 0.004),
                                        decoration: BoxDecoration(
                                            color: Colors.orange.shade300,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey.shade300,
                                                offset: Offset(2, 2),
                                                blurRadius: 0,
                                                spreadRadius: 0,
                                              ),
                                              const BoxShadow(
                                                color: Colors.black26,
                                                offset: Offset(0, -0),
                                                blurRadius: 1,
                                                spreadRadius: 0,
                                              ),
                                            ]),
                                        child: Padding(
                                          padding: EdgeInsets.all(
                                              size.height * 0.001),
                                          child: Center(
                                            child: Text(
                                              '₹200',
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: GoogleFonts.sunflower(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.blue,
                                                fontSize: size.width * 0.038,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: size.width * 0.01,
                                        vertical: size.height * 0.001),
                                    child: InkWell(
                                      onTap: () {
                                        _post_payment_controller
                                            .walletAmount.text = '500';

                                        // Get.to(() => DoctorListUser());
                                      },
                                      child: Container(
                                        height: size.height * 0.04,
                                        width: size.width * 0.15,
                                        padding: EdgeInsets.symmetric(
                                            vertical: size.height * 0.004),
                                        child: Padding(
                                          padding: EdgeInsets.all(
                                              size.height * 0.001),
                                          child: Center(
                                            child: Text(
                                              '₹500',
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: GoogleFonts.sunflower(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.blue,
                                                fontSize: size.width * 0.038,
                                              ),
                                            ),
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                            color: Colors.orange.shade300,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey.shade300,
                                                offset: Offset(2, 2),
                                                blurRadius: 0,
                                                spreadRadius: 0,
                                              ),
                                              const BoxShadow(
                                                color: Colors.black26,
                                                offset: Offset(0, -0),
                                                blurRadius: 1,
                                                spreadRadius: 0,
                                              ),
                                            ]),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: size.width * 0.01,
                                        vertical: size.height * 0.001),
                                    child: InkWell(
                                      onTap: () {
                                        _post_payment_controller
                                            .walletAmount.text = '1000';

                                        // Get.to(() => DoctorListUser());
                                      },
                                      child: Container(
                                        height: size.height * 0.04,
                                        width: size.width * 0.15,
                                        padding: EdgeInsets.symmetric(
                                            vertical: size.height * 0.004),
                                        child: Padding(
                                          padding: EdgeInsets.all(
                                              size.height * 0.001),
                                          child: Center(
                                            child: Text(
                                              '₹1000',
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: GoogleFonts.sunflower(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.blue,
                                                fontSize: size.width * 0.038,
                                              ),
                                            ),
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                            color: Colors.orange.shade300,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey.shade300,
                                                offset: Offset(2, 2),
                                                blurRadius: 0,
                                                spreadRadius: 0,
                                              ),
                                              const BoxShadow(
                                                color: Colors.black26,
                                                offset: Offset(0, -0),
                                                blurRadius: 1,
                                                spreadRadius: 0,
                                              ),
                                            ]),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: size.width * 0.03,
                                  vertical: size.height * 0.051),
                              child: InkWell(
                                onTap: () {
                                  print(
                                      "jhgvjdfhvjkfhvfi: ${_post_payment_controller.walletAmount.text}");
                                  var prefs = GetStorage();
                                  //saved amount..........
                                  // amount = prefs.read(_post_payment_controller.walletAmount.text);
                                  // print('1111111111&&&&&&&okoko:${amount}');
                                  // _walletPostController.walletPostApi();
                                  ///..................................................1feb23
                                  // _walletPostController.checkAmount();
                                  ///..............................................
                                  _rozarPostPaymentController.openCheckout();
                                  // Get.to(() => UserHomePage());
                                },
                                child: Container(
                                  width: double.infinity,
                                  height: size.height * 0.065,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Colors.cyan,
                                            //hjhjhjhjhjhjhjhjjhjjhhjhjhhjhjhjhjjhhhjh
                                            Colors.white,
                                          ]),
                                      boxShadow: [
                                        BoxShadow(
                                          offset: Offset(0, 0),
                                          spreadRadius: 1,
                                          blurRadius: 1,
                                          color: Colors.grey,
                                        ),
                                        BoxShadow(
                                          offset: Offset(-1, -1),
                                          spreadRadius: 1,
                                          blurRadius: 1,
                                          color: Colors.white70,
                                        ),
                                      ]),
                                  child: Center(
                                    child: Text(
                                      'SUBMIT',
                                      style: TextStyle(
                                        fontSize: size.width * 0.049,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              // RectangularButton(
                              //     text: 'SUBMIT',
                              //     press: () {
                              //       Get.to(HomePage());
                              //       //_loginpasswordController.checkLoginpassword();
                              //     }),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  ///

                  // child: DropdownButton(
                  //     value: _hospital_2_controller.selectedState.value,
                  //     menuMaxHeight: size.height * 0.3,
                  //     items: items.map((String items) {
                  //       return DropdownMenuItem(
                  //         value: items,
                  //         child: Text(items),
                  //       );
                  //     }).toList(),
                  //     // _hospital_2_controller.states.map((String value) {
                  //     //   return DropdownMenuItem(
                  //     //     value: value,
                  //     //
                  //     //   )
                  //     onChanged: (String? newValue) {
                  //       _hospital_2_controller.states.value =
                  //           newValue! as List<String>;
                  //       _hospital_2_controller.selectedCity.value = null;
                  //       _hospital_2_controller.cities.clear();
                  //       _hospital_2_controller.cities
                  //           .addAll(stateCityMap[newvalue]!);
                  //     })),

                  SizedBox(
                    height: size.height * 0.018,
                    //appPadding / 2,
                  ),

                  // GetBuilder<Hospital_2_Controller>(
                  //   // specify type as Controller
                  //   init: Hospital_2_Controller(), // intialize with the Controller
                  //   builder: (value) => InkWell(
                  //     onTap: () {
                  //       _doctor_2_controller.getImage(ImageSource.gallery);
                  //     },
                  //     child: NeumorphicTextFieldContainer(
                  //       child: Container(
                  //         height: size.height * 0.07,
                  //         //width: size.width * 0.5,
                  //         child: Padding(
                  //           padding:
                  //               EdgeInsets.symmetric(horizontal: size.width * 0.1),
                  //           child: Row(
                  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //             children: [
                  //               Text(
                  //                 'Authorise Letter Image',
                  //                 style: TextStyle(
                  //                   fontSize: size.width * 0.03,
                  //                   fontWeight: FontWeight.w700,
                  //                 ),
                  //               ),
                  //               Icon(Icons.camera),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
