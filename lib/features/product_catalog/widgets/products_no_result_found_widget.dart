import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProductsNoResultFoundWidget extends StatelessWidget {
  final VoidCallback? onPressedRefresh;
  const ProductsNoResultFoundWidget({super.key, this.onPressedRefresh});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: .center, 
        children: [
          Icon(Icons.search_off_outlined, color: Theme.of(context).colorScheme.surfaceDim, size: 64),
          SizedBox(height: 8),
          Text(
            "No result found",
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