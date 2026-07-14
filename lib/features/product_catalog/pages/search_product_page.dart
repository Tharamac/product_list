import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:product_list/features/product_catalog/bloc/product_bloc.dart';
import 'package:product_list/features/product_catalog/domain/product.dart';
import 'package:product_list/features/product_catalog/pages/product_detail_page.dart';
import 'package:product_list/features/product_catalog/widgets/product_card.dart';
import 'package:product_list/features/product_catalog/widgets/products_empty_widget.dart';
import 'package:product_list/features/product_catalog/widgets/products_error_widget.dart';
import 'package:product_list/features/product_catalog/widgets/products_no_result_found_widget.dart';
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

class SearchProductPage extends StatefulWidget {
  const SearchProductPage({super.key});

  @override
  State<SearchProductPage> createState() => _SearchProductPageState();
}

class _SearchProductPageState extends State<SearchProductPage> {
  final ScrollController _scrollController = ScrollController();
    final _searchController = TextEditingController();
  @override
  void initState() {
  

    _scrollController.addListener(() {
      if (_scrollController.position.pixels >=
          _scrollController.position.maxScrollExtent) {
        context.read<ProductBloc>().add(ProductEvent.onSearchMoreProduct(_searchController.text));
      }
    });
    super.initState();
  }

  void _onSearchChanged([String keyword = ""]) {
    context.read<ProductBloc>().add(ProductEvent.onSearchProduct(keyword));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: TextField(
              controller: _searchController,
              onChanged: _onSearchChanged,
              textInputAction: TextInputAction.search,
              decoration: InputDecoration(
                hintText: 'Search products...',
                border: InputBorder.none,
                hintStyle: TextStyle(
                  color: Theme.of(context).colorScheme.onPrimaryContainer
                ),
                alignLabelWithHint: true,
              ),
              maxLines: 1,
              style: TextStyle(color: Theme.of(context).colorScheme.onPrimaryContainer),
              onSubmitted: (_) => FocusScope.of(context).unfocus(),
            ),

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
                buildWhen: (previous, current) {
              return 
              !DeepCollectionEquality().equals(previous.failOrSearchSuccess, current.failOrSearchSuccess,)  
               ||  !DeepCollectionEquality().equals(previous.searchProductResult, current.searchProductResult,) ||
               !DeepCollectionEquality().equals(previous.productSearchPaging, current.productSearchPaging,);
            },
            builder: (context, state) {
              return Skeletonizer(
                  enabled:
                      state.loadingProductList &&
                      state.productSearchPaging.isFirstPage,
                  child: state.failOrSearchSuccess.fold(
                    (failure) => ProductsErrorWidget(
                      onPressedRetry: (){
                        _onSearchChanged(_searchController.text);
                      }
                    ),
                    (_) => (state.searchProductResult.isEmpty)
                        ? ProductsNoResultFoundWidget()
                        : CustomScrollView(
                    controller: _scrollController,
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
                          itemCount: state.searchProductResult.length,
                          itemBuilder: (context, index) {
                            final product = state.searchProductResult[index];
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
                      if (!state.productSearchPaging.isFirstPage && !state.productSearchPaging.isLastPage)
                        const SliverToBoxAdapter(
                          child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Center(child: CircularProgressIndicator()),
                          ),
                        ),

                      if(state.productSearchPaging.isLastPage)
                                SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Divider(
           
                  thickness: 1,
                  color: Colors.grey.shade300,
                ),
              ),
            ),

                      
                    ],
                  ),
              
              ));
            },
          );
        },
      ),
    );
  }
}
