# Product Catalog App

A Flutter e-commerce catalog application featuring a responsive product grid, dedicated search results page, detailed product pages, reviews, and shipping information — built with Material 3, BLoc, and Retrofit/Dio.

## Features

- **Responsive Catalog Grid** — Adapts column count (2–5) based on screen width using `LayoutBuilder`, works across phone, tablet, and desktop/web.
- **Search on a Dedicated Page** — Tapping the inline search field navigates to a separate search results page (`search_product_page.dart`), which has its own paginated result set independent of the main catalog.
- **Infinite Scroll Pagination** — Offset-based pagination (`total` / `skip` / `limit`) with automatic "load more" on scroll, used on both the catalog and search pages.
- **Skeleton Loading States** — `skeletonizer`-based shimmer placeholders shown during initial load.
- **Error / Empty / No-Results States** — Dedicated widgets for network/API errors, an empty catalog, and "no results found" when a search query returns nothing.
- **Responsive Product Detail Screen** — Collapsing hero image + app bar title on phones; two-pane image/detail layout on tablet & desktop.
  - **Reviews Section** — Star ratings, reviewer info, and review cards.
  - **Shipping & Info Section** — Description, stocks, availability status, price with discount, category and tags

## Project Structure

```
lib/
├── main.dart                                  # App entry point, DI setup, theme
├── core/
│   ├── domain/
│   │   ├── paging.dart                        # Generic pagination model (skip/limit/total)
│   │   ├── paging_dto.dart                    # Pagination DTO (API shape)
│   │   └── paging_dto.g.dart                  # Generated JSON serialization
│   ├── handler/
│   │   ├── dio_handler.dart                   # Dio client setup, interceptors, base options
│   │   └── injectable.dart                    # Dependency injection registration (get_it)
│   └── helper/
│       └── debouncer.dart                     # Debounce helper (used for search input)
└── features/
    └── product_catalog/
        ├── api/
        │   ├── product_api.dart               # Retrofit API interface (endpoints)
        │   └── product_api.g.dart              # Generated Retrofit client implementation
        ├── bloc/
        │   ├── product_bloc.dart               # BLoc — handles events, emits states
        │   ├── product_bloc.freezed.dart       # Generated freezed union boilerplate
        │   ├── product_event.dart              # BLoc events (fetch, search, load more, etc.)
        │   └── product_state.dart              # BLoc states (loading, loaded, error, empty)
        ├── domain/
        │   ├── product.dart                    # Product domain model
        │   ├── product_failure.dart            # Typed failure/error model
        │   ├── product_failure.freezed.dart    # Generated freezed union boilerplate
        │   └── review.dart                     # Review domain model
        ├── dtos/
        │   ├── product_dto.dart                # Product API response DTO
        │   ├── product_dto.g.dart              # Generated JSON serialization
        │   ├── product_response_dto.dart       # Paginated product list response DTO
        │   ├── product_response_dto.g.dart     # Generated JSON serialization
        │   ├── review_dto.dart                 # Review API response DTO
        │   └── review_dto.g.dart               # Generated JSON serialization
        ├── pages/
        │   ├── product_catalog_page.dart       # Main catalog grid screen
        │   ├── product_detail_page.dart        # Product detail screen
        │   └── search_product_page.dart        # Dedicated search results screen
        ├── repository/
        │   └── product_repository.dart         # Maps DTOs <-> domain models, calls API layer
        └── widgets/
            ├── info_section.dart                # Shipping / weight / dimensions info card
            ├── product_card.dart                # Grid item card (with skeleton loading state)
            ├── products_empty_widget.dart       # Empty-state widget (no products at all)
            ├── products_error_widget.dart       # Error-state widget (API/network failure)
            ├── products_no_result_found_widget.dart # No-results-found widget (search)
            ├── review_card.dart                 # Individual review card
            └── review_section.dart              # Review list + rating summary
```

## Architecture

