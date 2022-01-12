import 'package:flutter_base/model/error_model_entity.dart';

errorModelEntityFromJson(ErrorModelEntity data, Map<String, dynamic> json) {
	if (json['error'] != null) {
		data.error = json['error'].toString();
	}
	return data;
}

Map<String, dynamic> errorModelEntityToJson(ErrorModelEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['error'] = entity.error;
	return data;
}