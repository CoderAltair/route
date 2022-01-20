import 'package:auto_route/auto_route.dart';
import 'package:labaratoriya/home_page.dart';
import 'package:labaratoriya/posts/posts_page.dart';
import 'package:labaratoriya/posts/single_post_page.dart';
import 'package:labaratoriya/settings/settings_page.dart';
import 'package:labaratoriya/users/user_profile_page.dart';
import 'package:labaratoriya/users/users_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(
      initial:true,
      path: '/',
      page: HomePage,
      children: [
        AutoRoute(
          path: 'posts',
          name: 'PostRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: '',
              page: PostsPage,
            ),
            AutoRoute(
              path: 'postId',
              page: SinglePostPage,
            )
          ],
        ),
        AutoRoute(
          path: 'users',
          name: 'UsersRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: '',
              page: UsersPage,
            ),
            AutoRoute(
              path: 'userId',
              page: UserProfilePage,
            ),
          ],
        ),
        AutoRoute(
          path: 'settings',
          name: 'SettingsRouter',
          page: SettingsPage,
        )
      ],
    ),
  ],
)
class $AppRouter{}
