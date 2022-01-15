import 'package:flutter_base/model/details_model_entity.dart';

detailsModelEntityFromJson(DetailsModelEntity data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['slug'] != null) {
		data.slug = json['slug'].toString();
	}
	if (json['name'] != null) {
		data.name = json['name'].toString();
	}
	if (json['name_original'] != null) {
		data.nameOriginal = json['name_original'].toString();
	}
	if (json['description'] != null) {
		data.description = json['description'].toString();
	}
	if (json['metacritic'] != null) {
		data.metacritic = json['metacritic'] is String
				? int.tryParse(json['metacritic'])
				: json['metacritic'].toInt();
	}
	if (json['metacritic_platforms'] != null) {
		data.metacriticPlatforms = (json['metacritic_platforms'] as List).map((v) => DetailsModelMetacriticPlatforms().fromJson(v)).toList();
	}
	if (json['released'] != null) {
		data.released = json['released'].toString();
	}
	if (json['tba'] != null) {
		data.tba = json['tba'];
	}
	if (json['updated'] != null) {
		data.updated = json['updated'].toString();
	}
	if (json['background_image'] != null) {
		data.backgroundImage = json['background_image'].toString();
	}
	if (json['background_image_additional'] != null) {
		data.backgroundImageAdditional = json['background_image_additional'].toString();
	}
	if (json['website'] != null) {
		data.website = json['website'].toString();
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
		data.ratings = (json['ratings'] as List).map((v) => DetailsModelRatings().fromJson(v)).toList();
	}
	if (json['reactions'] != null) {
		data.reactions = DetailsModelReactions().fromJson(json['reactions']);
	}
	if (json['added'] != null) {
		data.added = json['added'] is String
				? int.tryParse(json['added'])
				: json['added'].toInt();
	}
	if (json['added_by_status'] != null) {
		data.addedByStatus = DetailsModelAddedByStatus().fromJson(json['added_by_status']);
	}
	if (json['playtime'] != null) {
		data.playtime = json['playtime'] is String
				? int.tryParse(json['playtime'])
				: json['playtime'].toInt();
	}
	if (json['screenshots_count'] != null) {
		data.screenshotsCount = json['screenshots_count'] is String
				? int.tryParse(json['screenshots_count'])
				: json['screenshots_count'].toInt();
	}
	if (json['movies_count'] != null) {
		data.moviesCount = json['movies_count'] is String
				? int.tryParse(json['movies_count'])
				: json['movies_count'].toInt();
	}
	if (json['creators_count'] != null) {
		data.creatorsCount = json['creators_count'] is String
				? int.tryParse(json['creators_count'])
				: json['creators_count'].toInt();
	}
	if (json['achievements_count'] != null) {
		data.achievementsCount = json['achievements_count'] is String
				? int.tryParse(json['achievements_count'])
				: json['achievements_count'].toInt();
	}
	if (json['parent_achievements_count'] != null) {
		data.parentAchievementsCount = json['parent_achievements_count'] is String
				? int.tryParse(json['parent_achievements_count'])
				: json['parent_achievements_count'].toInt();
	}
	if (json['reddit_url'] != null) {
		data.redditUrl = json['reddit_url'].toString();
	}
	if (json['reddit_name'] != null) {
		data.redditName = json['reddit_name'].toString();
	}
	if (json['reddit_description'] != null) {
		data.redditDescription = json['reddit_description'].toString();
	}
	if (json['reddit_logo'] != null) {
		data.redditLogo = json['reddit_logo'].toString();
	}
	if (json['reddit_count'] != null) {
		data.redditCount = json['reddit_count'] is String
				? int.tryParse(json['reddit_count'])
				: json['reddit_count'].toInt();
	}
	if (json['twitch_count'] != null) {
		data.twitchCount = json['twitch_count'] is String
				? int.tryParse(json['twitch_count'])
				: json['twitch_count'].toInt();
	}
	if (json['youtube_count'] != null) {
		data.youtubeCount = json['youtube_count'] is String
				? int.tryParse(json['youtube_count'])
				: json['youtube_count'].toInt();
	}
	if (json['reviews_text_count'] != null) {
		data.reviewsTextCount = json['reviews_text_count'] is String
				? int.tryParse(json['reviews_text_count'])
				: json['reviews_text_count'].toInt();
	}
	if (json['ratings_count'] != null) {
		data.ratingsCount = json['ratings_count'] is String
				? int.tryParse(json['ratings_count'])
				: json['ratings_count'].toInt();
	}
	if (json['suggestions_count'] != null) {
		data.suggestionsCount = json['suggestions_count'] is String
				? int.tryParse(json['suggestions_count'])
				: json['suggestions_count'].toInt();
	}
	if (json['alternative_names'] != null) {
		data.alternativeNames = (json['alternative_names'] as List).map((v) => v).toList().cast<dynamic>();
	}
	if (json['metacritic_url'] != null) {
		data.metacriticUrl = json['metacritic_url'].toString();
	}
	if (json['parents_count'] != null) {
		data.parentsCount = json['parents_count'] is String
				? int.tryParse(json['parents_count'])
				: json['parents_count'].toInt();
	}
	if (json['additions_count'] != null) {
		data.additionsCount = json['additions_count'] is String
				? int.tryParse(json['additions_count'])
				: json['additions_count'].toInt();
	}
	if (json['game_series_count'] != null) {
		data.gameSeriesCount = json['game_series_count'] is String
				? int.tryParse(json['game_series_count'])
				: json['game_series_count'].toInt();
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
	if (json['parent_platforms'] != null) {
		data.parentPlatforms = (json['parent_platforms'] as List).map((v) => DetailsModelParentPlatforms().fromJson(v)).toList();
	}
	if (json['platforms'] != null) {
		data.platforms = (json['platforms'] as List).map((v) => DetailsModelPlatforms().fromJson(v)).toList();
	}
	if (json['stores'] != null) {
		data.stores = (json['stores'] as List).map((v) => DetailsModelStores().fromJson(v)).toList();
	}
	if (json['developers'] != null) {
		data.developers = (json['developers'] as List).map((v) => DetailsModelDevelopers().fromJson(v)).toList();
	}
	if (json['genres'] != null) {
		data.genres = (json['genres'] as List).map((v) => DetailsModelGenres().fromJson(v)).toList();
	}
	if (json['tags'] != null) {
		data.tags = (json['tags'] as List).map((v) => DetailsModelTags().fromJson(v)).toList();
	}
	if (json['publishers'] != null) {
		data.publishers = (json['publishers'] as List).map((v) => DetailsModelPublishers().fromJson(v)).toList();
	}
	if (json['esrb_rating'] != null) {
		data.esrbRating = DetailsModelEsrbRating().fromJson(json['esrb_rating']);
	}
	if (json['clip'] != null) {
		data.clip = json['clip'];
	}
	if (json['description_raw'] != null) {
		data.descriptionRaw = json['description_raw'].toString();
	}
	return data;
}

