// // To parse this JSON data, do
// //
// //     final userModel = userModelFromJson(jsonString);
//
// import 'dart:convert';
//
// List<UserModel> userModelFromJson(String str) => List<UserModel>.from(json.decode(str).map((x) => UserModel.fromJson(x)));
//
// String userModelToJson(List<UserModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
//
// class UserModel {
//   String id;
//   String slug;
//   AlternativeSlugs alternativeSlugs;
//   DateTime createdAt;
//   DateTime updatedAt;
//   DateTime? promotedAt;
//   int width;
//   int height;
//   String color;
//   String blurHash;
//   String? description;
//   String altDescription;
//   List<Breadcrumb> breadcrumbs;
//   Urls urls;
//   UserModelLinks links;
//   int likes;
//   bool likedByUser;
//   List<dynamic> currentUserCollections;
//   Sponsorship? sponsorship;
//   TopicSubmissions topicSubmissions;
//   AssetType assetType;
//   User user;
//
//   UserModel({
//     required this.id,
//     required this.slug,
//     required this.alternativeSlugs,
//     required this.createdAt,
//     required this.updatedAt,
//     required this.promotedAt,
//     required this.width,
//     required this.height,
//     required this.color,
//     required this.blurHash,
//     required this.description,
//     required this.altDescription,
//     required this.breadcrumbs,
//     required this.urls,
//     required this.links,
//     required this.likes,
//     required this.likedByUser,
//     required this.currentUserCollections,
//     required this.sponsorship,
//     required this.topicSubmissions,
//     required this.assetType,
//     required this.user,
//   });
//
//   factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
//     id: json["id"],
//     slug: json["slug"],
//     alternativeSlugs: AlternativeSlugs.fromJson(json["alternative_slugs"]),
//     createdAt: DateTime.parse(json["created_at"]),
//     updatedAt: DateTime.parse(json["updated_at"]),
//     promotedAt: json["promoted_at"] == null ? null : DateTime.parse(json["promoted_at"]),
//     width: json["width"],
//     height: json["height"],
//     color: json["color"],
//     blurHash: json["blur_hash"],
//     description: json["description"],
//     altDescription: json["alt_description"],
//     breadcrumbs: List<Breadcrumb>.from(json["breadcrumbs"].map((x) => Breadcrumb.fromJson(x))),
//     urls: Urls.fromJson(json["urls"]),
//     links: UserModelLinks.fromJson(json["links"]),
//     likes: json["likes"],
//     likedByUser: json["liked_by_user"],
//     currentUserCollections: List<dynamic>.from(json["current_user_collections"].map((x) => x)),
//     sponsorship: json["sponsorship"] == null ? null : Sponsorship.fromJson(json["sponsorship"]),
//     topicSubmissions: TopicSubmissions.fromJson(json["topic_submissions"]),
//     assetType: assetTypeValues.map[json["asset_type"]]!,
//     user: User.fromJson(json["user"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "slug": slug,
//     "alternative_slugs": alternativeSlugs.toJson(),
//     "created_at": createdAt.toIso8601String(),
//     "updated_at": updatedAt.toIso8601String(),
//     "promoted_at": promotedAt?.toIso8601String(),
//     "width": width,
//     "height": height,
//     "color": color,
//     "blur_hash": blurHash,
//     "description": description,
//     "alt_description": altDescription,
//     "breadcrumbs": List<dynamic>.from(breadcrumbs.map((x) => x.toJson())),
//     "urls": urls.toJson(),
//     "links": links.toJson(),
//     "likes": likes,
//     "liked_by_user": likedByUser,
//     "current_user_collections": List<dynamic>.from(currentUserCollections.map((x) => x)),
//     "sponsorship": sponsorship?.toJson(),
//     "topic_submissions": topicSubmissions.toJson(),
//     "asset_type": assetTypeValues.reverse[assetType],
//     "user": user.toJson(),
//   };
// }
//
// class AlternativeSlugs {
//   String en;
//   String es;
//   String ja;
//   String fr;
//   String it;
//   String ko;
//   String de;
//   String pt;
//
//   AlternativeSlugs({
//     required this.en,
//     required this.es,
//     required this.ja,
//     required this.fr,
//     required this.it,
//     required this.ko,
//     required this.de,
//     required this.pt,
//   });
//
//   factory AlternativeSlugs.fromJson(Map<String, dynamic> json) => AlternativeSlugs(
//     en: json["en"],
//     es: json["es"],
//     ja: json["ja"],
//     fr: json["fr"],
//     it: json["it"],
//     ko: json["ko"],
//     de: json["de"],
//     pt: json["pt"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "en": en,
//     "es": es,
//     "ja": ja,
//     "fr": fr,
//     "it": it,
//     "ko": ko,
//     "de": de,
//     "pt": pt,
//   };
// }
//
// enum AssetType {
//   PHOTO
// }
//
// final assetTypeValues = EnumValues({
//   "photo": AssetType.PHOTO
// });
//
// class Breadcrumb {
//   String slug;
//   String title;
//   int index;
//   String type;
//
//   Breadcrumb({
//     required this.slug,
//     required this.title,
//     required this.index,
//     required this.type,
//   });
//
//   factory Breadcrumb.fromJson(Map<String, dynamic> json) => Breadcrumb(
//     slug: json["slug"],
//     title: json["title"],
//     index: json["index"],
//     type: json["type"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "slug": slug,
//     "title": title,
//     "index": index,
//     "type": type,
//   };
// }
//
// class UserModelLinks {
//   String self;
//   String html;
//   String download;
//   String downloadLocation;
//
//   UserModelLinks({
//     required this.self,
//     required this.html,
//     required this.download,
//     required this.downloadLocation,
//   });
//
//   factory UserModelLinks.fromJson(Map<String, dynamic> json) => UserModelLinks(
//     self: json["self"],
//     html: json["html"],
//     download: json["download"],
//     downloadLocation: json["download_location"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "self": self,
//     "html": html,
//     "download": download,
//     "download_location": downloadLocation,
//   };
// }
//
// class Sponsorship {
//   List<dynamic> impressionUrls;
//   String tagline;
//   String taglineUrl;
//   User sponsor;
//
//   Sponsorship({
//     required this.impressionUrls,
//     required this.tagline,
//     required this.taglineUrl,
//     required this.sponsor,
//   });
//
//   factory Sponsorship.fromJson(Map<String, dynamic> json) => Sponsorship(
//     impressionUrls: List<dynamic>.from(json["impression_urls"].map((x) => x)),
//     tagline: json["tagline"],
//     taglineUrl: json["tagline_url"],
//     sponsor: User.fromJson(json["sponsor"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "impression_urls": List<dynamic>.from(impressionUrls.map((x) => x)),
//     "tagline": tagline,
//     "tagline_url": taglineUrl,
//     "sponsor": sponsor.toJson(),
//   };
// }
//
// class User {
//   String id;
//   DateTime updatedAt;
//   String username;
//   String name;
//   String firstName;
//   String? lastName;
//   String? twitterUsername;
//   String? portfolioUrl;
//   String? bio;
//   String? location;
//   UserLinks links;
//   ProfileImage profileImage;
//   String? instagramUsername;
//   int totalCollections;
//   int totalLikes;
//   int totalPhotos;
//   int totalPromotedPhotos;
//   int totalIllustrations;
//   int totalPromotedIllustrations;
//   bool acceptedTos;
//   bool forHire;
//   Social social;
//
//   User({
//     required this.id,
//     required this.updatedAt,
//     required this.username,
//     required this.name,
//     required this.firstName,
//     required this.lastName,
//     required this.twitterUsername,
//     required this.portfolioUrl,
//     required this.bio,
//     required this.location,
//     required this.links,
//     required this.profileImage,
//     required this.instagramUsername,
//     required this.totalCollections,
//     required this.totalLikes,
//     required this.totalPhotos,
//     required this.totalPromotedPhotos,
//     required this.totalIllustrations,
//     required this.totalPromotedIllustrations,
//     required this.acceptedTos,
//     required this.forHire,
//     required this.social,
//   });
//
//   factory User.fromJson(Map<String, dynamic> json) => User(
//     id: json["id"],
//     updatedAt: DateTime.parse(json["updated_at"]),
//     username: json["username"],
//     name: json["name"],
//     firstName: json["first_name"],
//     lastName: json["last_name"],
//     twitterUsername: json["twitter_username"],
//     portfolioUrl: json["portfolio_url"],
//     bio: json["bio"],
//     location: json["location"],
//     links: UserLinks.fromJson(json["links"]),
//     profileImage: ProfileImage.fromJson(json["profile_image"]),
//     instagramUsername: json["instagram_username"],
//     totalCollections: json["total_collections"],
//     totalLikes: json["total_likes"],
//     totalPhotos: json["total_photos"],
//     totalPromotedPhotos: json["total_promoted_photos"],
//     totalIllustrations: json["total_illustrations"],
//     totalPromotedIllustrations: json["total_promoted_illustrations"],
//     acceptedTos: json["accepted_tos"],
//     forHire: json["for_hire"],
//     social: Social.fromJson(json["social"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "updated_at": updatedAt.toIso8601String(),
//     "username": username,
//     "name": name,
//     "first_name": firstName,
//     "last_name": lastName,
//     "twitter_username": twitterUsername,
//     "portfolio_url": portfolioUrl,
//     "bio": bio,
//     "location": location,
//     "links": links.toJson(),
//     "profile_image": profileImage.toJson(),
//     "instagram_username": instagramUsername,
//     "total_collections": totalCollections,
//     "total_likes": totalLikes,
//     "total_photos": totalPhotos,
//     "total_promoted_photos": totalPromotedPhotos,
//     "total_illustrations": totalIllustrations,
//     "total_promoted_illustrations": totalPromotedIllustrations,
//     "accepted_tos": acceptedTos,
//     "for_hire": forHire,
//     "social": social.toJson(),
//   };
// }
//
// class UserLinks {
//   String self;
//   String html;
//   String photos;
//   String likes;
//   String portfolio;
//   String following;
//   String followers;
//
//   UserLinks({
//     required this.self,
//     required this.html,
//     required this.photos,
//     required this.likes,
//     required this.portfolio,
//     required this.following,
//     required this.followers,
//   });
//
//   factory UserLinks.fromJson(Map<String, dynamic> json) => UserLinks(
//     self: json["self"],
//     html: json["html"],
//     photos: json["photos"],
//     likes: json["likes"],
//     portfolio: json["portfolio"],
//     following: json["following"],
//     followers: json["followers"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "self": self,
//     "html": html,
//     "photos": photos,
//     "likes": likes,
//     "portfolio": portfolio,
//     "following": following,
//     "followers": followers,
//   };
// }
//
// class ProfileImage {
//   String small;
//   String medium;
//   String large;
//
//   ProfileImage({
//     required this.small,
//     required this.medium,
//     required this.large,
//   });
//
//   factory ProfileImage.fromJson(Map<String, dynamic> json) => ProfileImage(
//     small: json["small"],
//     medium: json["medium"],
//     large: json["large"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "small": small,
//     "medium": medium,
//     "large": large,
//   };
// }
//
// class Social {
//   String? instagramUsername;
//   String? portfolioUrl;
//   String? twitterUsername;
//   dynamic paypalEmail;
//
//   Social({
//     required this.instagramUsername,
//     required this.portfolioUrl,
//     required this.twitterUsername,
//     required this.paypalEmail,
//   });
//
//   factory Social.fromJson(Map<String, dynamic> json) => Social(
//     instagramUsername: json["instagram_username"],
//     portfolioUrl: json["portfolio_url"],
//     twitterUsername: json["twitter_username"],
//     paypalEmail: json["paypal_email"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "instagram_username": instagramUsername,
//     "portfolio_url": portfolioUrl,
//     "twitter_username": twitterUsername,
//     "paypal_email": paypalEmail,
//   };
// }
//
// class TopicSubmissions {
//   ArchitectureInterior? architectureInterior;
//   Nature? streetPhotography;
//   Nature? travel;
//   Nature? wallpapers;
//   Nature? nature;
//   Nature? spirituality;
//   ArchitectureInterior? texturesPatterns;
//
//   TopicSubmissions({
//     this.architectureInterior,
//     this.streetPhotography,
//     this.travel,
//     this.wallpapers,
//     this.nature,
//     this.spirituality,
//     this.texturesPatterns,
//   });
//
//   factory TopicSubmissions.fromJson(Map<String, dynamic> json) => TopicSubmissions(
//     architectureInterior: json["architecture-interior"] == null ? null : ArchitectureInterior.fromJson(json["architecture-interior"]),
//     streetPhotography: json["street-photography"] == null ? null : Nature.fromJson(json["street-photography"]),
//     travel: json["travel"] == null ? null : Nature.fromJson(json["travel"]),
//     wallpapers: json["wallpapers"] == null ? null : Nature.fromJson(json["wallpapers"]),
//     nature: json["nature"] == null ? null : Nature.fromJson(json["nature"]),
//     spirituality: json["spirituality"] == null ? null : Nature.fromJson(json["spirituality"]),
//     texturesPatterns: json["textures-patterns"] == null ? null : ArchitectureInterior.fromJson(json["textures-patterns"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "architecture-interior": architectureInterior?.toJson(),
//     "street-photography": streetPhotography?.toJson(),
//     "travel": travel?.toJson(),
//     "wallpapers": wallpapers?.toJson(),
//     "nature": nature?.toJson(),
//     "spirituality": spirituality?.toJson(),
//     "textures-patterns": texturesPatterns?.toJson(),
//   };
// }
//
// class ArchitectureInterior {
//   String status;
//
//   ArchitectureInterior({
//     required this.status,
//   });
//
//   factory ArchitectureInterior.fromJson(Map<String, dynamic> json) => ArchitectureInterior(
//     status: json["status"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "status": status,
//   };
// }
//
// class Nature {
//   String status;
//   DateTime? approvedOn;
//
//   Nature({
//     required this.status,
//     this.approvedOn,
//   });
//
//   factory Nature.fromJson(Map<String, dynamic> json) => Nature(
//     status: json["status"],
//     approvedOn: json["approved_on"] == null ? null : DateTime.parse(json["approved_on"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "status": status,
//     "approved_on": approvedOn?.toIso8601String(),
//   };
// }
//
// class Urls {
//   String raw;
//   String full;
//   String regular;
//   String small;
//   String thumb;
//   String smallS3;
//
//   Urls({
//     required this.raw,
//     required this.full,
//     required this.regular,
//     required this.small,
//     required this.thumb,
//     required this.smallS3,
//   });
//
//   factory Urls.fromJson(Map<String, dynamic> json) => Urls(
//     raw: json["raw"],
//     full: json["full"],
//     regular: json["regular"],
//     small: json["small"],
//     thumb: json["thumb"],
//     smallS3: json["small_s3"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "raw": raw,
//     "full": full,
//     "regular": regular,
//     "small": small,
//     "thumb": thumb,
//     "small_s3": smallS3,
//   };
// }
//
// class EnumValues<T> {
//   Map<String, T> map;
//   late Map<T, String> reverseMap;
//
//   EnumValues(this.map);
//
//   Map<T, String> get reverse {
//     reverseMap = map.map((k, v) => MapEntry(v, k));
//     return reverseMap;
//   }
// }


