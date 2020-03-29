import 'package:flutter_study/models/json_test_model.dart';

jsonTestModelFromJson(JsonTestModel data, Map<String, dynamic> json) {
	if (json['count'] != null) {
		data.count = json['count']?.toInt();
	}
	if (json['list'] != null) {
		data.xList = new List<JsonTestList>();
		(json['list'] as List).forEach((v) {
			data.xList.add(new JsonTestList().fromJson(v));
		});
	}
	if (json['page_count'] != null) {
		data.pageCount = json['page_count']?.toInt();
	}
	if (json['floor_count'] != null) {
		data.floorCount = json['floor_count']?.toInt();
	}
	return data;
}

Map<String, dynamic> jsonTestModelToJson(JsonTestModel entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['count'] = entity.count;
	if (entity.xList != null) {
		data['list'] =  entity.xList.map((v) => v.toJson()).toList();
	}
	data['page_count'] = entity.pageCount;
	data['floor_count'] = entity.floorCount;
	return data;
}

jsonTestListFromJson(JsonTestList data, Map<String, dynamic> json) {
	if (json['sub'] != null) {
		data.sub = new List<JsonTestListSub>();
		(json['sub'] as List).forEach((v) {
			data.sub.add(new JsonTestListSub().fromJson(v));
		});
	}
	if (json['info'] != null) {
		data.info = new JsonTestListInfo().fromJson(json['info']);
	}
	return data;
}

Map<String, dynamic> jsonTestListToJson(JsonTestList entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	if (entity.sub != null) {
		data['sub'] =  entity.sub.map((v) => v.toJson()).toList();
	}
	if (entity.info != null) {
		data['info'] = entity.info.toJson();
	}
	return data;
}

jsonTestListSubFromJson(JsonTestListSub data, Map<String, dynamic> json) {
	if (json['ParentId'] != null) {
		data.parentId = json['ParentId']?.toString();
	}
	if (json['Status'] != null) {
		data.status = json['Status']?.toString();
	}
	if (json['vip_img'] != null) {
		data.vipImg = json['vip_img'];
	}
	if (json['UserName'] != null) {
		data.userName = json['UserName']?.toString();
	}
	if (json['IsBoleComment'] != null) {
		data.isBoleComment = json['IsBoleComment']?.toString();
	}
	if (json['Digg'] != null) {
		data.digg = json['Digg']?.toString();
	}
	if (json['Bury'] != null) {
		data.bury = json['Bury']?.toString();
	}
	if (json['ParentNickName'] != null) {
		data.parentNickName = json['ParentNickName']?.toString();
	}
	if (json['IP'] != null) {
		data.iP = json['IP']?.toString();
	}
	if (json['NickName'] != null) {
		data.nickName = json['NickName']?.toString();
	}
	if (json['open_status'] != null) {
		data.openStatus = json['open_status']?.toString();
	}
	if (json['Avatar'] != null) {
		data.avatar = json['Avatar']?.toString();
	}
	if (json['CommentId'] != null) {
		data.commentId = json['CommentId']?.toString();
	}
	if (json['ParentUserName'] != null) {
		data.parentUserName = json['ParentUserName']?.toString();
	}
	if (json['PKId'] != null) {
		data.pKId = json['PKId']?.toString();
	}
	if (json['SubjectType'] != null) {
		data.subjectType = json['SubjectType']?.toString();
	}
	if (json['WeixinArticleId'] != null) {
		data.weixinArticleId = json['WeixinArticleId']?.toString();
	}
	if (json['PostTime'] != null) {
		data.postTime = json['PostTime']?.toString();
	}
	if (json['user_info'] != null) {
		data.userInfo = new List<JsonTestListSubUserInfo>();
		(json['user_info'] as List).forEach((v) {
			data.userInfo.add(new JsonTestListSubUserInfo().fromJson(v));
		});
	}
	if (json['Content'] != null) {
		data.content = json['Content']?.toString();
	}
	if (json['BlogId'] != null) {
		data.blogId = json['BlogId']?.toString();
	}
	if (json['digg_arr'] != null) {
		data.diggArr = new List<dynamic>();
		data.diggArr.addAll(json['digg_arr']);
	}
	if (json['ArticleId'] != null) {
		data.articleId = json['ArticleId']?.toString();
	}
	if (json['user_days'] != null) {
		data.userDays = json['user_days']?.toString();
	}
	return data;
}

Map<String, dynamic> jsonTestListSubToJson(JsonTestListSub entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['ParentId'] = entity.parentId;
	data['Status'] = entity.status;
	data['vip_img'] = entity.vipImg;
	data['UserName'] = entity.userName;
	data['IsBoleComment'] = entity.isBoleComment;
	data['Digg'] = entity.digg;
	data['Bury'] = entity.bury;
	data['ParentNickName'] = entity.parentNickName;
	data['IP'] = entity.iP;
	data['NickName'] = entity.nickName;
	data['open_status'] = entity.openStatus;
	data['Avatar'] = entity.avatar;
	data['CommentId'] = entity.commentId;
	data['ParentUserName'] = entity.parentUserName;
	data['PKId'] = entity.pKId;
	data['SubjectType'] = entity.subjectType;
	data['WeixinArticleId'] = entity.weixinArticleId;
	data['PostTime'] = entity.postTime;
	if (entity.userInfo != null) {
		data['user_info'] =  entity.userInfo.map((v) => v.toJson()).toList();
	}
	data['Content'] = entity.content;
	data['BlogId'] = entity.blogId;
	if (entity.diggArr != null) {
		data['digg_arr'] =  [];
	}
	data['ArticleId'] = entity.articleId;
	data['user_days'] = entity.userDays;
	return data;
}

