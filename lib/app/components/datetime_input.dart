import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTimeInput extends StatefulWidget {
  final String restorationId;

  const DateTimeInput({Key? key, required this.restorationId})
      : super(key: key);

  @override
  State<DateTimeInput> createState() => _DateTimeInputState();
}

class _DateTimeInputState extends State<DateTimeInput> with RestorationMixin {
  final RestorableDateTime _selectedDate = RestorableDateTime(DateTime.now());

  @override
  String? get restorationId => widget.restorationId;

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_selectedDate, 'selected_date');

    registerForRestoration(
      _restorableDatePickerRouteFuture,
      'date_picker_route_future',
    );
  }

  late final RestorableRouteFuture<DateTime?> _restorableDatePickerRouteFuture =
      RestorableRouteFuture<DateTime?>(
    onComplete: _selectDate,
    onPresent: (NavigatorState navigator, Object? arguments) {
      return navigator.restorablePush(
        _datePickerRoute,
        arguments: _selectedDate.value.millisecondsSinceEpoch,
      );
    },
  );

  static Route<DateTime?> _datePickerRoute(
    BuildContext context,
    Object? arguments,
  ) {
    return DialogRoute(
      context: context,
      builder: (BuildContext context) {
        return DatePickerDialog(
          restorationId: 'date_picker_dialog',
          initialEntryMode: DatePickerEntryMode.calendarOnly,
          initialDate: DateTime.fromMillisecondsSinceEpoch(arguments! as int),
          firstDate: DateTime(2022),
          lastDate: DateTime(2023),
        );
      },
    );
  }

  void _selectDate(DateTime? value) {
    if (value != null) {
      setState(() {
        final newSelectedDateValue =
            DateTime(value.year, value.month, value.day);

        _selectedDate.value = newSelectedDateValue;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: () async {
        _restorableDatePickerRouteFuture.present();
      },
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        hintText: DateFormat.yMMMd().format(_selectedDate.value),
      ),
    );
  }
}
