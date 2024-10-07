import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class SendEmailToUserCloudFunctionsAPICall {
  static Future<ApiCallResponse> call({
    String? to = '',
    String? subject = 'Welcome To Nick\'s Task Organizer.',
    String? text =
        'Thank you for creating an account with Nick\'s Task Organizer! We\'re excited to help you organize and manage your tasks effortlessly.  Here’s what you can do with your new account:  Create tasks and organize them easily. Edit and update your tasks as you go. Mark tasks as completed and review them anytime. Access your tasks across all your devices. If you have any questions or need assistance, feel free to reach out to our support team. We’re glad to have you on board and wish you productive days ahead!  Best regards, The TO-DO Team',
  }) async {
    final ffApiRequestBody = '''
{
  "to": "$to",
  "subject": "$subject",
  "text": "$text"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'sendEmailToUser Cloud Functions API',
      apiUrl:
          'https://us-central1-week5-sendgrid-26f5f.cloudfunctions.net/sendEmailToUser',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