// To parse this JSON data, do
//
//     final wallpaperModel = wallpaperModelFromJson(jsonString);

import 'dart:convert';

List<UsersModel> usersModelFromJson(String str) => List<UsersModel>.from(json.decode(str).map((x) => UsersModel.fromJson(x)));

String usersModelToJson(List<UsersModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UsersModel {
  String? id;
  String? slug;
  AlternativeSlugs? alternativeSlugs;
  DateTime? createdAt;
  DateTime? updatedAt;
  DateTime? promotedAt;
  int? width;
  int? height;
  String? color;
  String? blurHash;
  String? description;
  String? altDescription;
  List<dynamic>? breadcrumbs;
  Urls? urls;
  WallpaperModelLinks? links;
  int? likes;
  bool? likedByUser;
  List<dynamic>? currentUserCollections;
  dynamic sponsorship;
  TopicSubmissions? topicSubmissions;
  AssetType? assetType;
  User? user;

  UsersModel({
    this.id,
    this.slug,
    this.alternativeSlugs,
    this.createdAt,
    this.updatedAt,
    this.promotedAt,
    this.width,
    this.height,
    this.color,
    this.blurHash,
    this.description,
    this.altDescription,
    this.breadcrumbs,
    this.urls,
    this.links,
    this.likes,
    this.likedByUser,
    this.currentUserCollections,
    this.sponsorship,
    this.topicSubmissions,
    this.assetType,
    this.user,
  });

  factory UsersModel.fromJson(Map<String, dynamic> json) => UsersModel(
    id: json["id"],
    slug: json["slug"],
    alternativeSlugs: json["alternative_slugs"] == null ? null : AlternativeSlugs.fromJson(json["alternative_slugs"]),
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    promotedAt: json["promoted_at"] == null ? null : DateTime.parse(json["promoted_at"]),
    width: json["width"],
    height: json["height"],
    color: json["color"],
    blurHash: json["blur_hash"],
    description: json["description"],
    altDescription: json["alt_description"],
    breadcrumbs: json["breadcrumbs"] == null ? [] : List<dynamic>.from(json["breadcrumbs"]!.map((x) => x)),
    urls: json["urls"] == null ? null : Urls.fromJson(json["urls"]),
    links: json["links"] == null ? null : WallpaperModelLinks.fromJson(json["links"]),
    likes: json["likes"],
    likedByUser: json["liked_by_user"],
    currentUserCollections: json["current_user_collections"] == null ? [] : List<dynamic>.from(json["current_user_collections"]!.map((x) => x)),
    sponsorship: json["sponsorship"],
    topicSubmissions: json["topic_submissions"] == null ? null : TopicSubmissions.fromJson(json["topic_submissions"]),
    assetType: assetTypeValues.map[json["asset_type"]]!,
    user: json["user"] == null ? null : User.fromJson(json["user"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "slug": slug,
    "alternative_slugs": alternativeSlugs?.toJson(),
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
    "promoted_at": promotedAt?.toIso8601String(),
    "width": width,
    "height": height,
    "color": color,
    "blur_hash": blurHash,
    "description": description,
    "alt_description": altDescription,
    "breadcrumbs": breadcrumbs == null ? [] : List<dynamic>.from(breadcrumbs!.map((x) => x)),
    "urls": urls?.toJson(),
    "links": links?.toJson(),
    "likes": likes,
    "liked_by_user": likedByUser,
    "current_user_collections": currentUserCollections == null ? [] : List<dynamic>.from(currentUserCollections!.map((x) => x)),
    "sponsorship": sponsorship,
    "topic_submissions": topicSubmissions?.toJson(),
    "asset_type": assetTypeValues.reverse[assetType],
    "user": user?.toJson(),
  };
}

class AlternativeSlugs {
  String? en;
  String? es;
  String? ja;
  String? fr;
  String? it;
  String? ko;
  String? de;
  String? pt;

  AlternativeSlugs({
    this.en,
    this.es,
    this.ja,
    this.fr,
    this.it,
    this.ko,
    this.de,
    this.pt,
  });

  factory AlternativeSlugs.fromJson(Map<String, dynamic> json) => AlternativeSlugs(
    en: json["en"],
    es: json["es"],
    ja: json["ja"],
    fr: json["fr"],
    it: json["it"],
    ko: json["ko"],
    de: json["de"],
    pt: json["pt"],
  );

  Map<String, dynamic> toJson() => {
    "en": en,
    "es": es,
    "ja": ja,
    "fr": fr,
    "it": it,
    "ko": ko,
    "de": de,
    "pt": pt,
  };
}

enum AssetType {
  PHOTO
}

final assetTypeValues = EnumValues({
  "photo": AssetType.PHOTO
});

class WallpaperModelLinks {
  String? self;
  String? html;
  String? download;
  String? downloadLocation;

  WallpaperModelLinks({
    this.self,
    this.html,
    this.download,
    this.downloadLocation,
  });

  factory WallpaperModelLinks.fromJson(Map<String, dynamic> json) => WallpaperModelLinks(
    self: json["self"],
    html: json["html"],
    download: json["download"],
    downloadLocation: json["download_location"],
  );

  Map<String, dynamic> toJson() => {
    "self": self,
    "html": html,
    "download": download,
    "download_location": downloadLocation,
  };
}

class TopicSubmissions {
  ArchitectureInterior? architectureInterior;
  Nature? streetPhotography;
  Nature? travel;
  Nature? wallpapers;
  Nature? nature;
  Nature? spirituality;
  ArchitectureInterior? texturesPatterns;

  TopicSubmissions({
    this.architectureInterior,
    this.streetPhotography,
    this.travel,
    this.wallpapers,
    this.nature,
    this.spirituality,
    this.texturesPatterns,
  });

  factory TopicSubmissions.fromJson(Map<String, dynamic> json) => TopicSubmissions(
    architectureInterior: json["architecture-interior"] == null ? null : ArchitectureInterior.fromJson(json["architecture-interior"]),
    streetPhotography: json["street-photography"] == null ? null : Nature.fromJson(json["street-photography"]),
    travel: json["travel"] == null ? null : Nature.fromJson(json["travel"]),
    wallpapers: json["wallpapers"] == null ? null : Nature.fromJson(json["wallpapers"]),
    nature: json["nature"] == null ? null : Nature.fromJson(json["nature"]),
    spirituality: json["spirituality"] == null ? null : Nature.fromJson(json["spirituality"]),
    texturesPatterns: json["textures-patterns"] == null ? null : ArchitectureInterior.fromJson(json["textures-patterns"]),
  );

  Map<String, dynamic> toJson() => {
    "architecture-interior": architectureInterior?.toJson(),
    "street-photography": streetPhotography?.toJson(),
    "travel": travel?.toJson(),
    "wallpapers": wallpapers?.toJson(),
    "nature": nature?.toJson(),
    "spirituality": spirituality?.toJson(),
    "textures-patterns": texturesPatterns?.toJson(),
  };
}

class ArchitectureInterior {
  String? status;

  ArchitectureInterior({
    this.status,
  });

  factory ArchitectureInterior.fromJson(Map<String, dynamic> json) => ArchitectureInterior(
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "status": status,
  };
}

class Nature {
  String? status;
  DateTime? approvedOn;

  Nature({
    this.status,
    this.approvedOn,
  });

  factory Nature.fromJson(Map<String, dynamic> json) => Nature(
    status: json["status"],
    approvedOn: json["approved_on"] == null ? null : DateTime.parse(json["approved_on"]),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "approved_on": approvedOn?.toIso8601String(),
  };
}

class Urls {
  String? raw;
  String? full;
  String? regular;
  String? small;
  String? thumb;
  String? smallS3;

  Urls({
    this.raw,
    this.full,
    this.regular,
    this.small,
    this.thumb,
    this.smallS3,
  });

  factory Urls.fromJson(Map<String, dynamic> json) => Urls(
    raw: json["raw"],
    full: json["full"],
    regular: json["regular"],
    small: json["small"],
    thumb: json["thumb"],
    smallS3: json["small_s3"],
  );

  Map<String, dynamic> toJson() => {
    "raw": raw,
    "full": full,
    "regular": regular,
    "small": small,
    "thumb": thumb,
    "small_s3": smallS3,
  };
}

class User {
  String? id;
  DateTime? updatedAt;
  String? username;
  String? name;
  String? firstName;
  String? lastName;
  String? twitterUsername;
  String? portfolioUrl;
  String? bio;
  String? location;
  UserLinks? links;
  ProfileImage? profileImage;
  String? instagramUsername;
  int? totalCollections;
  int? totalLikes;
  int? totalPhotos;
  int? totalPromotedPhotos;
  int? totalIllustrations;
  int? totalPromotedIllustrations;
  bool? acceptedTos;
  bool? forHire;
  Social? social;

  User({
    this.id,
    this.updatedAt,
    this.username,
    this.name,
    this.firstName,
    this.lastName,
    this.twitterUsername,
    this.portfolioUrl,
    this.bio,
    this.location,
    this.links,
    this.profileImage,
    this.instagramUsername,
    this.totalCollections,
    this.totalLikes,
    this.totalPhotos,
    this.totalPromotedPhotos,
    this.totalIllustrations,
    this.totalPromotedIllustrations,
    this.acceptedTos,
    this.forHire,
    this.social,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json["id"],
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    username: json["username"],
    name: json["name"],
    firstName: json["first_name"],
    lastName: json["last_name"],
    twitterUsername: json["twitter_username"],
    portfolioUrl: json["portfolio_url"],
    bio: json["bio"],
    location: json["location"],
    links: json["links"] == null ? null : UserLinks.fromJson(json["links"]),
    profileImage: json["profile_image"] == null ? null : ProfileImage.fromJson(json["profile_image"]),
    instagramUsername: json["instagram_username"],
    totalCollections: json["total_collections"],
    totalLikes: json["total_likes"],
    totalPhotos: json["total_photos"],
    totalPromotedPhotos: json["total_promoted_photos"],
    totalIllustrations: json["total_illustrations"],
    totalPromotedIllustrations: json["total_promoted_illustrations"],
    acceptedTos: json["accepted_tos"],
    forHire: json["for_hire"],
    social: json["social"] == null ? null : Social.fromJson(json["social"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "updated_at": updatedAt?.toIso8601String(),
    "username": username,
    "name": name,
    "first_name": firstName,
    "last_name": lastName,
    "twitter_username": twitterUsername,
    "portfolio_url": portfolioUrl,
    "bio": bio,
    "location": location,
    "links": links?.toJson(),
    "profile_image": profileImage?.toJson(),
    "instagram_username": instagramUsername,
    "total_collections": totalCollections,
    "total_likes": totalLikes,
    "total_photos": totalPhotos,
    "total_promoted_photos": totalPromotedPhotos,
    "total_illustrations": totalIllustrations,
    "total_promoted_illustrations": totalPromotedIllustrations,
    "accepted_tos": acceptedTos,
    "for_hire": forHire,
    "social": social?.toJson(),
  };
}

class UserLinks {
  String? self;
  String? html;
  String? photos;
  String? likes;
  String? portfolio;
  String? following;
  String? followers;

  UserLinks({
    this.self,
    this.html,
    this.photos,
    this.likes,
    this.portfolio,
    this.following,
    this.followers,
  });

  factory UserLinks.fromJson(Map<String, dynamic> json) => UserLinks(
    self: json["self"],
    html: json["html"],
    photos: json["photos"],
    likes: json["likes"],
    portfolio: json["portfolio"],
    following: json["following"],
    followers: json["followers"],
  );

  Map<String, dynamic> toJson() => {
    "self": self,
    "html": html,
    "photos": photos,
    "likes": likes,
    "portfolio": portfolio,
    "following": following,
    "followers": followers,
  };
}

class ProfileImage {
  String? small;
  String? medium;
  String? large;

  ProfileImage({
    this.small,
    this.medium,
    this.large,
  });

  factory ProfileImage.fromJson(Map<String, dynamic> json) => ProfileImage(
    small: json["small"],
    medium: json["medium"],
    large: json["large"],
  );

  Map<String, dynamic> toJson() => {
    "small": small,
    "medium": medium,
    "large": large,
  };
}

class Social {
  String? instagramUsername;
  String? portfolioUrl;
  String? twitterUsername;
  dynamic paypalEmail;

  Social({
    this.instagramUsername,
    this.portfolioUrl,
    this.twitterUsername,
    this.paypalEmail,
  });

  factory Social.fromJson(Map<String, dynamic> json) => Social(
    instagramUsername: json["instagram_username"],
    portfolioUrl: json["portfolio_url"],
    twitterUsername: json["twitter_username"],
    paypalEmail: json["paypal_email"],
  );

  Map<String, dynamic> toJson() => {
    "instagram_username": instagramUsername,
    "portfolio_url": portfolioUrl,
    "twitter_username": twitterUsername,
    "paypal_email": paypalEmail,
  };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
    }
}