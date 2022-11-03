import 'package:medquiz/models/privacypolicy_model.dart';

class PrivacypolicyResponse {
  List<PrivacypolicyModel>? data;
  String? message;
  String? status;

  PrivacypolicyResponse({this.data, this.message, this.status});

  PrivacypolicyResponse.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <PrivacypolicyModel>[];
      json['data'].forEach((v) {
        data!.add(PrivacypolicyModel.fromJson(v));
      });
    }
    message = json['message'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['message'] = message;
    data['status'] = status;
    return data;
  }
}
