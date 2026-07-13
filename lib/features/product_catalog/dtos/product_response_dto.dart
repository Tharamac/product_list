import 'package:json_annotation/json_annotation.dart';
import 'package:product_list/core/domain/paging.dart';

part 'product_response_dto.g.dart';

@JsonSerializable()
class ProductResponseDto {
  final List<dynamic> productList;
  final int total;
  final int skip;
  final int limit;
  ProductResponseDto({
    required this.productList,
    required this.total,
    required this.skip,
    required this.limit,
  });

  factory ProductResponseDto.fromJson(Map<String, dynamic> json) => _$ProductResponseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ProductResponseDtoToJson(this);

  PaginationData get paging => PaginationData.fromDto(this);
    
}
