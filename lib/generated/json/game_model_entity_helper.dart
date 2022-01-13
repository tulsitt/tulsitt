import 'package:flutter_base/model/game_model_entity.dart';

gameModelEntityFromJson(GameModelEntity data, Map<String, dynamic> json) {
	if (json['count'] != null) {
		data.count = json['count'] is String
				? int.tryParse(json['count'])
				: json['count'].toInt();
	}
	if (json['next'] != null) {
		data.next = json['next'].toString();
	}
	if (json['previous'] != null) {
		data.previous = json['previous'].toString();
	}
	if (json['results'] != null) {
		data.results = (json['results'] as List).map((v) => GameModelResults().fromJson(v)).toList();
	}
	if (json['user_platforms'] != null) {
		data.userPlatforms = json['user_platforms'];
	}
	return data;
}

Map<String, dynamic> gameModelEntityToJson(GameModelEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['count'] = entity.count;
	data['next'] = entity.next;
	data['previous'] = entity.previous;
	data['results'] =  entity.results?.map((v) => v.toJson()).toList();
	data['user_platforms'] = entity.userPlatforms;
	return data;
}

gameModelResultsFromJson(GameModelResults data, Map<String, dynamic> json) {
	if (json['slug'] != null) {
		data.slug = json['slug'].toString();
	}
	if (json['name'] != null) {
		data.name = json['name'].toString();
	}
	if (json['playtime'] != null) {
		data.playtime = json['playtime'] is String
				? int.tryParse(json['playtime'])
				: json['playtime'].toInt();
	}
	if (json['platforms'] != null) {
		data.platforms = (json['platforms'] as List).map((v) => GameModelResultsPlatforms().fromJson(v)).toList();
	}
	if (json['stores'] != null) {
		data.stores = (json['stores'] as List).map((v) => GameModelResultsStores().fromJson(v)).toList();
	}
	if (json['released'] != null) {
		data.released = json['released'].toString();
	}
	if (json['tba'] != null) {
		data.tba = json['tba'];
	}
	if (json['background_image'] != null) {
		data.backgroundImage = json['background_image'].toString();
	}
	if (json['rating'] != null) {
		data.rating = json['rating'] is String
				? double.tryParse(json['rating'])
				: json['rating'].toDouble();
	}
	if (json['rating_top'] != null) {
		data.ratingTop = json['rating_top'] is String
				? int.tryParse(json['rating_top'])
				: json['rating_top'].toInt();
	}
	if (json['ratings'] != null) {
		data.ratings = (json['ratings'] as List).map((v) => GameModelResultsRatings().fromJson(v)).toList();
	}
	if (json['ratings_count'] != null) {
		data.ratingsCount = json['ratings_count'] is String
				? int.tryParse(json['ratings_count'])
				: json['ratings_count'].toInt();
	}
	if (json['reviews_text_count'] != null) {
		data.reviewsTextCount = json['reviews_text_count'] is String
				? int.tryParse(json['reviews_text_count'])
				: json['reviews_text_count'].toInt();
	}
	if (json['added'] != null) {
		data.added = json['added'] is String
				? int.tryParse(json['added'])
				: json['added'].toInt();
	}
	if (json['added_by_status'] != null) {
		data.addedByStatus = GameModelResultsAddedByStatus().fromJson(json['added_by_status']);
	}
	if (json['metacritic'] != null) {
		data.metacritic = json['metacritic'] is String
				? int.tryParse(json['metacritic'])
				: json['metacritic'].toInt();
	}
	if (json['suggestions_count'] != null) {
		data.suggestionsCount = json['suggestions_count'] is String
				? int.tryParse(json['suggestions_count'])
				: json['suggestions_count'].toInt();
	}
	if (json['updated'] != null) {
		data.updated = json['updated'].toString();
	}
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['score'] != null) {
		data.score = json['score'];
	}
	if (json['clip'] != null) {
		data.clip = json['clip'];
	}
	if (json['tags'] != null) {
		data.tags = (json['tags'] as List).map((v) => GameModelResultsTags().fromJson(v)).toList();
	}
	if (json['esrb_rating'] != null) {
		data.esrbRating = GameModelResultsEsrbRating().fromJson(json['esrb_rating']);
	}
	if (json['user_game'] != null) {
		data.userGame = json['user_game'];
	}
	if (json['reviews_count'] != null) {
		data.reviewsCount = json['reviews_count'] is String
				? int.tryParse(json['reviews_count'])
				: json['reviews_count'].toInt();
	}
	if (json['saturated_color'] != null) {
		data.saturatedColor = json['saturated_color'].toString();
	}
	if (json['dominant_color'] != null) {
		data.dominantColor = json['dominant_color'].toString();
	}
	if (json['short_screenshots'] != null) {
		data.shortScreenshots = (json['short_screenshots'] as List).map((v) => GameModelResultsShortScreenshots().fromJson(v)).toList();
	}
	if (json['parent_platforms'] != null) {
		data.parentPlatforms = (json['parent_platforms'] as List).map((v) => GameModelResultsParentPlatforms().fromJson(v)).toList();
	}
	if (json['genres'] != null) {
		data.genres = (json['genres'] as List).map((v) => GameModelResultsGenres().fromJson(v)).toList();
	}
	return data;
}

