import 'package:flutter_study/generated/json/base/json_convert_content.dart';
import 'package:flutter_study/generated/json/base/json_filed.dart';

class JsonTestModel with JsonConvert<JsonTestModel> {
	int count;
	@JSONField(name: "list")
	List<JsonTestList> xList;
	@JSONField(name: "page_count")
	int pageCount;
	@JSONField(name: "floor_count")
	int floorCount;
}

class JsonTestList with JsonConvert<JsonTestList> {
	List<JsonTestListSub> sub;
	JsonTestListInfo info;
}

class JsonTestListSub with JsonConvert<JsonTestListSub> {
	@JSONField(name: "ParentId")
	String parentId;
	@JSONField(name: "Status")
	String status;
	@JSONField(name: "vip_img")
	dynamic vipImg;
	@JSONField(name: "UserName")
	String userName;
	@JSONField(name: "IsBoleComment")
	String isBoleComment;
	@JSONField(name: "Digg")
	String digg;
	@JSONField(name: "Bury")
	String bury;
	@JSONField(name: "ParentNickName")
	String parentNickName;
	@JSONField(name: "IP")
	String iP;
	@JSONField(name: "NickName")
	String nickName;
	@JSONField(name: "open_status")
	String openStatus;
	@JSONField(name: "Avatar")
	String avatar;
	@JSONField(name: "CommentId")
	String commentId;
	@JSONField(name: "ParentUserName")
	String parentUserName;
	@JSONField(name: "PKId")
	String pKId;
	@JSONField(name: "SubjectType")
	String subjectType;
	@JSONField(name: "WeixinArticleId")
	String weixinArticleId;
	@JSONField(name: "PostTime")
	String postTime;
	@JSONField(name: "user_info")
	List<JsonTestListSubUserInfo> userInfo;
	@JSONField(name: "Content")
	String content;
	@JSONField(name: "BlogId")
	String blogId;
	@JSONField(name: "digg_arr")
	List<dynamic> diggArr;
	@JSONField(name: "ArticleId")
	String articleId;
	@JSONField(name: "user_days")
	String userDays;
}

class JsonTestListSubUserInfo with JsonConvert<JsonTestListSubUserInfo> {
	@JSONField(name: "big_img")
	String bigImg;
	String name;
	String description;
	@JSONField(name: "small_img")
	String smallImg;
}

class JsonTestListInfo with JsonConvert<JsonTestListInfo> {
	@JSONField(name: "is_login_user_digg")
	bool isLoginUserDigg;
	@JSONField(name: "ParentId")
	String parentId;
	@JSONField(name: "Status")
	String status;
	@JSONField(name: "vip_img")
	dynamic vipImg;
	@JSONField(name: "UserName")
	String userName;
	@JSONField(name: "IsBoleComment")
	String isBoleComment;
	@JSONField(name: "Digg")
	String digg;
	@JSONField(name: "Bury")
	String bury;
	@JSONField(name: "IP")
	String iP;
	@JSONField(name: "NickName")
	String nickName;
	@JSONField(name: "open_status")
	String openStatus;
	@JSONField(name: "Avatar")
	String avatar;
	@JSONField(name: "CommentId")
	String commentId;
	@JSONField(name: "PKId")
	String pKId;
	@JSONField(name: "SubjectType")
	String subjectType;
	@JSONField(name: "WeixinArticleId")
	String weixinArticleId;
	@JSONField(name: "PostTime")
	String postTime;
	@JSONField(name: "user_info")
	List<JsonTestListInfoUserInfo> userInfo;
	@JSONField(name: "Content")
	String content;
	@JSONField(name: "BlogId")
	String blogId;
	@JSONField(name: "digg_arr")
	List<String> diggArr;
	@JSONField(name: "ArticleId")
	String articleId;
	@JSONField(name: "user_days")
	String userDays;
}

class JsonTestListInfoUserInfo with JsonConvert<JsonTestListInfoUserInfo> {
	@JSONField(name: "big_img")
	String bigImg;
	String name;
	String description;
	@JSONField(name: "small_img")
	String smallImg;
}
