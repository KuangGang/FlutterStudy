import 'package:flutter_study/models/ebook_list_model.dart';

ebookListModelFromJson(EbookListModel data, Map<String, dynamic> json) {
	if (json['msg'] != null) {
		data.msg = json['msg']?.toString();
	}
	if (json['code'] != null) {
		data.code = json['code']?.toInt();
	}
	if (json['data'] != null) {
		data.data = new List<EbookListData>();
		(json['data'] as List).forEach((v) {
			data.data.add(new EbookListData().fromJson(v));
		});
	}
	if (json['version'] != null) {
		data.version = json['version']?.toString();
	}
	return data;
}

Map<String, dynamic> ebookListModelToJson(EbookListModel entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['msg'] = entity.msg;
	data['code'] = entity.code;
	if (entity.data != null) {
		data['data'] =  entity.data.map((v) => v.toJson()).toList();
	}
	data['version'] = entity.version;
	return data;
}

ebookListDataFromJson(EbookListData data, Map<String, dynamic> json) {
	if (json['total_words'] != null) {
		data.totalWords = json['total_words']?.toInt();
	}
	if (json['is_ebook_vip_free'] != null) {
		data.isEbookVipFree = json['is_ebook_vip_free']?.toInt();
	}
	if (json['description'] != null) {
		data.description = json['description']?.toString();
	}
	if (json['packageVersion'] != null) {
		data.packageVersion = json['packageVersion']?.toString();
	}
	if (json['cover'] != null) {
		data.cover = json['cover']?.toString();
	}
	if (json['is_vip_free'] != null) {
		data.isVipFree = json['is_vip_free']?.toInt();
	}
	if (json['read_words'] != null) {
		data.readWords = json['read_words']?.toInt();
	}
	if (json['category_id'] != null) {
		data.categoryId = json['category_id']?.toInt();
	}
	if (json['price'] != null) {
		data.price = json['price']?.toInt();
	}
	if (json['name'] != null) {
		data.name = json['name']?.toString();
	}
	if (json['categoryList'] != null) {
		data.categoryList = new List<EbookListDataCategoryList>();
		(json['categoryList'] as List).forEach((v) {
			data.categoryList.add(new EbookListDataCategoryList().fromJson(v));
		});
	}
	if (json['id'] != null) {
		data.id = json['id']?.toInt();
	}
	if (json['author_short'] != null) {
		data.authorShort = json['author_short']?.toString();
	}
	return data;
}

Map<String, dynamic> ebookListDataToJson(EbookListData entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['total_words'] = entity.totalWords;
	data['is_ebook_vip_free'] = entity.isEbookVipFree;
	data['description'] = entity.description;
	data['packageVersion'] = entity.packageVersion;
	data['cover'] = entity.cover;
	data['is_vip_free'] = entity.isVipFree;
	data['read_words'] = entity.readWords;
	data['category_id'] = entity.categoryId;
	data['price'] = entity.price;
	data['name'] = entity.name;
	if (entity.categoryList != null) {
		data['categoryList'] =  entity.categoryList.map((v) => v.toJson()).toList();
	}
	data['id'] = entity.id;
	data['author_short'] = entity.authorShort;
	return data;
}

ebookListDataCategoryListFromJson(EbookListDataCategoryList data, Map<String, dynamic> json) {
	if (json['name'] != null) {
		data.name = json['name']?.toString();
	}
	if (json['id'] != null) {
		data.id = json['id']?.toString();
	}
	if (json['sort'] != null) {
		data.sort = json['sort']?.toString();
	}
	return data;
}

Map<String, dynamic> ebookListDataCategoryListToJson(EbookListDataCategoryList entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['name'] = entity.name;
	data['id'] = entity.id;
	data['sort'] = entity.sort;
	return data;
}