Map<String, dynamic> detailsModelEntityToJson(DetailsModelEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['slug'] = entity.slug;
	data['name'] = entity.name;
	data['name_original'] = entity.nameOriginal;
	data['description'] = entity.description;
	data['metacritic'] = entity.metacritic;
	data['metacritic_platforms'] =  entity.metacriticPlatforms?.map((v) => v.toJson()).toList();
	data['released'] = entity.released;
	data['tba'] = entity.tba;
	data['updated'] = entity.updated;
	data['background_image'] = entity.backgroundImage;
	data['background_image_additional'] = entity.backgroundImageAdditional;
	data['website'] = entity.website;
	data['rating'] = entity.rating;
	data['rating_top'] = entity.ratingTop;
	data['ratings'] =  entity.ratings?.map((v) => v.toJson()).toList();
	data['reactions'] = entity.reactions?.toJson();
	data['added'] = entity.added;
	data['added_by_status'] = entity.addedByStatus?.toJson();
	data['playtime'] = entity.playtime;
	data['screenshots_count'] = entity.screenshotsCount;
	data['movies_count'] = entity.moviesCount;
	data['creators_count'] = entity.creatorsCount;
	data['achievements_count'] = entity.achievementsCount;
	data['parent_achievements_count'] = entity.parentAchievementsCount;
	data['reddit_url'] = entity.redditUrl;
	data['reddit_name'] = entity.redditName;
	data['reddit_description'] = entity.redditDescription;
	data['reddit_logo'] = entity.redditLogo;
	data['reddit_count'] = entity.redditCount;
	data['twitch_count'] = entity.twitchCount;
	data['youtube_count'] = entity.youtubeCount;
	data['reviews_text_count'] = entity.reviewsTextCount;
	data['ratings_count'] = entity.ratingsCount;
	data['suggestions_count'] = entity.suggestionsCount;
	data['alternative_names'] = entity.alternativeNames;
	data['metacritic_url'] = entity.metacriticUrl;
	data['parents_count'] = entity.parentsCount;
	data['additions_count'] = entity.additionsCount;
	data['game_series_count'] = entity.gameSeriesCount;
	data['user_game'] = entity.userGame;
	data['reviews_count'] = entity.reviewsCount;
	data['saturated_color'] = entity.saturatedColor;
	data['dominant_color'] = entity.dominantColor;
	data['parent_platforms'] =  entity.parentPlatforms?.map((v) => v.toJson()).toList();
	data['platforms'] =  entity.platforms?.map((v) => v.toJson()).toList();
	data['stores'] =  entity.stores?.map((v) => v.toJson()).toList();
	data['developers'] =  entity.developers?.map((v) => v.toJson()).toList();
	data['genres'] =  entity.genres?.map((v) => v.toJson()).toList();
	data['tags'] =  entity.tags?.map((v) => v.toJson()).toList();
	data['publishers'] =  entity.publishers?.map((v) => v.toJson()).toList();
	data['esrb_rating'] = entity.esrbRating?.toJson();
	data['clip'] = entity.clip;
	data['description_raw'] = entity.descriptionRaw;
	return data;
}

