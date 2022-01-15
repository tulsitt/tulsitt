import 'package:flutter_base/generated/json/base/json_convert_content.dart';
import 'package:flutter_base/generated/json/base/json_field.dart';

class DetailsModelEntity with JsonConvert<DetailsModelEntity> {
	int? id;
	String? slug;
	String? name;
	@JSONField(name: "name_original")
	String? nameOriginal;
	String? description;
	int? metacritic;
	@JSONField(name: "metacritic_platforms")
	List<DetailsModelMetacriticPlatforms>? metacriticPlatforms;
	String? released;
	bool? tba;
	String? updated;
	@JSONField(name: "background_image")
	String? backgroundImage;
	@JSONField(name: "background_image_additional")
	String? backgroundImageAdditional;
	String? website;
	double? rating;
	@JSONField(name: "rating_top")
	int? ratingTop;
	List<DetailsModelRatings>? ratings;
	DetailsModelReactions? reactions;
	int? added;
	@JSONField(name: "added_by_status")
	DetailsModelAddedByStatus? addedByStatus;
	int? playtime;
	@JSONField(name: "screenshots_count")
	int? screenshotsCount;
	@JSONField(name: "movies_count")
	int? moviesCount;
	@JSONField(name: "creators_count")
	int? creatorsCount;
	@JSONField(name: "achievements_count")
	int? achievementsCount;
	@JSONField(name: "parent_achievements_count")
	int? parentAchievementsCount;
	@JSONField(name: "reddit_url")
	String? redditUrl;
	@JSONField(name: "reddit_name")
	String? redditName;
	@JSONField(name: "reddit_description")
	String? redditDescription;
	@JSONField(name: "reddit_logo")
	String? redditLogo;
	@JSONField(name: "reddit_count")
	int? redditCount;
	@JSONField(name: "twitch_count")
	int? twitchCount;
	@JSONField(name: "youtube_count")
	int? youtubeCount;
	@JSONField(name: "reviews_text_count")
	int? reviewsTextCount;
	@JSONField(name: "ratings_count")
	int? ratingsCount;
	@JSONField(name: "suggestions_count")
	int? suggestionsCount;
	@JSONField(name: "alternative_names")
	List<dynamic>? alternativeNames;
	@JSONField(name: "metacritic_url")
	String? metacriticUrl;
	@JSONField(name: "parents_count")
	int? parentsCount;
	@JSONField(name: "additions_count")
	int? additionsCount;
	@JSONField(name: "game_series_count")
	int? gameSeriesCount;
	@JSONField(name: "user_game")
	dynamic? userGame;
	@JSONField(name: "reviews_count")
	int? reviewsCount;
	@JSONField(name: "saturated_color")
	String? saturatedColor;
	@JSONField(name: "dominant_color")
	String? dominantColor;
	@JSONField(name: "parent_platforms")
	List<DetailsModelParentPlatforms>? parentPlatforms;
	List<DetailsModelPlatforms>? platforms;
	List<DetailsModelStores>? stores;
	List<DetailsModelDevelopers>? developers;
	List<DetailsModelGenres>? genres;
	List<DetailsModelTags>? tags;
	List<DetailsModelPublishers>? publishers;
	@JSONField(name: "esrb_rating")
	DetailsModelEsrbRating? esrbRating;
	dynamic? clip;
	@JSONField(name: "description_raw")
	String? descriptionRaw;
}

class DetailsModelMetacriticPlatforms with JsonConvert<DetailsModelMetacriticPlatforms> {
	int? metascore;
	String? url;
	DetailsModelMetacriticPlatformsPlatform? platform;
}

class DetailsModelMetacriticPlatformsPlatform with JsonConvert<DetailsModelMetacriticPlatformsPlatform> {
	int? platform;
	String? name;
	String? slug;
}

class DetailsModelRatings with JsonConvert<DetailsModelRatings> {
	int? id;
	String? title;
	int? count;
	double? percent;
}

class DetailsModelReactions with JsonConvert<DetailsModelReactions> {
	@JSONField(name: "1")
	int? x1;
	@JSONField(name: "7")
	int? x7;
	@JSONField(name: "9")
	int? x9;
	@JSONField(name: "11")
	int? x11;
	@JSONField(name: "12")
	int? x12;
}

class DetailsModelAddedByStatus with JsonConvert<DetailsModelAddedByStatus> {
	int? yet;
	int? owned;
	int? beaten;
	int? toplay;
	int? dropped;
	int? playing;
}

class DetailsModelParentPlatforms with JsonConvert<DetailsModelParentPlatforms> {
	DetailsModelParentPlatformsPlatform? platform;
}

class DetailsModelParentPlatformsPlatform with JsonConvert<DetailsModelParentPlatformsPlatform> {
	int? id;
	String? name;
	String? slug;
}

class DetailsModelPlatforms with JsonConvert<DetailsModelPlatforms> {
	DetailsModelPlatformsPlatform? platform;
	@JSONField(name: "released_at")
	String? releasedAt;
	DetailsModelPlatformsRequirements? requirements;
}

class DetailsModelPlatformsPlatform with JsonConvert<DetailsModelPlatformsPlatform> {
	int? id;
	String? name;
	String? slug;
	dynamic? image;
	@JSONField(name: "year_end")
	dynamic? yearEnd;
	@JSONField(name: "year_start")
	dynamic? yearStart;
	@JSONField(name: "games_count")
	int? gamesCount;
	@JSONField(name: "image_background")
	String? imageBackground;
}

class DetailsModelPlatformsRequirements with JsonConvert<DetailsModelPlatformsRequirements> {

}

class DetailsModelStores with JsonConvert<DetailsModelStores> {
	int? id;
	String? url;
	DetailsModelStoresStore? store;
}

class DetailsModelStoresStore with JsonConvert<DetailsModelStoresStore> {
	int? id;
	String? name;
	String? slug;
	String? domain;
	@JSONField(name: "games_count")
	int? gamesCount;
	@JSONField(name: "image_background")
	String? imageBackground;
}

class DetailsModelDevelopers with JsonConvert<DetailsModelDevelopers> {
	int? id;
	String? name;
	String? slug;
	@JSONField(name: "games_count")
	int? gamesCount;
	@JSONField(name: "image_background")
	String? imageBackground;
}

class DetailsModelGenres with JsonConvert<DetailsModelGenres> {
	int? id;
	String? name;
	String? slug;
	@JSONField(name: "games_count")
	int? gamesCount;
	@JSONField(name: "image_background")
	String? imageBackground;
}

class DetailsModelTags with JsonConvert<DetailsModelTags> {
	int? id;
	String? name;
	String? slug;
	String? language;
	@JSONField(name: "games_count")
	int? gamesCount;
	@JSONField(name: "image_background")
	String? imageBackground;
}

class DetailsModelPublishers with JsonConvert<DetailsModelPublishers> {
	int? id;
	String? name;
	String? slug;
	@JSONField(name: "games_count")
	int? gamesCount;
	@JSONField(name: "image_background")
	String? imageBackground;
}

class DetailsModelEsrbRating with JsonConvert<DetailsModelEsrbRating> {
	int? id;
	String? name;
	String? slug;
}
