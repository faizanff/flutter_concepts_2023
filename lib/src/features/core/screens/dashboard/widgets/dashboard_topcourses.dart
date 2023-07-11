import 'package:flutter/material.dart';
import 'package:flutter_codes/src/constants/colors.dart';
import 'package:flutter_codes/src/constants/image_strings.dart';
import 'package:flutter_codes/src/constants/sizes.dart';
import 'package:flutter_codes/src/features/core/models/topcourses_model.dart';

class DashboardTopCourses extends StatelessWidget {
  const DashboardTopCourses({
    super.key,
    required this.txtTheme,
  });

  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    final list = DashboardTopCoursesModel.list;
    return SizedBox(
      height: 200,
      child: ListView.builder(
        itemCount: list.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) => SizedBox(
          width: 320,
          height: 200,
          child: Padding(
            padding: EdgeInsets.only(right: 10, top: 5),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: tCardBgColor,
              ),
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                          child: Text(
                            list[index].title,
                            style: txtTheme.headlineMedium?.apply(fontSizeFactor: 1.2),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          )),
                      Flexible(
                          child: Image(
                            image: AssetImage(list[index].topImage),
                            height: 110,
                          )),
                    ],
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Icon(Icons.play_arrow),
                        style: ElevatedButton.styleFrom(
                            shape: CircleBorder()
                        ),
                      ),
                      const SizedBox(width: tDashboardPadding,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(list[index].heading,style: txtTheme.headlineMedium,overflow: TextOverflow.ellipsis,),
                          Text(list[index].subHeading,style: txtTheme.bodyMedium,overflow: TextOverflow.ellipsis,)
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        // children: [
        //   SizedBox(
        //     width: 320,
        //     height: 200,
        //     child: Padding(
        //       padding: EdgeInsets.only(right: 10, top: 5),
        //       child: Container(
        //         decoration: BoxDecoration(
        //           borderRadius: BorderRadius.circular(10),
        //           color: tCardBgColor,
        //         ),
        //         padding: const EdgeInsets.all(10),
        //         child: Column(
        //           crossAxisAlignment: CrossAxisAlignment.start,
        //           children: [
        //             Row(
        //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //               children: [
        //                 Flexible(
        //                     child: Text(
        //                       "Flutter Crash Course",
        //                       style: txtTheme.headlineMedium?.apply(fontSizeFactor: 1.2),
        //                       maxLines: 2,
        //                       overflow: TextOverflow.ellipsis,
        //                     )),
        //                 Flexible(
        //                     child: Image(
        //                       image: AssetImage(tTopCourseImage1),
        //                       height: 110,
        //                     )),
        //               ],
        //             ),
        //             Row(
        //               children: [
        //                 ElevatedButton(
        //                   onPressed: () {},
        //                   child: Icon(Icons.play_arrow),
        //                   style: ElevatedButton.styleFrom(
        //                       shape: CircleBorder()
        //                   ),
        //                 ),
        //                 const SizedBox(width: tDashboardPadding,),
        //                 Column(
        //                   crossAxisAlignment: CrossAxisAlignment.start,
        //                   children: [
        //                     Text("3 Sections",style: txtTheme.headlineMedium,overflow: TextOverflow.ellipsis,),
        //                     Text("Programming Languages",style: txtTheme.bodyMedium,overflow: TextOverflow.ellipsis,)
        //                   ],
        //                 ),
        //               ],
        //             ),
        //           ],
        //         ),
        //       ),
        //     ),
        //   ),
        //   SizedBox(
        //     width: 320,
        //     height: 200,
        //     child: Padding(
        //       padding: EdgeInsets.only(right: 10, top: 5),
        //       child: Container(
        //         decoration: BoxDecoration(
        //           borderRadius: BorderRadius.circular(10),
        //           color: tCardBgColor,
        //         ),
        //         padding: const EdgeInsets.all(10),
        //         child: Column(
        //           crossAxisAlignment: CrossAxisAlignment.start,
        //           children: [
        //             Row(
        //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //               children: [
        //                 Flexible(
        //                     child: Text(
        //                       "Flutter Crash Course",
        //                       style: txtTheme.headlineMedium?.apply(fontSizeFactor: 1.2),
        //                       maxLines: 2,
        //                       overflow: TextOverflow.ellipsis,
        //                     )),
        //                 Flexible(
        //                     child: Image(
        //                       image: AssetImage(tTopCourseImage1),
        //                       height: 110,
        //                     )),
        //               ],
        //             ),
        //             Row(
        //               children: [
        //                 ElevatedButton(
        //                   onPressed: () {},
        //                   child: Icon(Icons.play_arrow),
        //                   style: ElevatedButton.styleFrom(
        //                       shape: CircleBorder()
        //                   ),
        //                 ),
        //                 const SizedBox(width: tDashboardPadding,),
        //                 Column(
        //                   crossAxisAlignment: CrossAxisAlignment.start,
        //                   children: [
        //                     Text("3 Sections",style: txtTheme.headlineMedium,overflow: TextOverflow.ellipsis,),
        //                     Text("Programming Languages",style: txtTheme.bodyMedium,overflow: TextOverflow.ellipsis,)
        //                   ],
        //                 ),
        //               ],
        //             ),
        //           ],
        //         ),
        //       ),
        //     ),
        //   ),
        //   SizedBox(
        //     width: 320,
        //     height: 200,
        //     child: Padding(
        //       padding: EdgeInsets.only(right: 10, top: 5),
        //       child: Container(
        //         decoration: BoxDecoration(
        //           borderRadius: BorderRadius.circular(10),
        //           color: tCardBgColor,
        //         ),
        //         padding: const EdgeInsets.all(10),
        //         child: Column(
        //           crossAxisAlignment: CrossAxisAlignment.start,
        //           children: [
        //             Row(
        //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //               children: [
        //                 Flexible(
        //                     child: Text(
        //                       "Flutter Crash Course",
        //                       style: txtTheme.headlineMedium?.apply(fontSizeFactor: 1.2),
        //                       maxLines: 2,
        //                       overflow: TextOverflow.ellipsis,
        //                     )),
        //                 Flexible(
        //                     child: Image(
        //                       image: AssetImage(tTopCourseImage1),
        //                       height: 110,
        //                     )),
        //               ],
        //             ),
        //             Row(
        //               children: [
        //                 ElevatedButton(
        //                   onPressed: () {},
        //                   child: Icon(Icons.play_arrow),
        //                   style: ElevatedButton.styleFrom(
        //                       shape: CircleBorder()
        //                   ),
        //                 ),
        //                 const SizedBox(width: tDashboardPadding,),
        //                 Column(
        //                   crossAxisAlignment: CrossAxisAlignment.start,
        //                   children: [
        //                     Text("3 Sections",style: txtTheme.headlineMedium,overflow: TextOverflow.ellipsis,),
        //                     Text("Programming Languages",style: txtTheme.bodyMedium,overflow: TextOverflow.ellipsis,)
        //                   ],
        //                 ),
        //               ],
        //             ),
        //           ],
        //         ),
        //       ),
        //     ),
        //   ),
        //   SizedBox(
        //     width: 320,
        //     height: 200,
        //     child: Padding(
        //       padding: EdgeInsets.only(right: 10, top: 5),
        //       child: Container(
        //         decoration: BoxDecoration(
        //           borderRadius: BorderRadius.circular(10),
        //           color: tCardBgColor,
        //         ),
        //         padding: const EdgeInsets.all(10),
        //         child: Column(
        //           crossAxisAlignment: CrossAxisAlignment.start,
        //           children: [
        //             Row(
        //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //               children: [
        //                 Flexible(
        //                     child: Text(
        //                       "Flutter Crash Course",
        //                       style: txtTheme.headlineMedium?.apply(fontSizeFactor: 1.2),
        //                       maxLines: 2,
        //                       overflow: TextOverflow.ellipsis,
        //                     )),
        //                 Flexible(
        //                     child: Image(
        //                       image: AssetImage(tTopCourseImage1),
        //                       height: 110,
        //                     )),
        //               ],
        //             ),
        //             Row(
        //               children: [
        //                 ElevatedButton(
        //                   onPressed: () {},
        //                   child: Icon(Icons.play_arrow),
        //                   style: ElevatedButton.styleFrom(
        //                       shape: CircleBorder()
        //                   ),
        //                 ),
        //                 const SizedBox(width: tDashboardPadding,),
        //                 Column(
        //                   crossAxisAlignment: CrossAxisAlignment.start,
        //                   children: [
        //                     Text("3 Sections",style: txtTheme.headlineMedium,overflow: TextOverflow.ellipsis,),
        //                     Text("Programming Languages",style: txtTheme.bodyMedium,overflow: TextOverflow.ellipsis,)
        //                   ],
        //                 ),
        //               ],
        //             ),
        //           ],
        //         ),
        //       ),
        //     ),
        //   ),
        // ],
      ),
    );
  }
}