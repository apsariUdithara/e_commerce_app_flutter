import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../containers/circular_container.dart';

/// A customized choice chip that can act like a radio button.
class EChoiceChip extends StatelessWidget {
  /// Create a chip that acts like a radio button.
  ///
  /// Parameters:
  ///   - text: Ehe label text for the chip.
  ///   - selected: Whether the chip is currently selected.
  ///   - onSelected: Callback function when the chip is selected.
  const EChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    return Theme(
      // Use a transparent canvas color to match the existing styling.
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        // Use this function to get Colors as a Chip
        avatar: EHelperFunctions.getColor(text) != null
            ? ECircularContainer(width: 50, height: 50, backgroundColor: EHelperFunctions.getColor(text)!)
            : null,
        selected: selected,
        onSelected: onSelected,
        backgroundColor: EHelperFunctions.getColor(text),
        labelStyle: TextStyle(color: selected ? EColors.white : null),
        shape: EHelperFunctions.getColor(text) != null ? const CircleBorder() : null,
        label: EHelperFunctions.getColor(text) == null ? Text(text) : const SizedBox(),
        padding: EHelperFunctions.getColor(text) != null ? const EdgeInsets.all(0) : null,
        labelPadding: EHelperFunctions.getColor(text) != null ? const EdgeInsets.all(0) : null,
      ),
    );
  }
}
