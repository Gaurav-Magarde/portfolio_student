import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio_student_assignment/themes.dart';
import 'package:portfolio_student_assignment/widgets/project_card_widget.dart';
import '../models/project_model.dart';

class ProjectTabWidget extends StatefulWidget {
  const ProjectTabWidget({super.key});

  @override
  State<ProjectTabWidget> createState() => _ProjectTabWidgetState();
}

class _ProjectTabWidgetState extends State<ProjectTabWidget> {


  List<ProjectModel> _filteredProjects = [];

  @override
  void initState() {
    super.initState();
    _filteredProjects = allProjects;
  }

  void _filterSearchResults(String query) {
    setState(() {
      _filteredProjects = allProjects
          .where(
            (project) =>
            project.title.toLowerCase().contains(query.toLowerCase()),
      )
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: TextField(
            onChanged: _filterSearchResults,
            decoration: InputDecoration(
              hintText: 'Search a project',
              hintStyle: TextStyle(
                color: Colors.grey.shade400,
                fontSize: 14.sp,
              ),
              contentPadding: EdgeInsets.symmetric(
                horizontal: 16.w,
                vertical: 14.h,
              ),

              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade300),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: ColorTheme.primaryDark),
              ),

              suffixIcon: Padding(
                padding: EdgeInsets.all(6.w),
                child: Container(
                  alignment: Alignment.center,
                  height: 28.h,
                  width: 28.w,
                  decoration: BoxDecoration(
                    color: ColorTheme.primaryDark,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(8.w),

                    child: Icon(Icons.search_rounded, color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ),

        Expanded(
          child: ListView.builder(
            itemCount: _filteredProjects.length,
            itemBuilder: (context, index) {
              final project = _filteredProjects[index];
              return ProjectCard(project: project);
            },
          ),
        ),
      ],
    );
  }
}
