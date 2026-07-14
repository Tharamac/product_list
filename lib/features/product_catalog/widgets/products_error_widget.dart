import 'package:flutter/material.dart';

class ProductsErrorWidget extends StatelessWidget {
  final VoidCallback? onPressedRetry;
  const ProductsErrorWidget({super.key, this.onPressedRetry});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: .center, 
        children: [
          Icon(Icons.error_outline, color: Theme.of(context).colorScheme.error, size: 64),
          SizedBox(height: 8),
          Text(
            "An error occurred, please try again",
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
          if (onPressedRetry != null)
            TextButton(onPressed: onPressedRetry, child: Text("Retry")),
        ],
      ),
    );
  }
}
