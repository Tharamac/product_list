// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paging_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PagingDto _$PagingDtoFromJson(Map<String, dynamic> json) => PagingDto(
  total: (json['total'] as num).toInt(),
  skip: (json['skip'] as num).toInt(),
  limit: (json['limit'] as num).toInt(),
);

Map<String, dynamic> _$PagingDtoToJson(PagingDto instance) => <String, dynamic>{
  'total': instance.total,
  'skip': instance.skip,
  'limit': instance.limit,
};
