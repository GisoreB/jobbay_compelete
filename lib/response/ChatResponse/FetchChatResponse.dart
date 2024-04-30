// ignore: file_names
import 'package:jobbay/models/Chat/ChattingModel.dart';

class FetchChatResponse {
  List<Chat>? chats;

  FetchChatResponse({this.chats});

  factory FetchChatResponse.fromJson(Map<String, dynamic> json) {
    return FetchChatResponse(
      chats: json['data'] != null
          ? (json['data'] as List).map((i) => Chat.fromJson(i)).toList()
          : null,
    );
  }
}
// user: json['user'] != null ? User.fromJson(json['user']) : null,