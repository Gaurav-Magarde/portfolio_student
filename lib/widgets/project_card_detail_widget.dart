import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../models/project_model.dart';

class ProjectCardDetail extends StatelessWidget {
  const ProjectCardDetail({
    super.key,
    required this.project,
  });

  final ProjectModel project;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title
            Text(
              project.title,
              style: Theme.of(context).textTheme.titleSmall,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),

           SizedBox(height: 16.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Author
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      project.author,
                      style: Theme.of(context).textTheme.labelSmall,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 2.h,),

                    Text(
                      project.subtitle,
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ],
                ),

                Container(
                  height: 26,
                  width: 50,
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h), // Check Figma
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: const [
                          Color(0xFFF39519),
                          Color(0xFFFFCD67)
                        ]),
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                  child: Text(
                    project.grade,
                    style: Theme.of(context).textTheme.titleSmall?.apply(color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}