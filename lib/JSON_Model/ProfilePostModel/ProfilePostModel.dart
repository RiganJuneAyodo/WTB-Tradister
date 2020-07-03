import 'package:json_annotation/json_annotation.dart';

part 'ProfilePostModel.g.dart';

@JsonSerializable()
class FeedRes {
  List<Res> res;
  FeedRes(this.res);
  factory FeedRes.fromJson(Map<String, dynamic> json) =>
      _$FeedResFromJson(json);
  Map<String, dynamic> toJson() => _$FeedResToJson(this);
}

@JsonSerializable()
class Res {
  var id;
  @JsonKey(name: "user_id")
  var userId;
  var sourceId;
  var feedType;
  var activitytext;
  var interests;
  var privacy;
  var like;
  var isRead;
  var created_at;
  var updated_at;
  Data data;
  Fuser fuser;
  @JsonKey(name: "__meta__")
  final Meta meta;

  Res(
      this.id,
      this.feedType,
      this.sourceId,
      this.activitytext,
      this.interests,
      this.like,
      this.privacy,
      this.fuser,
      this.meta,
      this.userId,
      this.data,
      this.isRead,
      this.created_at,
      this.updated_at);

  factory Res.fromJson(Map<String, dynamic> json) => _$ResFromJson(json);
  Map<String, dynamic> toJson() => _$ResToJson(this);
}

@JsonSerializable()
class Data {
  var status;
  var comName;
  var interest;
  var privacy;
  @JsonKey(name: "link_meta")
  dynamic linkMeta;
  var link;
  var isEdit;
  var isRead;
  var sharedTxt;
  var feedType;

  Fuser fuser;
  List<Images> images;

  Data(
    this.status,
    this.comName,
    this.interest,
    this.privacy,
    this.linkMeta,
    this.isEdit,
    this.link,
    this.images,
    this.sharedTxt,
    this.fuser,
    this.isRead,
    this.feedType,
  );
  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class Images {
  var id;
  var user_id;
  var file;
  var thum;
  var type;
  var created_at;
  var updated_at;

  Images(this.id, this.user_id, this.file, this.thum, this.type,
      this.created_at, this.updated_at);
  factory Images.fromJson(Map<String, dynamic> json) => _$ImagesFromJson(json);
  Map<String, dynamic> toJson() => _$ImagesToJson(this);
}

@JsonSerializable()
class Fuser {
  var id;
  var firstName;
  var lastName;
  var userName;
  var profilePic;
  var jobTitle;

  Fuser(this.id, this.firstName, this.lastName, this.userName, this.jobTitle,
      this.profilePic);
  factory Fuser.fromJson(Map<String, dynamic> json) => _$FuserFromJson(json);
  Map<String, dynamic> toJson() => _$FuserToJson(this);
}

@JsonSerializable()
class Meta {
  @JsonKey(name: "totalComments_count")
  dynamic totalCommentsCount;
  @JsonKey(name: "totalLikes_count")
  dynamic totalLikesCount;
  @JsonKey(name: "totalShares_count")
  dynamic totalSharesCount;

  Meta(
    this.totalCommentsCount,
    this.totalLikesCount,
    this.totalSharesCount,
  );
  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
  Map<String, dynamic> toJson() => _$MetaToJson(this);
}
