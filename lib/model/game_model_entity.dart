import 'package:flutter_base/generated/json/base/json_convert_content.dart';
import 'package:flutter_base/generated/json/base/json_field.dart';

class GameModelEntity with JsonConvert<GameModelEntity> {
	int? count;
	String? next;
	String? previous;
	List<GameModelResults>? results;
	@JSONField(name: "user_platforms")
	bool? userPlatforms;
}

class GameModelResults with JsonConvert<GameModelResults> {
	String? slug;
	String? name;
	int? playtime;
	List<GameModelResultsPlatforms>? platforms;
	List<GameModelResultsStores>? stores;
	String? released;
	bool? tba;
	@JSONField(name: "background_image")
	String? backgroundImage;
	double? rating;
	@JSONField(name: "rating_top")
	int? ratingTop;
	List<GameModelResultsRatings>? ratings;
	@JSONField(name: "ratings_count")
	int? ratingsCount;
	@JSONField(name: "reviews_text_count")
	int? reviewsTextCount;
	int? added;
	@JSONField(name: "added_by_status")
	GameModelResultsAddedByStatus? addedByStatus;
	int? metacritic=0;
	@JSONField(name: "suggestions_count")
	int? suggestionsCount;
	String? updated;
	int? id;
	dynamic? score;
	dynamic? clip;
	List<GameModelResultsTags>? tags;
	@JSONField(name: "esrb_rating")
	GameModelResultsEsrbRating? esrbRating;
	@JSONField(name: "user_game")
	dynamic? userGame;
	@JSONField(name: "reviews_count")
	int? reviewsCount;
	@JSONField(name: "saturated_color")
	String? saturatedColor;
	@JSONField(name: "dominant_color")
	String? dominantColor;
	@JSONField(name: "short_screenshots")
	List<GameModelResultsShortScreenshots>? shortScreenshots;
	@JSONField(name: "parent_platforms")
	List<GameModelResultsParentPlatforms>? parentPlatforms;
	List<GameModelResultsGenres>? genres;
}

class GameModelResultsPlatforms with JsonConvert<GameModelResultsPlatforms> {
	GameModelResultsPlatformsPlatform? platform;
}

class GameModelResultsPlatformsPlatform with JsonConvert<GameModelResultsPlatformsPlatform> {
	int? id;
	String? name;
	String? slug;
}

class GameModelResultsStores with JsonConvert<GameModelResultsStores> {
	GameModelResultsStoresStore? store;
}

class GameModelResultsStoresStore with JsonConvert<GameModelResultsStoresStore> {
	int? id;
	String? name;
	String? slug;
}

class GameModelResultsRatings with JsonConvert<GameModelResultsRatings> {
	int? id;
	String? title;
	int? count;
	double? percent;
}

class GameModelResultsAddedByStatus with JsonConvert<GameModelResultsAddedByStatus> {
	int? yet;
	int? owned;
	int? beaten;
	int? toplay;
	int? dropped;
	int? playing;
}

class GameModelResultsTags with JsonConvert<GameModelResultsTags> {
	int? id;
	String? name;
	String? slug;
	String? language;
	@JSONField(name: "games_count")
	int? gamesCount;
	@JSONField(name: "image_background")
	String? imageBackground;
}

class GameModelResultsEsrbRating with JsonConvert<GameModelResultsEsrbRating> {
	int? id;
	String? name;
	String? slug;
	@JSONField(name: "name_en")
	String? nameEn;
	@JSONField(name: "name_ru")
	String? nameRu;
}

class GameModelResultsShortScreenshots with JsonConvert<GameModelResultsShortScreenshots> {
	int? id;
	String? image;
}

class GameModelResultsParentPlatforms with JsonConvert<GameModelResultsParentPlatforms> {
	GameModelResultsParentPlatformsPlatform? platform;
}

class GameModelResultsParentPlatformsPlatform with JsonConvert<GameModelResultsParentPlatformsPlatform> {
	int? id;
	String? name;
	String? slug;
}

class GameModelResultsGenres with JsonConvert<GameModelResultsGenres> {
	int? id;
	String? name;
	String? slug;
}
