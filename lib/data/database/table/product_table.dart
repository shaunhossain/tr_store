import 'package:drift/drift.dart';

class Product extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get slug => text().nullable()();
  TextColumn get title => text().nullable()();
  TextColumn get content => text().nullable()();
  TextColumn get image => text().nullable()();
  TextColumn get thumbnail => text().nullable()();
  TextColumn get status => text().nullable()();
  TextColumn get category => text().nullable()();
  TextColumn get publishedAt => text().nullable()();
  TextColumn get updatedAt => text().nullable()();
  IntColumn get userId => integer().nullable()();
  IntColumn get count => integer().nullable()();
}