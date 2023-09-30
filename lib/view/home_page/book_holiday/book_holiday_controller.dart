import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

import '../../../services_apis/services_api.dart';

class BookHolidayController extends GetxController {
  var selectedDate = DateTime.now().obs;

  RxBool isLoading = true.obs;
  final GlobalKey<FormState> Bookholidaykey =
      GlobalKey(debugLabel: "Feedbackkey");

  late TextEditingController appointmentController1;
  late TextEditingController appointmentController2;

  TextEditingController bookingdateController = TextEditingController();
  TextEditingController checkoutDateController = TextEditingController();

  TextEditingController cityController = TextEditingController();

  TextEditingController noOfAdultsController = TextEditingController();
  TextEditingController kidsController = TextEditingController();
  TextEditingController noOfRoomsController = TextEditingController();

  void bookholidayApi() async {
    isLoading(false);
    http.Response r = await ApiProvider.AddholidayApi(
      appointmentController1.text,
      appointmentController2.text,
      cityController.text,
      noOfAdultsController.text,
      kidsController.text,
      noOfRoomsController.text,
    );
    if (r.statusCode == 200) {
      isLoading(false);

      ///Get.to(()=>page());
    }
  }

  @override
  void onInit() {
    super.onInit();
    bookingdateController = TextEditingController();
    checkoutDateController = TextEditingController();
    cityController = TextEditingController();
    noOfAdultsController = TextEditingController();
    kidsController = TextEditingController();
    noOfRoomsController = TextEditingController();

    appointmentController1 = TextEditingController();
    appointmentController1.text = "YYYY-MM-DD";

    appointmentController2 = TextEditingController();
    appointmentController2.text = "YYYY-MM-DD";
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  chooseDate() async {
    DateTime? newpickedDate = await showDatePicker(
      context: Get.context!,
      initialDate: selectedDate.value,
      firstDate: DateTime(2018),
      lastDate: DateTime(2027),
      initialEntryMode: DatePickerEntryMode.input,
      initialDatePickerMode: DatePickerMode.year,
      helpText: 'Select date',
      cancelText: 'Close',
      confirmText: 'Confirm',
      errorFormatText: 'Enter valid date',

      errorInvalidText: 'Enter valid date range',
      fieldLabelText: 'Selected Date',
      //fieldHintText: 'Month/Date/Year',
      //selectableDayPredicate: disableDate,
    );
    if (newpickedDate != null) {
      selectedDate.value = newpickedDate;
      appointmentController1
        ..text = DateFormat('yyyy-MM-d').format(selectedDate.value).toString()
        ..selection = TextSelection.fromPosition(TextPosition(
            offset: appointmentController1.text.length,
            affinity: TextAffinity.upstream));
    }
    // if (pickedDate != null && pickedDate != selectedDate) {
    //   selectedDate.value = pickedDate;
    //   appointmentController.text =
    //       DateFormat('DD-MM-yyyy').format(selectedDate.value).toString();
    // }
  }

  chooseDate2() async {
    DateTime? newpickedDate = await showDatePicker(
      context: Get.context!,
      initialDate: selectedDate.value,
      firstDate: DateTime(2018),
      lastDate: DateTime(2025),
      initialEntryMode: DatePickerEntryMode.input,
      initialDatePickerMode: DatePickerMode.year,
      helpText: 'Select Date',
      cancelText: 'Close',
      confirmText: 'Confirm',
      errorFormatText: 'Enter valid date',

      errorInvalidText: 'Enter valid date range',
      fieldLabelText: 'Selected Date',
      //fieldHintText: 'Month/Date/Year',
      //selectableDayPredicate: disableDate,
    );
    if (newpickedDate != null) {
      selectedDate.value = newpickedDate;
      appointmentController2
        ..text = DateFormat('yyyy-MM-d').format(selectedDate.value).toString()
        ..selection = TextSelection.fromPosition(TextPosition(
            offset: appointmentController2.text.length,
            affinity: TextAffinity.upstream));
    }
    // if (pickedDate != null && pickedDate != selectedDate) {
    //   selectedDate.value = pickedDate;
    //   appointmentController.text =
    //       DateFormat('DD-MM-yyyy').format(selectedDate.value).toString();
    // }
  }

  // chooseDate() async {
  //   DateTime? pickedDate = await showDatePicker(
  //     context: Get.context!,
  //     initialDate: selectedDate.value,
  //     firstDate: DateTime(2000),
  //     lastDate: DateTime(2024),
  //     initialEntryMode: DatePickerEntryMode.input,
  //     initialDatePickerMode: DatePickerMode.year,
  //     helpText: 'Selecte Date',
  //     cancelText: 'Close',
  //     confirmText: 'Confirm',
  //     errorFormatText: 'Enter valid date',
  //     errorInvalidText: 'Enter valid date range',
  //     fieldHintText: 'Select Date',
  //     fieldLabelText: 'Month/date/Year',
  //   );
  //   if (pickedDate != null && pickedDate != selectedDate.value) {
  //     selectedDate.value = pickedDate;
  //   }
  // }

  String? validcity(String value) {
    if (value.length < 1) {
      return "provide text";
    }
    return null;
  }

  String? validtext(String value) {
    if (value.length < 1) {
      return "provide text";
    }
    return null;
  }

  String? validnoOfAdults(String value) {
    if (value.length < 1) {
      return "provide text";
    }
    return null;
  }

  String? validkids(String value) {
    if (value.length < 1) {
      return "provide kids";
    }
    return null;
  }

  String? validnoOfRooms(String value) {
    if (value.length < 1) {
      return "provide no of rooms";
    }
    return null;
  }

  checkbooking() async {
    var isValidate = Bookholidaykey.currentState!.validate();
    if (!isValidate) {
      return;
    } else {
      bookholidayApi();
    }
    Bookholidaykey.currentState!.save();
  }
}