Map<String, dynamic> gameModelResultsToJson(GameModelResults entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['slug'] = entity.slug;
	data['name'] = entity.name;
	data['playtime'] = entity.playtime;
	data['platforms'] =  entity.platforms?.map((v) => v.toJson()).toList();
	data['stores'] =  entity.stores?.map((v) => v.toJson()).toList();
	data['released'] = entity.released;
	data['tba'] = entity.tba;
	data['background_image'] = entity.backgroundImage;
	data['rating'] = entity.rating;
	data['rating_top'] = entity.ratingTop;
	data['ratings'] =  entity.ratings?.map((v) => v.toJson()).toList();
	data['ratings_count'] = entity.ratingsCount;
	data['reviews_text_count'] = entity.reviewsTextCount;
	data['added'] = entity.added;
	data['added_by_status'] = entity.addedByStatus?.toJson();
	data['metacritic'] = entity.metacritic;
	data['suggestions_count'] = entity.suggestionsCount;
	data['updated'] = entity.updated;
	data['id'] = entity.id;
	data['score'] = entity.score;
	data['clip'] = entity.clip;
	data['tags'] =  entity.tags?.map((v) => v.toJson()).toList();
	data['esrb_rating'] = entity.esrbRating?.toJson();
	data['user_game'] = entity.userGame;
	data['reviews_count'] = entity.reviewsCount;
	data['saturated_color'] = entity.saturatedColor;
	data['dominant_color'] = entity.dominantColor;
	data['short_screenshots'] =  entity.shortScreenshots?.map((v) => v.toJson()).toList();
	data['parent_platforms'] =  entity.parentPlatforms?.map((v) => v.toJson()).toList();
	data['genres'] =  entity.genres?.map((v) => v.toJson()).toList();
	return data;
}

gameModelResultsPlatformsFromJson(GameModelResultsPlatforms data, Map<String, dynamic> json) {
	if (json['platform'] != null) {
		data.platform = GameModelResultsPlatformsPlatform().fromJson(json['platform']);
	}
	return data;
}

Map<String, dynamic> gameModelResultsPlatformsToJson(GameModelResultsPlatforms entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['platform'] = entity.platform?.toJson();
	return data;
}

gameModelResultsPlatformsPlatformFromJson(GameModelResultsPlatformsPlatform data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['name'] != null) {
		data.name = json['name'].toString();
	}
	if (json['slug'] != null) {
		data.slug = json['slug'].toString();
	}
	return data;
}

Map<String, dynamic> gameModelResultsPlatformsPlatformToJson(GameModelResultsPlatformsPlatform entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['slug'] = entity.slug;
	return data;
}

gameModelResultsStoresFromJson(GameModelResultsStores data, Map<String, dynamic> json) {
	if (json['store'] != null) {
		data.store = GameModelResultsStoresStore().fromJson(json['store']);
	}
	return data;
}

Map<String, dynamic> gameModelResultsStoresToJson(GameModelResultsStores entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['store'] = entity.store?.toJson();
	return data;
}

gameModelResultsStoresStoreFromJson(GameModelResultsStoresStore data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['name'] != null) {
		data.name = json['name'].toString();
	}
	if (json['slug'] != null) {
		data.slug = json['slug'].toString();
	}
	return data;
}

Map<String, dynamic> gameModelResultsStoresStoreToJson(GameModelResultsStoresStore entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['slug'] = entity.slug;
	return data;
}

gameModelResultsRatingsFromJson(GameModelResultsRatings data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['title'] != null) {
		data.title = json['title'].toString();
	}
	if (json['count'] != null) {
		data.count = json['count'] is String
				? int.tryParse(json['count'])
				: json['count'].toInt();
	}
	if (json['percent'] != null) {
		data.percent = json['percent'] is String
				? double.tryParse(json['percent'])
				: json['percent'].toDouble();
	}
	return data;
}

Map<String, dynamic> gameModelResultsRatingsToJson(GameModelResultsRatings entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['title'] = entity.title;
	data['count'] = entity.count;
	data['percent'] = entity.percent;
	return data;
}

