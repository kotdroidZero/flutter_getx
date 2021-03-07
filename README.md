# flutter_ap_getx

A new Flutter application.

# Getx is fast , stable ,extra-light and powerful flutter framework for
1. State Management
2. Dependency Injection
3. Route Management

# 3 basic principles of GetX
1. Performance (better than any previous stms, less memory usage)
2. Productivity (easy and simple syntax, saves development time)
3. Organization (decoupling of components)


# Pillars of GetX
 1. State Management (GetBuilder(Simple), GetX(reactive))
2. Route Management (Anything like snacbars,bottomsheet,dialog.routes all can be done without need of context
3. Dependency Management

# Installation
 (add the plugin below in your pubspec.yaml file)
```Get: ^3.26.0```  [Use latest version of GetX from Here](https://pub.dev/packages/get/install)

# Features Of GetX now:

# 1.Snackbar
```Get.snackbar()``` with lost of parameters to customize  the snackbar.
# 2.Dialog
```Get.defaultDialog()``` with lots of parameters to customize the dialog
# 3.BootomSheet
```Get.bottomSheet()``` take your own widget and do anything you want. And lots of parameters to customize it
# 4.Changing Theme:
```Get.changeTheme(ThemeData.light())```
&
```Get.changeTheme(ThemeData.dark())```
# 5.Route Navigation for unnamed Route:
```Get.to()``` with lots of additional parameters to move, first arg is your screen as constructor calling, there are parameters present to make that screen as full screen dialog , animation while transition , duration of animation etc.
```Get.to()``` ///move next screen,
```Get.off()``` ///replace this screen with current screen
```Get.offAll()``` //// replace this screen with all screens (every previous screen will be gone)
```Get.back(result:”back from home”)``` /// return to back screen also you can send data in result  args.
# 6.Route Navigation for named Route:
 In GetMaterialApp define your pages in getPages like below:
 ```getPages: [ ```
 ```GetPage(name: '/', page: () => MyApp()),```
 ```GetPage(name: '/profile', page:()=> Profile()),  ```
 ```GetPage(name: '/next/:someValueYouWantToPass', page: () => Next()),```
 ```]```
 and set initial route like:
 ```initialRoute: '/',``` /// this will automatically call ```MyApp()``` page
 also you can provide default transition in GetMaterialApp like this
```defaultTransition: Transition.zoom,```

or if you want any particular transition in any specific page you can do that too while defining page in ```getPages``` array like below:
```GetPage(```
          ```name: '/next',```
          ```page: () => Next(),```
          ```transition: Transition.leftToRight,```
        ```),```

  Navigate to profile using
    ```Get.toNamed('/profile');```   /// move to next screen keeping previous Screen in stack.
```Get.offNamed('/profile');```   /// move to next screen by removing previous Screen  in stack.
```Get.offAllNamed('/profile');```   /// move to next screen by remoning all previous Screen in stack.

# Passing params in path:
1. dynamic url link while going to next screen
```Get.toNamed('/profile?user=Pushkar&job=Mobile Developer');```
and in Profile Screen you can get all the parameter like below :
```Get.parameters['user']```
```Get.parameters['job']```
you see the above dynamic url concept is so simple like we are navigating between web pages.
Right?
You must be remembring your web development days.. haha

2. Now If you want to pass some values in parameter of name only
```Get.toNamed('/next/FlutterDev')```
retriving will be the same as above in next screen
```Get.parameters['someValueYouWantToPass']``` /// and will return ```"FlutterDev"``` as output

if you need to handle unnamed routing for which no screen exist in GetMaterialApp add thie params:
```unknownRoute: GetPage(page: () => Unknown(), name: 'notFound'),```




