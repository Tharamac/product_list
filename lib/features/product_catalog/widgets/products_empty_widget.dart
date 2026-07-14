import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProductsEmptyWidget extends StatelessWidget {
  final VoidCallback? onPressedRefresh;
  const ProductsEmptyWidget({super.key, this.onPressedRefresh});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: .center, 
        children: [
          Icon(Icons.inbox, color: Theme.of(context).colorScheme.surfaceDim, size: 64),
          SizedBox(height: 8),
          Text(
            "No product available",
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
          if (onPressedRefresh != null)
            IconButton(
              icon: Icon(Icons.refresh),
              onPressed: onPressedRefresh,),
        ],
      ),
    );
  }
}