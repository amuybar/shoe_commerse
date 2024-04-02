import 'package:flutter/material.dart';

class CustomDropdownMenu<T> extends StatelessWidget {
  final List<T> items;
  final T? value;
  final void Function(T?)? onChanged;

  const CustomDropdownMenu({
    super.key,
    required this.items,
    this.value,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButton<T>(
     dropdownColor: Colors.grey,
     borderRadius: BorderRadius.circular(10),
      icon: const Icon(Icons.arrow_drop_down),
      padding: const EdgeInsets.all(8.0),
    

      isExpanded: true,
      value: value,
      onChanged: onChanged,
      items: items.map<DropdownMenuItem<T>>((T item) {
        return DropdownMenuItem<T>(
          value: item,
          child: Text(item.toString()),
        );
      }).toList(),
    );
  }
}