detailsModelMetacriticPlatformsFromJson(DetailsModelMetacriticPlatforms data, Map<String, dynamic> json) {
	if (json['metascore'] != null) {
		data.metascore = json['metascore'] is String
				? int.tryParse(json['metascore'])
				: json['metascore'].toInt();
	}
	if (json['url'] != null) {
		data.url = json['url'].toString();
	}
	if (json['platform'] != null) {
		data.platform = DetailsModelMetacriticPlatformsPlatform().fromJson(json['platform']);
	}
	return data;
}

Map<String, dynamic> detailsModelMetacriticPlatformsToJson(DetailsModelMetacriticPlatforms entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['metascore'] = entity.metascore;
	data['url'] = entity.url;
	data['platform'] = entity.platform?.toJson();
	return data;
}

detailsModelMetacriticPlatformsPlatformFromJson(DetailsModelMetacriticPlatformsPlatform data, Map<String, dynamic> json) {
	if (json['platform'] != null) {
		data.platform = json['platform'] is String
				? int.tryParse(json['platform'])
				: json['platform'].toInt();
	}
	if (json['name'] != null) {
		data.name = json['name'].toString();
	}
	if (json['slug'] != null) {
		data.slug = json['slug'].toString();
	}
	return data;
}

Map<String, dynamic> detailsModelMetacriticPlatformsPlatformToJson(DetailsModelMetacriticPlatformsPlatform entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['platform'] = entity.platform;
	data['name'] = entity.name;
	data['slug'] = entity.slug;
	return data;
}

