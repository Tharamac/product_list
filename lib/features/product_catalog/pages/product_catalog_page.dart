import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:product_list/features/product_catalog/bloc/product_bloc.dart';
import 'package:product_list/features/product_catalog/domain/product.dart';
import 'package:product_list/features/product_catalog/pages/product_detail_page.dart';
import 'package:product_list/features/product_catalog/widgets/product_card.dart';
import 'package:skeletonizer/skeletonizer.dart';

/// Decides column count from available width.
int _gridColumns(double width) {
  if (width >= 1200) return 5;
  if (width >= 900) return 4;
  if (width >= 600) return 3;
  return 2;
}

/// Decides aspect ratio so cards don't get too tall/skinny at different sizes.
double _gridAspectRatio(double width) {
  if (width >= 900) return 0.72;
  if (width >= 600) return 0.7;
  return 0.68;
}

class ProductCatalogPage extends StatefulWidget {
  const ProductCatalogPage({super.key});

  @override
  State<ProductCatalogPage> createState() => _ProductCatalogPageState();
}

class _ProductCatalogPageState extends State<ProductCatalogPage> {
  final ScrollController _scrollController = ScrollController();
  @override
  void initState() {
    context.read<ProductBloc>().add(ProductEvent.fetchProductData());

    _scrollController.addListener(() {
      if (_scrollController.position.pixels >=
          _scrollController.position.maxScrollExtent) {
        context.read<ProductBloc>().add(ProductEvent.fetchMoreProductData());
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text("Product Catalog"),

        actions: [IconButton(icon: const Icon(Icons.search), onPressed: () {})],
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final width = constraints.maxWidth;
          final columns = _gridColumns(width);
          final aspectRatio = _gridAspectRatio(width);

          // Optional: constrain content on very wide screens (desktop/web)
          final maxContentWidth = 1400.0;
          final horizontalPadding = width > maxContentWidth
              ? (width - maxContentWidth) / 2
              : 12.0;

          return BlocBuilder<ProductBloc, ProductState>(
            builder: (context, state) {
              return RefreshIndicator.adaptive(
                onRefresh: () async {
                  context.read<ProductBloc>().add(
                    ProductEvent.fetchProductData(),
                  );
                },
                child: Skeletonizer(
                  enabled:
                      state.loadingProductList &&
                      state.productListpaging.isFirstPage,
                  child: CustomScrollView(
                    controller: _scrollController,
                    // padding: EdgeInsets.symmetric(
                    //   horizontal: horizontalPadding,
                    //   vertical: 12,
                    // ),
                    slivers: [
                      SliverPadding(
                        padding: EdgeInsets.symmetric(
                          horizontal: horizontalPadding,
                          vertical: 12,
                        ),
                        sliver: SliverGrid.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: columns,
                                mainAxisSpacing: 12,
                                crossAxisSpacing: 12,
                                childAspectRatio: aspectRatio,
                              ),
                          itemCount: state.productList.length,
                          itemBuilder: (context, index) {
                            final product = state.productList[index];
                            return ProductCard(
                              product: product,
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) =>
                                        ProductDetailPage(product: product),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ),

                      // 2. The Loading Widget pinned underneath the grid
                      if (!state.productListpaging.isFirstPage)
                        const SliverToBoxAdapter(
                          child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Center(child: CircularProgressIndicator()),
                          ),
                        ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
