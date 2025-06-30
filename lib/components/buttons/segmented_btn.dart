import 'package:flutter/material.dart';

class SegmentedBtn<T extends Enum> extends StatefulWidget {
  final List<T> values;
  final T selected;
  final void Function(T) onChanged;
  final Map<T, ({String label})> labels;

  const SegmentedBtn({
    super.key,
    required this.values,
    required this.selected,
    required this.onChanged,
    required this.labels,
  });

  @override
  State<SegmentedBtn<T>> createState() => _SegmentedBtnState<T>();
}

class _SegmentedBtnState<T extends Enum> extends State<SegmentedBtn<T>> {
  @override
  Widget build(BuildContext context) {
    return SegmentedButton<T>(
      segments: widget.values
          .map(
            (value) => ButtonSegment<T>(
              value: value,
              label: Text(widget.labels[value]!.label),
            ),
          )
          .toList(),
      selected: {widget.selected},
      onSelectionChanged: (Set<T> newSelection) {
        widget.onChanged(newSelection.first);
      },
    );
  }
}
