class PostModel {
  final int _id;
  final int _userId;
  final String _title;
  final String _body;

  PostModel(
    this._id,
    this._userId,
    this._title,
    this._body,
  );

  int get id => _id;
  int get userId => _userId;
  String get title => _title;
  String get body => _body;

  factory PostModel.fromJson(Map<String, dynamic> json) {
    return PostModel(
      json['_id'] as int,
      json['userId'] as int,
      json['title'] as String,
      json['body'] as String,
    );
  }
}
