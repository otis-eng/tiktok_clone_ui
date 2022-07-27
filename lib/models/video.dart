class Video {
  int? iId;
  String? videoLink;
  Like? like;
  String? audio;

  Video({this.iId, this.videoLink, this.like, this.audio});

  Video.fromJson(Map<String, dynamic> json) {
    iId = json['_id'];
    videoLink = json['video_link'];
    like = json['like'] != null ? Like.fromJson(json['like']) : null;
    audio = json['audio'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['_id'] = iId;
    data['video_link'] = videoLink;
    if (like != null) {
      data['like'] = like!.toJson();
    }
    data['audio'] = audio;
    return data;
  }
}

class Like {
  int? count;
  bool? isLike;

  Like({this.count, this.isLike});

  Like.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    isLike = json['is_like'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['count'] = count;
    data['is_like'] = isLike;
    return data;
  }
}