jsonTestListSubUserInfoFromJson(JsonTestListSubUserInfo data, Map<String, dynamic> json) {
	if (json['big_img'] != null) {
		data.bigImg = json['big_img']?.toString();
	}
	if (json['name'] != null) {
		data.name = json['name']?.toString();
	}
	if (json['description'] != null) {
		data.description = json['description']?.toString();
	}
	if (json['small_img'] != null) {
		data.smallImg = json['small_img']?.toString();
	}
	return data;
}

Map<String, dynamic> jsonTestListSubUserInfoToJson(JsonTestListSubUserInfo entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['big_img'] = entity.bigImg;
	data['name'] = entity.name;
	data['description'] = entity.description;
	data['small_img'] = entity.smallImg;
	return data;
}

jsonTestListInfoFromJson(JsonTestListInfo data, Map<String, dynamic> json) {
	if (json['is_login_user_digg'] != null) {
		data.isLoginUserDigg = json['is_login_user_digg'];
	}
	if (json['ParentId'] != null) {
		data.parentId = json['ParentId']?.toString();
	}
	if (json['Status'] != null) {
		data.status = json['Status']?.toString();
	}
	if (json['vip_img'] != null) {
		data.vipImg = json['vip_img'];
	}
	if (json['UserName'] != null) {
		data.userName = json['UserName']?.toString();
	}
	if (json['IsBoleComment'] != null) {
		data.isBoleComment = json['IsBoleComment']?.toString();
	}
	if (json['Digg'] != null) {
		data.digg = json['Digg']?.toString();
	}
	if (json['Bury'] != null) {
		data.bury = json['Bury']?.toString();
	}
	if (json['IP'] != null) {
		data.iP = json['IP']?.toString();
	}
	if (json['NickName'] != null) {
		data.nickName = json['NickName']?.toString();
	}
	if (json['open_status'] != null) {
		data.openStatus = json['open_status']?.toString();
	}
	if (json['Avatar'] != null) {
		data.avatar = json['Avatar']?.toString();
	}
	if (json['CommentId'] != null) {
		data.commentId = json['CommentId']?.toString();
	}
	if (json['PKId'] != null) {
		data.pKId = json['PKId']?.toString();
	}
	if (json['SubjectType'] != null) {
		data.subjectType = json['SubjectType']?.toString();
	}
	if (json['WeixinArticleId'] != null) {
		data.weixinArticleId = json['WeixinArticleId']?.toString();
	}
	if (json['PostTime'] != null) {
		data.postTime = json['PostTime']?.toString();
	}
	if (json['user_info'] != null) {
		data.userInfo = new List<JsonTestListInfoUserInfo>();
		(json['user_info'] as List).forEach((v) {
			data.userInfo.add(new JsonTestListInfoUserInfo().fromJson(v));
		});
	}
	if (json['Content'] != null) {
		data.content = json['Content']?.toString();
	}
	if (json['BlogId'] != null) {
		data.blogId = json['BlogId']?.toString();
	}
	if (json['digg_arr'] != null) {
		data.diggArr = json['digg_arr']?.map((v) => v?.toString())?.toList()?.cast<String>();
	}
	if (json['ArticleId'] != null) {
		data.articleId = json['ArticleId']?.toString();
	}
	if (json['user_days'] != null) {
		data.userDays = json['user_days']?.toString();
	}
	return data;
}

Map<String, dynamic> jsonTestListInfoToJson(JsonTestListInfo entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['is_login_user_digg'] = entity.isLoginUserDigg;
	data['ParentId'] = entity.parentId;
	data['Status'] = entity.status;
	data['vip_img'] = entity.vipImg;
	data['UserName'] = entity.userName;
	data['IsBoleComment'] = entity.isBoleComment;
	data['Digg'] = entity.digg;
	data['Bury'] = entity.bury;
	data['IP'] = entity.iP;
	data['NickName'] = entity.nickName;
	data['open_status'] = entity.openStatus;
	data['Avatar'] = entity.avatar;
	data['CommentId'] = entity.commentId;
	data['PKId'] = entity.pKId;
	data['SubjectType'] = entity.subjectType;
	data['WeixinArticleId'] = entity.weixinArticleId;
	data['PostTime'] = entity.postTime;
	if (entity.userInfo != null) {
		data['user_info'] =  entity.userInfo.map((v) => v.toJson()).toList();
	}
	data['Content'] = entity.content;
	data['BlogId'] = entity.blogId;
	data['digg_arr'] = entity.diggArr;
	data['ArticleId'] = entity.articleId;
	data['user_days'] = entity.userDays;
	return data;
}

jsonTestListInfoUserInfoFromJson(JsonTestListInfoUserInfo data, Map<String, dynamic> json) {
	if (json['big_img'] != null) {
		data.bigImg = json['big_img']?.toString();
	}
	if (json['name'] != null) {
		data.name = json['name']?.toString();
	}
	if (json['description'] != null) {
		data.description = json['description']?.toString();
	}
	if (json['small_img'] != null) {
		data.smallImg = json['small_img']?.toString();
	}
	return data;
}

Map<String, dynamic> jsonTestListInfoUserInfoToJson(JsonTestListInfoUserInfo entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['big_img'] = entity.bigImg;
	data['name'] = entity.name;
	data['description'] = entity.description;
	data['small_img'] = entity.smallImg;
	return data;
}