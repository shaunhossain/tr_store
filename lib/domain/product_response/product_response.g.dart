// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductResponseImpl _$$ProductResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductResponseImpl(
      id: json['id'] as int?,
      slug: json['slug'] as String?,
      url: json['url'] as String?,
      title: json['title'] as String?,
      content: json['content'] as String?,
      image: json['image'] as String?,
      thumbnail: json['thumbnail'] as String?,
      status: json['status'] as String?,
      category: json['category'] as String?,
      publishedAt: json['publishedAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      userId: json['userId'] as int?,
      count: json['count'] as int?,
    );

Map<String, dynamic> _$$ProductResponseImplToJson(
        _$ProductResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'slug': instance.slug,
      'url': instance.url,
      'title': instance.title,
      'content': instance.content,
      'image': instance.image,
      'thumbnail': instance.thumbnail,
      'status': instance.status,
      'category': instance.category,
      'publishedAt': instance.publishedAt,
      'updatedAt': instance.updatedAt,
      'userId': instance.userId,
      'count': instance.count,
    };