gameModelResultsAddedByStatusFromJson(GameModelResultsAddedByStatus data, Map<String, dynamic> json) {
	if (json['yet'] != null) {
		data.yet = json['yet'] is String
				? int.tryParse(json['yet'])
				: json['yet'].toInt();
	}
	if (json['owned'] != null) {
		data.owned = json['owned'] is String
				? int.tryParse(json['owned'])
				: json['owned'].toInt();
	}
	if (json['beaten'] != null) {
		data.beaten = json['beaten'] is String
				? int.tryParse(json['beaten'])
				: json['beaten'].toInt();
	}
	if (json['toplay'] != null) {
		data.toplay = json['toplay'] is String
				? int.tryParse(json['toplay'])
				: json['toplay'].toInt();
	}
	if (json['dropped'] != null) {
		data.dropped = json['dropped'] is String
				? int.tryParse(json['dropped'])
				: json['dropped'].toInt();
	}
	if (json['playing'] != null) {
		data.playing = json['playing'] is String
				? int.tryParse(json['playing'])
				: json['playing'].toInt();
	}
	return data;
}

Map<String, dynamic> gameModelResultsAddedByStatusToJson(GameModelResultsAddedByStatus entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['yet'] = entity.yet;
	data['owned'] = entity.owned;
	data['beaten'] = entity.beaten;
	data['toplay'] = entity.toplay;
	data['dropped'] = entity.dropped;
	data['playing'] = entity.playing;
	return data;
}

gameModelResultsTagsFromJson(GameModelResultsTags data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['name'] != null) {
		data.name = json['name'].toString();
	}
	if (json['slug'] != null) {
		data.slug = json['slug'].toString();
	}
	if (json['language'] != null) {
		data.language = json['language'].toString();
	}
	if (json['games_count'] != null) {
		data.gamesCount = json['games_count'] is String
				? int.tryParse(json['games_count'])
				: json['games_count'].toInt();
	}
	if (json['image_background'] != null) {
		data.imageBackground = json['image_background'].toString();
	}
	return data;
}

Map<String, dynamic> gameModelResultsTagsToJson(GameModelResultsTags entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['slug'] = entity.slug;
	data['language'] = entity.language;
	data['games_count'] = entity.gamesCount;
	data['image_background'] = entity.imageBackground;
	return data;
}

gameModelResultsEsrbRatingFromJson(GameModelResultsEsrbRating data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['name'] != null) {
		data.name = json['name'].toString();
	}
	if (json['slug'] != null) {
		data.slug = json['slug'].toString();
	}
	if (json['name_en'] != null) {
		data.nameEn = json['name_en'].toString();
	}
	if (json['name_ru'] != null) {
		data.nameRu = json['name_ru'].toString();
	}
	return data;
}

Map<String, dynamic> gameModelResultsEsrbRatingToJson(GameModelResultsEsrbRating entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['slug'] = entity.slug;
	data['name_en'] = entity.nameEn;
	data['name_ru'] = entity.nameRu;
	return data;
}

gameModelResultsShortScreenshotsFromJson(GameModelResultsShortScreenshots data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['image'] != null) {
		data.image = json['image'].toString();
	}
	return data;
}

Map<String, dynamic> gameModelResultsShortScreenshotsToJson(GameModelResultsShortScreenshots entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['image'] = entity.image;
	return data;
}

gameModelResultsParentPlatformsFromJson(GameModelResultsParentPlatforms data, Map<String, dynamic> json) {
	if (json['platform'] != null) {
		data.platform = GameModelResultsParentPlatformsPlatform().fromJson(json['platform']);
	}
	return data;
}

Map<String, dynamic> gameModelResultsParentPlatformsToJson(GameModelResultsParentPlatforms entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['platform'] = entity.platform?.toJson();
	return data;
}

gameModelResultsParentPlatformsPlatformFromJson(GameModelResultsParentPlatformsPlatform data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['name'] != null) {
		data.name = json['name'].toString();
	}
	if (json['slug'] != null) {
		data.slug = json['slug'].toString();
	}
	return data;
}

Map<String, dynamic> gameModelResultsParentPlatformsPlatformToJson(GameModelResultsParentPlatformsPlatform entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['slug'] = entity.slug;
	return data;
}

gameModelResultsGenresFromJson(GameModelResultsGenres data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['name'] != null) {
		data.name = json['name'].toString();
	}
	if (json['slug'] != null) {
		data.slug = json['slug'].toString();
	}
	return data;
}

Map<String, dynamic> gameModelResultsGenresToJson(GameModelResultsGenres entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['slug'] = entity.slug;
	return data;
}