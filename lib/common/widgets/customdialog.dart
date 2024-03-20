import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:overlay_support/overlay_support.dart';

class CustomDialogs {
  static void showLoading(
      BuildContext context, {
        UniqueKey? key,
        String message = '',
        Color? barrierColor,
        bool? useRootNavigator = false,
      }) async {
    final dialog = Dialog(
      key: key,
      backgroundColor: Colors.transparent,
      elevation: 0,
      // child: PulsatingImage(),

      child:  SpinKitDualRing(
        color: Theme.of(context).colorScheme.primary,
        size: 50.0,
      ),
    );

    await showDialog(
      context: context,
      useRootNavigator: useRootNavigator!,
      builder: (BuildContext context) => dialog,
      barrierDismissible: true,
      barrierColor: barrierColor ??
          Theme.of(context).colorScheme.primary.withOpacity(0.1),
      // barrierColor: barrierColor,
    );
  }

  static Future<T?> showBottomSheet<T>(BuildContext context, Widget child,
      {Color? barrierColor}) {
    return showModalBottomSheet<T>(
        backgroundColor: Colors.transparent,
        context: context,
        barrierColor: barrierColor ??
            Theme.of(context).colorScheme.primary.withOpacity(0.3),
        useRootNavigator: true,
        isScrollControlled: true,
        builder: (context) {
          return Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: child,
          );
        });
  }

  static void showCustomDialog(Widget child, BuildContext context,
      {String title = 'loading...',
        VoidCallback? onYes,
        bool? useRootNavigator = false,
        bool? barrierDismissible = true}) async {
    final dialog = Dialog(
      backgroundColor: Colors.white,
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: ClipRRect(borderRadius: BorderRadius.circular(20), child: child),
    );

    await showDialog(
      context: context,
      useRootNavigator: useRootNavigator!,
      builder: (BuildContext context) => dialog,
      barrierDismissible: barrierDismissible!,
      barrierColor: Colors.black.withOpacity(0.2),
    );
  }

  static showOverlayDialog(
      BuildContext context, {
        required Widget? child,
        bool? dissmisable = true,
        double? opacity = 0.8,
      }) {
    showDialog(
        context: context,
        barrierDismissible: dissmisable!,
        barrierColor: Colors.black.withOpacity(opacity!),
        builder: (context) {
          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                if ((child != null)) ...[child],
                if ((child == null)) ...[
                  CupertinoActivityIndicator(
                    color: Theme.of(context).colorScheme.onPrimary,
                    radius: 15,
                  ),
                ]
              ],
            ),
          );
        });
  }

  static Future<DateTime?> selectDate(
      DateTime initialDate, BuildContext context,
      {DateTime? minDate, String? text = ""}) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        DateTime? _selectedDate;
        return Dialog(
          child: Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 200.0,
                  child: CupertinoDatePicker(
                    mode: CupertinoDatePickerMode.date,
                    initialDateTime: minDate,
                    maximumDate: minDate,
                    onDateTimeChanged: (DateTime newDateTime) {
                      _selectedDate = newDateTime;
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CupertinoButton(
                      child: const Text(
                        'Cancel',
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    CupertinoButton(
                      child: const Text(
                        'Select date',
                      ),
                      onPressed: () {
                        Navigator.of(context).pop(_selectedDate);
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        );
      },
    );
  }

  static void showSnackBar(
      BuildContext context,
      String message, {
        void Function()? onClose,
        bool error = false,
      }) {
    final snackBar = SnackBar(
      content: Text(
        message,
        style: TextStyle(color: Colors.white),
      ),
      backgroundColor:
      !error ? Theme.of(context).colorScheme.primary : Colors.red,
      duration: const Duration(seconds: 5),
      action: SnackBarAction(
        label: 'CLOSE',
        textColor: Colors.white,
        onPressed: () {
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
          if (onClose != null) {
            onClose();
          }
        },
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  /// show success notification
  static success(String message) {
    // show a notification at top of screen.
    showSimpleNotification(
      duration: const Duration(seconds: 3),
      Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.green,
          // border: Border.all(color: Pallets.primary),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            const Icon(
              Icons.check_circle,
              size: 24.0,
              color: Colors.white,
            ),
            SizedBox(width: 12),
            Expanded(
              child: Text(
                message.isEmpty
                    ? 'An error occurred, please try again'
                    : message,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
      background: Colors.transparent,
      elevation: 0,
    );
  }

  /// show error notification
  static error(String message) {
    // show a notification at top of screen.

    // show a notification at top of screen.
    showSimpleNotification(
      duration: const Duration(seconds: 3),
      Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.red,
          // border: Border.all(color: Pallets.red),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            const Icon(
              Icons.cancel,
              size: 24.0,
              color: Colors.white,
            ),
            SizedBox(width: 12),
            Expanded(
              child: Text(
                message.isEmpty
                    ? 'An error occurred, please try again'
                    : message,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
      background: Colors.transparent,
      elevation: 0,
    );
  }
}