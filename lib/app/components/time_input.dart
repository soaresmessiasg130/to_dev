import 'package:flutter/material.dart';

class TimeInput extends StatefulWidget {
  final String restorationId;

  const TimeInput({Key? key, required this.restorationId}) : super(key: key);

  @override
  State<TimeInput> createState() => _TimeInputState();
}

class _TimeInputState extends State<TimeInput> with RestorationMixin {
  final RestorableTimeOfDay _selectedTime =
      RestorableTimeOfDay(TimeOfDay.now());

  late final RestorableRouteFuture<TimeOfDay?>
      _restorableTimePickerRouteFuture = RestorableRouteFuture<TimeOfDay?>(
    onComplete: _onSelectTime,
    onPresent: (NavigatorState navigator, Object? arguments) {
      return navigator.restorablePush(
        _timePickerRoute,
        arguments: _selectedTime.value.format(context),
      );
    },
  );

  @override
  String? get restorationId => widget.restorationId;

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_selectedTime, 'selected_time');

    registerForRestoration(
      _restorableTimePickerRouteFuture,
      'time_picker_route_future',
    );
  }

  static Route<TimeOfDay?> _timePickerRoute(
    BuildContext context,
    Object? arguments,
  ) {
    print(arguments);

    return DialogRoute(
      context: context,
      builder: (BuildContext context) {
        return TimePickerDialog(
          restorationId: 'time_picker_dialog',
          initialTime: TimeOfDay(
            hour: int.parse(
              arguments != null ? arguments.toString().split(':')[0] : '0',
            ),
            minute: int.parse(
              arguments != null ? arguments.toString().split(':')[1] : '0',
            ),
          ),
        );
      },
    );
  }

  void _onSelectTime(TimeOfDay? value) {
    if (value != null) {
      setState(() {
        _selectedTime.value = value;
      });
    }
  }

  void _onOpenPicker() {
    _restorableTimePickerRouteFuture.present();
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: _onOpenPicker,
      child: Text(
        _selectedTime.value.format(context),
      ),
    );
  }
}
