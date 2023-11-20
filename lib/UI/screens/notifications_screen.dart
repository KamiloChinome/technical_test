import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';

class NotificationsScreen extends StatelessWidget {
  static const name = 'notifications';
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            centerTitle: true,
            floating: true,
            title: const Text('Notificaciones'),
            leading: IconButton(
              onPressed: () => context.pop(),
              icon: const Icon(Icons.arrow_back_ios_new_rounded),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: List.generate(4, (index) => const _NotificationCard()),
            ),
          )
        ],
      ),
    );
  }
}

class _NotificationCard extends StatelessWidget {
  const _NotificationCard();

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    TextTheme textTheme = Theme.of(context).textTheme;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5.w, vertical: 1.h),
      padding: EdgeInsets.all(2.w),
      decoration: BoxDecoration(
        color: colorScheme.surface,
        borderRadius: BorderRadius.circular(5.w),
        boxShadow: [
          BoxShadow(
            blurRadius: 3,
            color: colorScheme.shadow,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            height: 8.h,
            width: 8.h,
            decoration: BoxDecoration(
              color: colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(5.w),
            ),
            child: const Center(
              child: Icon(Icons.notification_important_rounded),
            ),
          ),
          SizedBox(width: 3.w),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Esta es una notificacion',
                  style: textTheme.titleSmall,
                ),
                Text(
                  'Anim ea incididunt ea cillum quis eu est sit. Nisi dolore esse laborum mollit velit aute magna minim nostrud veniam.',
                  style: textTheme.bodySmall,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
