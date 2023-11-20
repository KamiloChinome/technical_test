# technical_test

This project is a small technical test that requires a minimum of two different views and the implementation of a splash screen with a Lottie animation.

## Clone

1. Open your terminal or command line interface.

2. Navigate to the directory where you want to clone the repository.

3. Use the git clone command followed by the repository's URL. The command should look like this:   
   ```bash
   git clone https://github.com/username/repository.git
## Getting Started
In addition to cloning the repository, here are the basic ways to use the key packages in this project:

### Go router
Go Router simplifies navigation in Flutter applications, it also optimizes web navigation with URL formats.. Here's how you can use Go Router:
1. Import Go Router in your Dart file: import 'package:go_router/go_router.dart';
2. Define routes using Go Router in lib/config/router/app_router.dart
3. Use the router to navigate: 
``` context.push('routePath')
```

### Sizer
To make your UI responsive using Sizer:
1. import 'package:sizer/sizer.dart';
2. Use Sizer to make your UI responsive:
```Container(
  width: 50.w,  // 50% of the screen width
  height: 10.h,  // 10% of the screen height
  child: YourWidget(),
);
```

