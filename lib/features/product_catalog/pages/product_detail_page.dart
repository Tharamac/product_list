import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:product_list/features/product_catalog/domain/product.dart';
import 'package:product_list/features/product_catalog/widgets/review_section.dart';

bool _isWideLayout(double width) => width >= 600;

class ProductDetailPage extends StatelessWidget {
  final Product product;
  const ProductDetailPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isWide = _isWideLayout(constraints.maxWidth);
        return isWide
            ? buildWideLayout(context, constraints)
            : buildMobileLayout(context);
      },
    );
  }

  Widget buildMobileLayout(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: MediaQuery.widthOf(context) + 32,
            pinned: true,

            flexibleSpace: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return FlexibleSpaceBar(
                  centerTitle: true,
                  title: IgnorePointer(
                    child: AnimatedOpacity(
                      opacity:
                          constraints.biggest.height ==
                              MediaQuery.of(context).padding.top +
                                  kToolbarHeight
                          ? 1.0
                          : 0.0,
                      duration: Duration.zero,
                      child: Text(
                        product.title,
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  background: Column(
                    children: <Widget>[
                      _buildImage(),
                      //                       Container(
                      //                         color: Colors.cyan,
                      //                         height: 60,
                      // child: Row(
                      //   children: [
                      //     IconButton(onPressed: (){}, icon: Icon(Icons.chevron_left)),
                      //     Expanded(child: Row(

                      //     )),
                      //     IconButton(onPressed: (){}, icon: Icon(Icons.chevron_right)),
                      //   ],
                      // ),

                      // )
                    ],
                  ),
                );
              },
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _productHeader(context),
                  const SizedBox(height: 8),
                  _productBody(context),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton.icon(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('${product.title} added to cart')),
                );
              },
              icon: const Icon(Icons.shopping_cart_outlined),
              label: const Text('Add to Cart'),
            ),
          ),
        ),
      ),
    );
  }

  Widget _productHeader(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          product.category.toUpperCase(),
          style: TextStyle(
            color: Colors.grey.shade600,
            fontSize: 12,
            letterSpacing: 1.1,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          product.title,
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: .spaceBetween,
          children: [
            Row(
              crossAxisAlignment: .start,
              children: [
                Text(
                  '\$${product.price.toStringAsFixed(2)}',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                const SizedBox(width: 4),
                Badge(
                  padding: EdgeInsets.symmetric(horizontal: 6),
                  label: Text(
                    "-${product.discountPercentage.toStringAsFixed(1)}%",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Theme.of(context).colorScheme.errorContainer,
                    ),
                  ),
                ),
              ],
            ),

            Row(
              children: [
                Text(product.availabilityStatus),
                if (product.availabilityStatus == "In Stock")
                  RichText(
                    text: TextSpan(
                      text: ": ",
                      style: TextStyle(
                        fontSize: 16,
                        color: Theme.of(context).colorScheme.inverseSurface,
                      ),
                      children: [
                        TextSpan(
                          text: product.stock.toString(),
                          style: TextStyle(
                            //  fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Column _productBody(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 12),
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondaryContainer,

            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.grey.shade200),
          ),
          child: Column(
            crossAxisAlignment: .start,
            children: [
              const Text(
                'Description',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 8),
              Text(
                product.description,
                style: TextStyle(color: Colors.grey.shade800, height: 1.4),
              ),
              const SizedBox(height: 16),
              Wrap(
                spacing: 8,
                children: product.tags
                    .map(
                      (tag) => Chip(
                        padding: EdgeInsets.all(4),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        label: Text(tag),
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
        ),

   

        ListTile(
          leading: Icon(Icons.local_shipping_outlined),
          title: Text(product.shippingInformation),
        ),
        const Divider(height: 32),
        ReviewSection(reviews: product.reviews),
        const SizedBox(height: 100),
      ],
    );
  }

  Widget _buildImage() {
    return AspectRatio(
      aspectRatio: 1,
      child: Hero(
        tag: 'product-image-${product.id}',
        child: Image(
          image: CachedNetworkImageProvider(product.thumbnailUrl),
          fit: BoxFit.cover,
          width: double.infinity,
          loadingBuilder: (context, child, progress) {
            if (progress == null) return child;
            return const Center(child: CircularProgressIndicator());
          },
          errorBuilder: (_, _, _) => const Icon(Icons.broken_image, size: 40),
        ),
      ),
    );
  }

  Widget buildWideLayout(BuildContext context, BoxConstraints constraints) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          product.title,
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Fixed image panel (left)
          SizedBox(
            width: constraints.maxWidth * 0.4,
            child: Column(
              children: [
                _buildImage(),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: _productHeader(context),
                ),
              ],
            ),
          ),
          // Scrollable details panel (right)
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(32),
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 700),
                      child: _productBody(context),
                    ),
                  ),
                ),
                // _AddToCartBar(product: product, inline: true),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
