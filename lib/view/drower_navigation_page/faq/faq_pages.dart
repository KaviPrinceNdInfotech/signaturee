import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:signature/constant/colors.dart';
import 'package:sizer/sizer.dart';

class FaqPage extends StatelessWidget {
  FaqPage({Key? key}) : super(key: key);

  final questions = [
    {
      'question': 'What is Signature the Grand Club, and what does it offer?',
      'answer':
          'Signature the Grand Club is a premium travel membership club that provides exclusive access to a range of luxury travel experiences and benefits. It offers members the opportunity to enjoy exceptional travel privileges and savings.'
    },
    {
      'question': 'How does Signature the Grand Club work?',
      'answer':
          'To become a member, you can sign up on our website or contact our customer service team. Once you are a member, you can access our curated selection of luxury hotels, resorts, and travel experiences at discounted rates.'
    },
    {
      'question': 'What types of travel experiences are available to members?',
      'answer':
          'Our members have access to a diverse range of travel experiences, including luxury accommodations, private villas, cruises, guided tours, and more, all carefully selected to ensure a memorable journey.'
    },
    {
      'question': 'Are there any membership fees?',
      'answer':
          'Yes, there is an annual membership fee. However, the cost of membership is offset by the significant savings and exclusive benefits you will receive when booking through Signature the Grand Club.'
    },
    {
      'question':
          'Do you have partnerships with specific hotels or travel providers?',
      'answer':
          'Yes, we have partnerships with a network of premium hotels, resorts, and travel providers worldwide. These partnerships allow us to offer our members unique privileges and discounted rates.'
    },
    {
      'question':
          'Can I book travel for family and friends using my membership?',
      'answer':
          'Yes, as a member, you can book travel for yourself, your family, and your friends. Our goal is to make luxury travel accessible to those you care about.'
    },
    {
      'question':
          'Do you offer concierge services to assist with travel planning?',
      'answer':
          'Absolutely! We provide personalized concierge services to help you plan your trips, including booking accommodations, arranging activities, and answering any travel-related questions you may have.'
    },
    {
      'question':
          'Are there any restrictions on when and where I can travel with my membership?',
      'answer':
          'Our membership allows you to travel year-round to a wide range of destinations. There are typically no blackout dates or restrictions on when you can travel.'
    },
    {
      'question': 'What happens if I need to cancel or modify a reservation?',
      'answer':
          'Each booking may have its own cancellation and modification policies depending on the travel provider. We will work with you to navigate any changes and assist in accordance with the provider\'s policies.'
    },
    {
      'question':
          'How can I contact Signature the Grand Club for further assistance or inquiries?',
      'answer':
          'You can reach our dedicated customer support team through the contact information provided on our website. We\'re here to assist you with any questions or requests you may have.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.themecolors,
      appBar: AppBar(
        backgroundColor: AppColors.themecolors,
        title: Text(
          'FAQ',
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
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                itemCount: questions.length,
                itemBuilder: (context, index) {
                  final question = questions[index]['question'];
                  final answer = questions[index]['answer'];
                  return ExpansionTile(
                    title: Text(question!),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(answer!),
                      ),
                    ],
                  );
                },
              )),

          ///........

          // Padding(
          //   padding: EdgeInsets.symmetric(horizontal: 1.h),
          //   child: Column(
          //     children: [
          //       SizedBox(
          //         height: 2.h,
          //       ),
          //       Text('Lorem Ipsum is simply dummy text of the printing '
          //           'and typesetting industry. Lorem Ipsum has been the'
          //           ' industry\'s standard dummy text ever since the 1500s, '
          //           'when an unknown printer took a galley of type and '
          //           'scrambled it to make a type specimen book. It has'
          //           ' survived not only five centuries, but also the leap'
          //           ' into electronic typesetting, remaining essentially'
          //           ' unchanged. It was popularised in the 1960s with the'
          //           ' release of Letraset sheets containing Lorem Ipsum '
          //           'passages, and more recently with desktop publishing'
          //           ' software like Aldus PageMaker including versions of '
          //           'Lorem Ipsum.')
          //     ],
          //   ),
          // ),..
        ),
      ),
    );
  }
}
