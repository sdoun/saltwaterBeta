// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class DateTimeRangePicker extends StatefulWidget {
  const DateTimeRangePicker({
    super.key,
    this.width,
    this.height,
    this.initialStartDate,
    this.initialEndDate,
    this.updatePageUI,
    this.fontColor,
    this.backgroundColor,
    this.outlineColor,
    this.outlineWidth,
    this.pickerWidth,
    this.pickerHeight,
    this.dateYear,
  });

  final double? width;
  final double? height;
  final DateTime? initialStartDate;
  final DateTime? initialEndDate;
  final Future Function()? updatePageUI;
  final Color? fontColor;
  final Color? backgroundColor;
  final Color? outlineColor;
  final int? outlineWidth;
  final int? pickerWidth;
  final int? pickerHeight;
  final int? dateYear;

  @override
  State<DateTimeRangePicker> createState() => _DateTimeRangePickerState();
}

class _DateTimeRangePickerState extends State<DateTimeRangePicker> {
  DateTimeRange? selectedDateRange;

  @override
  void initstate() {
    super.initState();
    if (widget.initialEndDate != null && widget.initialStartDate != null) {
      selectedDateRange = DateTimeRange(
          start: widget.initialStartDate!, end: widget.initialEndDate!);
    }
  }

  void showCustomDateRangePicker() async {
    final DateTimeRange? picked = await showDateRangePicker(
        context: context,
        firstDate: DateTime(widget.dateYear!),
        lastDate: DateTime(widget.dateYear! + 1),
        builder: (context, child) {
          return Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: widget.pickerHeight?.toDouble() ?? double.infinity,
                maxWidth: widget.pickerWidth?.toDouble() ??
                    MediaQuery.of(context).size.height * 0.8,
              ),
              child: child!,
            ),
          );
        });
    if (picked != null) {
      setState(() {
        selectedDateRange = picked;
        FFAppState().startDate = picked.start;
        FFAppState().endDate = picked.end;
        widget.updatePageUI!();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? double.infinity,
      height: widget.height ?? 50.0,
      child: ElevatedButton(
        onPressed: showCustomDateRangePicker,
        child: Padding(
          padding:
              const EdgeInsets.all(8.0), // Adjust the padding value as needed
          child: selectedDateRange != null
              ? Text(
                  '${DateFormat('yyyy-MM-dd').format(selectedDateRange!.start)} to ${DateFormat('yyyy-MM-dd').format(selectedDateRange!.end)}',
                  style: TextStyle(
                    color: widget.fontColor ??
                        FlutterFlowTheme.of(context).primaryText,
                  ),
                )
              : Text(
                  'Select Date Range',
                  style: TextStyle(
                    color: widget.fontColor ??
                        FlutterFlowTheme.of(context).primaryText,
                  ),
                ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: widget.backgroundColor ??
              FlutterFlowTheme.of(context).secondaryBackground,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            side: BorderSide(
              color: widget.outlineColor ?? Colors.transparent,
              width: widget.outlineWidth?.toDouble() ?? 0,
            ),
          ),
        ),
      ),
    );
  }
}