- **Feature-first structure** — code is grouped by feature (`features/product_catalog/`) rather than by layer-only folders, with `core/` reserved for cross-cutting concerns (networking, pagination, DI, helpers).
- **BLoc pattern** (`flutter_bloc`) — UI dispatches events (`product_event.dart`) to `product_bloc.dart`, which emits states (`product_state.dart`) that pages listen to via `BlocBuilder`/`BlocConsumer`. States cover loading, loaded, error, empty, and no-results-found cases explicitly.
- **DTO / Domain separation** — `dtos/` hold the raw API response shape (generated via `json_serializable`), while `domain/` holds the clean models the UI actually consumes. `repository/product_repository.dart` is the mapping boundary between the two.
- **Retrofit + Dio** — `api/product_api.dart` defines typed API endpoints via `retrofit`, with the implementation generated into `product_api.g.dart`. `core/handler/dio_handler.dart` configures the shared `Dio` client (base URL, interceptors, logging via `pretty_dio_logger`).
- **Dependency Injection** — `core/handler/injectable.dart` registers repositories, API clients, and blocs with `get_it` for retrieval throughout the widget tree.
- **Functional error handling** — `fpdart` is used alongside `product_failure.dart` (a `freezed` union) to represent typed failures instead of throwing raw exceptions.
- **Debounced search** — `core/helper/debouncer.dart` delays search API calls until the user pauses typing, before navigating to `search_product_page.dart`.

## SDK Version

- Flutter 3.44.6
- Dart 3.12.2 (bundled with the above Flutter SDK)

### Key Dependencies

| Package | Purpose |
|---|---|
| `flutter_bloc` | State management (BLoc pattern) |
| `dio` | HTTP client |
| `retrofit` + `retrofit_generator` | Typed REST API client generation |
| `json_annotation` + `json_serializable` | DTO JSON (de)serialization |
| `freezed` | Immutable models / union types (states, events, failures) |
| `fpdart` | Functional error handling (`Either`, etc.) |
| `get_it` | Dependency injection / service locator |
| `pretty_dio_logger` | Readable HTTP request/response logging |
| `skeletonizer` | Skeleton/shimmer loading placeholders |
| `cached_network_image` | Image loading with caching |
| `collection` | Extra collection utilities |
| `build_runner` (dev) | Runs code generation for freezed/json_serializable/retrofit |
| `flutter_lints` (dev) | Recommended lint rules |

## Getting Started

Install dependencies:

```
flutter pub get
```

Run code generation (required for `.g.dart` and `.freezed.dart` files — DTOs, retrofit client, freezed unions):

```
dart run build_runner build --delete-conflicting-outputs
```

Run the app:

```
flutter run
```

Run on web (useful for testing responsive breakpoints):

```
flutter run -d chrome
```

## Data Source

The DTO shapes (`product_dto.dart`, `product_response_dto.dart`, `review_dto.dart`) and pagination model (`paging_dto.dart`, using `total` / `skip` / `limit`) are compatible with the [DummyJSON Products API](https://dummyjson.com/products). `product_api.dart` defines the Retrofit endpoints against this API; swap the base URL in `dio_handler.dart` to point at a different backend if needed.

## Responsive Breakpoints

| Width | Catalog Columns | Detail Layout |
|---|---|---|
| < 600px | 2 | Stacked (phone) |
| 600–899px | 3 | Stacked (phone) |
| 900–1199px | 4 | Two-pane (tablet) |
| ≥ 1200px | 5 | Two-pane (desktop) |

## UI States Covered

- **Loading** — skeleton placeholder cards (`skeletonizer`) on initial load.
- **Loaded** — paginated grid with infinite scroll.
- **Empty** — `products_empty_widget.dart`, shown when the catalog has no products at all.
- **Error** — `products_error_widget.dart`, shown on network/API failure, typically with a retry action.
- **No Results Found** — `products_no_result_found_widget.dart`, shown on `search_product_page.dart` when a search query returns zero matches.

## Known Limitations / Next Steps

- [ ] Add collapsible shipping and info section for long detail pages
- [ ] Add unit/widget tests (`test/` directory currently scaffolded but empty)
- [ ] Add retry-with-backoff to the error widget's retry action
