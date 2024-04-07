
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:student_tecaher_connection_app/Page/Welcome/widgets.dart';
import 'notifier/welcome_notifier.dart';

//final indexProvider  = StateProvider<int>((ref) => 0);

class Welcome extends ConsumerWidget {
  Welcome({super.key});

final PageController _controller = PageController();
//int dotsIndex = 0;

  @override
  Widget build(BuildContext context , WidgetRef ref) {

    final index = ref.watch(welcome_notifierProvider);

    return  Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
         body: Container(
           margin: const EdgeInsets.only(top:30),
           child: Stack(
             alignment: Alignment.topCenter,
             children: [
               // showing our three welcome pages
                PageView(
                  onPageChanged: (value){
                   // print('$value');

                   // dotsIndex = value;
                    ref.read(welcome_notifierProvider.notifier).changeIndex(value);

                  },
                  controller: _controller,
                   //scrollBehavior: AxisDirection.up,
                   scrollDirection: Axis.horizontal,
                   children: [
                     //first page
                     appOnboardingPage(
                       _controller,
                         imagePath: "assets/images/fb ishan 7.jpg",
                         title: "First See Learning my tour",
                         subTitle:"Gosaikunda tour memory in my project ",
                         index: 1,context:context
                     ),
                     //second page
                     appOnboardingPage(
                       _controller,
                         imagePath: "assets/images/images (8).jpg",
                         title: "Second See Learning my tour",
                         subTitle:"Read Book in my project",
                       index: 2,context:context
                     ),
                     //third page
                     appOnboardingPage(
                       _controller,
                         imagePath: "assets/images/fb ishan 6.jpg",
                         title: "Third See Learning my tour",
                         subTitle:"Gosaikunda tour memory in my project",
                       index: 3,context:context
                     ),
                     //forth page
                     appOnboardingPage(
                       _controller,
                         imagePath: "assets/images/fb ishan 9.jpg",
                         title: "fourth See Learning my tour",
                         subTitle:"Pokhara tour memory in my project",
                       index: 4,context:context
                     ),
                     appOnboardingPage(
                       _controller,
                       imagePath: "assets/images/images (4).jpg",
                         title: "fourth See Learning Read book ",
                         subTitle:"Always keep in touch with your tutor and friend. Let's get connected",
                       index: 5 ,context:context
                     ),

                   ],
                 ),
                // for showing dots

             Positioned(
                   bottom: 50,
                   child: DotsIndicator(
                     position: index,
                     dotsCount:5,
                     mainAxisAlignment: MainAxisAlignment.center,
                     decorator: DotsDecorator(
                       size: const Size.square(9.0),
                       activeSize: const Size(24.0, 8.0),
                       activeShape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(5)
                       )
                     ),
                   ),
               ),

             ],
           ),
         ),
        ),
      ),
    );
  }
}
