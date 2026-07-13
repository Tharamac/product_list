import 'package:json_annotation/json_annotation.dart';

part 'paging_dto.g.dart';

@JsonSerializable()
class PagingDto{
  final int total;   // total items available on server
  final int skip;     // how many items were skipped (offset)
  final int limit;  
  PagingDto({
    required this.total,
    required this.skip,
    required this.limit,
  });

  factory PagingDto.fromJson(Map<String, dynamic> json) => _$PagingDtoFromJson(json);

  Map<String, dynamic> toJson() => _$PagingDtoToJson(this);
}