import 'package:flutter/material.dart';
import 'package:jobbay/models/dashboardJobModels/DashboardJob.dart';
import 'package:jobbay/screens/employer/home/job_details/DetailContent.dart';
import 'package:jobbay/screens/employer/home/job_details/DetailFooter.dart';
import 'package:jobbay/screens/employer/home/job_details/DetailHeader.dart';

class JobDetailScreen extends StatelessWidget {
  final DashboardJob data;
  Function needRefresh;

  JobDetailScreen({Key? key, required this.data, required this.needRefresh})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                DetailHeader(data: data),
                DetailContent(data: data),
                DetailFooter(data: data, needRefresh: needRefresh),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
