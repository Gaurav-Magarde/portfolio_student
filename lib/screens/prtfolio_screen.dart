import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio_student_assignment/themes.dart';
import 'package:portfolio_student_assignment/widgets/project_tab_widget.dart';


class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(

        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            'Portfolio',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.shopping_bag_rounded,
                color: ColorTheme.primaryDark,
                size: 24,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.notifications_rounded,
                color: ColorTheme.primaryDark,
                size: 24,
              ),
              onPressed: () {},
            ),
            SizedBox(width: 8.w),
          ],
          bottom: TabBar(
            indicatorPadding: EdgeInsets.all(0),
            indicatorSize: TabBarIndicatorSize.tab,
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            labelColor: ColorTheme.primaryDark,
            unselectedLabelColor: Colors.grey,
            indicatorColor: ColorTheme.primaryDark,
            indicatorWeight: 3.h,
            labelStyle: Theme.of(context).textTheme.bodyLarge,
            tabs: const [
              Tab(text: 'Project'),
              Tab(text: 'Saved'),
              Tab(text: 'Shared'),
              Tab(text: 'Achievement'),
            ],
          ),
        ),

        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Container(
          height: 34.h,
          width: 104.w,
          decoration: BoxDecoration(
            color: ColorTheme.primaryDark,
            borderRadius: BorderRadius.circular(50.r),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.filter_list_outlined, color: Colors.white),
              SizedBox(width: 8.w),
              Text(
                'Filter',
                style: Theme.of(context).textTheme.bodyLarge?.apply(color: Colors.white),
              ),
            ],
          ),
        ),

        body: TabBarView(
          children: [
            // Tab 1
            ProjectTabWidget(),

            // Tab 2, 3, 4
            Container(),
            Container(),
            Container(),
          ],
        ),
      ),
    );
  }
}
