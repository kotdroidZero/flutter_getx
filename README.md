# flutter_ap_getx

A new Flutter application.

.Getx is fast , stable ,extra-light and powerful flutter framework for
State Management
Dependency Injection
Route Management

.3 basic principles of getx
Performance (better than any previous stms, less memory usage)
Productivity (easy and simple syntax, saves development time)
Organization (decoupling of components)


.Pillars of GetX
State Management (GetBuilder(Simple), GetX(reactive))
Route Management (Anything like snacbars,bottomsheet,dialog.routes all can be done without need of context
Dependency Management

.Installation
      Get: ^3.13.2  (use latest version)

Features Of GetX now:

. Snackbar : Get.snackbar() with lost of parameters to customize  the snackbar.
. Dialog      : Get.defaultDialog() with lots of parameters to customize the dialog
.BootomSheet: Get.bottomSheet() take your own widget and do anything you want. And lots of parameters to customize it
. Changing Theme:      Get.changeTheme(ThemeData.light()),Get.changeTheme(ThemeData.dark())
. Route Navigation: Get.to() with lots of additional parameters to move, first arg is your screen as constructor calling, there are parameters present to make that screen as full screen dialog , animation while transition , duration of animation etc.
Get.to() ///move next screen,
Get.off() ///replace this screen with current screen
Get.offAll() //// replace this screen with all screens (every previous screen will be gone)
Get.back(result:”back from home”) return to back screen also you can send data in result  args.



