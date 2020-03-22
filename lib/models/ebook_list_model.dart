import 'package:flutter_study/generated/json/base/json_convert_content.dart';
import 'package:flutter_study/generated/json/base/json_filed.dart';

class EbookListModel with JsonConvert<EbookListModel> {
	String msg;
	int code;
	List<EbookListData> data;
	String version;
}

class EbookListData with JsonConvert<EbookListData> {
	@JSONField(name: "total_words")
	int totalWords;
	@JSONField(name: "is_ebook_vip_free")
	int isEbookVipFree;
	String description;
	String packageVersion;
	String cover;
	@JSONField(name: "is_vip_free")
	int isVipFree;
	@JSONField(name: "read_words")
	int readWords;
	@JSONField(name: "category_id")
	int categoryId;
	int price;
	String name;
	List<EbookListDataCategoryList> categoryList;
	int id;
	@JSONField(name: "author_short")
	String authorShort;
}

class EbookListDataCategoryList with JsonConvert<EbookListDataCategoryList> {
	String name;
	String id;
	String sort;
}