detailsModelRatingsFromJson(DetailsModelRatings data, Map<String, dynamic> json) {
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

Map<String, dynamic> detailsModelRatingsToJson(DetailsModelRatings entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['title'] = entity.title;
	data['count'] = entity.count;
	data['percent'] = entity.percent;
	return data;
}

detailsModelReactionsFromJson(DetailsModelReactions data, Map<String, dynamic> json) {
	if (json['1'] != null) {
		data.x1 = json['1'] is String
				? int.tryParse(json['1'])
				: json['1'].toInt();
	}
	if (json['7'] != null) {
		data.x7 = json['7'] is String
				? int.tryParse(json['7'])
				: json['7'].toInt();
	}
	if (json['9'] != null) {
		data.x9 = json['9'] is String
				? int.tryParse(json['9'])
				: json['9'].toInt();
	}
	if (json['11'] != null) {
		data.x11 = json['11'] is String
				? int.tryParse(json['11'])
				: json['11'].toInt();
	}
	if (json['12'] != null) {
		data.x12 = json['12'] is String
				? int.tryParse(json['12'])
				: json['12'].toInt();
	}
	return data;
}

Map<String, dynamic> detailsModelReactionsToJson(DetailsModelReactions entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['1'] = entity.x1;
	data['7'] = entity.x7;
	data['9'] = entity.x9;
	data['11'] = entity.x11;
	data['12'] = entity.x12;
	return data;
}

detailsModelAddedByStatusFromJson(DetailsModelAddedByStatus data, Map<String, dynamic> json) {
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

Map<String, dynamic> detailsModelAddedByStatusToJson(DetailsModelAddedByStatus entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['yet'] = entity.yet;
	data['owned'] = entity.owned;
	data['beaten'] = entity.beaten;
	data['toplay'] = entity.toplay;
	data['dropped'] = entity.dropped;
	data['playing'] = entity.playing;
	return data;
}

detailsModelParentPlatformsFromJson(DetailsModelParentPlatforms data, Map<String, dynamic> json) {
	if (json['platform'] != null) {
		data.platform = DetailsModelParentPlatformsPlatform().fromJson(json['platform']);
	}
	return data;
}

Map<String, dynamic> detailsModelParentPlatformsToJson(DetailsModelParentPlatforms entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['platform'] = entity.platform?.toJson();
	return data;
}

detailsModelParentPlatformsPlatformFromJson(DetailsModelParentPlatformsPlatform data, Map<String, dynamic> json) {
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

Map<String, dynamic> detailsModelParentPlatformsPlatformToJson(DetailsModelParentPlatformsPlatform entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['slug'] = entity.slug;
	return data;
}

detailsModelPlatformsFromJson(DetailsModelPlatforms data, Map<String, dynamic> json) {
	if (json['platform'] != null) {
		data.platform = DetailsModelPlatformsPlatform().fromJson(json['platform']);
	}
	if (json['released_at'] != null) {
		data.releasedAt = json['released_at'].toString();
	}
	if (json['requirements'] != null) {
		data.requirements = DetailsModelPlatformsRequirements().fromJson(json['requirements']);
	}
	return data;
}

Map<String, dynamic> detailsModelPlatformsToJson(DetailsModelPlatforms entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['platform'] = entity.platform?.toJson();
	data['released_at'] = entity.releasedAt;
	data['requirements'] = entity.requirements?.toJson();
	return data;
}

detailsModelPlatformsPlatformFromJson(DetailsModelPlatformsPlatform data, Map<String, dynamic> json) {
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
	if (json['image'] != null) {
		data.image = json['image'];
	}
	if (json['year_end'] != null) {
		data.yearEnd = json['year_end'];
	}
	if (json['year_start'] != null) {
		data.yearStart = json['year_start'];
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

Map<String, dynamic> detailsModelPlatformsPlatformToJson(DetailsModelPlatformsPlatform entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['slug'] = entity.slug;
	data['image'] = entity.image;
	data['year_end'] = entity.yearEnd;
	data['year_start'] = entity.yearStart;
	data['games_count'] = entity.gamesCount;
	data['image_background'] = entity.imageBackground;
	return data;
}

detailsModelPlatformsRequirementsFromJson(DetailsModelPlatformsRequirements data, Map<String, dynamic> json) {
	return data;
}

Map<String, dynamic> detailsModelPlatformsRequirementsToJson(DetailsModelPlatformsRequirements entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	return data;
}

detailsModelStoresFromJson(DetailsModelStores data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['url'] != null) {
		data.url = json['url'].toString();
	}
	if (json['store'] != null) {
		data.store = DetailsModelStoresStore().fromJson(json['store']);
	}
	return data;
}

Map<String, dynamic> detailsModelStoresToJson(DetailsModelStores entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['url'] = entity.url;
	data['store'] = entity.store?.toJson();
	return data;
}

detailsModelStoresStoreFromJson(DetailsModelStoresStore data, Map<String, dynamic> json) {
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
	if (json['domain'] != null) {
		data.domain = json['domain'].toString();
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

Map<String, dynamic> detailsModelStoresStoreToJson(DetailsModelStoresStore entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['slug'] = entity.slug;
	data['domain'] = entity.domain;
	data['games_count'] = entity.gamesCount;
	data['image_background'] = entity.imageBackground;
	return data;
}

detailsModelDevelopersFromJson(DetailsModelDevelopers data, Map<String, dynamic> json) {
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

Map<String, dynamic> detailsModelDevelopersToJson(DetailsModelDevelopers entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['slug'] = entity.slug;
	data['games_count'] = entity.gamesCount;
	data['image_background'] = entity.imageBackground;
	return data;
}

detailsModelGenresFromJson(DetailsModelGenres data, Map<String, dynamic> json) {
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

Map<String, dynamic> detailsModelGenresToJson(DetailsModelGenres entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['slug'] = entity.slug;
	data['games_count'] = entity.gamesCount;
	data['image_background'] = entity.imageBackground;
	return data;
}

detailsModelTagsFromJson(DetailsModelTags data, Map<String, dynamic> json) {
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

Map<String, dynamic> detailsModelTagsToJson(DetailsModelTags entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['slug'] = entity.slug;
	data['language'] = entity.language;
	data['games_count'] = entity.gamesCount;
	data['image_background'] = entity.imageBackground;
	return data;
}

detailsModelPublishersFromJson(DetailsModelPublishers data, Map<String, dynamic> json) {
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

Map<String, dynamic> detailsModelPublishersToJson(DetailsModelPublishers entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['slug'] = entity.slug;
	data['games_count'] = entity.gamesCount;
	data['image_background'] = entity.imageBackground;
	return data;
}

detailsModelEsrbRatingFromJson(DetailsModelEsrbRating data, Map<String, dynamic> json) {
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

Map<String, dynamic> detailsModelEsrbRatingToJson(DetailsModelEsrbRating entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['slug'] = entity.slug;
	return data;
}