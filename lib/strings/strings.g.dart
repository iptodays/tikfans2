/// Generated file. Do not edit.
///
/// Locales: 25
/// Strings: 3900 (156 per locale)
///
/// Built on 2022-11-06 at 06:55 UTC

// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:flutter/widgets.dart';
import 'package:slang/builder/model/node.dart';
import 'package:slang_flutter/slang_flutter.dart';
export 'package:slang_flutter/slang_flutter.dart';

const AppLocale _baseLocale = AppLocale.en;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.en) // set locale
/// - Locale locale = AppLocale.en.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.en) // locale check
enum AppLocale with BaseAppLocale<AppLocale, _StringsEn> {
	en(languageCode: 'en', build: _StringsEn.build),
	ar(languageCode: 'ar', build: _StringsAr.build),
	bn(languageCode: 'bn', build: _StringsBn.build),
	de(languageCode: 'de', build: _StringsDe.build),
	es(languageCode: 'es', build: _StringsEs.build),
	fr(languageCode: 'fr', build: _StringsFr.build),
	hi(languageCode: 'hi', build: _StringsHi.build),
	id(languageCode: 'id', build: _StringsId.build),
	it(languageCode: 'it', build: _StringsIt.build),
	ja(languageCode: 'ja', build: _StringsJa.build),
	kk(languageCode: 'kk', build: _StringsKk.build),
	ko(languageCode: 'ko', build: _StringsKo.build),
	mr(languageCode: 'mr', build: _StringsMr.build),
	ne(languageCode: 'ne', build: _StringsNe.build),
	pt(languageCode: 'pt', build: _StringsPt.build),
	ru(languageCode: 'ru', build: _StringsRu.build),
	th(languageCode: 'th', build: _StringsTh.build),
	tl(languageCode: 'tl', build: _StringsTl.build),
	tr(languageCode: 'tr', build: _StringsTr.build),
	uk(languageCode: 'uk', build: _StringsUk.build),
	ur(languageCode: 'ur', build: _StringsUr.build),
	uz(languageCode: 'uz', build: _StringsUz.build),
	vi(languageCode: 'vi', build: _StringsVi.build),
	zhCn(languageCode: 'zh', countryCode: 'CN', build: _StringsZhCn.build),
	zhTw(languageCode: 'zh', countryCode: 'TW', build: _StringsZhTw.build);

	const AppLocale({required this.languageCode, this.scriptCode, this.countryCode, required this.build}); // ignore: unused_element

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;
	@override final TranslationBuilder<AppLocale, _StringsEn> build;

	/// Gets current instance managed by [LocaleSettings].
	_StringsEn get translations => LocaleSettings.instance.translationMap[this]!;
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of translate).
/// Configurable via 'translate_var'.
///
/// Usage:
/// String a = translate.someKey.anotherKey;
/// String b = translate['someKey.anotherKey']; // Only for edge cases!
_StringsEn get translate => LocaleSettings.instance.currentTranslations;

/// Method B: Advanced
///
/// All widgets using this method will trigger a rebuild when locale changes.
/// Use this if you have e.g. a settings page where the user can select the locale during runtime.
///
/// Step 1:
/// wrap your App with
/// TranslationProvider(
/// 	child: MyApp()
/// );
///
/// Step 2:
/// final translate = Translations.of(context); // Get translate variable.
/// String a = translate.someKey.anotherKey; // Use translate variable.
/// String b = translate['someKey.anotherKey']; // Only for edge cases!
class Translations {
	Translations._(); // no constructor

	static _StringsEn of(BuildContext context) => InheritedLocaleData.of<AppLocale, _StringsEn>(context).translations;
}

/// The provider for method B
class TranslationProvider extends BaseTranslationProvider<AppLocale, _StringsEn> {
	TranslationProvider({required super.child}) : super(
		initLocale: LocaleSettings.instance.currentLocale,
		initTranslations: LocaleSettings.instance.currentTranslations,
	);

	static InheritedLocaleData<AppLocale, _StringsEn> of(BuildContext context) => InheritedLocaleData.of<AppLocale, _StringsEn>(context);
}

/// Method B shorthand via [BuildContext] extension method.
/// Configurable via 'translate_var'.
///
/// Usage (e.g. in a widget's build method):
/// context.translate.someKey.anotherKey
extension BuildContextTranslationsExtension on BuildContext {
	_StringsEn get translate => TranslationProvider.of(this).translations;
}

/// Manages all translation instances and the current locale
class LocaleSettings extends BaseFlutterLocaleSettings<AppLocale, _StringsEn> {
	LocaleSettings._() : super(locales: AppLocale.values, baseLocale: _baseLocale, utils: AppLocaleUtils.instance);

	static final instance = LocaleSettings._();

	// static aliases (checkout base methods for documentation)
	static AppLocale get currentLocale => instance.currentLocale;
	static Stream<AppLocale> getLocaleStream() => instance.getLocaleStream();
	static AppLocale setLocale(AppLocale locale) => instance.setLocale(locale);
	static AppLocale setLocaleRaw(String rawLocale) => instance.setLocaleRaw(rawLocale);
	static AppLocale useDeviceLocale() => instance.useDeviceLocale();
	static List<Locale> get supportedLocales => instance.supportedLocales;
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
	static void setPluralResolver({String? language, AppLocale? locale, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver}) => instance.setPluralResolver(
		language: language,
		locale: locale,
		cardinalResolver: cardinalResolver,
		ordinalResolver: ordinalResolver,
	);
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, _StringsEn> {
	AppLocaleUtils._() : super(baseLocale: _baseLocale, locales: AppLocale.values);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static AppLocale parse(String rawLocale) => instance.parse(rawLocale);
	static AppLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static AppLocale findDeviceLocale() => instance.findDeviceLocale();
}

// translations

// Path: <root>
class _StringsEn implements BaseTranslations<AppLocale, _StringsEn> {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsEn.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, _StringsEn> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final _StringsEn _root = this; // ignore: unused_field

	// Translations
	late final _StringsOnlyTitleEn onlyTitle = _StringsOnlyTitleEn._(_root);
	late final _StringsUniversalEn universal = _StringsUniversalEn._(_root);
	late final _StringsTabbarEn tabbar = _StringsTabbarEn._(_root);
	late final _StringsTaskEn task = _StringsTaskEn._(_root);
	late final _StringsStoreEn store = _StringsStoreEn._(_root);
	late final _StringsCoinsEn coins = _StringsCoinsEn._(_root);
	late final _StringsLoginEn login = _StringsLoginEn._(_root);
	late final _StringsSettingEn setting = _StringsSettingEn._(_root);
	late final _StringsLanguageEn language = _StringsLanguageEn._(_root);
	late final _StringsDailyEn daily = _StringsDailyEn._(_root);
	late final _StringsWheelEn wheel = _StringsWheelEn._(_root);
	late final _StringsAccountEn account = _StringsAccountEn._(_root);
	late final _StringsOrdersEn orders = _StringsOrdersEn._(_root);
	late final _StringsFaqEn faq = _StringsFaqEn._(_root);
	late final _StringsAboutEn about = _StringsAboutEn._(_root);
	late final _StringsAlertEn alert = _StringsAlertEn._(_root);
	late final _StringsToastEn toast = _StringsToastEn._(_root);
	late final _StringsLocalNotificationEn localNotification = _StringsLocalNotificationEn._(_root);
}

// Path: onlyTitle
class _StringsOnlyTitleEn {
	_StringsOnlyTitleEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get contact => 'Contact us';
}

// Path: universal
class _StringsUniversalEn {
	_StringsUniversalEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get coins => 'Coins';
	String get requestError => 'Please try again later';
	String get add => 'Add Account';
}

// Path: tabbar
class _StringsTabbarEn {
	_StringsTabbarEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get task => 'Home';
	String get store => 'Store';
	String get setting => 'Settings';
}

// Path: task
class _StringsTaskEn {
	_StringsTaskEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get title => 'Home';
	String get skip => 'Skip';
	String get follow => 'Follow';
	String get like => 'Like';
	String get noTask => 'No Tasks';
	late final _StringsTaskTipEn tip = _StringsTaskTipEn._(_root);
}

// Path: store
class _StringsStoreEn {
	_StringsStoreEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get title => 'Store';
	String get free => 'Free';
	String get follow => 'Followers';
	String get like => 'Likes';
	String get view => 'Views';
	String get share => 'Shares';
	String get retweet => 'Retweets';
	late final _StringsStoreAdEn ad = _StringsStoreAdEn._(_root);
	late final _StringsStoreChangeAccountEn changeAccount = _StringsStoreChangeAccountEn._(_root);
	late final _StringsStoreTipEn tip = _StringsStoreTipEn._(_root);
	late final _StringsStoreBuyEn buy = _StringsStoreBuyEn._(_root);
	late final _StringsStorePurchaseEn purchase = _StringsStorePurchaseEn._(_root);
	late final _StringsStoreNoticeEn notice = _StringsStoreNoticeEn._(_root);
}

// Path: coins
class _StringsCoinsEn {
	_StringsCoinsEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get empty => 'No History';
}

// Path: login
class _StringsLoginEn {
	_StringsLoginEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get confirm => 'Confirm';
	String username({required Object value}) => 'Enter your ${value} username';
	String get channel => 'Enter your Youtube channel link';
	String get publicUsername => '* Please keep your account public';
	String get publicChannel => '* Please keep your channel public';
	String get add => 'Add Account';
	String get hintUsername => 'username';
	String get hintChannel => 'channel link';
}

// Path: setting
class _StringsSettingEn {
	_StringsSettingEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get title => 'Settings';
	String get editor => 'Edit Profile';
	String get daily => 'Daily Check';
	String get wheel => 'Lucky Coins';
	String get account => 'Manage account';
	String get language => 'Language';
	String get orders => 'Orders';
	String get faq => 'FAQ';
	String get about => 'About';
	late final _StringsSettingShareEn share = _StringsSettingShareEn._(_root);
	String get rateUs => 'Rate us';
}

// Path: language
class _StringsLanguageEn {
	_StringsLanguageEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get title => 'Language';
	String get start => 'Start';
}

// Path: daily
class _StringsDailyEn {
	_StringsDailyEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get title => 'Daily Check';
	String get checkIn => 'Check In';
	late final _StringsDailyRulesEn rules = _StringsDailyRulesEn._(_root);
}

// Path: wheel
class _StringsWheelEn {
	_StringsWheelEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get title => 'Lucky Coins';
	late final _StringsWheelRulesEn rules = _StringsWheelRulesEn._(_root);
}

// Path: account
class _StringsAccountEn {
	_StringsAccountEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get title => 'Manage account';
	String get add => '+ Add Account';
	String get empty => 'No Account';
	late final _StringsAccountAlertEn alert = _StringsAccountAlertEn._(_root);
}

// Path: orders
class _StringsOrdersEn {
	_StringsOrdersEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get title => 'Orders';
	String get pending => 'Pending';
	String get processing => 'Processing';
	String get inProgress => 'In Progress';
	String get completed => 'Completed';
	String get partial => 'Partial';
	String get error => 'Error';
	String get canceled => 'Canceled';
	String get refunded => 'Refunded';
	String get empty => 'No Orders';
}

// Path: faq
class _StringsFaqEn {
	_StringsFaqEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get title => 'FAQ';
	List<dynamic> get values => [
		_StringsFaq0i0En._(_root),
		_StringsFaq0i1En._(_root),
		_StringsFaq0i2En._(_root),
		_StringsFaq0i3En._(_root),
		_StringsFaq0i4En._(_root),
		_StringsFaq0i5En._(_root),
		_StringsFaq0i6En._(_root),
		_StringsFaq0i7En._(_root),
		_StringsFaq0i8En._(_root),
	];
}

// Path: about
class _StringsAboutEn {
	_StringsAboutEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get title => 'About';
	String get contact => 'Contact us';
	String get service => 'Teams of Service';
	String get policy => 'Privacy Policy';
}

// Path: alert
class _StringsAlertEn {
	_StringsAlertEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get ok => 'OK';
	String get cancel => 'Cancel';
	String get confirm => 'Confirm';
}

// Path: toast
class _StringsToastEn {
	_StringsToastEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get unpurchase => 'Currently unavailable for purchas';
	String get purchasedNotFound => 'The current service cannot be purchased';
	String get payment => 'Payment successful';
	String get coinsNotEnough => 'Coins not enough!';
	String get received => 'Received successfully!';
	String get adError => 'Watching ads too often, please try again later!';
}

// Path: localNotification
class _StringsLocalNotificationEn {
	_StringsLocalNotificationEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get adTaskReady => 'A new advertising task is ready!';
}

// Path: task.tip
class _StringsTaskTipEn {
	_StringsTaskTipEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get title => '🎉  Tips';
	List<dynamic> get values => [
		({required Object value}) => '1. Click ${value} button',
		({required Object value}) => '2. Open ${value}',
		({required Object value}) => '3. Give ${value}',
		({required Object value}) => '4. Back to ${value}',
		'5. Get coins',
	];
	String get message => 'If unfollow/unlike, coins will be removed!';
}

// Path: store.ad
class _StringsStoreAdEn {
	_StringsStoreAdEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get title => 'AD Bouns';
	String get watch => 'Watch AD';
}

// Path: store.changeAccount
class _StringsStoreChangeAccountEn {
	_StringsStoreChangeAccountEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get title => 'Change Account';
	String get add => 'Add Account';
}

// Path: store.tip
class _StringsStoreTipEn {
	_StringsStoreTipEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	late final _StringsStoreTipFollowEn follow = _StringsStoreTipFollowEn._(_root);
	late final _StringsStoreTipLikeEn like = _StringsStoreTipLikeEn._(_root);
}

// Path: store.buy
class _StringsStoreBuyEn {
	_StringsStoreBuyEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get follow => 'Buy Followers';
	String get like => 'Buy Likes';
	String get view => 'Buy Views';
	String get share => 'Buy Shares';
	String get retweet => 'Buy Retweets';
	String get accountPublic => '* Please keep your account public';
	String get channelPublic => '* Please keep your channel public';
	String get tiktok => 'Your TikTok video link';
	String get twitter => 'Your Twitter tweet link';
	String get instagram => 'Your Instagram post link';
	String get youtube => 'Your Youtube channel link';
	String get pay => 'Pay';
}

// Path: store.purchase
class _StringsStorePurchaseEn {
	_StringsStorePurchaseEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get title => 'Purchase Success';
	String get message => 'Please wait for the order completion!';
}

// Path: store.notice
class _StringsStoreNoticeEn {
	_StringsStoreNoticeEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String message({required Object value}) => 'To receive ${value} free followers, please turn on the notifications.';
	String get turnOn => 'Turn On';
}

// Path: setting.share
class _StringsSettingShareEn {
	_StringsSettingShareEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get title => 'Share app';
	String message({required Object value}) => 'I found a treasure app that can get free tiktok followers & likes, install the app via the link below, we will both get ${value} coins!';
}

// Path: daily.rules
class _StringsDailyRulesEn {
	_StringsDailyRulesEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get title => 'Rules';
	List<String> get values => [
		'Check-in once every 24 hours;',
		'Interruptions check-in will be recalculated;',
	];
}

// Path: wheel.rules
class _StringsWheelRulesEn {
	_StringsWheelRulesEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get title => 'Rules';
	List<dynamic> get values => [
		({required Object value}) => 'Each draw consumes ${value} coins;',
		'Unlimited number of draws.',
	];
}

// Path: account.alert
class _StringsAccountAlertEn {
	_StringsAccountAlertEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get title => 'Delete Account';
	String get message => 'After deletion, you will not be able to use the account for related operations.';
}

// Path: faq.values.0
class _StringsFaq0i0En {
	_StringsFaq0i0En._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get title => '1. How to get started?';
	String get value => 'Just follow the page prompts to add your platform username, no password required, each platform has a corresponding prompt.';
}

// Path: faq.values.1
class _StringsFaq0i1En {
	_StringsFaq0i1En._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get title => '2. Is it safe for me to use?';
	String get value => 'Of course yes, we don\'t need your password, and we can\'t save your social app data because users are jumping to the official app to follow or do other things.';
}

// Path: faq.values.2
class _StringsFaq0i2En {
	_StringsFaq0i2En._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get title => '3. How does all this work?';
	String get value => 'The way it works is simple: your profile/videos are shown in our community that users freely decide if they want to follow/like you based on the content of your profile. In exchange of a like/follow they receive virtual coins that they can use to get followers/likes.';
}

// Path: faq.values.3
class _StringsFaq0i3En {
	_StringsFaq0i3En._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get title => '4. Followers and likes are real?';
	String get value => 'Of course, when you buy the relevant services, there are a large number of real users behind the service for you, and are operating on the official app, which you do not need to worry about.';
}

// Path: faq.values.4
class _StringsFaq0i4En {
	_StringsFaq0i4En._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get title => '5. How do I earn coins?';
	String get value => 'On the earn page, you can see the current list of tasks, click follow or like to jump to the corresponding app for action, please be careful not to cancel the follow or like, it will cause your rewards to be cancelled.';
}

// Path: faq.values.5
class _StringsFaq0i5En {
	_StringsFaq0i5En._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get title => '6. Why did the task fail?';
	String get value => 'Usually it\'s because you don\'t really follow or like, you should check your account.';
}

// Path: faq.values.6
class _StringsFaq0i6En {
	_StringsFaq0i6En._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get title => '7. How long will it take for my order to be completed?';
	List<String> get value => [
		'It depends on the volume of your order, normally, you will start getting the service immediately after placing the order and finish it within 24h, but it is impossible to give an exact time because of the large number of real users operating behind the scenes, it should be noted that the GOLDEN service is more rapid than the regular service.',
		'You get too much traffic in a short period of time will cause your account to become suspicious, so waiting patiently is the best way.',
	];
}

// Path: faq.values.7
class _StringsFaq0i7En {
	_StringsFaq0i7En._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get title => '8. What should I do after I place an order?';
	String get value => 'Please keep your account public after placing your order, and do not modify your username until your order is complete.';
}

// Path: faq.values.8
class _StringsFaq0i8En {
	_StringsFaq0i8En._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get title => '9. What if I have a problem?';
	String get value => 'You can contact us through the feedback in the app.';
}

// Path: store.tip.follow
class _StringsStoreTipFollowEn {
	_StringsStoreTipFollowEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get title => 'Followers & Golden Followers';
	List<String> get values => [
		'',
		'Followers',
		'Golden Followers',
		'Completion Time',
		'1-24 hours',
		'1-4 hours',
		'Followers Quality',
		'Real',
		'Real & Active',
		'Followers Drop Rate',
		'8-15%',
		'0-3%',
		'Compensation Time',
		'/',
		'Compensate within 7 days',
	];
}

// Path: store.tip.like
class _StringsStoreTipLikeEn {
	_StringsStoreTipLikeEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get title => 'Likes & Golden Likes';
	List<String> get values => [
		'',
		'Likes',
		'Golden Likes',
		'Completion Time',
		'1-24 hours',
		'1-4 hours',
		'Likes Drop Rate',
		'8-15%',
		'0-3%',
		'Compensation Time',
		'/',
		'Compensate within 7 days',
	];
}

// Path: <root>
class _StringsAr extends _StringsEn {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsAr.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.ar,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ar>.
	@override final TranslationMetadata<AppLocale, _StringsEn> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	@override late final _StringsAr _root = this; // ignore: unused_field

	// Translations
	@override late final _StringsOnlyTitleAr onlyTitle = _StringsOnlyTitleAr._(_root);
	@override late final _StringsUniversalAr universal = _StringsUniversalAr._(_root);
	@override late final _StringsTabbarAr tabbar = _StringsTabbarAr._(_root);
	@override late final _StringsTaskAr task = _StringsTaskAr._(_root);
	@override late final _StringsStoreAr store = _StringsStoreAr._(_root);
	@override late final _StringsCoinsAr coins = _StringsCoinsAr._(_root);
	@override late final _StringsLoginAr login = _StringsLoginAr._(_root);
	@override late final _StringsSettingAr setting = _StringsSettingAr._(_root);
	@override late final _StringsLanguageAr language = _StringsLanguageAr._(_root);
	@override late final _StringsDailyAr daily = _StringsDailyAr._(_root);
	@override late final _StringsWheelAr wheel = _StringsWheelAr._(_root);
	@override late final _StringsAccountAr account = _StringsAccountAr._(_root);
	@override late final _StringsOrdersAr orders = _StringsOrdersAr._(_root);
	@override late final _StringsFaqAr faq = _StringsFaqAr._(_root);
	@override late final _StringsAboutAr about = _StringsAboutAr._(_root);
	@override late final _StringsAlertAr alert = _StringsAlertAr._(_root);
	@override late final _StringsToastAr toast = _StringsToastAr._(_root);
	@override late final _StringsLocalNotificationAr localNotification = _StringsLocalNotificationAr._(_root);
}

// Path: onlyTitle
class _StringsOnlyTitleAr extends _StringsOnlyTitleEn {
	_StringsOnlyTitleAr._(_StringsAr root) : this._root = root, super._(root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get contact => 'اتصل بنا';
}

// Path: universal
class _StringsUniversalAr extends _StringsUniversalEn {
	_StringsUniversalAr._(_StringsAr root) : this._root = root, super._(root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get coins => 'ذهب';
	@override String get requestError => 'الرجاء معاودة المحاولة في وقت لاحق';
	@override String get add => 'إنشاء حساب';
}

// Path: tabbar
class _StringsTabbarAr extends _StringsTabbarEn {
	_StringsTabbarAr._(_StringsAr root) : this._root = root, super._(root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get task => 'الصفحة الأمامية';
	@override String get store => 'متجر';
	@override String get setting => 'اقامة';
}

// Path: task
class _StringsTaskAr extends _StringsTaskEn {
	_StringsTaskAr._(_StringsAr root) : this._root = root, super._(root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'الصفحة الأمامية';
	@override String get skip => 'القفز فوق';
	@override String get follow => 'قم بالتركيز على';
	@override String get like => 'مثل';
	@override String get noTask => 'لا مهمة';
	@override late final _StringsTaskTipAr tip = _StringsTaskTipAr._(_root);
}

// Path: store
class _StringsStoreAr extends _StringsStoreEn {
	_StringsStoreAr._(_StringsAr root) : this._root = root, super._(root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'متجر';
	@override String get free => 'مجانا';
	@override String get follow => 'متابعون';
	@override String get like => 'مثل';
	@override String get view => 'راقب';
	@override String get share => 'شارك';
	@override String get retweet => 'إعادة تغريد';
	@override late final _StringsStoreAdAr ad = _StringsStoreAdAr._(_root);
	@override late final _StringsStoreChangeAccountAr changeAccount = _StringsStoreChangeAccountAr._(_root);
	@override late final _StringsStoreTipAr tip = _StringsStoreTipAr._(_root);
	@override late final _StringsStoreBuyAr buy = _StringsStoreBuyAr._(_root);
	@override late final _StringsStorePurchaseAr purchase = _StringsStorePurchaseAr._(_root);
	@override late final _StringsStoreNoticeAr notice = _StringsStoreNoticeAr._(_root);
}

// Path: coins
class _StringsCoinsAr extends _StringsCoinsEn {
	_StringsCoinsAr._(_StringsAr root) : this._root = root, super._(root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get empty => 'لا تاريخ';
}

// Path: login
class _StringsLoginAr extends _StringsLoginEn {
	_StringsLoginAr._(_StringsAr root) : this._root = root, super._(root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get confirm => 'تؤكد';
	@override String username({required Object value}) => 'أدخل اسم المستخدم ${value} الخاص بك';
	@override String get channel => 'أدخل رابط قناة YouTube الخاص بك';
	@override String get publicUsername => '* يرجى الحفاظ على حسابك مفتوح';
	@override String get publicChannel => '* يرجى الحفاظ على قناتك مفتوحة';
	@override String get add => 'إنشاء حساب';
	@override String get hintUsername => 'اسم االمستخدم';
	@override String get hintChannel => 'رابط القناة';
}

// Path: setting
class _StringsSettingAr extends _StringsSettingEn {
	_StringsSettingAr._(_StringsAr root) : this._root = root, super._(root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'اقامة';
	@override String get editor => 'تعديل المعلومات';
	@override String get daily => 'تسجيل الدخول';
	@override String get wheel => 'عجلة الحظ';
	@override String get account => 'إدارة الحساب';
	@override String get language => 'لغة';
	@override String get orders => 'ترتيب';
	@override String get faq => 'مشكلة شائعة';
	@override String get about => 'حول';
	@override late final _StringsSettingShareAr share = _StringsSettingShareAr._(_root);
	@override String get rateUs => 'تقييمنا';
}

// Path: language
class _StringsLanguageAr extends _StringsLanguageEn {
	_StringsLanguageAr._(_StringsAr root) : this._root = root, super._(root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'اختر لغة';
	@override String get start => 'بداية';
}

// Path: daily
class _StringsDailyAr extends _StringsDailyEn {
	_StringsDailyAr._(_StringsAr root) : this._root = root, super._(root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'تسجيل الدخول';
	@override String get checkIn => 'تسجيل الدخول';
	@override late final _StringsDailyRulesAr rules = _StringsDailyRulesAr._(_root);
}

// Path: wheel
class _StringsWheelAr extends _StringsWheelEn {
	_StringsWheelAr._(_StringsAr root) : this._root = root, super._(root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'عجلة الحظ';
	@override late final _StringsWheelRulesAr rules = _StringsWheelRulesAr._(_root);
}

// Path: account
class _StringsAccountAr extends _StringsAccountEn {
	_StringsAccountAr._(_StringsAr root) : this._root = root, super._(root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'إدارة الحساب';
	@override String get add => '+ إضافة رقم حساب';
	@override String get empty => 'لا حساب';
	@override late final _StringsAccountAlertAr alert = _StringsAccountAlertAr._(_root);
}

// Path: orders
class _StringsOrdersAr extends _StringsOrdersEn {
	_StringsOrdersAr._(_StringsAr root) : this._root = root, super._(root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ترتيب';
	@override String get pending => 'طابور';
	@override String get processing => 'يعالج';
	@override String get inProgress => 'يتم المعالجة';
	@override String get completed => 'منجز';
	@override String get partial => 'الانتهاء الجزئي';
	@override String get error => 'خطأ';
	@override String get canceled => 'ألغيت';
	@override String get refunded => 'استرداد';
	@override String get empty => 'لا طلب';
}

// Path: faq
class _StringsFaqAr extends _StringsFaqEn {
	_StringsFaqAr._(_StringsAr root) : this._root = root, super._(root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'مشكلة شائعة';
	@override List<dynamic> get values => [
		_StringsFaq0i0Ar._(_root),
		_StringsFaq0i1Ar._(_root),
		_StringsFaq0i2Ar._(_root),
		_StringsFaq0i3Ar._(_root),
		_StringsFaq0i4Ar._(_root),
		_StringsFaq0i5Ar._(_root),
		_StringsFaq0i6Ar._(_root),
		_StringsFaq0i7Ar._(_root),
		_StringsFaq0i8Ar._(_root),
	];
}

// Path: about
class _StringsAboutAr extends _StringsAboutEn {
	_StringsAboutAr._(_StringsAr root) : this._root = root, super._(root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'حول';
	@override String get contact => 'اتصل بنا';
	@override String get service => 'شروط الخدمة';
	@override String get policy => 'سياسة الخصوصية';
}

// Path: alert
class _StringsAlertAr extends _StringsAlertEn {
	_StringsAlertAr._(_StringsAr root) : this._root = root, super._(root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get ok => 'نعم';
	@override String get cancel => 'يلغي';
	@override String get confirm => 'تؤكد';
}

// Path: toast
class _StringsToastAr extends _StringsToastEn {
	_StringsToastAr._(_StringsAr root) : this._root = root, super._(root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get unpurchase => 'لا يمكن الشراء حاليا';
	@override String get purchasedNotFound => 'لا يمكن شراء الخدمة الحالية';
	@override String get payment => 'الدفع ناجح!';
	@override String get coinsNotEnough => 'الذهب غير كاف!';
	@override String get received => 'إيصال ناجح!';
	@override String get adError => 'مشاهدة الإعلانات في كثير من الأحيان ، يرجى المحاولة مرة أخرى لاحقًا!';
}

// Path: localNotification
class _StringsLocalNotificationAr extends _StringsLocalNotificationEn {
	_StringsLocalNotificationAr._(_StringsAr root) : this._root = root, super._(root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get adTaskReady => 'مهمة الإعلان الجديدة جاهزة!';
}

// Path: task.tip
class _StringsTaskTipAr extends _StringsTaskTipEn {
	_StringsTaskTipAr._(_StringsAr root) : this._root = root, super._(root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'مستعجل';
	@override List<dynamic> get values => [
		({required Object value}) => '1. انقر فوق الزر ${value}',
		({required Object value}) => '2. فتح ${value}',
		({required Object value}) => '${value}. ${value}',
		({required Object value}) => '4. العودة إلى ${value}',
		'5. احصل على عملات ذهبية',
	];
	@override String get message => 'إذا ألغت انتباهك/مثل ، فسيتم إزالة العملات الذهبية!';
}

// Path: store.ad
class _StringsStoreAdAr extends _StringsStoreAdEn {
	_StringsStoreAdAr._(_StringsAr root) : this._root = root, super._(root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'مكافأة الإعلان';
	@override String get watch => 'مشاهدة إعلان';
}

// Path: store.changeAccount
class _StringsStoreChangeAccountAr extends _StringsStoreChangeAccountEn {
	_StringsStoreChangeAccountAr._(_StringsAr root) : this._root = root, super._(root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'تعديل الحساب';
	@override String get add => 'إنشاء حساب';
}

// Path: store.tip
class _StringsStoreTipAr extends _StringsStoreTipEn {
	_StringsStoreTipAr._(_StringsAr root) : this._root = root, super._(root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override late final _StringsStoreTipFollowAr follow = _StringsStoreTipFollowAr._(_root);
	@override late final _StringsStoreTipLikeAr like = _StringsStoreTipLikeAr._(_root);
}

// Path: store.buy
class _StringsStoreBuyAr extends _StringsStoreBuyEn {
	_StringsStoreBuyAr._(_StringsAr root) : this._root = root, super._(root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get follow => 'مشتر';
	@override String get like => 'شراء بعض الثناء';
	@override String get view => 'شراء ومشاهدة';
	@override String get share => 'شراء ومشاركة';
	@override String get retweet => 'شراء التحويل';
	@override String get accountPublic => '* يرجى الحفاظ على حسابك مفتوح';
	@override String get channelPublic => '* يرجى الحفاظ على قناتك مفتوحة';
	@override String get tiktok => 'رابط فيديو Tiktok الخاص بك';
	@override String get twitter => 'رابط تغريدة Twitter الخاص بك';
	@override String get instagram => 'رابط نشر Instagram الخاص بك';
	@override String get youtube => 'رابط قناة يوتيوب الخاص بك';
	@override String get pay => 'يدفع';
}

// Path: store.purchase
class _StringsStorePurchaseAr extends _StringsStorePurchaseEn {
	_StringsStorePurchaseAr._(_StringsAr root) : this._root = root, super._(root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'الدفع ناجح';
	@override String get message => 'يرجى انتظار إكمال الطلب!';
}

// Path: store.notice
class _StringsStoreNoticeAr extends _StringsStoreNoticeEn {
	_StringsStoreNoticeAr._(_StringsAr root) : this._root = root, super._(root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String message({required Object value}) => 'للحصول على ${value} متابعين مجانيين ، افتح إخطار التطبيق أولاً.';
	@override String get turnOn => 'فتح';
}

// Path: setting.share
class _StringsSettingShareAr extends _StringsSettingShareEn {
	_StringsSettingShareAr._(_StringsAr root) : this._root = root, super._(root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'شارك التطبيق';
	@override String message({required Object value}) => 'لقد وجدت تطبيق كنز يمكن أن يحصل على عشاق Tiktok مجانًا ويعجب. من خلال تثبيت الارتباط التالي ، سنحصل على ${value} عملات ذهبية!';
}

// Path: daily.rules
class _StringsDailyRulesAr extends _StringsDailyRulesEn {
	_StringsDailyRulesAr._(_StringsAr root) : this._root = root, super._(root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'قاعدة';
	@override List<String> get values => [
		'يمكنك تسجيل الدخول كل 24 ساعة ؛',
		'بعد الإشارة -في انقطاع ، ستبدأ من جديد.',
	];
}

// Path: wheel.rules
class _StringsWheelRulesAr extends _StringsWheelRulesEn {
	_StringsWheelRulesAr._(_StringsAr root) : this._root = root, super._(root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'قاعدة';
	@override List<dynamic> get values => [
		({required Object value}) => 'كل يانصيب سيكلف ${value} عملات ذهبية.',
		'عدد السحب غير محدود.',
	];
}

// Path: account.alert
class _StringsAccountAlertAr extends _StringsAccountAlertEn {
	_StringsAccountAlertAr._(_StringsAr root) : this._root = root, super._(root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'حذف الحساب';
	@override String get message => 'بعد الحذف ، لن تتمكن من استخدام الحساب للعمليات ذات الصلة.';
}

// Path: faq.values.0
class _StringsFaq0i0Ar extends _StringsFaq0i0En {
	_StringsFaq0i0Ar._(_StringsAr root) : this._root = root, super._(root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get title => '1. كيف تبدأ؟';
	@override String get value => 'ما عليك سوى إضافة اسم مستخدم النظام الأساسي الخاص بك وفقًا لمطالبات الصفحة ، ولا كلمة مرور ، لكل منصة موجه مطابق.';
}

// Path: faq.values.1
class _StringsFaq0i1Ar extends _StringsFaq0i1En {
	_StringsFaq0i1Ar._(_StringsAr root) : this._root = root, super._(root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get title => '2. هل من الآمن استخدامه؟';
	@override String get value => 'بالطبع ، إنه آمن. لا نحتاج إلى كلمة مرورك ، ولا يمكننا حفظ بيانات التطبيق الاجتماعي الخاص بك لأنه يقفز إلى التطبيق الرسمي للانتباه إلى أشياء أخرى أو القيام بها.';
}

// Path: faq.values.2
class _StringsFaq0i2Ar extends _StringsFaq0i2En {
	_StringsFaq0i2Ar._(_StringsAr root) : this._root = root, super._(root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get title => '3. كيف يعمل هذا كل شيء؟';
	@override String get value => 'طريقة العمل بسيطة: يتم عرض بياناتك/الفيديو الشخصي في مجتمعنا. يقرر المستخدمون بحرية ما إذا كان ينبغي عليهم الانتباه إلى/مثلك بناءً على محتوى بياناتك الشخصية.كتبادل يحب/متابعة ، سيحصلون على عملات ذهبية ويمكن استخدامها للحصول على متابعين/عشاق.';
}

// Path: faq.values.3
class _StringsFaq0i3Ar extends _StringsFaq0i3En {
	_StringsFaq0i3Ar._(_StringsAr root) : this._root = root, super._(root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get title => '4. هل الاهتمام ومثل حقيقي؟';
	@override String get value => 'بالطبع ، إنه حقيقي. عندما تشتري الخدمات ذات الصلة ، هناك الكثير من المستخدمين الحقيقيين وراءها لتزويدك بالخدمات ، ويتم تشغيله على التطبيق الرسمي. لا داعي للقلق بشأنه.';
}

// Path: faq.values.4
class _StringsFaq0i4Ar extends _StringsFaq0i4En {
	_StringsFaq0i4Ar._(_StringsAr root) : this._root = root, super._(root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get title => '5. كيف يمكنني كسب العملات الذهبية؟';
	@override String get value => 'في الصفحة الرئيسية ، يمكنك رؤية قائمة المهام ، والنقر لمتابعة أو إعجاب ، والقفز إلى التطبيق المقابل للتشغيل. يرجى توخي الحذر من عدم إلغاء انتباهك أو مثل ، مما سيؤدي إلى إلغاء مكافأتك.';
}

// Path: faq.values.5
class _StringsFaq0i5Ar extends _StringsFaq0i5En {
	_StringsFaq0i5Ar._(_StringsAr root) : this._root = root, super._(root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get title => '6. لماذا تفشل المهام؟';
	@override String get value => 'هذا عادةً لأنك لا تهتم حقًا أو تعجبك. يجب عليك التحقق من حسابك أولاً.';
}

// Path: faq.values.6
class _StringsFaq0i6Ar extends _StringsFaq0i6En {
	_StringsFaq0i6Ar._(_StringsAr root) : this._root = root, super._(root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get title => '7. كم من الوقت يستغرق لإكمال طلبي؟';
	@override List<String> get value => [
		'يعتمد هذا على حجم طلبك. عادة ، ستبدأ في الحصول على الخدمة فورًا بعد تقديم الطلب وإكماله في غضون 24 ساعة ، لكن لا يمكننا إعطاء وقت دقيق ، لأن هناك عددًا كبيرًا من المستخدمين الحقيقيين الذين يعملون خلف الظهر. يُلاحظ أن الخدمة الذهبية أسرع من الخدمات العادية.',
		'الحصول على الكثير من حركة المرور في وقت قصير سيجعل حسابك مشبوهًا ، لذا فإن الانتظار بصبر هو أفضل طريقة.',
	];
}

// Path: faq.values.7
class _StringsFaq0i7Ar extends _StringsFaq0i7En {
	_StringsFaq0i7Ar._(_StringsAr root) : this._root = root, super._(root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get title => '8. ماذا علي أن أفعل بعد الطلب؟';
	@override String get value => 'بعد تقديم طلبك ، احتفظ بحسابك. لا تقم بتعديل اسم المستخدم الخاص بك قبل اكتمال الطلب.';
}

// Path: faq.values.8
class _StringsFaq0i8Ar extends _StringsFaq0i8En {
	_StringsFaq0i8Ar._(_StringsAr root) : this._root = root, super._(root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get title => '9. ماذا لو كان لدي مشكلة؟';
	@override String get value => 'يمكنك الاتصال بنا من خلال التعليقات في التطبيق.';
}

// Path: store.tip.follow
class _StringsStoreTipFollowAr extends _StringsStoreTipFollowEn {
	_StringsStoreTipFollowAr._(_StringsAr root) : this._root = root, super._(root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'أتباع وأتباع كبير';
	@override List<String> get values => [
		'',
		'متابعون',
		'أتباع كبير',
		'الوقت الكامل',
		'1-24 ساعة',
		'1-4 ساعات',
		'وقت التعويض',
		'/',
		'التعويض في غضون 7 أيام',
		'جودة أتباع',
		'حقا',
		'حقيقي ونشط',
		'معدل انخفاض',
		'8-15 ٪',
		'0-3 ٪',
	];
}

// Path: store.tip.like
class _StringsStoreTipLikeAr extends _StringsStoreTipLikeEn {
	_StringsStoreTipLikeAr._(_StringsAr root) : this._root = root, super._(root);

	@override final _StringsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'مثل الثناء المتقدم';
	@override List<String> get values => [
		'',
		'مثل',
		'الثناء عالية المستوى',
		'الوقت الكامل',
		'1-24 ساعة',
		'1-4 ساعات',
		'وقت التعويض',
		'/',
		'التعويض في غضون 7 أيام',
		'معدل انخفاض',
		'8-15 ٪',
		'0-3 ٪',
	];
}

// Path: <root>
class _StringsBn extends _StringsEn {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsBn.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.bn,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <bn>.
	@override final TranslationMetadata<AppLocale, _StringsEn> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	@override late final _StringsBn _root = this; // ignore: unused_field

	// Translations
	@override late final _StringsOnlyTitleBn onlyTitle = _StringsOnlyTitleBn._(_root);
	@override late final _StringsUniversalBn universal = _StringsUniversalBn._(_root);
	@override late final _StringsTabbarBn tabbar = _StringsTabbarBn._(_root);
	@override late final _StringsTaskBn task = _StringsTaskBn._(_root);
	@override late final _StringsStoreBn store = _StringsStoreBn._(_root);
	@override late final _StringsCoinsBn coins = _StringsCoinsBn._(_root);
	@override late final _StringsLoginBn login = _StringsLoginBn._(_root);
	@override late final _StringsSettingBn setting = _StringsSettingBn._(_root);
	@override late final _StringsLanguageBn language = _StringsLanguageBn._(_root);
	@override late final _StringsDailyBn daily = _StringsDailyBn._(_root);
	@override late final _StringsWheelBn wheel = _StringsWheelBn._(_root);
	@override late final _StringsAccountBn account = _StringsAccountBn._(_root);
	@override late final _StringsOrdersBn orders = _StringsOrdersBn._(_root);
	@override late final _StringsFaqBn faq = _StringsFaqBn._(_root);
	@override late final _StringsAboutBn about = _StringsAboutBn._(_root);
	@override late final _StringsAlertBn alert = _StringsAlertBn._(_root);
	@override late final _StringsToastBn toast = _StringsToastBn._(_root);
	@override late final _StringsLocalNotificationBn localNotification = _StringsLocalNotificationBn._(_root);
}

// Path: onlyTitle
class _StringsOnlyTitleBn extends _StringsOnlyTitleEn {
	_StringsOnlyTitleBn._(_StringsBn root) : this._root = root, super._(root);

	@override final _StringsBn _root; // ignore: unused_field

	// Translations
	@override String get contact => 'যোগাযোগ করুন';
}

// Path: universal
class _StringsUniversalBn extends _StringsUniversalEn {
	_StringsUniversalBn._(_StringsBn root) : this._root = root, super._(root);

	@override final _StringsBn _root; // ignore: unused_field

	// Translations
	@override String get coins => 'সোনার';
	@override String get requestError => 'অনুগ্রহ করে একটু পরে আবার চেষ্টা করুন';
	@override String get add => 'হিসাব যোগ করা';
}

// Path: tabbar
class _StringsTabbarBn extends _StringsTabbarEn {
	_StringsTabbarBn._(_StringsBn root) : this._root = root, super._(root);

	@override final _StringsBn _root; // ignore: unused_field

	// Translations
	@override String get task => 'প্রথম পৃষ্ঠা';
	@override String get store => 'দোকান';
	@override String get setting => 'সেট আপ';
}

// Path: task
class _StringsTaskBn extends _StringsTaskEn {
	_StringsTaskBn._(_StringsBn root) : this._root = root, super._(root);

	@override final _StringsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'প্রথম পৃষ্ঠা';
	@override String get skip => 'লাফিয়ে উঠুন';
	@override String get follow => 'লক্ষ্য করা';
	@override String get like => 'যেমন';
	@override String get noTask => 'কোন কাজ';
	@override late final _StringsTaskTipBn tip = _StringsTaskTipBn._(_root);
}

// Path: store
class _StringsStoreBn extends _StringsStoreEn {
	_StringsStoreBn._(_StringsBn root) : this._root = root, super._(root);

	@override final _StringsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'দোকান';
	@override String get free => 'বিনামূল্যে';
	@override String get follow => 'অনুগামী';
	@override String get like => 'যেমন';
	@override String get view => 'ঘড়ি';
	@override String get share => 'শেয়ার';
	@override String get retweet => 'পুনঃটুইট';
	@override late final _StringsStoreAdBn ad = _StringsStoreAdBn._(_root);
	@override late final _StringsStoreChangeAccountBn changeAccount = _StringsStoreChangeAccountBn._(_root);
	@override late final _StringsStoreTipBn tip = _StringsStoreTipBn._(_root);
	@override late final _StringsStoreBuyBn buy = _StringsStoreBuyBn._(_root);
	@override late final _StringsStorePurchaseBn purchase = _StringsStorePurchaseBn._(_root);
	@override late final _StringsStoreNoticeBn notice = _StringsStoreNoticeBn._(_root);
}

// Path: coins
class _StringsCoinsBn extends _StringsCoinsEn {
	_StringsCoinsBn._(_StringsBn root) : this._root = root, super._(root);

	@override final _StringsBn _root; // ignore: unused_field

	// Translations
	@override String get empty => 'কোনও ইতিহাস নেই';
}

// Path: login
class _StringsLoginBn extends _StringsLoginEn {
	_StringsLoginBn._(_StringsBn root) : this._root = root, super._(root);

	@override final _StringsBn _root; // ignore: unused_field

	// Translations
	@override String get confirm => 'নিশ্চিত করুন';
	@override String username({required Object value}) => 'আপনার ${value} ব্যবহারকারীর নাম লিখুন';
	@override String get channel => 'আপনার ইউটিউব চ্যানেল লিঙ্ক লিখুন';
	@override String get publicUsername => '* দয়া করে আপনার অ্যাকাউন্টটি খোলা রাখুন';
	@override String get publicChannel => '* দয়া করে আপনার চ্যানেলটি খোলা রাখুন';
	@override String get add => 'হিসাব যোগ করা';
	@override String get hintUsername => 'ব্যবহারকারীর নাম';
	@override String get hintChannel => 'চ্যানেল লিঙ্ক';
}

// Path: setting
class _StringsSettingBn extends _StringsSettingEn {
	_StringsSettingBn._(_StringsBn root) : this._root = root, super._(root);

	@override final _StringsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'সেট আপ';
	@override String get editor => 'তথ্য সম্পাদনা করুন';
	@override String get daily => 'সাইন ইন করুন';
	@override String get wheel => 'ভাগ্যের চাকা';
	@override String get account => 'জমাখরচ ব্যাবস্থাপনার হিসাব';
	@override String get language => 'ভাষা';
	@override String get orders => 'অর্ডার';
	@override String get faq => 'সাধারন সমস্যা';
	@override String get about => 'সম্পর্কিত';
	@override late final _StringsSettingShareBn share = _StringsSettingShareBn._(_root);
	@override String get rateUs => 'আমাদের মূল্যায়ন';
}

// Path: language
class _StringsLanguageBn extends _StringsLanguageEn {
	_StringsLanguageBn._(_StringsBn root) : this._root = root, super._(root);

	@override final _StringsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'একটি ভাষা চয়ন করুন';
	@override String get start => 'শুরু';
}

// Path: daily
class _StringsDailyBn extends _StringsDailyEn {
	_StringsDailyBn._(_StringsBn root) : this._root = root, super._(root);

	@override final _StringsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'সাইন ইন করুন';
	@override String get checkIn => 'সাইন ইন করুন';
	@override late final _StringsDailyRulesBn rules = _StringsDailyRulesBn._(_root);
}

// Path: wheel
class _StringsWheelBn extends _StringsWheelEn {
	_StringsWheelBn._(_StringsBn root) : this._root = root, super._(root);

	@override final _StringsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ভাগ্যের চাকা';
	@override late final _StringsWheelRulesBn rules = _StringsWheelRulesBn._(_root);
}

// Path: account
class _StringsAccountBn extends _StringsAccountEn {
	_StringsAccountBn._(_StringsBn root) : this._root = root, super._(root);

	@override final _StringsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'জমাখরচ ব্যাবস্থাপনার হিসাব';
	@override String get add => '+ অ্যাকাউন্ট নম্বর যুক্ত করুন';
	@override String get empty => 'কোন অ্যাকাউন্ট';
	@override late final _StringsAccountAlertBn alert = _StringsAccountAlertBn._(_root);
}

// Path: orders
class _StringsOrdersBn extends _StringsOrdersEn {
	_StringsOrdersBn._(_StringsBn root) : this._root = root, super._(root);

	@override final _StringsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'অর্ডার';
	@override String get pending => 'কিউ';
	@override String get processing => 'প্রক্রিয়াজাতকরণ';
	@override String get inProgress => 'প্রক্রিয়াজাতকরণ';
	@override String get completed => 'সম্পূর্ণ';
	@override String get partial => 'আংশিক সমাপ্তি';
	@override String get error => 'ভুল';
	@override String get canceled => 'বাতিল';
	@override String get refunded => 'ফেরত দেওয়া';
	@override String get empty => 'কোন নির্দেশ নেই';
}

// Path: faq
class _StringsFaqBn extends _StringsFaqEn {
	_StringsFaqBn._(_StringsBn root) : this._root = root, super._(root);

	@override final _StringsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'সাধারন সমস্যা';
	@override List<dynamic> get values => [
		_StringsFaq0i0Bn._(_root),
		_StringsFaq0i1Bn._(_root),
		_StringsFaq0i2Bn._(_root),
		_StringsFaq0i3Bn._(_root),
		_StringsFaq0i4Bn._(_root),
		_StringsFaq0i5Bn._(_root),
		_StringsFaq0i6Bn._(_root),
		_StringsFaq0i7Bn._(_root),
		_StringsFaq0i8Bn._(_root),
	];
}

// Path: about
class _StringsAboutBn extends _StringsAboutEn {
	_StringsAboutBn._(_StringsBn root) : this._root = root, super._(root);

	@override final _StringsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'সম্পর্কিত';
	@override String get contact => 'যোগাযোগ করুন';
	@override String get service => 'সেবা পাবার শর্ত';
	@override String get policy => 'গোপনীয়তা নীতি';
}

// Path: alert
class _StringsAlertBn extends _StringsAlertEn {
	_StringsAlertBn._(_StringsBn root) : this._root = root, super._(root);

	@override final _StringsBn _root; // ignore: unused_field

	// Translations
	@override String get ok => 'ঠিক আছে';
	@override String get cancel => 'বাতিল';
	@override String get confirm => 'নিশ্চিত করুন';
}

// Path: toast
class _StringsToastBn extends _StringsToastEn {
	_StringsToastBn._(_StringsBn root) : this._root = root, super._(root);

	@override final _StringsBn _root; // ignore: unused_field

	// Translations
	@override String get unpurchase => 'বর্তমানে কিনতে পারবেন না';
	@override String get purchasedNotFound => 'বর্তমান পরিষেবা কিনতে পারবেন না';
	@override String get payment => 'পেমেন্ট সফল!';
	@override String get coinsNotEnough => 'স্বর্ণ অপর্যাপ্ত!';
	@override String get received => 'সফল রসিদ!';
	@override String get adError => 'বিজ্ঞাপনগুলি প্রায়শই দেখা, দয়া করে পরে আবার চেষ্টা করুন!';
}

// Path: localNotification
class _StringsLocalNotificationBn extends _StringsLocalNotificationEn {
	_StringsLocalNotificationBn._(_StringsBn root) : this._root = root, super._(root);

	@override final _StringsBn _root; // ignore: unused_field

	// Translations
	@override String get adTaskReady => 'নতুন বিজ্ঞাপনের কাজ প্রস্তুত!';
}

// Path: task.tip
class _StringsTaskTipBn extends _StringsTaskTipEn {
	_StringsTaskTipBn._(_StringsBn root) : this._root = root, super._(root);

	@override final _StringsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'শীঘ্র';
	@override List<dynamic> get values => [
		({required Object value}) => '1. ${value} বোতাম ক্লিক করুন',
		({required Object value}) => '2. খোলা ${value}',
		({required Object value}) => '${value}. ${value}',
		({required Object value}) => '4. ফিরে ${value}',
		'5. সোনার কয়েন পান',
	];
	@override String get message => 'আপনি যদি আপনার মনোযোগ/পছন্দ বাতিল করেন তবে সোনার মুদ্রাগুলি সরানো হবে!';
}

// Path: store.ad
class _StringsStoreAdBn extends _StringsStoreAdEn {
	_StringsStoreAdBn._(_StringsBn root) : this._root = root, super._(root);

	@override final _StringsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'বিজ্ঞাপন পুরষ্কার';
	@override String get watch => 'একটি বিজ্ঞাপন দেখুন';
}

// Path: store.changeAccount
class _StringsStoreChangeAccountBn extends _StringsStoreChangeAccountEn {
	_StringsStoreChangeAccountBn._(_StringsBn root) : this._root = root, super._(root);

	@override final _StringsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'অ্যাকাউন্টটি সংশোধন করুন';
	@override String get add => 'হিসাব যোগ করা';
}

// Path: store.tip
class _StringsStoreTipBn extends _StringsStoreTipEn {
	_StringsStoreTipBn._(_StringsBn root) : this._root = root, super._(root);

	@override final _StringsBn _root; // ignore: unused_field

	// Translations
	@override late final _StringsStoreTipFollowBn follow = _StringsStoreTipFollowBn._(_root);
	@override late final _StringsStoreTipLikeBn like = _StringsStoreTipLikeBn._(_root);
}

// Path: store.buy
class _StringsStoreBuyBn extends _StringsStoreBuyEn {
	_StringsStoreBuyBn._(_StringsBn root) : this._root = root, super._(root);

	@override final _StringsBn _root; // ignore: unused_field

	// Translations
	@override String get follow => 'ক্রেতা';
	@override String get like => 'কিছু প্রশংসা কিনুন';
	@override String get view => 'কিনুন এবং দেখুন';
	@override String get share => 'কিনুন এবং ভাগ করুন';
	@override String get retweet => 'একটি স্থানান্তর কিনুন';
	@override String get accountPublic => '* দয়া করে আপনার অ্যাকাউন্টটি খোলা রাখুন';
	@override String get channelPublic => '* দয়া করে আপনার চ্যানেলটি খোলা রাখুন';
	@override String get tiktok => 'আপনার টিকটোক ভিডিও লিঙ্ক';
	@override String get twitter => 'আপনার টুইটার টুইট লিঙ্ক';
	@override String get instagram => 'আপনার ইনস্টাগ্রাম পোস্ট লিঙ্ক';
	@override String get youtube => 'আপনার ইউটিউব চ্যানেল লিঙ্ক';
	@override String get pay => 'পে';
}

// Path: store.purchase
class _StringsStorePurchaseBn extends _StringsStorePurchaseEn {
	_StringsStorePurchaseBn._(_StringsBn root) : this._root = root, super._(root);

	@override final _StringsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'পেমেন্ট সফল';
	@override String get message => 'অর্ডার সম্পূর্ণ করার জন্য অপেক্ষা করুন!';
}

// Path: store.notice
class _StringsStoreNoticeBn extends _StringsStoreNoticeEn {
	_StringsStoreNoticeBn._(_StringsBn root) : this._root = root, super._(root);

	@override final _StringsBn _root; // ignore: unused_field

	// Translations
	@override String message({required Object value}) => '${value} টি নিখরচায় অনুসরণকারী পেতে প্রথমে অ্যাপ্লিকেশন বিজ্ঞপ্তিটি খুলুন।';
	@override String get turnOn => 'খোলা';
}

// Path: setting.share
class _StringsSettingShareBn extends _StringsSettingShareEn {
	_StringsSettingShareBn._(_StringsBn root) : this._root = root, super._(root);

	@override final _StringsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'অ্যাপ্লিকেশন ভাগ করা';
	@override String message({required Object value}) => 'আমি একটি ট্রেজার অ্যাপ্লিকেশন পেয়েছি যা বিনামূল্যে টিকটোক অনুরাগী এবং পছন্দগুলি পেতে পারে Following নিম্নলিখিত লিঙ্ক ইনস্টলেশনটির মাধ্যমে আমরা ${value} টি সোনার কয়েন পাব!';
}

// Path: daily.rules
class _StringsDailyRulesBn extends _StringsDailyRulesEn {
	_StringsDailyRulesBn._(_StringsBn root) : this._root = root, super._(root);

	@override final _StringsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'নিয়ম';
	@override List<String> get values => [
		'আপনি প্রতি 24 ঘন্টা সাইন ইন করতে পারেন;',
		'সাইন -বাধা দেওয়ার পরে, এটি আবার শুরু হবে।',
	];
}

// Path: wheel.rules
class _StringsWheelRulesBn extends _StringsWheelRulesEn {
	_StringsWheelRulesBn._(_StringsBn root) : this._root = root, super._(root);

	@override final _StringsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'নিয়ম';
	@override List<dynamic> get values => [
		({required Object value}) => 'প্রতিটি লটারির জন্য ${value} টি সোনার মুদ্রা লাগবে;',
		'অঙ্কনের সংখ্যা সীমাবদ্ধ নয়।',
	];
}

// Path: account.alert
class _StringsAccountAlertBn extends _StringsAccountAlertEn {
	_StringsAccountAlertBn._(_StringsBn root) : this._root = root, super._(root);

	@override final _StringsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'হিসাব মুছে ফেলা';
	@override String get message => 'মুছে ফেলার পরে, আপনি সম্পর্কিত ক্রিয়াকলাপগুলির জন্য অ্যাকাউন্টটি ব্যবহার করতে সক্ষম হবেন না।';
}

// Path: faq.values.0
class _StringsFaq0i0Bn extends _StringsFaq0i0En {
	_StringsFaq0i0Bn._(_StringsBn root) : this._root = root, super._(root);

	@override final _StringsBn _root; // ignore: unused_field

	// Translations
	@override String get title => '1. কিভাবে শুরু করবেন?';
	@override String get value => 'পৃষ্ঠা প্রম্পট অনুসারে আপনার প্ল্যাটফর্ম ব্যবহারকারীর নাম যুক্ত করুন, কোনও পাসওয়ার্ড নেই, প্রতিটি প্ল্যাটফর্মের সাথে সম্পর্কিত প্রম্পট রয়েছে।';
}

// Path: faq.values.1
class _StringsFaq0i1Bn extends _StringsFaq0i1En {
	_StringsFaq0i1Bn._(_StringsBn root) : this._root = root, super._(root);

	@override final _StringsBn _root; // ignore: unused_field

	// Translations
	@override String get title => '২. এটি ব্যবহার করা কি নিরাপদ?';
	@override String get value => 'অবশ্যই এটি নিরাপদ We আমাদের আপনার পাসওয়ার্ডের দরকার নেই, এবং আমরা আপনার সামাজিক অ্যাপ্লিকেশন ডেটা সংরক্ষণ করতে পারি না কারণ এটি অন্যান্য জিনিসগুলিতে মনোযোগ দিতে বা করার জন্য অফিসিয়াল অ্যাপ্লিকেশনটিতে ঝাঁপিয়ে পড়ছে।';
}

// Path: faq.values.2
class _StringsFaq0i2Bn extends _StringsFaq0i2En {
	_StringsFaq0i2Bn._(_StringsBn root) : this._root = root, super._(root);

	@override final _StringsBn _root; // ignore: unused_field

	// Translations
	@override String get title => '৩. এই সব কীভাবে কাজ করে?';
	@override String get value => 'কাজের পদ্ধতিটি সহজ: আপনার ব্যক্তিগত ডেটা/ভিডিওটি আমাদের সম্প্রদায়ের মধ্যে প্রদর্শিত হয় users ব্যবহারকারীরা আপনার ব্যক্তিগত ডেটার সামগ্রীর উপর ভিত্তি করে আপনার দিকে মনোযোগ দেওয়া/পছন্দ করবেন কিনা তা ব্যবহারকারীরা অবাধে সিদ্ধান্ত নেন।এমন একটি এক্সচেঞ্জ হিসাবে যা পছন্দ করে/অনুসরণ করে, তারা সোনার মুদ্রা গ্রহণ করবে এবং অনুসারী/প্রেমীদের পেতে ব্যবহার করা যেতে পারে।';
}

// Path: faq.values.3
class _StringsFaq0i3Bn extends _StringsFaq0i3En {
	_StringsFaq0i3Bn._(_StringsBn root) : this._root = root, super._(root);

	@override final _StringsBn _root; // ignore: unused_field

	// Translations
	@override String get title => '৪. মনোযোগ এবং বাস্তবের মতো?';
	@override String get value => 'অবশ্যই এটি আসল। আপনি যখন সম্পর্কিত পরিষেবাগুলি কিনেছেন তখন আপনাকে পরিষেবাগুলি সরবরাহ করার জন্য এর পিছনে প্রচুর বাস্তব ব্যবহারকারী রয়েছে এবং এটি অফিসিয়াল অ্যাপে পরিচালিত হয়। আপনার এটি নিয়ে চিন্তা করার দরকার নেই।';
}

// Path: faq.values.4
class _StringsFaq0i4Bn extends _StringsFaq0i4En {
	_StringsFaq0i4Bn._(_StringsBn root) : this._root = root, super._(root);

	@override final _StringsBn _root; // ignore: unused_field

	// Translations
	@override String get title => '৫. আমি কীভাবে সোনার কয়েন উপার্জন করব?';
	@override String get value => 'হোমপেজে, আপনি টাস্ক তালিকাটি দেখতে পারেন, অনুসরণ করতে বা পছন্দ করতে ক্লিক করতে পারেন এবং অপারেশনের জন্য সংশ্লিষ্ট অ্যাপটিতে ঝাঁপ দাও Please দয়া করে আপনার মনোযোগ বাতিল না করার জন্য সতর্ক হন বা পছন্দ করুন, যার ফলে আপনার পুরষ্কার বাতিল হয়ে যাবে।';
}

// Path: faq.values.5
class _StringsFaq0i5Bn extends _StringsFaq0i5En {
	_StringsFaq0i5Bn._(_StringsBn root) : this._root = root, super._(root);

	@override final _StringsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Task। কার্যগুলি কেন ব্যর্থ হয়?';
	@override String get value => 'এটি সাধারণত কারণ আপনি সত্যিই মনোযোগ দেন না বা পছন্দ করেন না You আপনার প্রথমে আপনার অ্যাকাউন্টটি পরীক্ষা করা উচিত।';
}

// Path: faq.values.6
class _StringsFaq0i6Bn extends _StringsFaq0i6En {
	_StringsFaq0i6Bn._(_StringsBn root) : this._root = root, super._(root);

	@override final _StringsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'My। আমার অর্ডার শেষ করতে কতক্ষণ সময় লাগে?';
	@override List<String> get value => [
		'এটি আপনার অর্ডার ভলিউমের উপর নির্ভর করে। সাধারণ পরিষেবাগুলির চেয়ে গোল্ডেন সার্ভিস দ্রুত উল্লেখ করা উচিত।',
		'অল্প সময়ে খুব বেশি ট্র্যাফিক পান আপনার অ্যাকাউন্টটি সন্দেহজনক করে তুলবে, তাই ধৈর্য সহকারে অপেক্ষা করা সর্বোত্তম উপায়।',
	];
}

// Path: faq.values.7
class _StringsFaq0i7Bn extends _StringsFaq0i7En {
	_StringsFaq0i7Bn._(_StringsBn root) : this._root = root, super._(root);

	@override final _StringsBn _root; // ignore: unused_field

	// Translations
	@override String get title => '৮. অর্ডার দেওয়ার পরে আমার কী করা উচিত?';
	@override String get value => 'আপনি আপনার অর্ডার দেওয়ার পরে, আপনার অ্যাকাউন্টটি প্রকাশ করুন। অর্ডার শেষ হওয়ার আগে আপনার ব্যবহারকারীর নামটি পরিবর্তন করবেন না।';
}

// Path: faq.values.8
class _StringsFaq0i8Bn extends _StringsFaq0i8En {
	_StringsFaq0i8Bn._(_StringsBn root) : this._root = root, super._(root);

	@override final _StringsBn _root; // ignore: unused_field

	// Translations
	@override String get title => '9. আমার যদি সমস্যা হয় তবে কী হবে?';
	@override String get value => 'আপনি অ্যাপ্লিকেশনটিতে প্রতিক্রিয়া মাধ্যমে আমাদের সাথে যোগাযোগ করতে পারেন।';
}

// Path: store.tip.follow
class _StringsStoreTipFollowBn extends _StringsStoreTipFollowEn {
	_StringsStoreTipFollowBn._(_StringsBn root) : this._root = root, super._(root);

	@override final _StringsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'অনুগামী এবং প্রবীণ অনুগামী';
	@override List<String> get values => [
		'',
		'অনুগামী',
		'প্রবীণ অনুগামী',
		'সম্পূর্ণ সময়',
		'1-24 ঘন্টা',
		'1-4 ঘন্টা',
		'ক্ষতিপূরণ সময়',
		'/',
		'7 দিনের মধ্যে ক্ষতিপূরণ',
		'অনুগামী গুণমান',
		'বাস্তব',
		'বাস্তব এবং সক্রিয়',
		'পতনের হার',
		'8-15%',
		'0-3%',
	];
}

// Path: store.tip.like
class _StringsStoreTipLikeBn extends _StringsStoreTipLikeEn {
	_StringsStoreTipLikeBn._(_StringsBn root) : this._root = root, super._(root);

	@override final _StringsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'পছন্দ এবং উন্নত প্রশংসা';
	@override List<String> get values => [
		'',
		'যেমন',
		'উচ্চ -স্তরের প্রশংসা',
		'সম্পূর্ণ সময়',
		'1-24 ঘন্টা',
		'1-4 ঘন্টা',
		'ক্ষতিপূরণ সময়',
		'/',
		'7 দিনের মধ্যে ক্ষতিপূরণ',
		'পতনের হার',
		'8-15%',
		'0-3%',
	];
}

// Path: <root>
class _StringsDe extends _StringsEn {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsDe.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.de,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <de>.
	@override final TranslationMetadata<AppLocale, _StringsEn> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	@override late final _StringsDe _root = this; // ignore: unused_field

	// Translations
	@override late final _StringsOnlyTitleDe onlyTitle = _StringsOnlyTitleDe._(_root);
	@override late final _StringsUniversalDe universal = _StringsUniversalDe._(_root);
	@override late final _StringsTabbarDe tabbar = _StringsTabbarDe._(_root);
	@override late final _StringsTaskDe task = _StringsTaskDe._(_root);
	@override late final _StringsStoreDe store = _StringsStoreDe._(_root);
	@override late final _StringsCoinsDe coins = _StringsCoinsDe._(_root);
	@override late final _StringsLoginDe login = _StringsLoginDe._(_root);
	@override late final _StringsSettingDe setting = _StringsSettingDe._(_root);
	@override late final _StringsLanguageDe language = _StringsLanguageDe._(_root);
	@override late final _StringsDailyDe daily = _StringsDailyDe._(_root);
	@override late final _StringsWheelDe wheel = _StringsWheelDe._(_root);
	@override late final _StringsAccountDe account = _StringsAccountDe._(_root);
	@override late final _StringsOrdersDe orders = _StringsOrdersDe._(_root);
	@override late final _StringsFaqDe faq = _StringsFaqDe._(_root);
	@override late final _StringsAboutDe about = _StringsAboutDe._(_root);
	@override late final _StringsAlertDe alert = _StringsAlertDe._(_root);
	@override late final _StringsToastDe toast = _StringsToastDe._(_root);
	@override late final _StringsLocalNotificationDe localNotification = _StringsLocalNotificationDe._(_root);
}

// Path: onlyTitle
class _StringsOnlyTitleDe extends _StringsOnlyTitleEn {
	_StringsOnlyTitleDe._(_StringsDe root) : this._root = root, super._(root);

	@override final _StringsDe _root; // ignore: unused_field

	// Translations
	@override String get contact => 'kontaktiere uns';
}

// Path: universal
class _StringsUniversalDe extends _StringsUniversalEn {
	_StringsUniversalDe._(_StringsDe root) : this._root = root, super._(root);

	@override final _StringsDe _root; // ignore: unused_field

	// Translations
	@override String get coins => 'Gold';
	@override String get requestError => 'Bitte versuchen Sie es später erneut';
	@override String get add => 'Konto hinzufügen';
}

// Path: tabbar
class _StringsTabbarDe extends _StringsTabbarEn {
	_StringsTabbarDe._(_StringsDe root) : this._root = root, super._(root);

	@override final _StringsDe _root; // ignore: unused_field

	// Translations
	@override String get task => 'Titelseite';
	@override String get store => 'Geschäft';
	@override String get setting => 'Konfiguration';
}

// Path: task
class _StringsTaskDe extends _StringsTaskEn {
	_StringsTaskDe._(_StringsDe root) : this._root = root, super._(root);

	@override final _StringsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Titelseite';
	@override String get skip => 'über etwas springen';
	@override String get follow => 'konzentrieren Sie sich auf';
	@override String get like => 'wie';
	@override String get noTask => 'Nicht fragen';
	@override late final _StringsTaskTipDe tip = _StringsTaskTipDe._(_root);
}

// Path: store
class _StringsStoreDe extends _StringsStoreEn {
	_StringsStoreDe._(_StringsDe root) : this._root = root, super._(root);

	@override final _StringsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Geschäft';
	@override String get free => 'frei';
	@override String get follow => 'Anhänger';
	@override String get like => 'wie';
	@override String get view => 'Uhr';
	@override String get share => 'Teilen';
	@override String get retweet => 'Retweet';
	@override late final _StringsStoreAdDe ad = _StringsStoreAdDe._(_root);
	@override late final _StringsStoreChangeAccountDe changeAccount = _StringsStoreChangeAccountDe._(_root);
	@override late final _StringsStoreTipDe tip = _StringsStoreTipDe._(_root);
	@override late final _StringsStoreBuyDe buy = _StringsStoreBuyDe._(_root);
	@override late final _StringsStorePurchaseDe purchase = _StringsStorePurchaseDe._(_root);
	@override late final _StringsStoreNoticeDe notice = _StringsStoreNoticeDe._(_root);
}

// Path: coins
class _StringsCoinsDe extends _StringsCoinsEn {
	_StringsCoinsDe._(_StringsDe root) : this._root = root, super._(root);

	@override final _StringsDe _root; // ignore: unused_field

	// Translations
	@override String get empty => 'Keine Geschichte';
}

// Path: login
class _StringsLoginDe extends _StringsLoginEn {
	_StringsLoginDe._(_StringsDe root) : this._root = root, super._(root);

	@override final _StringsDe _root; // ignore: unused_field

	// Translations
	@override String get confirm => 'bestätigen';
	@override String username({required Object value}) => 'Geben Sie Ihren ${value} -Benutzernamen ein';
	@override String get channel => 'Geben Sie Ihren YouTube -Kanal -Link ein';
	@override String get publicUsername => '* Bitte behalten Sie Ihr Konto offen, ist offen';
	@override String get publicChannel => '* Bitte halten Sie Ihren Kanal offen';
	@override String get add => 'Konto hinzufügen';
	@override String get hintUsername => 'Nutzername';
	@override String get hintChannel => 'Kanallink';
}

// Path: setting
class _StringsSettingDe extends _StringsSettingEn {
	_StringsSettingDe._(_StringsDe root) : this._root = root, super._(root);

	@override final _StringsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Konfiguration';
	@override String get editor => 'Informationen bearbeiten';
	@override String get daily => 'Einloggen';
	@override String get wheel => 'Schicksalsrad';
	@override String get account => 'Verwaltungskonto';
	@override String get language => 'Sprache';
	@override String get orders => 'Befehl';
	@override String get faq => 'häufiges Problem';
	@override String get about => 'um';
	@override late final _StringsSettingShareDe share = _StringsSettingShareDe._(_root);
	@override String get rateUs => 'Bewerten uns';
}

// Path: language
class _StringsLanguageDe extends _StringsLanguageEn {
	_StringsLanguageDe._(_StringsDe root) : this._root = root, super._(root);

	@override final _StringsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Wählen Sie eine Sprache';
	@override String get start => 'Anfang';
}

// Path: daily
class _StringsDailyDe extends _StringsDailyEn {
	_StringsDailyDe._(_StringsDe root) : this._root = root, super._(root);

	@override final _StringsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Einloggen';
	@override String get checkIn => 'Einloggen';
	@override late final _StringsDailyRulesDe rules = _StringsDailyRulesDe._(_root);
}

// Path: wheel
class _StringsWheelDe extends _StringsWheelEn {
	_StringsWheelDe._(_StringsDe root) : this._root = root, super._(root);

	@override final _StringsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Schicksalsrad';
	@override late final _StringsWheelRulesDe rules = _StringsWheelRulesDe._(_root);
}

// Path: account
class _StringsAccountDe extends _StringsAccountEn {
	_StringsAccountDe._(_StringsDe root) : this._root = root, super._(root);

	@override final _StringsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Verwaltungskonto';
	@override String get add => '+ Kontonummer hinzufügen';
	@override String get empty => 'Kein Account';
	@override late final _StringsAccountAlertDe alert = _StringsAccountAlertDe._(_root);
}

// Path: orders
class _StringsOrdersDe extends _StringsOrdersEn {
	_StringsOrdersDe._(_StringsDe root) : this._root = root, super._(root);

	@override final _StringsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Befehl';
	@override String get pending => 'Warteschlange';
	@override String get processing => 'wird bearbeitet';
	@override String get inProgress => 'wird bearbeitet';
	@override String get completed => 'abgeschlossen';
	@override String get partial => 'Teilweise Abschluss';
	@override String get error => 'Fehler';
	@override String get canceled => 'Abgesagt';
	@override String get refunded => 'erstattet';
	@override String get empty => 'Keine Bestellung';
}

// Path: faq
class _StringsFaqDe extends _StringsFaqEn {
	_StringsFaqDe._(_StringsDe root) : this._root = root, super._(root);

	@override final _StringsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'häufiges Problem';
	@override List<dynamic> get values => [
		_StringsFaq0i0De._(_root),
		_StringsFaq0i1De._(_root),
		_StringsFaq0i2De._(_root),
		_StringsFaq0i3De._(_root),
		_StringsFaq0i4De._(_root),
		_StringsFaq0i5De._(_root),
		_StringsFaq0i6De._(_root),
		_StringsFaq0i7De._(_root),
		_StringsFaq0i8De._(_root),
	];
}

// Path: about
class _StringsAboutDe extends _StringsAboutEn {
	_StringsAboutDe._(_StringsDe root) : this._root = root, super._(root);

	@override final _StringsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'um';
	@override String get contact => 'kontaktiere uns';
	@override String get service => 'Nutzungsbedingungen';
	@override String get policy => 'Datenschutz-Bestimmungen';
}

// Path: alert
class _StringsAlertDe extends _StringsAlertEn {
	_StringsAlertDe._(_StringsDe root) : this._root = root, super._(root);

	@override final _StringsDe _root; // ignore: unused_field

	// Translations
	@override String get ok => 'OK';
	@override String get cancel => 'Absagen';
	@override String get confirm => 'bestätigen';
}

// Path: toast
class _StringsToastDe extends _StringsToastEn {
	_StringsToastDe._(_StringsDe root) : this._root = root, super._(root);

	@override final _StringsDe _root; // ignore: unused_field

	// Translations
	@override String get unpurchase => 'Ich kann derzeit nicht kaufen';
	@override String get purchasedNotFound => 'Kann den aktuellen Service nicht kaufen';
	@override String get payment => 'Bezahlung erfolgreich!';
	@override String get coinsNotEnough => 'Gold unzureichend!';
	@override String get received => 'Erfolgreiche Quittung!';
	@override String get adError => 'Wenn Sie sich zu oft Anzeigen ansehen, versuchen Sie es bitte später erneut!';
}

// Path: localNotification
class _StringsLocalNotificationDe extends _StringsLocalNotificationEn {
	_StringsLocalNotificationDe._(_StringsDe root) : this._root = root, super._(root);

	@override final _StringsDe _root; // ignore: unused_field

	// Translations
	@override String get adTaskReady => 'Die neue Werbeaufgabe ist fertig!';
}

// Path: task.tip
class _StringsTaskTipDe extends _StringsTaskTipEn {
	_StringsTaskTipDe._(_StringsDe root) : this._root = root, super._(root);

	@override final _StringsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Prompt';
	@override List<dynamic> get values => [
		({required Object value}) => '1. Klicken Sie auf ${value} Schaltfläche',
		({required Object value}) => '2. Öffnen ${value}',
		({required Object value}) => '${value}. ${value}',
		({required Object value}) => '4. Zurück zu ${value}',
		'5. Holen Sie sich Goldmünzen',
	];
	@override String get message => 'Wenn Sie Ihre Aufmerksamkeit/Like stornieren, werden Goldmünzen entfernt!';
}

// Path: store.ad
class _StringsStoreAdDe extends _StringsStoreAdEn {
	_StringsStoreAdDe._(_StringsDe root) : this._root = root, super._(root);

	@override final _StringsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Werbung Belohnung';
	@override String get watch => 'Sehen Sie sich eine Anzeige an';
}

// Path: store.changeAccount
class _StringsStoreChangeAccountDe extends _StringsStoreChangeAccountEn {
	_StringsStoreChangeAccountDe._(_StringsDe root) : this._root = root, super._(root);

	@override final _StringsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ändern Sie das Konto';
	@override String get add => 'Konto hinzufügen';
}

// Path: store.tip
class _StringsStoreTipDe extends _StringsStoreTipEn {
	_StringsStoreTipDe._(_StringsDe root) : this._root = root, super._(root);

	@override final _StringsDe _root; // ignore: unused_field

	// Translations
	@override late final _StringsStoreTipFollowDe follow = _StringsStoreTipFollowDe._(_root);
	@override late final _StringsStoreTipLikeDe like = _StringsStoreTipLikeDe._(_root);
}

// Path: store.buy
class _StringsStoreBuyDe extends _StringsStoreBuyEn {
	_StringsStoreBuyDe._(_StringsDe root) : this._root = root, super._(root);

	@override final _StringsDe _root; // ignore: unused_field

	// Translations
	@override String get follow => 'Käufer';
	@override String get like => 'Kaufen Sie etwas Lob';
	@override String get view => 'Kaufen und beobachten';
	@override String get share => 'Kaufen und teilen';
	@override String get retweet => 'Kaufen Sie eine Übertragung';
	@override String get accountPublic => '* Bitte behalten Sie Ihr Konto offen, ist offen';
	@override String get channelPublic => '* Bitte halten Sie Ihren Kanal offen';
	@override String get tiktok => 'Ihr Tiktok -Videolink';
	@override String get twitter => 'Ihr Twitter -Tweet -Link';
	@override String get instagram => 'Ihr Instagram Post -Link';
	@override String get youtube => 'Ihr YouTube -Kanal -Link';
	@override String get pay => 'Zahlen';
}

// Path: store.purchase
class _StringsStorePurchaseDe extends _StringsStorePurchaseEn {
	_StringsStorePurchaseDe._(_StringsDe root) : this._root = root, super._(root);

	@override final _StringsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bezahlung erfolgreich';
	@override String get message => 'Bitte warten Sie, bis die Bestellung abgeschlossen ist!';
}

// Path: store.notice
class _StringsStoreNoticeDe extends _StringsStoreNoticeEn {
	_StringsStoreNoticeDe._(_StringsDe root) : this._root = root, super._(root);

	@override final _StringsDe _root; // ignore: unused_field

	// Translations
	@override String message({required Object value}) => 'Um ${value} kostenlose Follower zu erhalten, öffnen Sie zuerst die App -Benachrichtigung.';
	@override String get turnOn => 'Offen';
}

// Path: setting.share
class _StringsSettingShareDe extends _StringsSettingShareEn {
	_StringsSettingShareDe._(_StringsDe root) : this._root = root, super._(root);

	@override final _StringsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'App teilen';
	@override String message({required Object value}) => 'Ich habe eine Schatzanwendung gefunden, die kostenlose Tiktok -Fans und -vorlagen erhalten kann. Durch die folgende Linkinstallation erhalten wir ${value} Goldmünzen!';
}

// Path: daily.rules
class _StringsDailyRulesDe extends _StringsDailyRulesEn {
	_StringsDailyRulesDe._(_StringsDe root) : this._root = root, super._(root);

	@override final _StringsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Regel';
	@override List<String> get values => [
		'Sie können sich alle 24 Stunden anmelden;',
		'Nach der Unterbrechung des Zeichens wird es erneut beginnen.',
	];
}

// Path: wheel.rules
class _StringsWheelRulesDe extends _StringsWheelRulesEn {
	_StringsWheelRulesDe._(_StringsDe root) : this._root = root, super._(root);

	@override final _StringsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Regel';
	@override List<dynamic> get values => [
		({required Object value}) => 'Jede Lotterie kostet ${value} Goldmünzen;',
		'Die Anzahl der Ziehungen ist nicht begrenzt.',
	];
}

// Path: account.alert
class _StringsAccountAlertDe extends _StringsAccountAlertEn {
	_StringsAccountAlertDe._(_StringsDe root) : this._root = root, super._(root);

	@override final _StringsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Konto löschen';
	@override String get message => 'Nach dem Löschen können Sie das Konto für verwandte Vorgänge nicht verwenden.';
}

// Path: faq.values.0
class _StringsFaq0i0De extends _StringsFaq0i0En {
	_StringsFaq0i0De._(_StringsDe root) : this._root = root, super._(root);

	@override final _StringsDe _root; // ignore: unused_field

	// Translations
	@override String get title => '1. Wie fange ich an?';
	@override String get value => 'Fügen Sie einfach Ihren Plattform -Benutzernamen gemäß den Eingabeaufforderungen hinzu, kein Passwort, jede Plattform verfügt über eine entsprechende Eingabeaufforderung.';
}

// Path: faq.values.1
class _StringsFaq0i1De extends _StringsFaq0i1En {
	_StringsFaq0i1De._(_StringsDe root) : this._root = root, super._(root);

	@override final _StringsDe _root; // ignore: unused_field

	// Translations
	@override String get title => '2. Ist es sicher, es zu verwenden?';
	@override String get value => 'Natürlich ist es sicher. Wir benötigen Ihr Passwort nicht und können Ihre sozialen Anwendungsdaten nicht speichern, da sie in die offizielle Anwendung springen, um auf andere Dinge zu achten oder auf andere Dinge zu tun.';
}

// Path: faq.values.2
class _StringsFaq0i2De extends _StringsFaq0i2En {
	_StringsFaq0i2De._(_StringsDe root) : this._root = root, super._(root);

	@override final _StringsDe _root; // ignore: unused_field

	// Translations
	@override String get title => '3. Wie funktioniert das alles?';
	@override String get value => 'Die Arbeitsmethode ist einfach: Ihre personenbezogenen Daten/Ihr Video wird in unserer Community angezeigt. Benutzer entscheiden frei, ob sie auf dem Inhalt Ihrer persönlichen Daten auf/wie Sie berücksichtigen sollten.Als Austausch, der mag/folgt, erhalten sie Goldmünzen und können verwendet werden, um Follower/Liebhaber zu erhalten.';
}

// Path: faq.values.3
class _StringsFaq0i3De extends _StringsFaq0i3En {
	_StringsFaq0i3De._(_StringsDe root) : this._root = root, super._(root);

	@override final _StringsDe _root; // ignore: unused_field

	// Translations
	@override String get title => '4. Ist Aufmerksamkeit und wie real?';
	@override String get value => 'Natürlich ist es real. Wenn Sie verwandte Dienste kaufen, stehen viele echte Benutzer dahinter, die Ihnen Dienste zur Verfügung stellen, und sie werden in der offiziellen App betrieben. Sie müssen sich keine Sorgen machen.';
}

// Path: faq.values.4
class _StringsFaq0i4De extends _StringsFaq0i4En {
	_StringsFaq0i4De._(_StringsDe root) : this._root = root, super._(root);

	@override final _StringsDe _root; // ignore: unused_field

	// Translations
	@override String get title => '5. Wie verdiene ich Goldmünzen?';
	@override String get value => 'Auf der Homepage können Sie die Aufgabenliste sehen, klicken, um zu folgen oder zu mögen und zur entsprechenden App zu springen, um den Betrieb zu erhalten. Achten Sie darauf, Ihre Aufmerksamkeit nicht zu kündigen oder zu mögen, was dazu führt, dass Ihre Belohnung storniert wird.';
}

// Path: faq.values.5
class _StringsFaq0i5De extends _StringsFaq0i5En {
	_StringsFaq0i5De._(_StringsDe root) : this._root = root, super._(root);

	@override final _StringsDe _root; // ignore: unused_field

	// Translations
	@override String get title => '6. Warum scheitern Aufgaben?';
	@override String get value => 'Dies liegt normalerweise daran, dass Sie nicht wirklich darauf achten oder es mögen. Sie sollten zuerst Ihr Konto überprüfen.';
}

// Path: faq.values.6
class _StringsFaq0i6De extends _StringsFaq0i6En {
	_StringsFaq0i6De._(_StringsDe root) : this._root = root, super._(root);

	@override final _StringsDe _root; // ignore: unused_field

	// Translations
	@override String get title => '7. Wie lange dauert es, bis meine Bestellung abgeschlossen ist?';
	@override List<String> get value => [
		'Dies hängt von Ihrem Bestellvolumen ab. Normalerweise erhalten Sie den Service unmittelbar nach dem Aufgeben und Vervollständigung innerhalb von 24 Stunden, aber wir können keine genaue Zeit angeben, da eine große Anzahl echter Benutzer hinter dem Rücken operieren. Beachten Sie, dass der Goldene Service schneller ist als normale Dienstleistungen.',
		'Wenn Sie in kurzer Zeit zu viel Verkehr erhalten, wird Ihr Konto misstrauisch, sodass das geduldiges Warten der beste Weg ist.',
	];
}

// Path: faq.values.7
class _StringsFaq0i7De extends _StringsFaq0i7En {
	_StringsFaq0i7De._(_StringsDe root) : this._root = root, super._(root);

	@override final _StringsDe _root; // ignore: unused_field

	// Translations
	@override String get title => '8. Was soll ich nach der Bestellung tun?';
	@override String get value => 'Wenn Sie Ihre Bestellung aufgeben, halten Sie Ihr Konto offenbart. Ändern Sie Ihren Benutzernamen nicht, bevor die Bestellung abgeschlossen ist.';
}

// Path: faq.values.8
class _StringsFaq0i8De extends _StringsFaq0i8En {
	_StringsFaq0i8De._(_StringsDe root) : this._root = root, super._(root);

	@override final _StringsDe _root; // ignore: unused_field

	// Translations
	@override String get title => '9. Was ist, wenn ich ein Problem habe?';
	@override String get value => 'Sie können uns durch Feedback in der App kontaktieren.';
}

// Path: store.tip.follow
class _StringsStoreTipFollowDe extends _StringsStoreTipFollowEn {
	_StringsStoreTipFollowDe._(_StringsDe root) : this._root = root, super._(root);

	@override final _StringsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Follower & Senior Anhänger';
	@override List<String> get values => [
		'',
		'Anhänger',
		'Senior Anhänger',
		'Vollständige Zeit',
		'1-24 Stunden',
		'1-4 Stunden',
		'Ausgleichszeit',
		'/',
		'Entschädigung innerhalb von 7 Tagen',
		'Follower -Qualität',
		'real',
		'Echt und aktiv',
		'Fallgeschwindigkeit',
		'8-15%',
		'0-3%',
	];
}

// Path: store.tip.like
class _StringsStoreTipLikeDe extends _StringsStoreTipLikeEn {
	_StringsStoreTipLikeDe._(_StringsDe root) : this._root = root, super._(root);

	@override final _StringsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Wie & fortgeschrittenes Lob';
	@override List<String> get values => [
		'',
		'wie',
		'Hoch -Level -Lob',
		'Vollständige Zeit',
		'1-24 Stunden',
		'1-4 Stunden',
		'Ausgleichszeit',
		'/',
		'Entschädigung innerhalb von 7 Tagen',
		'Fallgeschwindigkeit',
		'8-15%',
		'0-3%',
	];
}

// Path: <root>
class _StringsEs extends _StringsEn {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsEs.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.es,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <es>.
	@override final TranslationMetadata<AppLocale, _StringsEn> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	@override late final _StringsEs _root = this; // ignore: unused_field

	// Translations
	@override late final _StringsOnlyTitleEs onlyTitle = _StringsOnlyTitleEs._(_root);
	@override late final _StringsUniversalEs universal = _StringsUniversalEs._(_root);
	@override late final _StringsTabbarEs tabbar = _StringsTabbarEs._(_root);
	@override late final _StringsTaskEs task = _StringsTaskEs._(_root);
	@override late final _StringsStoreEs store = _StringsStoreEs._(_root);
	@override late final _StringsCoinsEs coins = _StringsCoinsEs._(_root);
	@override late final _StringsLoginEs login = _StringsLoginEs._(_root);
	@override late final _StringsSettingEs setting = _StringsSettingEs._(_root);
	@override late final _StringsLanguageEs language = _StringsLanguageEs._(_root);
	@override late final _StringsDailyEs daily = _StringsDailyEs._(_root);
	@override late final _StringsWheelEs wheel = _StringsWheelEs._(_root);
	@override late final _StringsAccountEs account = _StringsAccountEs._(_root);
	@override late final _StringsOrdersEs orders = _StringsOrdersEs._(_root);
	@override late final _StringsFaqEs faq = _StringsFaqEs._(_root);
	@override late final _StringsAboutEs about = _StringsAboutEs._(_root);
	@override late final _StringsAlertEs alert = _StringsAlertEs._(_root);
	@override late final _StringsToastEs toast = _StringsToastEs._(_root);
	@override late final _StringsLocalNotificationEs localNotification = _StringsLocalNotificationEs._(_root);
}

// Path: onlyTitle
class _StringsOnlyTitleEs extends _StringsOnlyTitleEn {
	_StringsOnlyTitleEs._(_StringsEs root) : this._root = root, super._(root);

	@override final _StringsEs _root; // ignore: unused_field

	// Translations
	@override String get contact => 'Contáctenos';
}

// Path: universal
class _StringsUniversalEs extends _StringsUniversalEn {
	_StringsUniversalEs._(_StringsEs root) : this._root = root, super._(root);

	@override final _StringsEs _root; // ignore: unused_field

	// Translations
	@override String get coins => 'oro';
	@override String get requestError => 'Por favor, inténtelo de nuevo más tarde';
	@override String get add => 'Añadir cuenta';
}

// Path: tabbar
class _StringsTabbarEs extends _StringsTabbarEn {
	_StringsTabbarEs._(_StringsEs root) : this._root = root, super._(root);

	@override final _StringsEs _root; // ignore: unused_field

	// Translations
	@override String get task => 'página delantera';
	@override String get store => 'tienda';
	@override String get setting => 'configurar';
}

// Path: task
class _StringsTaskEs extends _StringsTaskEn {
	_StringsTaskEs._(_StringsEs root) : this._root = root, super._(root);

	@override final _StringsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'página delantera';
	@override String get skip => 'salte por encima';
	@override String get follow => 'concentrarse en';
	@override String get like => 'me gusta';
	@override String get noTask => 'No preguntar';
	@override late final _StringsTaskTipEs tip = _StringsTaskTipEs._(_root);
}

// Path: store
class _StringsStoreEs extends _StringsStoreEn {
	_StringsStoreEs._(_StringsEs root) : this._root = root, super._(root);

	@override final _StringsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'tienda';
	@override String get free => 'libre';
	@override String get follow => 'Seguidores';
	@override String get like => 'me gusta';
	@override String get view => 'Reloj';
	@override String get share => 'Cuota';
	@override String get retweet => 'Retuitear';
	@override late final _StringsStoreAdEs ad = _StringsStoreAdEs._(_root);
	@override late final _StringsStoreChangeAccountEs changeAccount = _StringsStoreChangeAccountEs._(_root);
	@override late final _StringsStoreTipEs tip = _StringsStoreTipEs._(_root);
	@override late final _StringsStoreBuyEs buy = _StringsStoreBuyEs._(_root);
	@override late final _StringsStorePurchaseEs purchase = _StringsStorePurchaseEs._(_root);
	@override late final _StringsStoreNoticeEs notice = _StringsStoreNoticeEs._(_root);
}

// Path: coins
class _StringsCoinsEs extends _StringsCoinsEn {
	_StringsCoinsEs._(_StringsEs root) : this._root = root, super._(root);

	@override final _StringsEs _root; // ignore: unused_field

	// Translations
	@override String get empty => 'No historia';
}

// Path: login
class _StringsLoginEs extends _StringsLoginEn {
	_StringsLoginEs._(_StringsEs root) : this._root = root, super._(root);

	@override final _StringsEs _root; // ignore: unused_field

	// Translations
	@override String get confirm => 'confirmar';
	@override String username({required Object value}) => 'Ingrese su nombre de usuario ${value}';
	@override String get channel => 'Ingrese el enlace de su canal de YouTube';
	@override String get publicUsername => '* Por favor, mantenga su cuenta abierta';
	@override String get publicChannel => '* Mantenga su canal abierto';
	@override String get add => 'Añadir cuenta';
	@override String get hintUsername => 'nombre de usuario';
	@override String get hintChannel => 'Enlace de canal';
}

// Path: setting
class _StringsSettingEs extends _StringsSettingEn {
	_StringsSettingEs._(_StringsEs root) : this._root = root, super._(root);

	@override final _StringsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'configurar';
	@override String get editor => 'editar informacion';
	@override String get daily => 'Iniciar sesión';
	@override String get wheel => 'Rueda de la fortuna';
	@override String get account => 'Cuenta de gestión';
	@override String get language => 'idioma';
	@override String get orders => 'Ordenar';
	@override String get faq => 'problema comun';
	@override String get about => 'sobre';
	@override late final _StringsSettingShareEs share = _StringsSettingShareEs._(_root);
	@override String get rateUs => 'Evaluarnos';
}

// Path: language
class _StringsLanguageEs extends _StringsLanguageEn {
	_StringsLanguageEs._(_StringsEs root) : this._root = root, super._(root);

	@override final _StringsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Elija un idioma';
	@override String get start => 'comienzo';
}

// Path: daily
class _StringsDailyEs extends _StringsDailyEn {
	_StringsDailyEs._(_StringsEs root) : this._root = root, super._(root);

	@override final _StringsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Iniciar sesión';
	@override String get checkIn => 'Iniciar sesión';
	@override late final _StringsDailyRulesEs rules = _StringsDailyRulesEs._(_root);
}

// Path: wheel
class _StringsWheelEs extends _StringsWheelEn {
	_StringsWheelEs._(_StringsEs root) : this._root = root, super._(root);

	@override final _StringsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Rueda de la fortuna';
	@override late final _StringsWheelRulesEs rules = _StringsWheelRulesEs._(_root);
}

// Path: account
class _StringsAccountEs extends _StringsAccountEn {
	_StringsAccountEs._(_StringsEs root) : this._root = root, super._(root);

	@override final _StringsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cuenta de gestión';
	@override String get add => '+ Agregar número de cuenta';
	@override String get empty => 'Sin cuenta';
	@override late final _StringsAccountAlertEs alert = _StringsAccountAlertEs._(_root);
}

// Path: orders
class _StringsOrdersEs extends _StringsOrdersEn {
	_StringsOrdersEs._(_StringsEs root) : this._root = root, super._(root);

	@override final _StringsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ordenar';
	@override String get pending => 'Cola';
	@override String get processing => 'Procesando';
	@override String get inProgress => 'Procesando';
	@override String get completed => 'terminado';
	@override String get partial => 'Finalización parcial';
	@override String get error => 'error';
	@override String get canceled => 'Cancelado';
	@override String get refunded => 'reintegrado';
	@override String get empty => 'Sin orden';
}

// Path: faq
class _StringsFaqEs extends _StringsFaqEn {
	_StringsFaqEs._(_StringsEs root) : this._root = root, super._(root);

	@override final _StringsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'problema comun';
	@override List<dynamic> get values => [
		_StringsFaq0i0Es._(_root),
		_StringsFaq0i1Es._(_root),
		_StringsFaq0i2Es._(_root),
		_StringsFaq0i3Es._(_root),
		_StringsFaq0i4Es._(_root),
		_StringsFaq0i5Es._(_root),
		_StringsFaq0i6Es._(_root),
		_StringsFaq0i7Es._(_root),
		_StringsFaq0i8Es._(_root),
	];
}

// Path: about
class _StringsAboutEs extends _StringsAboutEn {
	_StringsAboutEs._(_StringsEs root) : this._root = root, super._(root);

	@override final _StringsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'sobre';
	@override String get contact => 'Contáctenos';
	@override String get service => 'Términos de servicio';
	@override String get policy => 'Política de privacidad';
}

// Path: alert
class _StringsAlertEs extends _StringsAlertEn {
	_StringsAlertEs._(_StringsEs root) : this._root = root, super._(root);

	@override final _StringsEs _root; // ignore: unused_field

	// Translations
	@override String get ok => 'OK';
	@override String get cancel => 'Cancelar';
	@override String get confirm => 'confirmar';
}

// Path: toast
class _StringsToastEs extends _StringsToastEn {
	_StringsToastEs._(_StringsEs root) : this._root = root, super._(root);

	@override final _StringsEs _root; // ignore: unused_field

	// Translations
	@override String get unpurchase => 'No puedo comprar actualmente';
	@override String get purchasedNotFound => 'No puedo comprar el servicio actual';
	@override String get payment => '¡Pago exitoso!';
	@override String get coinsNotEnough => '¡Oro inadecuado!';
	@override String get received => 'Recibo exitoso!';
	@override String get adError => 'Viendo anuncios con demasiada frecuencia, ¡inténtelo de nuevo más tarde!';
}

// Path: localNotification
class _StringsLocalNotificationEs extends _StringsLocalNotificationEn {
	_StringsLocalNotificationEs._(_StringsEs root) : this._root = root, super._(root);

	@override final _StringsEs _root; // ignore: unused_field

	// Translations
	@override String get adTaskReady => '¡La nueva tarea publicitaria está lista!';
}

// Path: task.tip
class _StringsTaskTipEs extends _StringsTaskTipEn {
	_StringsTaskTipEs._(_StringsEs root) : this._root = root, super._(root);

	@override final _StringsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Inmediato';
	@override List<dynamic> get values => [
		({required Object value}) => '1. Haga clic en el botón ${value}',
		({required Object value}) => '2. Abrir ${value}',
		({required Object value}) => '${value}. ${value}',
		({required Object value}) => '4. Volver a ${value}',
		'5. Obtenga monedas de oro',
	];
	@override String get message => 'Si cancela su atención/me gusta, ¡las monedas de oro se eliminarán!';
}

// Path: store.ad
class _StringsStoreAdEs extends _StringsStoreAdEn {
	_StringsStoreAdEs._(_StringsEs root) : this._root = root, super._(root);

	@override final _StringsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Recompensa publicitaria';
	@override String get watch => 'Mira un anuncio';
}

// Path: store.changeAccount
class _StringsStoreChangeAccountEs extends _StringsStoreChangeAccountEn {
	_StringsStoreChangeAccountEs._(_StringsEs root) : this._root = root, super._(root);

	@override final _StringsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Modificar la cuenta';
	@override String get add => 'Añadir cuenta';
}

// Path: store.tip
class _StringsStoreTipEs extends _StringsStoreTipEn {
	_StringsStoreTipEs._(_StringsEs root) : this._root = root, super._(root);

	@override final _StringsEs _root; // ignore: unused_field

	// Translations
	@override late final _StringsStoreTipFollowEs follow = _StringsStoreTipFollowEs._(_root);
	@override late final _StringsStoreTipLikeEs like = _StringsStoreTipLikeEs._(_root);
}

// Path: store.buy
class _StringsStoreBuyEs extends _StringsStoreBuyEn {
	_StringsStoreBuyEs._(_StringsEs root) : this._root = root, super._(root);

	@override final _StringsEs _root; // ignore: unused_field

	// Translations
	@override String get follow => 'Comprador';
	@override String get like => 'Comprar algunos elogios';
	@override String get view => 'Comprar y mirar';
	@override String get share => 'Comprar y compartir';
	@override String get retweet => 'Comprar una transferencia';
	@override String get accountPublic => '* Por favor, mantenga su cuenta abierta';
	@override String get channelPublic => '* Mantenga su canal abierto';
	@override String get tiktok => 'Tu enlace de video Tiktok';
	@override String get twitter => 'Tu enlace de tweet de Twitter';
	@override String get instagram => 'Tu enlace de publicación de Instagram';
	@override String get youtube => 'Tu enlace de canal de YouTube';
	@override String get pay => 'Pagar';
}

// Path: store.purchase
class _StringsStorePurchaseEs extends _StringsStorePurchaseEn {
	_StringsStorePurchaseEs._(_StringsEs root) : this._root = root, super._(root);

	@override final _StringsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pago exitoso';
	@override String get message => '¡Espere a que se complete el pedido!';
}

// Path: store.notice
class _StringsStoreNoticeEs extends _StringsStoreNoticeEn {
	_StringsStoreNoticeEs._(_StringsEs root) : this._root = root, super._(root);

	@override final _StringsEs _root; // ignore: unused_field

	// Translations
	@override String message({required Object value}) => 'Para obtener ${value} seguidores gratuitos, abra la notificación de la aplicación primero.';
	@override String get turnOn => 'Abierto';
}

// Path: setting.share
class _StringsSettingShareEs extends _StringsSettingShareEn {
	_StringsSettingShareEs._(_StringsEs root) : this._root = root, super._(root);

	@override final _StringsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Compartir aplicación';
	@override String message({required Object value}) => 'Encontré una aplicación del tesoro que puede obtener fanáticos y me gusta de Tiktok gratis. A través de la siguiente instalación del enlace, ¡obtendremos ${value} monedas de oro!';
}

// Path: daily.rules
class _StringsDailyRulesEs extends _StringsDailyRulesEn {
	_StringsDailyRulesEs._(_StringsEs root) : this._root = root, super._(root);

	@override final _StringsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'regla';
	@override List<String> get values => [
		'Puede iniciar sesión cada 24 horas;',
		'Después de la interrupción del signo, comenzará de nuevo.',
	];
}

// Path: wheel.rules
class _StringsWheelRulesEs extends _StringsWheelRulesEn {
	_StringsWheelRulesEs._(_StringsEs root) : this._root = root, super._(root);

	@override final _StringsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'regla';
	@override List<dynamic> get values => [
		({required Object value}) => 'Cada lotería costará ${value} monedas de oro;',
		'El número de sorteos no es limitado.',
	];
}

// Path: account.alert
class _StringsAccountAlertEs extends _StringsAccountAlertEn {
	_StringsAccountAlertEs._(_StringsEs root) : this._root = root, super._(root);

	@override final _StringsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Borrar cuenta';
	@override String get message => 'Después de eliminar, no podrá usar la cuenta para operaciones relacionadas.';
}

// Path: faq.values.0
class _StringsFaq0i0Es extends _StringsFaq0i0En {
	_StringsFaq0i0Es._(_StringsEs root) : this._root = root, super._(root);

	@override final _StringsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '1. ¿Cómo comenzar?';
	@override String get value => 'Simplemente agregue el nombre de usuario de su plataforma de acuerdo con las indicaciones de la página, sin contraseña, cada plataforma tiene un mensaje correspondiente.';
}

// Path: faq.values.1
class _StringsFaq0i1Es extends _StringsFaq0i1En {
	_StringsFaq0i1Es._(_StringsEs root) : this._root = root, super._(root);

	@override final _StringsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '2. ¿Es seguro usarlo?';
	@override String get value => 'Por supuesto, es seguro. No necesitamos su contraseña y no podemos guardar los datos de su aplicación social porque está saltando a la aplicación oficial para prestar atención o hacer otras cosas.';
}

// Path: faq.values.2
class _StringsFaq0i2Es extends _StringsFaq0i2En {
	_StringsFaq0i2Es._(_StringsEs root) : this._root = root, super._(root);

	@override final _StringsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '3. ¿Cómo funciona todo esto?';
	@override String get value => 'El método de trabajo es simple: sus datos/video personales se muestran en nuestra comunidad. Los usuarios deciden libremente si deben prestar atención a/como usted en función del contenido de sus datos personales.Como un intercambio que le gusta/seguirán, recibirán monedas de oro y se pueden usar para obtener seguidores/amantes.';
}

// Path: faq.values.3
class _StringsFaq0i3Es extends _StringsFaq0i3En {
	_StringsFaq0i3Es._(_StringsEs root) : this._root = root, super._(root);

	@override final _StringsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '4. ¿Es la atención y como real?';
	@override String get value => 'Por supuesto, es real. Cuando compra servicios relacionados, hay muchos usuarios reales detrás de él para brindarle servicios, y se opera en la aplicación oficial. No necesita preocuparse por ello.';
}

// Path: faq.values.4
class _StringsFaq0i4Es extends _StringsFaq0i4En {
	_StringsFaq0i4Es._(_StringsEs root) : this._root = root, super._(root);

	@override final _StringsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '5. ¿Cómo gano las monedas de oro?';
	@override String get value => 'En la página de inicio, puede ver la lista de tareas, hacer clic para seguir o Me gusta, y saltar a la aplicación correspondiente para su operación. Tenga cuidado de no cancelar su atención o, lo que hará que su recompensa se cancele.';
}

// Path: faq.values.5
class _StringsFaq0i5Es extends _StringsFaq0i5En {
	_StringsFaq0i5Es._(_StringsEs root) : this._root = root, super._(root);

	@override final _StringsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '6. ¿Por qué fallan las tareas?';
	@override String get value => 'Esto generalmente se debe a que realmente no presta atención o le gusta. Primero debe consultar su cuenta.';
}

// Path: faq.values.6
class _StringsFaq0i6Es extends _StringsFaq0i6En {
	_StringsFaq0i6Es._(_StringsEs root) : this._root = root, super._(root);

	@override final _StringsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '7. ¿Cuánto tiempo lleva completar mi pedido?';
	@override List<String> get value => [
		'Esto depende de su volumen de pedido. Por lo general, comenzará a obtener el servicio inmediatamente después de realizar el pedido y completarlo dentro de las 24h, pero no podemos dar un tiempo preciso, porque hay una gran cantidad de usuarios reales que operan detrás de la espalda. Debe hacerlo. Se notará que Golden Service es más rápido que los servicios ordinarios.',
		'Obtenga demasiado tráfico en poco tiempo hará que su cuenta sospeche, por lo que esperar pacientemente es la mejor manera.',
	];
}

// Path: faq.values.7
class _StringsFaq0i7Es extends _StringsFaq0i7En {
	_StringsFaq0i7Es._(_StringsEs root) : this._root = root, super._(root);

	@override final _StringsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '8. ¿Qué debo hacer después de ordenar?';
	@override String get value => 'Después de realizar su pedido, mantenga su cuenta divulgada. No modifique su nombre de usuario antes de que se complete el pedido.';
}

// Path: faq.values.8
class _StringsFaq0i8Es extends _StringsFaq0i8En {
	_StringsFaq0i8Es._(_StringsEs root) : this._root = root, super._(root);

	@override final _StringsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '9. ¿Qué pasa si tengo un problema?';
	@override String get value => 'Puede contactarnos a través de comentarios en la aplicación.';
}

// Path: store.tip.follow
class _StringsStoreTipFollowEs extends _StringsStoreTipFollowEn {
	_StringsStoreTipFollowEs._(_StringsEs root) : this._root = root, super._(root);

	@override final _StringsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Seguidores y seguidor senior';
	@override List<String> get values => [
		'',
		'Seguidores',
		'Seguidor senior',
		'Tiempo completo',
		'1-24 horas',
		'1-4 horas',
		'Tiempo de compensación',
		'/',
		'Compensación dentro de los 7 días',
		'Calidad seguidor',
		'real',
		'Real y activo',
		'Tasa de abandono',
		'8-15%',
		'0-3%',
	];
}

// Path: store.tip.like
class _StringsStoreTipLikeEs extends _StringsStoreTipLikeEn {
	_StringsStoreTipLikeEs._(_StringsEs root) : this._root = root, super._(root);

	@override final _StringsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Alabanza como y avanzada';
	@override List<String> get values => [
		'',
		'me gusta',
		'Alabanza de alto nivel',
		'Tiempo completo',
		'1-24 horas',
		'1-4 horas',
		'Tiempo de compensación',
		'/',
		'Compensación dentro de los 7 días',
		'Tasa de abandono',
		'8-15%',
		'0-3%',
	];
}

// Path: <root>
class _StringsFr extends _StringsEn {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsFr.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.fr,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <fr>.
	@override final TranslationMetadata<AppLocale, _StringsEn> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	@override late final _StringsFr _root = this; // ignore: unused_field

	// Translations
	@override late final _StringsOnlyTitleFr onlyTitle = _StringsOnlyTitleFr._(_root);
	@override late final _StringsUniversalFr universal = _StringsUniversalFr._(_root);
	@override late final _StringsTabbarFr tabbar = _StringsTabbarFr._(_root);
	@override late final _StringsTaskFr task = _StringsTaskFr._(_root);
	@override late final _StringsStoreFr store = _StringsStoreFr._(_root);
	@override late final _StringsCoinsFr coins = _StringsCoinsFr._(_root);
	@override late final _StringsLoginFr login = _StringsLoginFr._(_root);
	@override late final _StringsSettingFr setting = _StringsSettingFr._(_root);
	@override late final _StringsLanguageFr language = _StringsLanguageFr._(_root);
	@override late final _StringsDailyFr daily = _StringsDailyFr._(_root);
	@override late final _StringsWheelFr wheel = _StringsWheelFr._(_root);
	@override late final _StringsAccountFr account = _StringsAccountFr._(_root);
	@override late final _StringsOrdersFr orders = _StringsOrdersFr._(_root);
	@override late final _StringsFaqFr faq = _StringsFaqFr._(_root);
	@override late final _StringsAboutFr about = _StringsAboutFr._(_root);
	@override late final _StringsAlertFr alert = _StringsAlertFr._(_root);
	@override late final _StringsToastFr toast = _StringsToastFr._(_root);
	@override late final _StringsLocalNotificationFr localNotification = _StringsLocalNotificationFr._(_root);
}

// Path: onlyTitle
class _StringsOnlyTitleFr extends _StringsOnlyTitleEn {
	_StringsOnlyTitleFr._(_StringsFr root) : this._root = root, super._(root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get contact => 'Nous contacter';
}

// Path: universal
class _StringsUniversalFr extends _StringsUniversalEn {
	_StringsUniversalFr._(_StringsFr root) : this._root = root, super._(root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get coins => 'or';
	@override String get requestError => 'Veuillez réessayer plus tard';
	@override String get add => 'Ajouter un compte';
}

// Path: tabbar
class _StringsTabbarFr extends _StringsTabbarEn {
	_StringsTabbarFr._(_StringsFr root) : this._root = root, super._(root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get task => 'page de garde';
	@override String get store => 'magasin';
	@override String get setting => 'd\'installation';
}

// Path: task
class _StringsTaskFr extends _StringsTaskEn {
	_StringsTaskFr._(_StringsFr root) : this._root = root, super._(root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'page de garde';
	@override String get skip => 'franchir';
	@override String get follow => 'concentrer sur';
	@override String get like => 'Comme';
	@override String get noTask => 'Ne pas demander';
	@override late final _StringsTaskTipFr tip = _StringsTaskTipFr._(_root);
}

// Path: store
class _StringsStoreFr extends _StringsStoreEn {
	_StringsStoreFr._(_StringsFr root) : this._root = root, super._(root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'magasin';
	@override String get free => 'libre';
	@override String get follow => 'Suiveurs';
	@override String get like => 'Comme';
	@override String get view => 'Regardez';
	@override String get share => 'partager';
	@override String get retweet => 'Retweeter';
	@override late final _StringsStoreAdFr ad = _StringsStoreAdFr._(_root);
	@override late final _StringsStoreChangeAccountFr changeAccount = _StringsStoreChangeAccountFr._(_root);
	@override late final _StringsStoreTipFr tip = _StringsStoreTipFr._(_root);
	@override late final _StringsStoreBuyFr buy = _StringsStoreBuyFr._(_root);
	@override late final _StringsStorePurchaseFr purchase = _StringsStorePurchaseFr._(_root);
	@override late final _StringsStoreNoticeFr notice = _StringsStoreNoticeFr._(_root);
}

// Path: coins
class _StringsCoinsFr extends _StringsCoinsEn {
	_StringsCoinsFr._(_StringsFr root) : this._root = root, super._(root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get empty => 'Pas d\'histoire';
}

// Path: login
class _StringsLoginFr extends _StringsLoginEn {
	_StringsLoginFr._(_StringsFr root) : this._root = root, super._(root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get confirm => 'confirmer';
	@override String username({required Object value}) => 'Saisissez vos ${value} identifiants';
	@override String get channel => 'Entrez votre lien de chaîne YouTube';
	@override String get publicUsername => '* Veuillez garder votre compte est ouvert';
	@override String get publicChannel => '* Veuillez garder votre chaîne ouverte';
	@override String get add => 'Ajouter un compte';
	@override String get hintUsername => 'Nom d\'utilisateur';
	@override String get hintChannel => 'Lien de canal';
}

// Path: setting
class _StringsSettingFr extends _StringsSettingEn {
	_StringsSettingFr._(_StringsFr root) : this._root = root, super._(root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'd\'installation';
	@override String get editor => 'Modifier les informations';
	@override String get daily => 'S\'identifier';
	@override String get wheel => 'Roue de la Fortune';
	@override String get account => 'Compte de gestion';
	@override String get language => 'Langue';
	@override String get orders => 'Ordre';
	@override String get faq => 'Problème commun';
	@override String get about => 'sur';
	@override late final _StringsSettingShareFr share = _StringsSettingShareFr._(_root);
	@override String get rateUs => 'Nous évaluer';
}

// Path: language
class _StringsLanguageFr extends _StringsLanguageEn {
	_StringsLanguageFr._(_StringsFr root) : this._root = root, super._(root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Choisissez une langue';
	@override String get start => 'début';
}

// Path: daily
class _StringsDailyFr extends _StringsDailyEn {
	_StringsDailyFr._(_StringsFr root) : this._root = root, super._(root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'S\'identifier';
	@override String get checkIn => 'S\'identifier';
	@override late final _StringsDailyRulesFr rules = _StringsDailyRulesFr._(_root);
}

// Path: wheel
class _StringsWheelFr extends _StringsWheelEn {
	_StringsWheelFr._(_StringsFr root) : this._root = root, super._(root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Roue de la Fortune';
	@override late final _StringsWheelRulesFr rules = _StringsWheelRulesFr._(_root);
}

// Path: account
class _StringsAccountFr extends _StringsAccountEn {
	_StringsAccountFr._(_StringsFr root) : this._root = root, super._(root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Compte de gestion';
	@override String get add => '+ Ajouter le numéro de compte';
	@override String get empty => 'Pas de compte';
	@override late final _StringsAccountAlertFr alert = _StringsAccountAlertFr._(_root);
}

// Path: orders
class _StringsOrdersFr extends _StringsOrdersEn {
	_StringsOrdersFr._(_StringsFr root) : this._root = root, super._(root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ordre';
	@override String get pending => 'File d\'attente';
	@override String get processing => 'Traitement';
	@override String get inProgress => 'En traitement';
	@override String get completed => 'complété';
	@override String get partial => 'Achèvement partiel';
	@override String get error => 'erreur';
	@override String get canceled => 'Annulé';
	@override String get refunded => 'remboursé';
	@override String get empty => 'Pas de commande';
}

// Path: faq
class _StringsFaqFr extends _StringsFaqEn {
	_StringsFaqFr._(_StringsFr root) : this._root = root, super._(root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Problème commun';
	@override List<dynamic> get values => [
		_StringsFaq0i0Fr._(_root),
		_StringsFaq0i1Fr._(_root),
		_StringsFaq0i2Fr._(_root),
		_StringsFaq0i3Fr._(_root),
		_StringsFaq0i4Fr._(_root),
		_StringsFaq0i5Fr._(_root),
		_StringsFaq0i6Fr._(_root),
		_StringsFaq0i7Fr._(_root),
		_StringsFaq0i8Fr._(_root),
	];
}

// Path: about
class _StringsAboutFr extends _StringsAboutEn {
	_StringsAboutFr._(_StringsFr root) : this._root = root, super._(root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'sur';
	@override String get contact => 'Nous contacter';
	@override String get service => 'Conditions d\'utilisation';
	@override String get policy => 'Politique de confidentialité';
}

// Path: alert
class _StringsAlertFr extends _StringsAlertEn {
	_StringsAlertFr._(_StringsFr root) : this._root = root, super._(root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get ok => 'D\'ACCORD';
	@override String get cancel => 'Annuler';
	@override String get confirm => 'confirmer';
}

// Path: toast
class _StringsToastFr extends _StringsToastEn {
	_StringsToastFr._(_StringsFr root) : this._root = root, super._(root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get unpurchase => 'Impossible d\'acheter actuellement';
	@override String get purchasedNotFound => 'Impossible d\'acheter le service actuel';
	@override String get payment => 'Paiement réussi!';
	@override String get coinsNotEnough => 'Or inadéquat!';
	@override String get received => 'Reçu réussi!';
	@override String get adError => 'Regarder les annonces trop souvent, réessayez plus tard!';
}

// Path: localNotification
class _StringsLocalNotificationFr extends _StringsLocalNotificationEn {
	_StringsLocalNotificationFr._(_StringsFr root) : this._root = root, super._(root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get adTaskReady => 'La nouvelle tâche publicitaire est prête!';
}

// Path: task.tip
class _StringsTaskTipFr extends _StringsTaskTipEn {
	_StringsTaskTipFr._(_StringsFr root) : this._root = root, super._(root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Rapide';
	@override List<dynamic> get values => [
		({required Object value}) => '1. Cliquez sur ${value} bouton',
		({required Object value}) => '2. Ouvrir ${value}',
		({required Object value}) => '${value}. ${value}',
		({required Object value}) => '4. Retour à ${value}',
		'5. Obtenez des pièces d\'or',
	];
	@override String get message => 'Si vous annulez votre attention / comme, les pièces d\'or seront supprimées!';
}

// Path: store.ad
class _StringsStoreAdFr extends _StringsStoreAdEn {
	_StringsStoreAdFr._(_StringsFr root) : this._root = root, super._(root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Récompense publicitaire';
	@override String get watch => 'Regarder une publicité';
}

// Path: store.changeAccount
class _StringsStoreChangeAccountFr extends _StringsStoreChangeAccountEn {
	_StringsStoreChangeAccountFr._(_StringsFr root) : this._root = root, super._(root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Modifier le compte';
	@override String get add => 'Ajouter un compte';
}

// Path: store.tip
class _StringsStoreTipFr extends _StringsStoreTipEn {
	_StringsStoreTipFr._(_StringsFr root) : this._root = root, super._(root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override late final _StringsStoreTipFollowFr follow = _StringsStoreTipFollowFr._(_root);
	@override late final _StringsStoreTipLikeFr like = _StringsStoreTipLikeFr._(_root);
}

// Path: store.buy
class _StringsStoreBuyFr extends _StringsStoreBuyEn {
	_StringsStoreBuyFr._(_StringsFr root) : this._root = root, super._(root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get follow => 'Acheteur';
	@override String get like => 'Achetez des éloges';
	@override String get view => 'Acheter et regarder';
	@override String get share => 'Acheter et partager';
	@override String get retweet => 'Acheter un transfert';
	@override String get accountPublic => '* Veuillez garder votre compte est ouvert';
	@override String get channelPublic => '* Veuillez garder votre chaîne ouverte';
	@override String get tiktok => 'Votre lien vidéo tiktok';
	@override String get twitter => 'Votre lien Twitter Tweet';
	@override String get instagram => 'Votre lien de publication Instagram';
	@override String get youtube => 'Votre lien de chaîne YouTube';
	@override String get pay => 'Payer';
}

// Path: store.purchase
class _StringsStorePurchaseFr extends _StringsStorePurchaseEn {
	_StringsStorePurchaseFr._(_StringsFr root) : this._root = root, super._(root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'paiement réussi';
	@override String get message => 'Veuillez attendre que la commande se termine!';
}

// Path: store.notice
class _StringsStoreNoticeFr extends _StringsStoreNoticeEn {
	_StringsStoreNoticeFr._(_StringsFr root) : this._root = root, super._(root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String message({required Object value}) => 'Pour obtenir ${value} abonnés gratuits, ouvrez d\'abord la notification de l\'application.';
	@override String get turnOn => 'Ouvert';
}

// Path: setting.share
class _StringsSettingShareFr extends _StringsSettingShareEn {
	_StringsSettingShareFr._(_StringsFr root) : this._root = root, super._(root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Partager l\'application';
	@override String message({required Object value}) => 'J\'ai trouvé une application au trésor qui peut obtenir des fans et des likts Tiktok gratuits. Grâce à l\'installation de liens suivante, nous aurons ${value} pièces d\'or!';
}

// Path: daily.rules
class _StringsDailyRulesFr extends _StringsDailyRulesEn {
	_StringsDailyRulesFr._(_StringsFr root) : this._root = root, super._(root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'régner';
	@override List<String> get values => [
		'Vous pouvez vous connecter toutes les 24 heures;',
		'Après l\'interruption du signe, elle recommencera.',
	];
}

// Path: wheel.rules
class _StringsWheelRulesFr extends _StringsWheelRulesEn {
	_StringsWheelRulesFr._(_StringsFr root) : this._root = root, super._(root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'régner';
	@override List<dynamic> get values => [
		({required Object value}) => 'Chaque loterie coûtera ${value} pièces d\'or;',
		'Le nombre de tirages n\'est pas limité.',
	];
}

// Path: account.alert
class _StringsAccountAlertFr extends _StringsAccountAlertEn {
	_StringsAccountAlertFr._(_StringsFr root) : this._root = root, super._(root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Supprimer le compte';
	@override String get message => 'Après la suppression, vous ne pourrez pas utiliser le compte pour les opérations connexes.';
}

// Path: faq.values.0
class _StringsFaq0i0Fr extends _StringsFaq0i0En {
	_StringsFaq0i0Fr._(_StringsFr root) : this._root = root, super._(root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => '1. Comment commencer?';
	@override String get value => 'Ajoutez simplement le nom d\'utilisateur de votre plate-forme en fonction des invites de page, pas de mot de passe, chaque plate-forme a une invite correspondante.';
}

// Path: faq.values.1
class _StringsFaq0i1Fr extends _StringsFaq0i1En {
	_StringsFaq0i1Fr._(_StringsFr root) : this._root = root, super._(root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => '2. Est-il sûr de l\'utiliser?';
	@override String get value => 'Bien sûr, il est sûr. Nous n\'avons pas besoin de votre mot de passe, et nous ne pouvons pas enregistrer vos données d\'application sociale, car elle passe à l\'application officielle pour faire attention ou faire d\'autres choses.';
}

// Path: faq.values.2
class _StringsFaq0i2Fr extends _StringsFaq0i2En {
	_StringsFaq0i2Fr._(_StringsFr root) : this._root = root, super._(root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => '3. Comment cela fonctionne-t-il tout?';
	@override String get value => 'La méthode de travail est simple: vos données / vidéos personnelles sont affichées dans notre communauté. Les utilisateurs décident librement s\'ils devraient prêter attention / comme vous en fonction du contenu de vos données personnelles.En tant qu\'échange qui aime / suivre, ils recevront des pièces d\'or et peuvent être utilisées pour obtenir des abonnés / amoureux.';
}

// Path: faq.values.3
class _StringsFaq0i3Fr extends _StringsFaq0i3En {
	_StringsFaq0i3Fr._(_StringsFr root) : this._root = root, super._(root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => '4. L\'attention est-elle et comme réelle?';
	@override String get value => 'Bien sûr, c\'est réel. Lorsque vous achetez des services connexes, il y a beaucoup de vrais utilisateurs derrière pour vous fournir des services, et il est exploité sur l\'application officielle. Vous n\'avez pas à vous en soucier.';
}

// Path: faq.values.4
class _StringsFaq0i4Fr extends _StringsFaq0i4En {
	_StringsFaq0i4Fr._(_StringsFr root) : this._root = root, super._(root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => '5. Comment gagner des pièces d\'or?';
	@override String get value => 'Sur la page d\'accueil, vous pouvez voir la liste des tâches, cliquer pour suivre ou comme, et sauter à l\'application correspondante pour l\'opération. Veuillez faire attention à ne pas annuler votre attention ou comme, ce qui entraînera l\'annulation de votre récompense.';
}

// Path: faq.values.5
class _StringsFaq0i5Fr extends _StringsFaq0i5En {
	_StringsFaq0i5Fr._(_StringsFr root) : this._root = root, super._(root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => '6. Pourquoi les tâches échouent-elles?';
	@override String get value => 'C\'est généralement parce que vous ne faites pas vraiment attention ou que vous l\'aimez. Vous devez d\'abord vérifier votre compte.';
}

// Path: faq.values.6
class _StringsFaq0i6Fr extends _StringsFaq0i6En {
	_StringsFaq0i6Fr._(_StringsFr root) : this._root = root, super._(root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => '7. Combien de temps faut-il pour terminer ma commande?';
	@override List<String> get value => [
		'Cela dépend de votre volume de commande. Habituellement, vous commencerez à obtenir le service immédiatement après avoir passé la commande et à le terminer dans les 24 heures, mais nous ne pouvons pas donner de temps précis, car il y a un grand nombre d\'utilisateurs réel Soyez noté que le service d\'or est plus rapide que les services ordinaires.',
		'Obtenez trop de trafic en peu de temps rendra votre compte suspect, donc attendre patiemment est le meilleur moyen.',
	];
}

// Path: faq.values.7
class _StringsFaq0i7Fr extends _StringsFaq0i7En {
	_StringsFaq0i7Fr._(_StringsFr root) : this._root = root, super._(root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => '8. Que dois-je faire après avoir commandé?';
	@override String get value => 'Après avoir passé votre commande, gardez votre compte divulgué. Ne modifiez pas votre nom d\'utilisateur avant la fin de la commande.';
}

// Path: faq.values.8
class _StringsFaq0i8Fr extends _StringsFaq0i8En {
	_StringsFaq0i8Fr._(_StringsFr root) : this._root = root, super._(root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => '9. Et si j\'ai un problème?';
	@override String get value => 'Vous pouvez nous contacter via des commentaires dans l\'application.';
}

// Path: store.tip.follow
class _StringsStoreTipFollowFr extends _StringsStoreTipFollowEn {
	_StringsStoreTipFollowFr._(_StringsFr root) : this._root = root, super._(root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Abonnés et adepte des seniors';
	@override List<String> get values => [
		'',
		'Suiveurs',
		'Disciple principal',
		'Temps complet',
		'1-24 heures',
		'1 à 4 heures',
		'Temps de rémunération',
		'/',
		'Compensation dans les 7 jours',
		'Qualité des suiveurs',
		'réel',
		'Réel et actif',
		'Le taux d\'abandon',
		'8-15%',
		'0-3%',
	];
}

// Path: store.tip.like
class _StringsStoreTipLikeFr extends _StringsStoreTipLikeEn {
	_StringsStoreTipLikeFr._(_StringsFr root) : this._root = root, super._(root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Comme des éloges avancés';
	@override List<String> get values => [
		'',
		'Comme',
		'Éloge de haut niveau',
		'Temps complet',
		'1-24 heures',
		'1 à 4 heures',
		'Temps de rémunération',
		'/',
		'Compensation dans les 7 jours',
		'Le taux d\'abandon',
		'8-15%',
		'0-3%',
	];
}

// Path: <root>
class _StringsHi extends _StringsEn {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsHi.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.hi,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <hi>.
	@override final TranslationMetadata<AppLocale, _StringsEn> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	@override late final _StringsHi _root = this; // ignore: unused_field

	// Translations
	@override late final _StringsOnlyTitleHi onlyTitle = _StringsOnlyTitleHi._(_root);
	@override late final _StringsUniversalHi universal = _StringsUniversalHi._(_root);
	@override late final _StringsTabbarHi tabbar = _StringsTabbarHi._(_root);
	@override late final _StringsTaskHi task = _StringsTaskHi._(_root);
	@override late final _StringsStoreHi store = _StringsStoreHi._(_root);
	@override late final _StringsCoinsHi coins = _StringsCoinsHi._(_root);
	@override late final _StringsLoginHi login = _StringsLoginHi._(_root);
	@override late final _StringsSettingHi setting = _StringsSettingHi._(_root);
	@override late final _StringsLanguageHi language = _StringsLanguageHi._(_root);
	@override late final _StringsDailyHi daily = _StringsDailyHi._(_root);
	@override late final _StringsWheelHi wheel = _StringsWheelHi._(_root);
	@override late final _StringsAccountHi account = _StringsAccountHi._(_root);
	@override late final _StringsOrdersHi orders = _StringsOrdersHi._(_root);
	@override late final _StringsFaqHi faq = _StringsFaqHi._(_root);
	@override late final _StringsAboutHi about = _StringsAboutHi._(_root);
	@override late final _StringsAlertHi alert = _StringsAlertHi._(_root);
	@override late final _StringsToastHi toast = _StringsToastHi._(_root);
	@override late final _StringsLocalNotificationHi localNotification = _StringsLocalNotificationHi._(_root);
}

// Path: onlyTitle
class _StringsOnlyTitleHi extends _StringsOnlyTitleEn {
	_StringsOnlyTitleHi._(_StringsHi root) : this._root = root, super._(root);

	@override final _StringsHi _root; // ignore: unused_field

	// Translations
	@override String get contact => 'संपर्क करें';
}

// Path: universal
class _StringsUniversalHi extends _StringsUniversalEn {
	_StringsUniversalHi._(_StringsHi root) : this._root = root, super._(root);

	@override final _StringsHi _root; // ignore: unused_field

	// Translations
	@override String get coins => 'सोना';
	@override String get requestError => 'बाद में पुन: प्रयास करें';
	@override String get add => 'खाता जोड़ो';
}

// Path: tabbar
class _StringsTabbarHi extends _StringsTabbarEn {
	_StringsTabbarHi._(_StringsHi root) : this._root = root, super._(root);

	@override final _StringsHi _root; // ignore: unused_field

	// Translations
	@override String get task => 'मुखपृष्ठ';
	@override String get store => 'दुकान';
	@override String get setting => 'स्थापित करना';
}

// Path: task
class _StringsTaskHi extends _StringsTaskEn {
	_StringsTaskHi._(_StringsHi root) : this._root = root, super._(root);

	@override final _StringsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'मुखपृष्ठ';
	@override String get skip => 'इस पर से कूद जाओ';
	@override String get follow => 'ध्यान केंद्रित करना';
	@override String get like => 'पसंद करना';
	@override String get noTask => 'न पूछें';
	@override late final _StringsTaskTipHi tip = _StringsTaskTipHi._(_root);
}

// Path: store
class _StringsStoreHi extends _StringsStoreEn {
	_StringsStoreHi._(_StringsHi root) : this._root = root, super._(root);

	@override final _StringsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'दुकान';
	@override String get free => 'नि: शुल्क';
	@override String get follow => 'समर्थक';
	@override String get like => 'पसंद करना';
	@override String get view => 'घड़ी';
	@override String get share => 'शेयर करना';
	@override String get retweet => 'रीट्वीट';
	@override late final _StringsStoreAdHi ad = _StringsStoreAdHi._(_root);
	@override late final _StringsStoreChangeAccountHi changeAccount = _StringsStoreChangeAccountHi._(_root);
	@override late final _StringsStoreTipHi tip = _StringsStoreTipHi._(_root);
	@override late final _StringsStoreBuyHi buy = _StringsStoreBuyHi._(_root);
	@override late final _StringsStorePurchaseHi purchase = _StringsStorePurchaseHi._(_root);
	@override late final _StringsStoreNoticeHi notice = _StringsStoreNoticeHi._(_root);
}

// Path: coins
class _StringsCoinsHi extends _StringsCoinsEn {
	_StringsCoinsHi._(_StringsHi root) : this._root = root, super._(root);

	@override final _StringsHi _root; // ignore: unused_field

	// Translations
	@override String get empty => 'कोई इतिहास नहीं';
}

// Path: login
class _StringsLoginHi extends _StringsLoginEn {
	_StringsLoginHi._(_StringsHi root) : this._root = root, super._(root);

	@override final _StringsHi _root; // ignore: unused_field

	// Translations
	@override String get confirm => 'पुष्टि करें';
	@override String username({required Object value}) => 'अपना ${value} उपयोगकर्ता नाम दर्ज करें';
	@override String get channel => 'अपना YouTube चैनल लिंक दर्ज करें';
	@override String get publicUsername => '* कृपया अपना खाता खुला रखें';
	@override String get publicChannel => '* कृपया अपना चैनल खुला रखें';
	@override String get add => 'खाता जोड़ो';
	@override String get hintUsername => 'उपयोगकर्ता नाम';
	@override String get hintChannel => 'चैनल लिंक';
}

// Path: setting
class _StringsSettingHi extends _StringsSettingEn {
	_StringsSettingHi._(_StringsHi root) : this._root = root, super._(root);

	@override final _StringsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'स्थापित करना';
	@override String get editor => 'सूचना संपादित करें';
	@override String get daily => 'साइन इन करें';
	@override String get wheel => 'भाग्य का पहिया';
	@override String get account => 'प्रबंधन खाता';
	@override String get language => 'भाषा: हिन्दी';
	@override String get orders => 'आदेश';
	@override String get faq => 'आम समस्या';
	@override String get about => 'के बारे में';
	@override late final _StringsSettingShareHi share = _StringsSettingShareHi._(_root);
	@override String get rateUs => 'हमारा मूल्यांकन करें';
}

// Path: language
class _StringsLanguageHi extends _StringsLanguageEn {
	_StringsLanguageHi._(_StringsHi root) : this._root = root, super._(root);

	@override final _StringsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'एक भाषा चुनें';
	@override String get start => 'प्रारंभ';
}

// Path: daily
class _StringsDailyHi extends _StringsDailyEn {
	_StringsDailyHi._(_StringsHi root) : this._root = root, super._(root);

	@override final _StringsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'साइन इन करें';
	@override String get checkIn => 'साइन इन करें';
	@override late final _StringsDailyRulesHi rules = _StringsDailyRulesHi._(_root);
}

// Path: wheel
class _StringsWheelHi extends _StringsWheelEn {
	_StringsWheelHi._(_StringsHi root) : this._root = root, super._(root);

	@override final _StringsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'भाग्य का पहिया';
	@override late final _StringsWheelRulesHi rules = _StringsWheelRulesHi._(_root);
}

// Path: account
class _StringsAccountHi extends _StringsAccountEn {
	_StringsAccountHi._(_StringsHi root) : this._root = root, super._(root);

	@override final _StringsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'प्रबंधन खाता';
	@override String get add => '+ खाता संख्या जोड़ें';
	@override String get empty => 'खाता नहीं';
	@override late final _StringsAccountAlertHi alert = _StringsAccountAlertHi._(_root);
}

// Path: orders
class _StringsOrdersHi extends _StringsOrdersEn {
	_StringsOrdersHi._(_StringsHi root) : this._root = root, super._(root);

	@override final _StringsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'आदेश';
	@override String get pending => 'कतार';
	@override String get processing => 'प्रसंस्करण';
	@override String get inProgress => 'प्रसंस्करण';
	@override String get completed => 'पूरा किया हुआ';
	@override String get partial => 'आंशिक समापन';
	@override String get error => 'गलती';
	@override String get canceled => 'रद्द';
	@override String get refunded => 'वापस कर दी';
	@override String get empty => 'कोई आदेश नहीं';
}

// Path: faq
class _StringsFaqHi extends _StringsFaqEn {
	_StringsFaqHi._(_StringsHi root) : this._root = root, super._(root);

	@override final _StringsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'आम समस्या';
	@override List<dynamic> get values => [
		_StringsFaq0i0Hi._(_root),
		_StringsFaq0i1Hi._(_root),
		_StringsFaq0i2Hi._(_root),
		_StringsFaq0i3Hi._(_root),
		_StringsFaq0i4Hi._(_root),
		_StringsFaq0i5Hi._(_root),
		_StringsFaq0i6Hi._(_root),
		_StringsFaq0i7Hi._(_root),
		_StringsFaq0i8Hi._(_root),
	];
}

// Path: about
class _StringsAboutHi extends _StringsAboutEn {
	_StringsAboutHi._(_StringsHi root) : this._root = root, super._(root);

	@override final _StringsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'के बारे में';
	@override String get contact => 'संपर्क करें';
	@override String get service => 'सेवा की शर्तें';
	@override String get policy => 'गोपनीयता नीति';
}

// Path: alert
class _StringsAlertHi extends _StringsAlertEn {
	_StringsAlertHi._(_StringsHi root) : this._root = root, super._(root);

	@override final _StringsHi _root; // ignore: unused_field

	// Translations
	@override String get ok => 'ठीक है';
	@override String get cancel => 'रद्द करना';
	@override String get confirm => 'पुष्टि करें';
}

// Path: toast
class _StringsToastHi extends _StringsToastEn {
	_StringsToastHi._(_StringsHi root) : this._root = root, super._(root);

	@override final _StringsHi _root; // ignore: unused_field

	// Translations
	@override String get unpurchase => 'वर्तमान में खरीद नहीं सकते';
	@override String get purchasedNotFound => 'वर्तमान सेवा नहीं खरीद सकते';
	@override String get payment => 'भुगतान सफल!';
	@override String get coinsNotEnough => 'सोने की अपर्याप्त!';
	@override String get received => 'सफल रसीद!';
	@override String get adError => 'विज्ञापनों को अक्सर देखना, कृपया बाद में फिर से प्रयास करें!';
}

// Path: localNotification
class _StringsLocalNotificationHi extends _StringsLocalNotificationEn {
	_StringsLocalNotificationHi._(_StringsHi root) : this._root = root, super._(root);

	@override final _StringsHi _root; // ignore: unused_field

	// Translations
	@override String get adTaskReady => 'नया विज्ञापन कार्य तैयार है!';
}

// Path: task.tip
class _StringsTaskTipHi extends _StringsTaskTipEn {
	_StringsTaskTipHi._(_StringsHi root) : this._root = root, super._(root);

	@override final _StringsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'तत्पर';
	@override List<dynamic> get values => [
		({required Object value}) => '1. ${value} बटन पर क्लिक करें',
		({required Object value}) => '2. खुला ${value}',
		({required Object value}) => '${value}. ${value}',
		({required Object value}) => '4. वापस ${value} पर',
		'5. सोने के सिक्के प्राप्त करें',
	];
	@override String get message => 'यदि आप अपना ध्यान रद्द करते हैं/जैसे, सोने के सिक्के हटा दिए जाएंगे!';
}

// Path: store.ad
class _StringsStoreAdHi extends _StringsStoreAdEn {
	_StringsStoreAdHi._(_StringsHi root) : this._root = root, super._(root);

	@override final _StringsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'विज्ञापन इनाम';
	@override String get watch => 'एक विज्ञापन देखें';
}

// Path: store.changeAccount
class _StringsStoreChangeAccountHi extends _StringsStoreChangeAccountEn {
	_StringsStoreChangeAccountHi._(_StringsHi root) : this._root = root, super._(root);

	@override final _StringsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'खाते को संशोधित करें';
	@override String get add => 'खाता जोड़ो';
}

// Path: store.tip
class _StringsStoreTipHi extends _StringsStoreTipEn {
	_StringsStoreTipHi._(_StringsHi root) : this._root = root, super._(root);

	@override final _StringsHi _root; // ignore: unused_field

	// Translations
	@override late final _StringsStoreTipFollowHi follow = _StringsStoreTipFollowHi._(_root);
	@override late final _StringsStoreTipLikeHi like = _StringsStoreTipLikeHi._(_root);
}

// Path: store.buy
class _StringsStoreBuyHi extends _StringsStoreBuyEn {
	_StringsStoreBuyHi._(_StringsHi root) : this._root = root, super._(root);

	@override final _StringsHi _root; // ignore: unused_field

	// Translations
	@override String get follow => 'क्रेता';
	@override String get like => 'कुछ प्रशंसा खरीदें';
	@override String get view => 'खरीदें और देखें';
	@override String get share => 'खरीदें और साझा करें';
	@override String get retweet => 'एक हस्तांतरण खरीदें';
	@override String get accountPublic => '* कृपया अपना खाता खुला रखें';
	@override String get channelPublic => '* कृपया अपना चैनल खुला रखें';
	@override String get tiktok => 'आपका टिकटोक वीडियो लिंक';
	@override String get twitter => 'आपका ट्विटर ट्वीट लिंक';
	@override String get instagram => 'आपका इंस्टाग्राम पोस्ट लिंक';
	@override String get youtube => 'आपका YouTube चैनल लिंक';
	@override String get pay => 'भुगतान करना';
}

// Path: store.purchase
class _StringsStorePurchaseHi extends _StringsStorePurchaseEn {
	_StringsStorePurchaseHi._(_StringsHi root) : this._root = root, super._(root);

	@override final _StringsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'भुगतान सफल';
	@override String get message => 'कृपया आदेश पूरा होने का इंतजार करें!';
}

// Path: store.notice
class _StringsStoreNoticeHi extends _StringsStoreNoticeEn {
	_StringsStoreNoticeHi._(_StringsHi root) : this._root = root, super._(root);

	@override final _StringsHi _root; // ignore: unused_field

	// Translations
	@override String message({required Object value}) => '${value} मुफ्त अनुयायियों को प्राप्त करने के लिए, पहले ऐप नोटिफिकेशन खोलें।';
	@override String get turnOn => 'खुला हुआ';
}

// Path: setting.share
class _StringsSettingShareHi extends _StringsSettingShareEn {
	_StringsSettingShareHi._(_StringsHi root) : this._root = root, super._(root);

	@override final _StringsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'ऐप शेयर करें';
	@override String message({required Object value}) => 'मुझे एक ट्रेजर एप्लिकेशन मिला जो मुफ्त टिकटोक प्रशंसक और लाइक प्राप्त कर सकता है। निम्नलिखित लिंक इंस्टॉलेशन के माध्यम से, हमें ${value} गोल्ड सिक्के मिलेंगे!';
}

// Path: daily.rules
class _StringsDailyRulesHi extends _StringsDailyRulesEn {
	_StringsDailyRulesHi._(_StringsHi root) : this._root = root, super._(root);

	@override final _StringsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'नियम';
	@override List<String> get values => [
		'आप हर 24 घंटे में साइन इन कर सकते हैं;',
		'साइन -इन रुकावट के बाद, यह फिर से शुरू हो जाएगा।',
	];
}

// Path: wheel.rules
class _StringsWheelRulesHi extends _StringsWheelRulesEn {
	_StringsWheelRulesHi._(_StringsHi root) : this._root = root, super._(root);

	@override final _StringsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'नियम';
	@override List<dynamic> get values => [
		({required Object value}) => 'प्रत्येक लॉटरी में ${value} सोने के सिक्के खर्च होंगे;',
		'ड्रॉ की संख्या सीमित नहीं है।',
	];
}

// Path: account.alert
class _StringsAccountAlertHi extends _StringsAccountAlertEn {
	_StringsAccountAlertHi._(_StringsHi root) : this._root = root, super._(root);

	@override final _StringsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'खाता हटा दो';
	@override String get message => 'हटाने के बाद, आप संबंधित संचालन के लिए खाते का उपयोग नहीं कर पाएंगे।';
}

// Path: faq.values.0
class _StringsFaq0i0Hi extends _StringsFaq0i0En {
	_StringsFaq0i0Hi._(_StringsHi root) : this._root = root, super._(root);

	@override final _StringsHi _root; // ignore: unused_field

	// Translations
	@override String get title => '1. कैसे शुरू करें?';
	@override String get value => 'बस अपने प्लेटफ़ॉर्म उपयोगकर्ता नाम को पृष्ठ के संकेत के अनुसार जोड़ें, कोई पासवर्ड नहीं, प्रत्येक प्लेटफ़ॉर्म में एक समान संकेत है।';
}

// Path: faq.values.1
class _StringsFaq0i1Hi extends _StringsFaq0i1En {
	_StringsFaq0i1Hi._(_StringsHi root) : this._root = root, super._(root);

	@override final _StringsHi _root; // ignore: unused_field

	// Translations
	@override String get title => '2. क्या इसका उपयोग करना सुरक्षित है?';
	@override String get value => 'बेशक, यह सुरक्षित है। हमें आपके पासवर्ड की आवश्यकता नहीं है, और हम आपके सामाजिक एप्लिकेशन डेटा को नहीं सहेज सकते हैं क्योंकि यह अन्य चीजों पर ध्यान देने या करने के लिए आधिकारिक एप्लिकेशन पर कूद रहा है।';
}

// Path: faq.values.2
class _StringsFaq0i2Hi extends _StringsFaq0i2En {
	_StringsFaq0i2Hi._(_StringsHi root) : this._root = root, super._(root);

	@override final _StringsHi _root; // ignore: unused_field

	// Translations
	@override String get title => '3. यह सब कैसे काम करता है?';
	@override String get value => 'कार्य विधि सरल है: आपका व्यक्तिगत डेटा/वीडियो हमारे समुदाय में प्रदर्शित किया जाता है। उपयोगकर्ता स्वतंत्र रूप से तय करते हैं कि क्या उन्हें आपके व्यक्तिगत डेटा की सामग्री के आधार पर ध्यान देना चाहिए।एक एक्सचेंज के रूप में जो पसंद/अनुसरण करता है, वे सोने के सिक्के प्राप्त करेंगे और अनुयायियों/प्रेमियों को प्राप्त करने के लिए उपयोग किया जा सकता है।';
}

// Path: faq.values.3
class _StringsFaq0i3Hi extends _StringsFaq0i3En {
	_StringsFaq0i3Hi._(_StringsHi root) : this._root = root, super._(root);

	@override final _StringsHi _root; // ignore: unused_field

	// Translations
	@override String get title => '4. क्या ध्यान और वास्तविक की तरह है?';
	@override String get value => 'बेशक, यह वास्तविक है। जब आप संबंधित सेवाएं खरीदते हैं, तो आपको सेवाएं प्रदान करने के लिए इसके पीछे बहुत सारे वास्तविक उपयोगकर्ता होते हैं, और यह आधिकारिक ऐप पर संचालित होता है। आपको इसके बारे में चिंता करने की आवश्यकता नहीं है।';
}

// Path: faq.values.4
class _StringsFaq0i4Hi extends _StringsFaq0i4En {
	_StringsFaq0i4Hi._(_StringsHi root) : this._root = root, super._(root);

	@override final _StringsHi _root; // ignore: unused_field

	// Translations
	@override String get title => '5. मैं सोने के सिक्के कैसे कमाऊं?';
	@override String get value => 'होमपेज पर, आप टास्क लिस्ट देख सकते हैं, फॉलो करने या पसंद करने के लिए क्लिक कर सकते हैं, और ऑपरेशन के लिए संबंधित ऐप पर कूद सकते हैं। कृपया सावधान रहें कि अपना ध्यान रद्द न करें या पसंद करें, जिससे आपका इनाम रद्द हो जाएगा।';
}

// Path: faq.values.5
class _StringsFaq0i5Hi extends _StringsFaq0i5En {
	_StringsFaq0i5Hi._(_StringsHi root) : this._root = root, super._(root);

	@override final _StringsHi _root; // ignore: unused_field

	// Translations
	@override String get title => '6. कार्य क्यों विफल होते हैं?';
	@override String get value => 'यह आमतौर पर है क्योंकि आप वास्तव में ध्यान नहीं देते हैं या इसे पसंद नहीं करते हैं। आपको पहले अपना खाता जांचना चाहिए।';
}

// Path: faq.values.6
class _StringsFaq0i6Hi extends _StringsFaq0i6En {
	_StringsFaq0i6Hi._(_StringsHi root) : this._root = root, super._(root);

	@override final _StringsHi _root; // ignore: unused_field

	// Translations
	@override String get title => '7. मेरे आदेश को पूरा करने में कितना समय लगता है?';
	@override List<String> get value => [
		'यह आपके ऑर्डर वॉल्यूम पर निर्भर करता है। आमतौर पर, आप ऑर्डर देने के तुरंत बाद सेवा प्राप्त करना शुरू कर देंगे और इसे 24h के भीतर पूरा करेंगे, लेकिन हम सटीक समय नहीं दे सकते हैं, क्योंकि बड़ी संख्या में वास्तविक उपयोगकर्ता पीठ के पीछे काम कर रहे हैं। ध्यान दिया जाए कि गोल्डन सर्विस सामान्य सेवाओं की तुलना में तेज है।',
		'थोड़े समय में बहुत अधिक ट्रैफ़िक प्राप्त करें आपके खाते को संदिग्ध बना देगा, इसलिए धैर्यपूर्वक प्रतीक्षा करना सबसे अच्छा तरीका है।',
	];
}

// Path: faq.values.7
class _StringsFaq0i7Hi extends _StringsFaq0i7En {
	_StringsFaq0i7Hi._(_StringsHi root) : this._root = root, super._(root);

	@override final _StringsHi _root; // ignore: unused_field

	// Translations
	@override String get title => '8. आदेश देने के बाद मुझे क्या करना चाहिए?';
	@override String get value => 'अपना ऑर्डर देने के बाद, अपने खाते का खुलासा रखें। ऑर्डर पूरा होने से पहले अपने उपयोगकर्ता नाम को संशोधित न करें।';
}

// Path: faq.values.8
class _StringsFaq0i8Hi extends _StringsFaq0i8En {
	_StringsFaq0i8Hi._(_StringsHi root) : this._root = root, super._(root);

	@override final _StringsHi _root; // ignore: unused_field

	// Translations
	@override String get title => '9. अगर मुझे कोई समस्या है तो क्या होगा?';
	@override String get value => 'आप ऐप में प्रतिक्रिया के माध्यम से हमसे संपर्क कर सकते हैं।';
}

// Path: store.tip.follow
class _StringsStoreTipFollowHi extends _StringsStoreTipFollowEn {
	_StringsStoreTipFollowHi._(_StringsHi root) : this._root = root, super._(root);

	@override final _StringsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'अनुयायी और वरिष्ठ अनुयायी';
	@override List<String> get values => [
		'',
		'समर्थक',
		'वरिष्ठ अनुयायी',
		'पूरा समय',
		'1-24 घंटे',
		'1-4 घंटे',
		'मुआवजा समय',
		'/',
		'7 दिनों के भीतर मुआवजा',
		'अनुयायी गुणवत्ता',
		'वास्तविक',
		'वास्तविक और सक्रिय',
		'गिरने की दर',
		'8-15%',
		'0-3%',
	];
}

// Path: store.tip.like
class _StringsStoreTipLikeHi extends _StringsStoreTipLikeEn {
	_StringsStoreTipLikeHi._(_StringsHi root) : this._root = root, super._(root);

	@override final _StringsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'जैसे और उन्नत प्रशंसा';
	@override List<String> get values => [
		'',
		'पसंद करना',
		'उच्च प्रशंसा',
		'पूरा समय',
		'1-24 घंटे',
		'1-4 घंटे',
		'मुआवजा समय',
		'/',
		'7 दिनों के भीतर मुआवजा',
		'गिरने की दर',
		'8-15%',
		'0-3%',
	];
}

// Path: <root>
class _StringsId extends _StringsEn {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsId.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.id,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <id>.
	@override final TranslationMetadata<AppLocale, _StringsEn> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	@override late final _StringsId _root = this; // ignore: unused_field

	// Translations
	@override late final _StringsOnlyTitleId onlyTitle = _StringsOnlyTitleId._(_root);
	@override late final _StringsUniversalId universal = _StringsUniversalId._(_root);
	@override late final _StringsTabbarId tabbar = _StringsTabbarId._(_root);
	@override late final _StringsTaskId task = _StringsTaskId._(_root);
	@override late final _StringsStoreId store = _StringsStoreId._(_root);
	@override late final _StringsCoinsId coins = _StringsCoinsId._(_root);
	@override late final _StringsLoginId login = _StringsLoginId._(_root);
	@override late final _StringsSettingId setting = _StringsSettingId._(_root);
	@override late final _StringsLanguageId language = _StringsLanguageId._(_root);
	@override late final _StringsDailyId daily = _StringsDailyId._(_root);
	@override late final _StringsWheelId wheel = _StringsWheelId._(_root);
	@override late final _StringsAccountId account = _StringsAccountId._(_root);
	@override late final _StringsOrdersId orders = _StringsOrdersId._(_root);
	@override late final _StringsFaqId faq = _StringsFaqId._(_root);
	@override late final _StringsAboutId about = _StringsAboutId._(_root);
	@override late final _StringsAlertId alert = _StringsAlertId._(_root);
	@override late final _StringsToastId toast = _StringsToastId._(_root);
	@override late final _StringsLocalNotificationId localNotification = _StringsLocalNotificationId._(_root);
}

// Path: onlyTitle
class _StringsOnlyTitleId extends _StringsOnlyTitleEn {
	_StringsOnlyTitleId._(_StringsId root) : this._root = root, super._(root);

	@override final _StringsId _root; // ignore: unused_field

	// Translations
	@override String get contact => 'hubungi kami';
}

// Path: universal
class _StringsUniversalId extends _StringsUniversalEn {
	_StringsUniversalId._(_StringsId root) : this._root = root, super._(root);

	@override final _StringsId _root; // ignore: unused_field

	// Translations
	@override String get coins => 'emas';
	@override String get requestError => 'Silakan coba lagi nanti';
	@override String get add => 'Menambahkan akun';
}

// Path: tabbar
class _StringsTabbarId extends _StringsTabbarEn {
	_StringsTabbarId._(_StringsId root) : this._root = root, super._(root);

	@override final _StringsId _root; // ignore: unused_field

	// Translations
	@override String get task => 'halaman Depan';
	@override String get store => 'toko';
	@override String get setting => 'mempersiapkan';
}

// Path: task
class _StringsTaskId extends _StringsTaskEn {
	_StringsTaskId._(_StringsId root) : this._root = root, super._(root);

	@override final _StringsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'halaman Depan';
	@override String get skip => 'Melompati';
	@override String get follow => 'fokus pada';
	@override String get like => 'Suka';
	@override String get noTask => 'Tidak bertanya';
	@override late final _StringsTaskTipId tip = _StringsTaskTipId._(_root);
}

// Path: store
class _StringsStoreId extends _StringsStoreEn {
	_StringsStoreId._(_StringsId root) : this._root = root, super._(root);

	@override final _StringsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'toko';
	@override String get free => 'Gratis';
	@override String get follow => 'Pengikut';
	@override String get like => 'Suka';
	@override String get view => 'Jam tangan';
	@override String get share => 'Bagikan';
	@override String get retweet => 'Retweet';
	@override late final _StringsStoreAdId ad = _StringsStoreAdId._(_root);
	@override late final _StringsStoreChangeAccountId changeAccount = _StringsStoreChangeAccountId._(_root);
	@override late final _StringsStoreTipId tip = _StringsStoreTipId._(_root);
	@override late final _StringsStoreBuyId buy = _StringsStoreBuyId._(_root);
	@override late final _StringsStorePurchaseId purchase = _StringsStorePurchaseId._(_root);
	@override late final _StringsStoreNoticeId notice = _StringsStoreNoticeId._(_root);
}

// Path: coins
class _StringsCoinsId extends _StringsCoinsEn {
	_StringsCoinsId._(_StringsId root) : this._root = root, super._(root);

	@override final _StringsId _root; // ignore: unused_field

	// Translations
	@override String get empty => 'Tidak ada sejarah';
}

// Path: login
class _StringsLoginId extends _StringsLoginEn {
	_StringsLoginId._(_StringsId root) : this._root = root, super._(root);

	@override final _StringsId _root; // ignore: unused_field

	// Translations
	@override String get confirm => 'Konfirmasi';
	@override String username({required Object value}) => 'Masukkan ${value} nama pengguna Anda';
	@override String get channel => 'Masukkan tautan saluran YouTube Anda';
	@override String get publicUsername => '* Harap jaga agar akun Anda tetap terbuka';
	@override String get publicChannel => '* Harap tetap buka saluran Anda';
	@override String get add => 'Menambahkan akun';
	@override String get hintUsername => 'nama belakang';
	@override String get hintChannel => 'Tautan saluran';
}

// Path: setting
class _StringsSettingId extends _StringsSettingEn {
	_StringsSettingId._(_StringsId root) : this._root = root, super._(root);

	@override final _StringsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'mempersiapkan';
	@override String get editor => 'Edit informasi';
	@override String get daily => 'Masuk';
	@override String get wheel => 'Roda keberuntungan';
	@override String get account => 'Akun Manajemen';
	@override String get language => 'bahasa';
	@override String get orders => 'Memesan';
	@override String get faq => 'masalah umum';
	@override String get about => 'tentang';
	@override late final _StringsSettingShareId share = _StringsSettingShareId._(_root);
	@override String get rateUs => 'Mengevaluasi kami';
}

// Path: language
class _StringsLanguageId extends _StringsLanguageEn {
	_StringsLanguageId._(_StringsId root) : this._root = root, super._(root);

	@override final _StringsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pilih bahasa';
	@override String get start => 'Mulailah';
}

// Path: daily
class _StringsDailyId extends _StringsDailyEn {
	_StringsDailyId._(_StringsId root) : this._root = root, super._(root);

	@override final _StringsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Masuk';
	@override String get checkIn => 'Masuk';
	@override late final _StringsDailyRulesId rules = _StringsDailyRulesId._(_root);
}

// Path: wheel
class _StringsWheelId extends _StringsWheelEn {
	_StringsWheelId._(_StringsId root) : this._root = root, super._(root);

	@override final _StringsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Roda keberuntungan';
	@override late final _StringsWheelRulesId rules = _StringsWheelRulesId._(_root);
}

// Path: account
class _StringsAccountId extends _StringsAccountEn {
	_StringsAccountId._(_StringsId root) : this._root = root, super._(root);

	@override final _StringsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Akun Manajemen';
	@override String get add => '+ Tambahkan nomor akun';
	@override String get empty => 'Tidak ada akun';
	@override late final _StringsAccountAlertId alert = _StringsAccountAlertId._(_root);
}

// Path: orders
class _StringsOrdersId extends _StringsOrdersEn {
	_StringsOrdersId._(_StringsId root) : this._root = root, super._(root);

	@override final _StringsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Memesan';
	@override String get pending => 'Antre';
	@override String get processing => 'Pengolahan';
	@override String get inProgress => 'pengolahan';
	@override String get completed => 'lengkap';
	@override String get partial => 'Penyelesaian parsial';
	@override String get error => 'kesalahan';
	@override String get canceled => 'Dibatalkan';
	@override String get refunded => 'dikembalikan';
	@override String get empty => 'Tidak ada pesanan';
}

// Path: faq
class _StringsFaqId extends _StringsFaqEn {
	_StringsFaqId._(_StringsId root) : this._root = root, super._(root);

	@override final _StringsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'masalah umum';
	@override List<dynamic> get values => [
		_StringsFaq0i0Id._(_root),
		_StringsFaq0i1Id._(_root),
		_StringsFaq0i2Id._(_root),
		_StringsFaq0i3Id._(_root),
		_StringsFaq0i4Id._(_root),
		_StringsFaq0i5Id._(_root),
		_StringsFaq0i6Id._(_root),
		_StringsFaq0i7Id._(_root),
		_StringsFaq0i8Id._(_root),
	];
}

// Path: about
class _StringsAboutId extends _StringsAboutEn {
	_StringsAboutId._(_StringsId root) : this._root = root, super._(root);

	@override final _StringsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'tentang';
	@override String get contact => 'hubungi kami';
	@override String get service => 'Ketentuan Layanan';
	@override String get policy => 'Kebijakan pribadi';
}

// Path: alert
class _StringsAlertId extends _StringsAlertEn {
	_StringsAlertId._(_StringsId root) : this._root = root, super._(root);

	@override final _StringsId _root; // ignore: unused_field

	// Translations
	@override String get ok => 'Oke';
	@override String get cancel => 'Membatalkan';
	@override String get confirm => 'Konfirmasi';
}

// Path: toast
class _StringsToastId extends _StringsToastEn {
	_StringsToastId._(_StringsId root) : this._root = root, super._(root);

	@override final _StringsId _root; // ignore: unused_field

	// Translations
	@override String get unpurchase => 'Tidak dapat membeli saat ini';
	@override String get purchasedNotFound => 'Tidak dapat membeli layanan saat ini';
	@override String get payment => 'pembayaran berhasil!';
	@override String get coinsNotEnough => 'Emas tidak memadai!';
	@override String get received => 'Tanda terima yang berhasil!';
	@override String get adError => 'Menonton iklan terlalu sering, tolong coba lagi nanti!';
}

// Path: localNotification
class _StringsLocalNotificationId extends _StringsLocalNotificationEn {
	_StringsLocalNotificationId._(_StringsId root) : this._root = root, super._(root);

	@override final _StringsId _root; // ignore: unused_field

	// Translations
	@override String get adTaskReady => 'Tugas iklan baru sudah siap!';
}

// Path: task.tip
class _StringsTaskTipId extends _StringsTaskTipEn {
	_StringsTaskTipId._(_StringsId root) : this._root = root, super._(root);

	@override final _StringsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mengingatkan';
	@override List<dynamic> get values => [
		({required Object value}) => '1. Klik ${value} tombol',
		({required Object value}) => '2. Buka ${value}',
		({required Object value}) => '${value}. ${value}',
		({required Object value}) => '4. Kembali ke ${value}',
		'5. Dapatkan Koin Emas',
	];
	@override String get message => 'Jika Anda membatalkan perhatian/suka, koin emas akan dihapus!';
}

// Path: store.ad
class _StringsStoreAdId extends _StringsStoreAdEn {
	_StringsStoreAdId._(_StringsId root) : this._root = root, super._(root);

	@override final _StringsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hadiah iklan';
	@override String get watch => 'Tonton iklan';
}

// Path: store.changeAccount
class _StringsStoreChangeAccountId extends _StringsStoreChangeAccountEn {
	_StringsStoreChangeAccountId._(_StringsId root) : this._root = root, super._(root);

	@override final _StringsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ubah akun';
	@override String get add => 'Menambahkan akun';
}

// Path: store.tip
class _StringsStoreTipId extends _StringsStoreTipEn {
	_StringsStoreTipId._(_StringsId root) : this._root = root, super._(root);

	@override final _StringsId _root; // ignore: unused_field

	// Translations
	@override late final _StringsStoreTipFollowId follow = _StringsStoreTipFollowId._(_root);
	@override late final _StringsStoreTipLikeId like = _StringsStoreTipLikeId._(_root);
}

// Path: store.buy
class _StringsStoreBuyId extends _StringsStoreBuyEn {
	_StringsStoreBuyId._(_StringsId root) : this._root = root, super._(root);

	@override final _StringsId _root; // ignore: unused_field

	// Translations
	@override String get follow => 'Pembeli';
	@override String get like => 'Beli pujian';
	@override String get view => 'Beli dan Tonton';
	@override String get share => 'Beli dan Bagikan';
	@override String get retweet => 'Beli transfer';
	@override String get accountPublic => '* Harap jaga agar akun Anda tetap terbuka';
	@override String get channelPublic => '* Harap tetap buka saluran Anda';
	@override String get tiktok => 'Tautan video Tiktok Anda';
	@override String get twitter => 'Tautan Tweet Twitter Anda';
	@override String get instagram => 'Tautan Posting Instagram Anda';
	@override String get youtube => 'Tautan Saluran YouTube Anda';
	@override String get pay => 'Membayar';
}

// Path: store.purchase
class _StringsStorePurchaseId extends _StringsStorePurchaseEn {
	_StringsStorePurchaseId._(_StringsId root) : this._root = root, super._(root);

	@override final _StringsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'pembayaran berhasil';
	@override String get message => 'Harap tunggu pesanan selesaikan!';
}

// Path: store.notice
class _StringsStoreNoticeId extends _StringsStoreNoticeEn {
	_StringsStoreNoticeId._(_StringsId root) : this._root = root, super._(root);

	@override final _StringsId _root; // ignore: unused_field

	// Translations
	@override String message({required Object value}) => 'Untuk mendapatkan ${value} pengikut gratis, buka pemberitahuan aplikasi terlebih dahulu.';
	@override String get turnOn => 'Membuka';
}

// Path: setting.share
class _StringsSettingShareId extends _StringsSettingShareEn {
	_StringsSettingShareId._(_StringsId root) : this._root = root, super._(root);

	@override final _StringsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bagikan aplikasi';
	@override String message({required Object value}) => 'Saya menemukan aplikasi harta karun yang bisa mendapatkan penggemar dan suka Tiktok gratis. Melalui instalasi tautan berikut, kami akan mendapatkan ${value} koin emas!';
}

// Path: daily.rules
class _StringsDailyRulesId extends _StringsDailyRulesEn {
	_StringsDailyRulesId._(_StringsId root) : this._root = root, super._(root);

	@override final _StringsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'aturan';
	@override List<String> get values => [
		'Anda dapat masuk setiap 24 jam;',
		'Setelah interupsi tanda -dalam, itu akan dimulai lagi.',
	];
}

// Path: wheel.rules
class _StringsWheelRulesId extends _StringsWheelRulesEn {
	_StringsWheelRulesId._(_StringsId root) : this._root = root, super._(root);

	@override final _StringsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'aturan';
	@override List<dynamic> get values => [
		({required Object value}) => 'Setiap lotre akan menelan biaya ${value} koin emas;',
		'Jumlah undian tidak terbatas.',
	];
}

// Path: account.alert
class _StringsAccountAlertId extends _StringsAccountAlertEn {
	_StringsAccountAlertId._(_StringsId root) : this._root = root, super._(root);

	@override final _StringsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hapus akun';
	@override String get message => 'Setelah menghapus, Anda tidak akan dapat menggunakan akun untuk operasi terkait.';
}

// Path: faq.values.0
class _StringsFaq0i0Id extends _StringsFaq0i0En {
	_StringsFaq0i0Id._(_StringsId root) : this._root = root, super._(root);

	@override final _StringsId _root; // ignore: unused_field

	// Translations
	@override String get title => '1. Bagaimana cara memulai?';
	@override String get value => 'Cukup tambahkan nama pengguna platform Anda sesuai dengan prompt halaman, tidak ada kata sandi, setiap platform memiliki prompt yang sesuai.';
}

// Path: faq.values.1
class _StringsFaq0i1Id extends _StringsFaq0i1En {
	_StringsFaq0i1Id._(_StringsId root) : this._root = root, super._(root);

	@override final _StringsId _root; // ignore: unused_field

	// Translations
	@override String get title => '2. Apakah aman menggunakannya?';
	@override String get value => 'Tentu saja, ini aman. Kami tidak membutuhkan kata sandi Anda, dan kami tidak dapat menyimpan data aplikasi sosial Anda karena melompat ke aplikasi resmi untuk memperhatikan atau melakukan hal -hal lain.';
}

// Path: faq.values.2
class _StringsFaq0i2Id extends _StringsFaq0i2En {
	_StringsFaq0i2Id._(_StringsId root) : this._root = root, super._(root);

	@override final _StringsId _root; // ignore: unused_field

	// Translations
	@override String get title => '3. Bagaimana ini bekerja semuanya?';
	@override String get value => 'Metode kerja sederhana: Data/video pribadi Anda ditampilkan di komunitas kami. Pengguna dengan bebas memutuskan apakah mereka harus memperhatikan/seperti Anda berdasarkan konten data pribadi Anda.Sebagai pertukaran yang disukai/diikuti, mereka akan menerima koin emas dan dapat digunakan untuk mendapatkan pengikut/kekasih.';
}

// Path: faq.values.3
class _StringsFaq0i3Id extends _StringsFaq0i3En {
	_StringsFaq0i3Id._(_StringsId root) : this._root = root, super._(root);

	@override final _StringsId _root; // ignore: unused_field

	// Translations
	@override String get title => '4. Apakah perhatian dan seperti nyata?';
	@override String get value => 'Tentu saja, itu nyata. Ketika Anda membeli layanan terkait, ada banyak pengguna nyata di belakangnya untuk memberi Anda layanan, dan dioperasikan pada aplikasi resmi. Anda tidak perlu khawatir tentang hal itu.';
}

// Path: faq.values.4
class _StringsFaq0i4Id extends _StringsFaq0i4En {
	_StringsFaq0i4Id._(_StringsId root) : this._root = root, super._(root);

	@override final _StringsId _root; // ignore: unused_field

	// Translations
	@override String get title => '5. Bagaimana cara mendapatkan koin emas?';
	@override String get value => 'Di beranda, Anda dapat melihat daftar tugas, klik untuk mengikuti atau menyukai, dan melompat ke aplikasi yang sesuai untuk beroperasi. Harap berhati -hati untuk tidak membatalkan perhatian Anda atau suka, yang akan menyebabkan hadiah Anda dibatalkan.';
}

// Path: faq.values.5
class _StringsFaq0i5Id extends _StringsFaq0i5En {
	_StringsFaq0i5Id._(_StringsId root) : this._root = root, super._(root);

	@override final _StringsId _root; // ignore: unused_field

	// Translations
	@override String get title => '6. Mengapa tugas gagal?';
	@override String get value => 'Ini biasanya karena Anda tidak benar -benar memperhatikan atau menyukainya. Anda harus memeriksa akun Anda terlebih dahulu.';
}

// Path: faq.values.6
class _StringsFaq0i6Id extends _StringsFaq0i6En {
	_StringsFaq0i6Id._(_StringsId root) : this._root = root, super._(root);

	@override final _StringsId _root; // ignore: unused_field

	// Translations
	@override String get title => '7. Berapa lama waktu yang dibutuhkan untuk menyelesaikan pesanan saya?';
	@override List<String> get value => [
		'Ini tergantung pada volume pesanan Anda. Biasanya, Anda akan mulai mendapatkan layanan segera setelah melakukan pemesanan dan menyelesaikannya dalam waktu 24 jam, tetapi kami tidak dapat memberikan waktu yang akurat, karena ada sejumlah besar pengguna nyata yang beroperasi di belakang. Itu harus Tercatat layanan emas lebih cepat dari layanan biasa.',
		'Dapatkan terlalu banyak lalu lintas dalam waktu singkat akan membuat akun Anda curiga, jadi menunggu dengan sabar adalah cara terbaik.',
	];
}

// Path: faq.values.7
class _StringsFaq0i7Id extends _StringsFaq0i7En {
	_StringsFaq0i7Id._(_StringsId root) : this._root = root, super._(root);

	@override final _StringsId _root; // ignore: unused_field

	// Translations
	@override String get title => '8. Apa yang harus saya lakukan setelah memesan?';
	@override String get value => 'Setelah Anda melakukan pemesanan, simpan akun Anda diungkapkan. Jangan memodifikasi nama pengguna Anda sebelum pesanan selesai.';
}

// Path: faq.values.8
class _StringsFaq0i8Id extends _StringsFaq0i8En {
	_StringsFaq0i8Id._(_StringsId root) : this._root = root, super._(root);

	@override final _StringsId _root; // ignore: unused_field

	// Translations
	@override String get title => '9. Bagaimana jika saya punya masalah?';
	@override String get value => 'Anda dapat menghubungi kami melalui umpan balik di aplikasi.';
}

// Path: store.tip.follow
class _StringsStoreTipFollowId extends _StringsStoreTipFollowEn {
	_StringsStoreTipFollowId._(_StringsId root) : this._root = root, super._(root);

	@override final _StringsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pengikut & Pengikut Senior';
	@override List<String> get values => [
		'',
		'Pengikut',
		'Pengikut Senior',
		'Waktu lengkap',
		'1-24 jam',
		'1-4 jam',
		'Waktu kompensasi',
		'/',
		'Kompensasi dalam 7 hari',
		'Kualitas pengikut',
		'nyata',
		'Nyata & aktif',
		'Drop rate',
		'8-15%',
		'0-3%',
	];
}

// Path: store.tip.like
class _StringsStoreTipLikeId extends _StringsStoreTipLikeEn {
	_StringsStoreTipLikeId._(_StringsId root) : this._root = root, super._(root);

	@override final _StringsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Like & Advanced Praise';
	@override List<String> get values => [
		'',
		'Suka',
		'Pujian tingkat tinggi',
		'Waktu lengkap',
		'1-24 jam',
		'1-4 jam',
		'Waktu kompensasi',
		'/',
		'Kompensasi dalam 7 hari',
		'Drop rate',
		'8-15%',
		'0-3%',
	];
}

// Path: <root>
class _StringsIt extends _StringsEn {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsIt.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.it,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <it>.
	@override final TranslationMetadata<AppLocale, _StringsEn> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	@override late final _StringsIt _root = this; // ignore: unused_field

	// Translations
	@override late final _StringsOnlyTitleIt onlyTitle = _StringsOnlyTitleIt._(_root);
	@override late final _StringsUniversalIt universal = _StringsUniversalIt._(_root);
	@override late final _StringsTabbarIt tabbar = _StringsTabbarIt._(_root);
	@override late final _StringsTaskIt task = _StringsTaskIt._(_root);
	@override late final _StringsStoreIt store = _StringsStoreIt._(_root);
	@override late final _StringsCoinsIt coins = _StringsCoinsIt._(_root);
	@override late final _StringsLoginIt login = _StringsLoginIt._(_root);
	@override late final _StringsSettingIt setting = _StringsSettingIt._(_root);
	@override late final _StringsLanguageIt language = _StringsLanguageIt._(_root);
	@override late final _StringsDailyIt daily = _StringsDailyIt._(_root);
	@override late final _StringsWheelIt wheel = _StringsWheelIt._(_root);
	@override late final _StringsAccountIt account = _StringsAccountIt._(_root);
	@override late final _StringsOrdersIt orders = _StringsOrdersIt._(_root);
	@override late final _StringsFaqIt faq = _StringsFaqIt._(_root);
	@override late final _StringsAboutIt about = _StringsAboutIt._(_root);
	@override late final _StringsAlertIt alert = _StringsAlertIt._(_root);
	@override late final _StringsToastIt toast = _StringsToastIt._(_root);
	@override late final _StringsLocalNotificationIt localNotification = _StringsLocalNotificationIt._(_root);
}

// Path: onlyTitle
class _StringsOnlyTitleIt extends _StringsOnlyTitleEn {
	_StringsOnlyTitleIt._(_StringsIt root) : this._root = root, super._(root);

	@override final _StringsIt _root; // ignore: unused_field

	// Translations
	@override String get contact => 'Contattaci';
}

// Path: universal
class _StringsUniversalIt extends _StringsUniversalEn {
	_StringsUniversalIt._(_StringsIt root) : this._root = root, super._(root);

	@override final _StringsIt _root; // ignore: unused_field

	// Translations
	@override String get coins => 'oro';
	@override String get requestError => 'Per favore riprova più tardi';
	@override String get add => 'Aggiungi account';
}

// Path: tabbar
class _StringsTabbarIt extends _StringsTabbarEn {
	_StringsTabbarIt._(_StringsIt root) : this._root = root, super._(root);

	@override final _StringsIt _root; // ignore: unused_field

	// Translations
	@override String get task => 'prima pagina';
	@override String get store => 'negozio';
	@override String get setting => 'impostare';
}

// Path: task
class _StringsTaskIt extends _StringsTaskEn {
	_StringsTaskIt._(_StringsIt root) : this._root = root, super._(root);

	@override final _StringsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'prima pagina';
	@override String get skip => 'saltare';
	@override String get follow => 'concentrarsi su';
	@override String get like => 'piace';
	@override String get noTask => 'Non chiedere';
	@override late final _StringsTaskTipIt tip = _StringsTaskTipIt._(_root);
}

// Path: store
class _StringsStoreIt extends _StringsStoreEn {
	_StringsStoreIt._(_StringsIt root) : this._root = root, super._(root);

	@override final _StringsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'negozio';
	@override String get free => 'gratuito';
	@override String get follow => 'Seguaci';
	@override String get like => 'piace';
	@override String get view => 'Guadare';
	@override String get share => 'Condividere';
	@override String get retweet => 'Retweet';
	@override late final _StringsStoreAdIt ad = _StringsStoreAdIt._(_root);
	@override late final _StringsStoreChangeAccountIt changeAccount = _StringsStoreChangeAccountIt._(_root);
	@override late final _StringsStoreTipIt tip = _StringsStoreTipIt._(_root);
	@override late final _StringsStoreBuyIt buy = _StringsStoreBuyIt._(_root);
	@override late final _StringsStorePurchaseIt purchase = _StringsStorePurchaseIt._(_root);
	@override late final _StringsStoreNoticeIt notice = _StringsStoreNoticeIt._(_root);
}

// Path: coins
class _StringsCoinsIt extends _StringsCoinsEn {
	_StringsCoinsIt._(_StringsIt root) : this._root = root, super._(root);

	@override final _StringsIt _root; // ignore: unused_field

	// Translations
	@override String get empty => 'Nessuna storia';
}

// Path: login
class _StringsLoginIt extends _StringsLoginEn {
	_StringsLoginIt._(_StringsIt root) : this._root = root, super._(root);

	@override final _StringsIt _root; // ignore: unused_field

	// Translations
	@override String get confirm => 'Confermare';
	@override String username({required Object value}) => 'Inserisci il tuo nome utente ${value}';
	@override String get channel => 'Inserisci il collegamento del tuo canale YouTube';
	@override String get publicUsername => '* Si prega di mantenere il tuo account è aperto';
	@override String get publicChannel => '* Per favore, tieni il tuo canale aperto';
	@override String get add => 'Aggiungi account';
	@override String get hintUsername => 'nome utente';
	@override String get hintChannel => 'Collegamento del canale';
}

// Path: setting
class _StringsSettingIt extends _StringsSettingEn {
	_StringsSettingIt._(_StringsIt root) : this._root = root, super._(root);

	@override final _StringsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'impostare';
	@override String get editor => 'Modifica informazioni';
	@override String get daily => 'Registrazione';
	@override String get wheel => 'Ruota della fortuna';
	@override String get account => 'Conto di gestione';
	@override String get language => 'linguaggio';
	@override String get orders => 'Ordine';
	@override String get faq => 'problema comune';
	@override String get about => 'di';
	@override late final _StringsSettingShareIt share = _StringsSettingShareIt._(_root);
	@override String get rateUs => 'Valutaci';
}

// Path: language
class _StringsLanguageIt extends _StringsLanguageEn {
	_StringsLanguageIt._(_StringsIt root) : this._root = root, super._(root);

	@override final _StringsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Scegli una lingua';
	@override String get start => 'inizio';
}

// Path: daily
class _StringsDailyIt extends _StringsDailyEn {
	_StringsDailyIt._(_StringsIt root) : this._root = root, super._(root);

	@override final _StringsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Registrazione';
	@override String get checkIn => 'Registrazione';
	@override late final _StringsDailyRulesIt rules = _StringsDailyRulesIt._(_root);
}

// Path: wheel
class _StringsWheelIt extends _StringsWheelEn {
	_StringsWheelIt._(_StringsIt root) : this._root = root, super._(root);

	@override final _StringsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ruota della fortuna';
	@override late final _StringsWheelRulesIt rules = _StringsWheelRulesIt._(_root);
}

// Path: account
class _StringsAccountIt extends _StringsAccountEn {
	_StringsAccountIt._(_StringsIt root) : this._root = root, super._(root);

	@override final _StringsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Conto di gestione';
	@override String get add => '+ Aggiungi numero di account';
	@override String get empty => 'Nessun account';
	@override late final _StringsAccountAlertIt alert = _StringsAccountAlertIt._(_root);
}

// Path: orders
class _StringsOrdersIt extends _StringsOrdersEn {
	_StringsOrdersIt._(_StringsIt root) : this._root = root, super._(root);

	@override final _StringsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ordine';
	@override String get pending => 'Coda';
	@override String get processing => 'in lavorazione';
	@override String get inProgress => 'in lavorazione';
	@override String get completed => 'completato';
	@override String get partial => 'Completamento parziale';
	@override String get error => 'errore';
	@override String get canceled => 'Annullato';
	@override String get refunded => 'rimborsato';
	@override String get empty => 'Nessun ordine';
}

// Path: faq
class _StringsFaqIt extends _StringsFaqEn {
	_StringsFaqIt._(_StringsIt root) : this._root = root, super._(root);

	@override final _StringsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'problema comune';
	@override List<dynamic> get values => [
		_StringsFaq0i0It._(_root),
		_StringsFaq0i1It._(_root),
		_StringsFaq0i2It._(_root),
		_StringsFaq0i3It._(_root),
		_StringsFaq0i4It._(_root),
		_StringsFaq0i5It._(_root),
		_StringsFaq0i6It._(_root),
		_StringsFaq0i7It._(_root),
		_StringsFaq0i8It._(_root),
	];
}

// Path: about
class _StringsAboutIt extends _StringsAboutEn {
	_StringsAboutIt._(_StringsIt root) : this._root = root, super._(root);

	@override final _StringsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'di';
	@override String get contact => 'Contattaci';
	@override String get service => 'Termini di servizio';
	@override String get policy => 'politica sulla riservatezza';
}

// Path: alert
class _StringsAlertIt extends _StringsAlertEn {
	_StringsAlertIt._(_StringsIt root) : this._root = root, super._(root);

	@override final _StringsIt _root; // ignore: unused_field

	// Translations
	@override String get ok => 'OK';
	@override String get cancel => 'Annulla';
	@override String get confirm => 'Confermare';
}

// Path: toast
class _StringsToastIt extends _StringsToastEn {
	_StringsToastIt._(_StringsIt root) : this._root = root, super._(root);

	@override final _StringsIt _root; // ignore: unused_field

	// Translations
	@override String get unpurchase => 'Non posso acquistare attualmente';
	@override String get purchasedNotFound => 'Non posso acquistare il servizio corrente';
	@override String get payment => 'Pagamento di successo!';
	@override String get coinsNotEnough => 'Oro inadeguato!';
	@override String get received => 'Ricevuta riuscita!';
	@override String get adError => 'Guardando gli annunci troppo spesso, riprova più tardi!';
}

// Path: localNotification
class _StringsLocalNotificationIt extends _StringsLocalNotificationEn {
	_StringsLocalNotificationIt._(_StringsIt root) : this._root = root, super._(root);

	@override final _StringsIt _root; // ignore: unused_field

	// Translations
	@override String get adTaskReady => 'Il nuovo compito pubblicitario è pronto!';
}

// Path: task.tip
class _StringsTaskTipIt extends _StringsTaskTipEn {
	_StringsTaskTipIt._(_StringsIt root) : this._root = root, super._(root);

	@override final _StringsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Richiesta';
	@override List<dynamic> get values => [
		({required Object value}) => '1. Fare clic sul pulsante ${value}',
		({required Object value}) => '2. Aprire ${value}',
		({required Object value}) => '${value}. ${value}',
		({required Object value}) => '4. Torna a ${value}',
		'5. Ottieni monete d\'oro',
	];
	@override String get message => 'Se annulla la tua attenzione/Mi piace, le monete d\'oro verranno rimosse!';
}

// Path: store.ad
class _StringsStoreAdIt extends _StringsStoreAdEn {
	_StringsStoreAdIt._(_StringsIt root) : this._root = root, super._(root);

	@override final _StringsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ricompensa pubblicitaria';
	@override String get watch => 'Guarda una pubblicità';
}

// Path: store.changeAccount
class _StringsStoreChangeAccountIt extends _StringsStoreChangeAccountEn {
	_StringsStoreChangeAccountIt._(_StringsIt root) : this._root = root, super._(root);

	@override final _StringsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Modifica l\'account';
	@override String get add => 'Aggiungi account';
}

// Path: store.tip
class _StringsStoreTipIt extends _StringsStoreTipEn {
	_StringsStoreTipIt._(_StringsIt root) : this._root = root, super._(root);

	@override final _StringsIt _root; // ignore: unused_field

	// Translations
	@override late final _StringsStoreTipFollowIt follow = _StringsStoreTipFollowIt._(_root);
	@override late final _StringsStoreTipLikeIt like = _StringsStoreTipLikeIt._(_root);
}

// Path: store.buy
class _StringsStoreBuyIt extends _StringsStoreBuyEn {
	_StringsStoreBuyIt._(_StringsIt root) : this._root = root, super._(root);

	@override final _StringsIt _root; // ignore: unused_field

	// Translations
	@override String get follow => 'Acquirente';
	@override String get like => 'Acquista un po \'di lode';
	@override String get view => 'Acquista e guarda';
	@override String get share => 'Acquista e condividi';
	@override String get retweet => 'Acquista un trasferimento';
	@override String get accountPublic => '* Si prega di mantenere il tuo account è aperto';
	@override String get channelPublic => '* Per favore, tieni il tuo canale aperto';
	@override String get tiktok => 'Il tuo link video tiktok';
	@override String get twitter => 'Il tuo link a Twitter Tweet';
	@override String get instagram => 'Il tuo link post Instagram';
	@override String get youtube => 'Il tuo link per il canale YouTube';
	@override String get pay => 'Paga';
}

// Path: store.purchase
class _StringsStorePurchaseIt extends _StringsStorePurchaseEn {
	_StringsStorePurchaseIt._(_StringsIt root) : this._root = root, super._(root);

	@override final _StringsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'pagamento riuscito';
	@override String get message => 'Si prega di attendere che l\'ordine sia completato!';
}

// Path: store.notice
class _StringsStoreNoticeIt extends _StringsStoreNoticeEn {
	_StringsStoreNoticeIt._(_StringsIt root) : this._root = root, super._(root);

	@override final _StringsIt _root; // ignore: unused_field

	// Translations
	@override String message({required Object value}) => 'Per ottenere ${value} follower gratuiti, apri prima la notifica dell\'app.';
	@override String get turnOn => 'Aprire';
}

// Path: setting.share
class _StringsSettingShareIt extends _StringsSettingShareEn {
	_StringsSettingShareIt._(_StringsIt root) : this._root = root, super._(root);

	@override final _StringsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Condividi app';
	@override String message({required Object value}) => 'Ho trovato un\'applicazione Treasure in grado di ottenere fan e Mi piace gratuiti. Attraverso la seguente installazione di link, avremo ${value} monete d\'oro!';
}

// Path: daily.rules
class _StringsDailyRulesIt extends _StringsDailyRulesEn {
	_StringsDailyRulesIt._(_StringsIt root) : this._root = root, super._(root);

	@override final _StringsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'regola';
	@override List<String> get values => [
		'Puoi accedere ogni 24 ore;',
		'Dopo l\'interruzione del segno, ricomincerà.',
	];
}

// Path: wheel.rules
class _StringsWheelRulesIt extends _StringsWheelRulesEn {
	_StringsWheelRulesIt._(_StringsIt root) : this._root = root, super._(root);

	@override final _StringsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'regola';
	@override List<dynamic> get values => [
		({required Object value}) => 'Ogni lotteria costerà ${value} monete d\'oro;',
		'Il numero di sorteggi non è limitato.',
	];
}

// Path: account.alert
class _StringsAccountAlertIt extends _StringsAccountAlertEn {
	_StringsAccountAlertIt._(_StringsIt root) : this._root = root, super._(root);

	@override final _StringsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Eliminare l\'account';
	@override String get message => 'Dopo l\'eliminazione, non sarai in grado di utilizzare l\'account per le operazioni correlate.';
}

// Path: faq.values.0
class _StringsFaq0i0It extends _StringsFaq0i0En {
	_StringsFaq0i0It._(_StringsIt root) : this._root = root, super._(root);

	@override final _StringsIt _root; // ignore: unused_field

	// Translations
	@override String get title => '1. Come iniziare?';
	@override String get value => 'Basta aggiungere il nome utente della tua piattaforma in base ai prompt della pagina, nessuna password, ogni piattaforma ha un prompt corrispondente.';
}

// Path: faq.values.1
class _StringsFaq0i1It extends _StringsFaq0i1En {
	_StringsFaq0i1It._(_StringsIt root) : this._root = root, super._(root);

	@override final _StringsIt _root; // ignore: unused_field

	// Translations
	@override String get title => '2. È sicuro usarlo?';
	@override String get value => 'Naturalmente, è sicuro. Non abbiamo bisogno della tua password e non possiamo salvare i tuoi dati sull\'applicazione sociale perché sta saltando sull\'applicazione ufficiale per prestare attenzione o fare altre cose.';
}

// Path: faq.values.2
class _StringsFaq0i2It extends _StringsFaq0i2En {
	_StringsFaq0i2It._(_StringsIt root) : this._root = root, super._(root);

	@override final _StringsIt _root; // ignore: unused_field

	// Translations
	@override String get title => '3. Come funziona tutto?';
	@override String get value => 'Il metodo di lavoro è semplice: i tuoi dati/video personali vengono visualizzati nella nostra comunità. Gli utenti decidono liberamente se dovrebbero prestare attenzione/come te in base al contenuto dei tuoi dati personali.Come scambio che piace/segue, riceveranno monete d\'oro e possono essere utilizzati per ottenere follower/amanti.';
}

// Path: faq.values.3
class _StringsFaq0i3It extends _StringsFaq0i3En {
	_StringsFaq0i3It._(_StringsIt root) : this._root = root, super._(root);

	@override final _StringsIt _root; // ignore: unused_field

	// Translations
	@override String get title => '4. L\'attenzione e come reale?';
	@override String get value => 'Naturalmente, è reale. Quando acquisti servizi correlati, ci sono molti utenti reali dietro di esso per fornirti servizi ed è gestito sull\'app ufficiale. Non devi preoccuparti.';
}

// Path: faq.values.4
class _StringsFaq0i4It extends _StringsFaq0i4En {
	_StringsFaq0i4It._(_StringsIt root) : this._root = root, super._(root);

	@override final _StringsIt _root; // ignore: unused_field

	// Translations
	@override String get title => '5. Come guadagno monete d\'oro?';
	@override String get value => 'Nella homepage, puoi vedere l\'elenco delle attività, fare clic per seguire o simile e passare all\'app corrispondente per il funzionamento. Fai attenzione a non annullare la tua attenzione o come, il che causerà l\'annullamento della tua ricompensa.';
}

// Path: faq.values.5
class _StringsFaq0i5It extends _StringsFaq0i5En {
	_StringsFaq0i5It._(_StringsIt root) : this._root = root, super._(root);

	@override final _StringsIt _root; // ignore: unused_field

	// Translations
	@override String get title => '6. Perché le attività falliscono?';
	@override String get value => 'Questo di solito perché non presti davvero attenzione o ti piaccia. Dovresti prima controllare il tuo account.';
}

// Path: faq.values.6
class _StringsFaq0i6It extends _StringsFaq0i6En {
	_StringsFaq0i6It._(_StringsIt root) : this._root = root, super._(root);

	@override final _StringsIt _root; // ignore: unused_field

	// Translations
	@override String get title => '7. Quanto tempo ci vuole per completare il mio ordine?';
	@override List<String> get value => [
		'Questo dipende dal volume dell\'ordine. Di solito, inizierai a ottenere il servizio immediatamente dopo aver effettuato l\'ordine e completarlo entro 24 ore Essere notato Golden Service è più veloce dei servizi ordinari.',
		'Ottieni troppo traffico in breve tempo renderà il tuo account sospettoso, quindi aspettare pazientemente è il modo migliore.',
	];
}

// Path: faq.values.7
class _StringsFaq0i7It extends _StringsFaq0i7En {
	_StringsFaq0i7It._(_StringsIt root) : this._root = root, super._(root);

	@override final _StringsIt _root; // ignore: unused_field

	// Translations
	@override String get title => '8. Cosa dovrei fare dopo l\'ordinazione?';
	@override String get value => 'Dopo aver effettuato l\'ordine, tieni il tuo account divulgato. Non modificare il tuo nome utente prima che l\'ordine sia completato.';
}

// Path: faq.values.8
class _StringsFaq0i8It extends _StringsFaq0i8En {
	_StringsFaq0i8It._(_StringsIt root) : this._root = root, super._(root);

	@override final _StringsIt _root; // ignore: unused_field

	// Translations
	@override String get title => '9. Cosa succede se ho un problema?';
	@override String get value => 'Puoi contattarci tramite feedback nell\'app.';
}

// Path: store.tip.follow
class _StringsStoreTipFollowIt extends _StringsStoreTipFollowEn {
	_StringsStoreTipFollowIt._(_StringsIt root) : this._root = root, super._(root);

	@override final _StringsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Follower e seguace senior';
	@override List<String> get values => [
		'',
		'Seguaci',
		'Seguace senior',
		'Tempo completo',
		'1-24 ore',
		'1-4 ore',
		'Tempo di compensazione',
		'/',
		'Compensazione entro 7 giorni',
		'Qualità follower',
		'vero',
		'Reale e attivo',
		'Tasso di caduta',
		'8-15%',
		'0-3%',
	];
}

// Path: store.tip.like
class _StringsStoreTipLikeIt extends _StringsStoreTipLikeEn {
	_StringsStoreTipLikeIt._(_StringsIt root) : this._root = root, super._(root);

	@override final _StringsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Come e lode avanzate';
	@override List<String> get values => [
		'',
		'piace',
		'Lode di alto livello',
		'Tempo completo',
		'1-24 ore',
		'1-4 ore',
		'Tempo di compensazione',
		'/',
		'Compensazione entro 7 giorni',
		'Tasso di caduta',
		'8-15%',
		'0-3%',
	];
}

// Path: <root>
class _StringsJa extends _StringsEn {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsJa.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.ja,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ja>.
	@override final TranslationMetadata<AppLocale, _StringsEn> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	@override late final _StringsJa _root = this; // ignore: unused_field

	// Translations
	@override late final _StringsOnlyTitleJa onlyTitle = _StringsOnlyTitleJa._(_root);
	@override late final _StringsUniversalJa universal = _StringsUniversalJa._(_root);
	@override late final _StringsTabbarJa tabbar = _StringsTabbarJa._(_root);
	@override late final _StringsTaskJa task = _StringsTaskJa._(_root);
	@override late final _StringsStoreJa store = _StringsStoreJa._(_root);
	@override late final _StringsCoinsJa coins = _StringsCoinsJa._(_root);
	@override late final _StringsLoginJa login = _StringsLoginJa._(_root);
	@override late final _StringsSettingJa setting = _StringsSettingJa._(_root);
	@override late final _StringsLanguageJa language = _StringsLanguageJa._(_root);
	@override late final _StringsDailyJa daily = _StringsDailyJa._(_root);
	@override late final _StringsWheelJa wheel = _StringsWheelJa._(_root);
	@override late final _StringsAccountJa account = _StringsAccountJa._(_root);
	@override late final _StringsOrdersJa orders = _StringsOrdersJa._(_root);
	@override late final _StringsFaqJa faq = _StringsFaqJa._(_root);
	@override late final _StringsAboutJa about = _StringsAboutJa._(_root);
	@override late final _StringsAlertJa alert = _StringsAlertJa._(_root);
	@override late final _StringsToastJa toast = _StringsToastJa._(_root);
	@override late final _StringsLocalNotificationJa localNotification = _StringsLocalNotificationJa._(_root);
}

// Path: onlyTitle
class _StringsOnlyTitleJa extends _StringsOnlyTitleEn {
	_StringsOnlyTitleJa._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get contact => 'お問い合わせ';
}

// Path: universal
class _StringsUniversalJa extends _StringsUniversalEn {
	_StringsUniversalJa._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get coins => '金';
	@override String get requestError => '後でもう一度やり直してください';
	@override String get add => 'アカウントを追加する';
}

// Path: tabbar
class _StringsTabbarJa extends _StringsTabbarEn {
	_StringsTabbarJa._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get task => '表紙';
	@override String get store => '店';
	@override String get setting => '設定';
}

// Path: task
class _StringsTaskJa extends _StringsTaskEn {
	_StringsTaskJa._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '表紙';
	@override String get skip => '飛び越える';
	@override String get follow => '焦点を合わせる';
	@override String get like => 'お気に入り';
	@override String get noTask => '聞かない';
	@override late final _StringsTaskTipJa tip = _StringsTaskTipJa._(_root);
}

// Path: store
class _StringsStoreJa extends _StringsStoreEn {
	_StringsStoreJa._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '店';
	@override String get free => '自由';
	@override String get follow => 'フォロワー';
	@override String get like => 'お気に入り';
	@override String get view => '時計';
	@override String get share => 'シェア';
	@override String get retweet => 'リツイート';
	@override late final _StringsStoreAdJa ad = _StringsStoreAdJa._(_root);
	@override late final _StringsStoreChangeAccountJa changeAccount = _StringsStoreChangeAccountJa._(_root);
	@override late final _StringsStoreTipJa tip = _StringsStoreTipJa._(_root);
	@override late final _StringsStoreBuyJa buy = _StringsStoreBuyJa._(_root);
	@override late final _StringsStorePurchaseJa purchase = _StringsStorePurchaseJa._(_root);
	@override late final _StringsStoreNoticeJa notice = _StringsStoreNoticeJa._(_root);
}

// Path: coins
class _StringsCoinsJa extends _StringsCoinsEn {
	_StringsCoinsJa._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get empty => '履歴はありません';
}

// Path: login
class _StringsLoginJa extends _StringsLoginEn {
	_StringsLoginJa._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get confirm => '確認';
	@override String username({required Object value}) => '${value}つのユーザー名を入力します';
	@override String get channel => 'YouTubeチャネルリンクを入力します';
	@override String get publicUsername => '*アカウントを開いておいてください';
	@override String get publicChannel => '*チャンネルを開いたままにしてください';
	@override String get add => 'アカウントを追加する';
	@override String get hintUsername => 'ユーザー名';
	@override String get hintChannel => 'チャネルリンク';
}

// Path: setting
class _StringsSettingJa extends _StringsSettingEn {
	_StringsSettingJa._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '設定';
	@override String get editor => '情報を編集します';
	@override String get daily => 'ログイン';
	@override String get wheel => '運命の輪';
	@override String get account => '管理アカウント';
	@override String get language => '言語';
	@override String get orders => '注文';
	@override String get faq => '一般的な問題';
	@override String get about => '約';
	@override late final _StringsSettingShareJa share = _StringsSettingShareJa._(_root);
	@override String get rateUs => '私たちを評価してください';
}

// Path: language
class _StringsLanguageJa extends _StringsLanguageEn {
	_StringsLanguageJa._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '言語を選択してください';
	@override String get start => '始める';
}

// Path: daily
class _StringsDailyJa extends _StringsDailyEn {
	_StringsDailyJa._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ログイン';
	@override String get checkIn => 'ログイン';
	@override late final _StringsDailyRulesJa rules = _StringsDailyRulesJa._(_root);
}

// Path: wheel
class _StringsWheelJa extends _StringsWheelEn {
	_StringsWheelJa._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '運命の輪';
	@override late final _StringsWheelRulesJa rules = _StringsWheelRulesJa._(_root);
}

// Path: account
class _StringsAccountJa extends _StringsAccountEn {
	_StringsAccountJa._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '管理アカウント';
	@override String get add => '+アカウント番号を追加します';
	@override String get empty => 'アカウントなし';
	@override late final _StringsAccountAlertJa alert = _StringsAccountAlertJa._(_root);
}

// Path: orders
class _StringsOrdersJa extends _StringsOrdersEn {
	_StringsOrdersJa._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '注文';
	@override String get pending => '列';
	@override String get processing => '処理';
	@override String get inProgress => '処理';
	@override String get completed => '完了しました';
	@override String get partial => '部分的な完成';
	@override String get error => '間違い';
	@override String get canceled => 'キャンセル';
	@override String get refunded => '返金';
	@override String get empty => '注文なし';
}

// Path: faq
class _StringsFaqJa extends _StringsFaqEn {
	_StringsFaqJa._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '一般的な問題';
	@override List<dynamic> get values => [
		_StringsFaq0i0Ja._(_root),
		_StringsFaq0i1Ja._(_root),
		_StringsFaq0i2Ja._(_root),
		_StringsFaq0i3Ja._(_root),
		_StringsFaq0i4Ja._(_root),
		_StringsFaq0i5Ja._(_root),
		_StringsFaq0i6Ja._(_root),
		_StringsFaq0i7Ja._(_root),
		_StringsFaq0i8Ja._(_root),
	];
}

// Path: about
class _StringsAboutJa extends _StringsAboutEn {
	_StringsAboutJa._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '約';
	@override String get contact => 'お問い合わせ';
	@override String get service => '利用規約';
	@override String get policy => 'プライバシーポリシー';
}

// Path: alert
class _StringsAlertJa extends _StringsAlertEn {
	_StringsAlertJa._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get ok => 'わかった';
	@override String get cancel => 'キャンセル';
	@override String get confirm => '確認';
}

// Path: toast
class _StringsToastJa extends _StringsToastEn {
	_StringsToastJa._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get unpurchase => '現在購入できません';
	@override String get purchasedNotFound => '現在のサービスを購入できません';
	@override String get payment => '支払い完了！';
	@override String get coinsNotEnough => '金は不十分です！';
	@override String get received => '領収書が成功しました！';
	@override String get adError => '広告を頻繁に見ているので、後でもう一度やり直してください！';
}

// Path: localNotification
class _StringsLocalNotificationJa extends _StringsLocalNotificationEn {
	_StringsLocalNotificationJa._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get adTaskReady => '新しい広告タスクは準備ができています！';
}

// Path: task.tip
class _StringsTaskTipJa extends _StringsTaskTipEn {
	_StringsTaskTipJa._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '促す';
	@override List<dynamic> get values => [
		({required Object value}) => '1. [${value}]ボタンをクリックします',
		({required Object value}) => '2.開く${value}',
		({required Object value}) => '${value}. ${value}',
		({required Object value}) => '4. ${value}に戻ります',
		'5.金貨を入手します',
	];
	@override String get message => '注意/いいねをキャンセルすると、金貨が削除されます！';
}

// Path: store.ad
class _StringsStoreAdJa extends _StringsStoreAdEn {
	_StringsStoreAdJa._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '広告報酬';
	@override String get watch => '広告を見てください';
}

// Path: store.changeAccount
class _StringsStoreChangeAccountJa extends _StringsStoreChangeAccountEn {
	_StringsStoreChangeAccountJa._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'アカウントを変更します';
	@override String get add => 'アカウントを追加する';
}

// Path: store.tip
class _StringsStoreTipJa extends _StringsStoreTipEn {
	_StringsStoreTipJa._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override late final _StringsStoreTipFollowJa follow = _StringsStoreTipFollowJa._(_root);
	@override late final _StringsStoreTipLikeJa like = _StringsStoreTipLikeJa._(_root);
}

// Path: store.buy
class _StringsStoreBuyJa extends _StringsStoreBuyEn {
	_StringsStoreBuyJa._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get follow => '買い手';
	@override String get like => '賞賛を買う';
	@override String get view => '購入して見てください';
	@override String get share => '購入して共有します';
	@override String get retweet => '転送を購入します';
	@override String get accountPublic => '*アカウントを開いておいてください';
	@override String get channelPublic => '*チャンネルを開いたままにしてください';
	@override String get tiktok => 'Tiktokビデオリンク';
	@override String get twitter => 'Twitterのツイートリンク';
	@override String get instagram => 'Instagramの投稿リンク';
	@override String get youtube => 'YouTubeチャンネルリンク';
	@override String get pay => '支払い';
}

// Path: store.purchase
class _StringsStorePurchaseJa extends _StringsStorePurchaseEn {
	_StringsStorePurchaseJa._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '支払い完了';
	@override String get message => '注文が完了するのを待ってください！';
}

// Path: store.notice
class _StringsStoreNoticeJa extends _StringsStoreNoticeEn {
	_StringsStoreNoticeJa._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String message({required Object value}) => '${value}人の無料フォロワーを取得するには、最初にアプリ通知を開きます。';
	@override String get turnOn => '開ける';
}

// Path: setting.share
class _StringsSettingShareJa extends _StringsSettingShareEn {
	_StringsSettingShareJa._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'アプリを共有します';
	@override String message({required Object value}) => '無料のTiktokファンや好きなファンを獲得できるトレジャーアプリケーションを見つけました。次のリンクインストールを通じて、${value}つのゴールドコインが入ります。';
}

// Path: daily.rules
class _StringsDailyRulesJa extends _StringsDailyRulesEn {
	_StringsDailyRulesJa._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ルール';
	@override List<String> get values => [
		'24時間ごとにサインインできます。',
		'サインが中断された後、再び開始します。',
	];
}

// Path: wheel.rules
class _StringsWheelRulesJa extends _StringsWheelRulesEn {
	_StringsWheelRulesJa._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ルール';
	@override List<dynamic> get values => [
		({required Object value}) => '各宝くじには${value}枚の金のコインがかかります。',
		'引き分けの数は制限されていません。',
	];
}

// Path: account.alert
class _StringsAccountAlertJa extends _StringsAccountAlertEn {
	_StringsAccountAlertJa._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'アカウントを削除する';
	@override String get message => '削除した後、関連する操作にアカウントを使用することはできません。';
}

// Path: faq.values.0
class _StringsFaq0i0Ja extends _StringsFaq0i0En {
	_StringsFaq0i0Ja._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '1.開始方法は？';
	@override String get value => 'ページのプロンプト、パスワードなしでプラットフォームユーザー名を追加するだけで、各プラットフォームには対応するプロンプトがあります。';
}

// Path: faq.values.1
class _StringsFaq0i1Ja extends _StringsFaq0i1En {
	_StringsFaq0i1Ja._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '2.それを使用しても安全ですか？';
	@override String get value => 'もちろん、それは安全です。パスワードは必要ありません。また、ソーシャルアプリケーションデータを保存することはできません。これは、他のことに注意を払うために公式のアプリケーションにジャンプしているためです。';
}

// Path: faq.values.2
class _StringsFaq0i2Ja extends _StringsFaq0i2En {
	_StringsFaq0i2Ja._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '3.これはどのように機能しますか？';
	@override String get value => '作業方法は簡単です。個人データ/ビデオがコミュニティに表示されます。ユーザーは、個人データの内容に基づいてあなたに注意を払う/ように注意する必要があるかどうかを自由に決定します。好き/フォローする交換として、彼らは金貨を受け取り、フォロワー/恋人を得るために使用できます。';
}

// Path: faq.values.3
class _StringsFaq0i3Ja extends _StringsFaq0i3En {
	_StringsFaq0i3Ja._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '4.注意はリアルのようですか？';
	@override String get value => 'もちろん、それは本物です。関連サービスを購入すると、その背後に多くの実際のユーザーがサービスを提供し、公式アプリで運用されています。心配する必要はありません。';
}

// Path: faq.values.4
class _StringsFaq0i4Ja extends _StringsFaq0i4En {
	_StringsFaq0i4Ja._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '5.金貨を獲得するにはどうすればよいですか？';
	@override String get value => 'ホームページでは、タスクリストを表示し、クリックしてフォローまたはいいね、対応するアプリにジャンプして操作してください。注意をキャンセルしないように注意してください。これにより、報酬がキャンセルされます。';
}

// Path: faq.values.5
class _StringsFaq0i5Ja extends _StringsFaq0i5En {
	_StringsFaq0i5Ja._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '6.タスクが失敗するのはなぜですか？';
	@override String get value => 'これは通常、あなたが本当に注意を払っていないか、それを好まないからです。最初にアカウントを確認する必要があります。';
}

// Path: faq.values.6
class _StringsFaq0i6Ja extends _StringsFaq0i6En {
	_StringsFaq0i6Ja._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '7.注文を完了するのにどれくらい時間がかかりますか？';
	@override List<String> get value => [
		'これはご注文のボリュームに依存します。通常、注文を出してすぐにサービスを取得し、24時間以内に完了しますが、正確な時間を与えることはできません。ゴールデンサービスは通常のサービスよりも速いことに注意してください。',
		'短時間でトラフィックが多すぎるとアカウントが不審になるため、辛抱強く待つことが最善の方法です。',
	];
}

// Path: faq.values.7
class _StringsFaq0i7Ja extends _StringsFaq0i7En {
	_StringsFaq0i7Ja._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '8.注文後はどうすればよいですか？';
	@override String get value => 'ご注文後、アカウントを開示しておきます。注文が完了する前にユーザー名を変更しないでください。';
}

// Path: faq.values.8
class _StringsFaq0i8Ja extends _StringsFaq0i8En {
	_StringsFaq0i8Ja._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '9.問題がある場合はどうなりますか？';
	@override String get value => 'アプリのフィードバックからお問い合わせください。';
}

// Path: store.tip.follow
class _StringsStoreTipFollowJa extends _StringsStoreTipFollowEn {
	_StringsStoreTipFollowJa._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'フォロワーとシニアフォロワー';
	@override List<String> get values => [
		'',
		'フォロワー',
		'シニアフォロワー',
		'完了時間',
		'1〜24時間',
		'1〜4時間',
		'補償時間',
		'/',
		'7日以内の補償',
		'フォロワーの品質',
		'本物',
		'本物でアクティブ',
		'ドロップレート',
		'8-15％',
		'0-3％',
	];
}

// Path: store.tip.like
class _StringsStoreTipLikeJa extends _StringsStoreTipLikeEn {
	_StringsStoreTipLikeJa._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '好きで高度な賞賛';
	@override List<String> get values => [
		'',
		'お気に入り',
		'高いレベルの賞賛',
		'完了時間',
		'1〜24時間',
		'1〜4時間',
		'補償時間',
		'/',
		'7日以内の補償',
		'ドロップレート',
		'8-15％',
		'0-3％',
	];
}

// Path: <root>
class _StringsKk extends _StringsEn {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsKk.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.kk,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <kk>.
	@override final TranslationMetadata<AppLocale, _StringsEn> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	@override late final _StringsKk _root = this; // ignore: unused_field

	// Translations
	@override late final _StringsOnlyTitleKk onlyTitle = _StringsOnlyTitleKk._(_root);
	@override late final _StringsUniversalKk universal = _StringsUniversalKk._(_root);
	@override late final _StringsTabbarKk tabbar = _StringsTabbarKk._(_root);
	@override late final _StringsTaskKk task = _StringsTaskKk._(_root);
	@override late final _StringsStoreKk store = _StringsStoreKk._(_root);
	@override late final _StringsCoinsKk coins = _StringsCoinsKk._(_root);
	@override late final _StringsLoginKk login = _StringsLoginKk._(_root);
	@override late final _StringsSettingKk setting = _StringsSettingKk._(_root);
	@override late final _StringsLanguageKk language = _StringsLanguageKk._(_root);
	@override late final _StringsDailyKk daily = _StringsDailyKk._(_root);
	@override late final _StringsWheelKk wheel = _StringsWheelKk._(_root);
	@override late final _StringsAccountKk account = _StringsAccountKk._(_root);
	@override late final _StringsOrdersKk orders = _StringsOrdersKk._(_root);
	@override late final _StringsFaqKk faq = _StringsFaqKk._(_root);
	@override late final _StringsAboutKk about = _StringsAboutKk._(_root);
	@override late final _StringsAlertKk alert = _StringsAlertKk._(_root);
	@override late final _StringsToastKk toast = _StringsToastKk._(_root);
	@override late final _StringsLocalNotificationKk localNotification = _StringsLocalNotificationKk._(_root);
}

// Path: onlyTitle
class _StringsOnlyTitleKk extends _StringsOnlyTitleEn {
	_StringsOnlyTitleKk._(_StringsKk root) : this._root = root, super._(root);

	@override final _StringsKk _root; // ignore: unused_field

	// Translations
	@override String get contact => 'бізбен хабарласыңыз';
}

// Path: universal
class _StringsUniversalKk extends _StringsUniversalEn {
	_StringsUniversalKk._(_StringsKk root) : this._root = root, super._(root);

	@override final _StringsKk _root; // ignore: unused_field

	// Translations
	@override String get coins => 'алтын';
	@override String get requestError => 'Тағы жасауды сәл кейінірек көріңізді өтінеміз';
	@override String get add => 'Аккаунт қосу';
}

// Path: tabbar
class _StringsTabbarKk extends _StringsTabbarEn {
	_StringsTabbarKk._(_StringsKk root) : this._root = root, super._(root);

	@override final _StringsKk _root; // ignore: unused_field

	// Translations
	@override String get task => 'Алдыңғы бет';
	@override String get store => 'дүкен';
	@override String get setting => 'орнату';
}

// Path: task
class _StringsTaskKk extends _StringsTaskEn {
	_StringsTaskKk._(_StringsKk root) : this._root = root, super._(root);

	@override final _StringsKk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Алдыңғы бет';
	@override String get skip => 'секіру';
	@override String get follow => 'жұмылдыру';
	@override String get like => 'сияқты';
	@override String get noTask => 'Тапсырма жоқ';
	@override late final _StringsTaskTipKk tip = _StringsTaskTipKk._(_root);
}

// Path: store
class _StringsStoreKk extends _StringsStoreEn {
	_StringsStoreKk._(_StringsKk root) : this._root = root, super._(root);

	@override final _StringsKk _root; // ignore: unused_field

	// Translations
	@override String get title => 'дүкен';
	@override String get free => 'Тегін';
	@override String get follow => 'Ізбасарлар';
	@override String get like => 'сияқты';
	@override String get view => 'Қарау';
	@override String get share => 'бөлу';
	@override String get retweet => 'Ретвер';
	@override late final _StringsStoreAdKk ad = _StringsStoreAdKk._(_root);
	@override late final _StringsStoreChangeAccountKk changeAccount = _StringsStoreChangeAccountKk._(_root);
	@override late final _StringsStoreTipKk tip = _StringsStoreTipKk._(_root);
	@override late final _StringsStoreBuyKk buy = _StringsStoreBuyKk._(_root);
	@override late final _StringsStorePurchaseKk purchase = _StringsStorePurchaseKk._(_root);
	@override late final _StringsStoreNoticeKk notice = _StringsStoreNoticeKk._(_root);
}

// Path: coins
class _StringsCoinsKk extends _StringsCoinsEn {
	_StringsCoinsKk._(_StringsKk root) : this._root = root, super._(root);

	@override final _StringsKk _root; // ignore: unused_field

	// Translations
	@override String get empty => 'Тарих жоқ';
}

// Path: login
class _StringsLoginKk extends _StringsLoginEn {
	_StringsLoginKk._(_StringsKk root) : this._root = root, super._(root);

	@override final _StringsKk _root; // ignore: unused_field

	// Translations
	@override String get confirm => 'растау';
	@override String username({required Object value}) => '${value} пайдаланушының атын енгізіңіз';
	@override String get channel => 'Youtube арнасының сілтемесін енгізіңіз';
	@override String get publicUsername => '* Тіркелгіңізді ашық ұстаңыз';
	@override String get publicChannel => '* Арнаңызды ашық ұстаңыз';
	@override String get add => 'Аккаунт қосу';
	@override String get hintUsername => 'пайдаланушы аты';
	@override String get hintChannel => 'Арна байланысы';
}

// Path: setting
class _StringsSettingKk extends _StringsSettingEn {
	_StringsSettingKk._(_StringsKk root) : this._root = root, super._(root);

	@override final _StringsKk _root; // ignore: unused_field

	// Translations
	@override String get title => 'орнату';
	@override String get editor => 'Ақпаратты өңдеу';
	@override String get daily => 'Кіру';
	@override String get wheel => 'FORTUNE дөңгелегі';
	@override String get account => 'Басқару шоты';
	@override String get language => 'тіл';
	@override String get orders => 'Тапсырыс';
	@override String get faq => 'Жалпы проблема';
	@override String get about => 'жөнінде';
	@override late final _StringsSettingShareKk share = _StringsSettingShareKk._(_root);
	@override String get rateUs => 'Бізді бағалаңыз';
}

// Path: language
class _StringsLanguageKk extends _StringsLanguageEn {
	_StringsLanguageKk._(_StringsKk root) : this._root = root, super._(root);

	@override final _StringsKk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Тілді таңдаңыз';
	@override String get start => 'жүргізу';
}

// Path: daily
class _StringsDailyKk extends _StringsDailyEn {
	_StringsDailyKk._(_StringsKk root) : this._root = root, super._(root);

	@override final _StringsKk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Кіру';
	@override String get checkIn => 'Кіру';
	@override late final _StringsDailyRulesKk rules = _StringsDailyRulesKk._(_root);
}

// Path: wheel
class _StringsWheelKk extends _StringsWheelEn {
	_StringsWheelKk._(_StringsKk root) : this._root = root, super._(root);

	@override final _StringsKk _root; // ignore: unused_field

	// Translations
	@override String get title => 'FORTUNE дөңгелегі';
	@override late final _StringsWheelRulesKk rules = _StringsWheelRulesKk._(_root);
}

// Path: account
class _StringsAccountKk extends _StringsAccountEn {
	_StringsAccountKk._(_StringsKk root) : this._root = root, super._(root);

	@override final _StringsKk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Басқару шоты';
	@override String get add => '+ Есептік жазба нөмірін қосыңыз';
	@override String get empty => 'Есептік жазба жоқ';
	@override late final _StringsAccountAlertKk alert = _StringsAccountAlertKk._(_root);
}

// Path: orders
class _StringsOrdersKk extends _StringsOrdersEn {
	_StringsOrdersKk._(_StringsKk root) : this._root = root, super._(root);

	@override final _StringsKk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Тапсырыс';
	@override String get pending => 'Кезек';
	@override String get processing => 'Өңдеу';
	@override String get inProgress => 'өңдеу';
	@override String get completed => 'орындалды';
	@override String get partial => 'Ішінара аяқтау';
	@override String get error => 'қателік';
	@override String get canceled => 'Болдырмады';
	@override String get refunded => 'Қайтарылған';
	@override String get empty => 'Тапсырыс жоқ';
}

// Path: faq
class _StringsFaqKk extends _StringsFaqEn {
	_StringsFaqKk._(_StringsKk root) : this._root = root, super._(root);

	@override final _StringsKk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Жалпы проблема';
	@override List<dynamic> get values => [
		_StringsFaq0i0Kk._(_root),
		_StringsFaq0i1Kk._(_root),
		_StringsFaq0i2Kk._(_root),
		_StringsFaq0i3Kk._(_root),
		_StringsFaq0i4Kk._(_root),
		_StringsFaq0i5Kk._(_root),
		_StringsFaq0i6Kk._(_root),
		_StringsFaq0i7Kk._(_root),
		_StringsFaq0i8Kk._(_root),
	];
}

// Path: about
class _StringsAboutKk extends _StringsAboutEn {
	_StringsAboutKk._(_StringsKk root) : this._root = root, super._(root);

	@override final _StringsKk _root; // ignore: unused_field

	// Translations
	@override String get title => 'жөнінде';
	@override String get contact => 'бізбен хабарласыңыз';
	@override String get service => 'Қызмет көрсету шарттары';
	@override String get policy => 'Құпиялылық саясаты';
}

// Path: alert
class _StringsAlertKk extends _StringsAlertEn {
	_StringsAlertKk._(_StringsKk root) : this._root = root, super._(root);

	@override final _StringsKk _root; // ignore: unused_field

	// Translations
	@override String get ok => 'ЖАРАЙДЫ МА';
	@override String get cancel => 'Күшін жою';
	@override String get confirm => 'растау';
}

// Path: toast
class _StringsToastKk extends _StringsToastEn {
	_StringsToastKk._(_StringsKk root) : this._root = root, super._(root);

	@override final _StringsKk _root; // ignore: unused_field

	// Translations
	@override String get unpurchase => 'Қазір сатып ала алмаймын';
	@override String get purchasedNotFound => 'Ағымдағы қызметті сатып ала алмайды';
	@override String get payment => 'Төлем сәтті!';
	@override String get coinsNotEnough => 'Алтын жеткіліксіз!';
	@override String get received => 'Сәтті түбіртек!';
	@override String get adError => 'Жарнамаларды жиі қарау, кейінірек қайталап көріңіз!';
}

// Path: localNotification
class _StringsLocalNotificationKk extends _StringsLocalNotificationEn {
	_StringsLocalNotificationKk._(_StringsKk root) : this._root = root, super._(root);

	@override final _StringsKk _root; // ignore: unused_field

	// Translations
	@override String get adTaskReady => 'Жаңа жарнама тапсырмасы дайын!';
}

// Path: task.tip
class _StringsTaskTipKk extends _StringsTaskTipEn {
	_StringsTaskTipKk._(_StringsKk root) : this._root = root, super._(root);

	@override final _StringsKk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Тез';
	@override List<dynamic> get values => [
		({required Object value}) => '1. ${value} түймесін басыңыз',
		({required Object value}) => '2. Ашу ${value}',
		({required Object value}) => '${value}. ${value}',
		({required Object value}) => '4. ${value}-ке дейін',
		'5. Алтын монеталар алыңыз',
	];
	@override String get message => 'Егер сіз назардан бас тартсаңыз, алтын монеталар алынып тасталады!';
}

// Path: store.ad
class _StringsStoreAdKk extends _StringsStoreAdEn {
	_StringsStoreAdKk._(_StringsKk root) : this._root = root, super._(root);

	@override final _StringsKk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Жарнамалық сыйақы';
	@override String get watch => 'Жарнаманы қараңыз';
}

// Path: store.changeAccount
class _StringsStoreChangeAccountKk extends _StringsStoreChangeAccountEn {
	_StringsStoreChangeAccountKk._(_StringsKk root) : this._root = root, super._(root);

	@override final _StringsKk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Тіркелгіні өзгертіңіз';
	@override String get add => 'Аккаунт қосу';
}

// Path: store.tip
class _StringsStoreTipKk extends _StringsStoreTipEn {
	_StringsStoreTipKk._(_StringsKk root) : this._root = root, super._(root);

	@override final _StringsKk _root; // ignore: unused_field

	// Translations
	@override late final _StringsStoreTipFollowKk follow = _StringsStoreTipFollowKk._(_root);
	@override late final _StringsStoreTipLikeKk like = _StringsStoreTipLikeKk._(_root);
}

// Path: store.buy
class _StringsStoreBuyKk extends _StringsStoreBuyEn {
	_StringsStoreBuyKk._(_StringsKk root) : this._root = root, super._(root);

	@override final _StringsKk _root; // ignore: unused_field

	// Translations
	@override String get follow => 'Сатып алушы';
	@override String get like => 'Бірнеше мақтауды сатып алыңыз';
	@override String get view => 'Сатып алыңыз және қараңыз';
	@override String get share => 'Сатып алу және бөлісу';
	@override String get retweet => 'Аударымды сатып алыңыз';
	@override String get accountPublic => '* Тіркелгіңізді ашық ұстаңыз';
	@override String get channelPublic => '* Арнаңызды ашық ұстаңыз';
	@override String get tiktok => 'Сіздің Tiktok бейне сілтемесі';
	@override String get twitter => 'Сіздің Twitter Tweet сілтемесі';
	@override String get instagram => 'Сіздің инстаграмдағы хабарлама сілтемесі';
	@override String get youtube => 'Сіздің YouTube арнасы сілтемесі';
	@override String get pay => 'Төлеу';
}

// Path: store.purchase
class _StringsStorePurchaseKk extends _StringsStorePurchaseEn {
	_StringsStorePurchaseKk._(_StringsKk root) : this._root = root, super._(root);

	@override final _StringsKk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Төлем сәтті';
	@override String get message => 'Өтініш беруді күтіңіз!';
}

// Path: store.notice
class _StringsStoreNoticeKk extends _StringsStoreNoticeEn {
	_StringsStoreNoticeKk._(_StringsKk root) : this._root = root, super._(root);

	@override final _StringsKk _root; // ignore: unused_field

	// Translations
	@override String message({required Object value}) => 'Алдымен ${value} тегін ізбасарын алу үшін алдымен қолданба туралы хабарламаны ашыңыз.';
	@override String get turnOn => 'Ашу';
}

// Path: setting.share
class _StringsSettingShareKk extends _StringsSettingShareEn {
	_StringsSettingShareKk._(_StringsKk root) : this._root = root, super._(root);

	@override final _StringsKk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Бағдарламаны бөлісу';
	@override String message({required Object value}) => 'Мен Tiktok Fans және ұнайтын қазыналық қосымшаны таптым. Келесі сілтемені орнату арқылы біз ${value} алтын монетаны аламыз!';
}

// Path: daily.rules
class _StringsDailyRulesKk extends _StringsDailyRulesEn {
	_StringsDailyRulesKk._(_StringsKk root) : this._root = root, super._(root);

	@override final _StringsKk _root; // ignore: unused_field

	// Translations
	@override String get title => 'ереже';
	@override List<String> get values => [
		'Сіз әр 24 сағат сайын кіре аласыз;',
		'Қол қоюдан кейін үзілгеннен кейін ол қайтадан басталады.',
	];
}

// Path: wheel.rules
class _StringsWheelRulesKk extends _StringsWheelRulesEn {
	_StringsWheelRulesKk._(_StringsKk root) : this._root = root, super._(root);

	@override final _StringsKk _root; // ignore: unused_field

	// Translations
	@override String get title => 'ереже';
	@override List<dynamic> get values => [
		({required Object value}) => 'Әр лотереяға ${value} алтын монета тұрады;',
		'Суреттер саны шектелмейді.',
	];
}

// Path: account.alert
class _StringsAccountAlertKk extends _StringsAccountAlertEn {
	_StringsAccountAlertKk._(_StringsKk root) : this._root = root, super._(root);

	@override final _StringsKk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Тіркелгіні жою';
	@override String get message => 'Жойылғаннан кейін сіз осыған байланысты операциялар үшін есептік жазбаны пайдалана алмайсыз.';
}

// Path: faq.values.0
class _StringsFaq0i0Kk extends _StringsFaq0i0En {
	_StringsFaq0i0Kk._(_StringsKk root) : this._root = root, super._(root);

	@override final _StringsKk _root; // ignore: unused_field

	// Translations
	@override String get title => '1. Қалай бастау керек?';
	@override String get value => 'Платформаңыздың пайдаланушы атын беттің нұсқауларына сәйкес қосыңыз, құпия сөз жоқ, әр платформада сәйкес шақыру бар.';
}

// Path: faq.values.1
class _StringsFaq0i1Kk extends _StringsFaq0i1En {
	_StringsFaq0i1Kk._(_StringsKk root) : this._root = root, super._(root);

	@override final _StringsKk _root; // ignore: unused_field

	// Translations
	@override String get title => '2. Мұны пайдалану қауіпсіз бе?';
	@override String get value => 'Әрине, бұл қауіпсіз. Бізге құпия сөзді қажет етпейді, және біз сіздің әлеуметтік өтініштеріңізді сақтай алмаймыз, өйткені ол ресми қосымшаға, басқа істерге назар аудару немесе жасау үшін секілді.';
}

// Path: faq.values.2
class _StringsFaq0i2Kk extends _StringsFaq0i2En {
	_StringsFaq0i2Kk._(_StringsKk root) : this._root = root, super._(root);

	@override final _StringsKk _root; // ignore: unused_field

	// Translations
	@override String get title => '3. Бұл қалай жұмыс істейді?';
	@override String get value => 'Жұмыс әдісі қарапайым: сіздің жеке деректеріңіз / видео біздің қоғамдастықта көрсетіледі. Пайдаланушылар сіздің жеке деректеріңіздің мазмұнына сүйене отырып, сізге назар аудару керек пе, жоқ па, соны еркін шешеді.Оларды ұнататын / ұстанатын алмасу ретінде олар алтын монеталар алады және оларды ізбасарлар / әуесқойлар алу үшін қолдануға болады.';
}

// Path: faq.values.3
class _StringsFaq0i3Kk extends _StringsFaq0i3En {
	_StringsFaq0i3Kk._(_StringsKk root) : this._root = root, super._(root);

	@override final _StringsKk _root; // ignore: unused_field

	// Translations
	@override String get title => '4. НАЗАР АУДАРЫҢЫЗ ЖӘНЕ ҚЫЗДАР?';
	@override String get value => 'Әрине, бұл нақты. Байланысты қызметтерді сатып алған кезде, сізге қызметтерді ұсыну үшін нақты пайдаланушылар көп, сондықтан ол қызметтерді ұсынады және ол ресми қосымшада жұмыс істейді. Сізге алаңдаудың қажеті жоқ.';
}

// Path: faq.values.4
class _StringsFaq0i4Kk extends _StringsFaq0i4En {
	_StringsFaq0i4Kk._(_StringsKk root) : this._root = root, super._(root);

	@override final _StringsKk _root; // ignore: unused_field

	// Translations
	@override String get title => '5. Алтын монеталарды қалай табуға болады?';
	@override String get value => 'Басты бетте, тапсырмалар тізімін көруге болады, орындау немесе ұнату үшін басыңыз, содан кейін жұмыс істеуі үшін сәйкес бағдарламаға өту және сәйкес бағдарламаға өту. Сіздің назарыңызды тоқтатпаңыз, бұл сіздің сыйақысыңызды болдырмауға тырысыңыз.';
}

// Path: faq.values.5
class _StringsFaq0i5Kk extends _StringsFaq0i5En {
	_StringsFaq0i5Kk._(_StringsKk root) : this._root = root, super._(root);

	@override final _StringsKk _root; // ignore: unused_field

	// Translations
	@override String get title => '6. Неліктен міндеттер орындалмайды?';
	@override String get value => 'Бұл әдетте сіз шынымен назар аудармағаныңыз немесе оған ұнамсыз. Алдымен сіздің шотыңызды тексеруіңіз керек.';
}

// Path: faq.values.6
class _StringsFaq0i6Kk extends _StringsFaq0i6En {
	_StringsFaq0i6Kk._(_StringsKk root) : this._root = root, super._(root);

	@override final _StringsKk _root; // ignore: unused_field

	// Translations
	@override String get title => '7. Тапсырысымды аяқтауға қанша уақыт кетеді?';
	@override List<String> get value => [
		'Бұл тапсырыс көлеміне байланысты. Әдетте, сіз тапсырыс бергеннен кейін, оны бірден ала бастайсыз және оны 24 сағат ішінде аяқтай бастайсыз, бірақ дәл уақыт бере алмаймыз, себебі біз артында жұмыс істейтін нақты пайдаланушылар көп. Ол керек Айта кету керек, алтын қызметі қарапайым қызметтерге қарағанда тезірек.',
		'Тым көп трафик алыңыз, қысқа уақыт ішінде сіздің есептік жазбаңызды күдіктендіреді, сондықтан шыдамдылық тілі - ең жақсы әдіс.',
	];
}

// Path: faq.values.7
class _StringsFaq0i7Kk extends _StringsFaq0i7En {
	_StringsFaq0i7Kk._(_StringsKk root) : this._root = root, super._(root);

	@override final _StringsKk _root; // ignore: unused_field

	// Translations
	@override String get title => '8. Тапсырыс беруден кейін не істеуім керек?';
	@override String get value => 'Тапсырысты қойғаннан кейін, есептік жазбаңызды ашыңыз. Пайдаланушы атын тапсырыс аяқталғанға дейін өзгертпеңіз.';
}

// Path: faq.values.8
class _StringsFaq0i8Kk extends _StringsFaq0i8En {
	_StringsFaq0i8Kk._(_StringsKk root) : this._root = root, super._(root);

	@override final _StringsKk _root; // ignore: unused_field

	// Translations
	@override String get title => '9. Егер менде проблема болса ше?';
	@override String get value => 'Бағдарламадағы кері байланыс арқылы бізбен байланыса аласыз.';
}

// Path: store.tip.follow
class _StringsStoreTipFollowKk extends _StringsStoreTipFollowEn {
	_StringsStoreTipFollowKk._(_StringsKk root) : this._root = root, super._(root);

	@override final _StringsKk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ізбасарлары және аға ізбасарлары';
	@override List<String> get values => [
		'',
		'Ізбасарлар',
		'Аға ізбасар',
		'Толығымен уақыт',
		'1-24 сағат',
		'1-4 сағат',
		'Өтемақы уақыты',
		'/',
		'7 күн ішінде өтемақы',
		'Бақытшылардың сапасы',
		'шын',
		'Нақты және белсенді',
		'Тамшылатыңыз',
		'8-15%',
		'0-3%',
	];
}

// Path: store.tip.like
class _StringsStoreTipLikeKk extends _StringsStoreTipLikeEn {
	_StringsStoreTipLikeKk._(_StringsKk root) : this._root = root, super._(root);

	@override final _StringsKk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Сияқты және озық мадақтау';
	@override List<String> get values => [
		'',
		'сияқты',
		'Биік мадақтау',
		'Толығымен уақыт',
		'1-24 сағат',
		'1-4 сағат',
		'Өтемақы уақыты',
		'/',
		'7 күн ішінде өтемақы',
		'Тамшылатыңыз',
		'8-15%',
		'0-3%',
	];
}

// Path: <root>
class _StringsKo extends _StringsEn {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsKo.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.ko,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ko>.
	@override final TranslationMetadata<AppLocale, _StringsEn> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	@override late final _StringsKo _root = this; // ignore: unused_field

	// Translations
	@override late final _StringsOnlyTitleKo onlyTitle = _StringsOnlyTitleKo._(_root);
	@override late final _StringsUniversalKo universal = _StringsUniversalKo._(_root);
	@override late final _StringsTabbarKo tabbar = _StringsTabbarKo._(_root);
	@override late final _StringsTaskKo task = _StringsTaskKo._(_root);
	@override late final _StringsStoreKo store = _StringsStoreKo._(_root);
	@override late final _StringsCoinsKo coins = _StringsCoinsKo._(_root);
	@override late final _StringsLoginKo login = _StringsLoginKo._(_root);
	@override late final _StringsSettingKo setting = _StringsSettingKo._(_root);
	@override late final _StringsLanguageKo language = _StringsLanguageKo._(_root);
	@override late final _StringsDailyKo daily = _StringsDailyKo._(_root);
	@override late final _StringsWheelKo wheel = _StringsWheelKo._(_root);
	@override late final _StringsAccountKo account = _StringsAccountKo._(_root);
	@override late final _StringsOrdersKo orders = _StringsOrdersKo._(_root);
	@override late final _StringsFaqKo faq = _StringsFaqKo._(_root);
	@override late final _StringsAboutKo about = _StringsAboutKo._(_root);
	@override late final _StringsAlertKo alert = _StringsAlertKo._(_root);
	@override late final _StringsToastKo toast = _StringsToastKo._(_root);
	@override late final _StringsLocalNotificationKo localNotification = _StringsLocalNotificationKo._(_root);
}

// Path: onlyTitle
class _StringsOnlyTitleKo extends _StringsOnlyTitleEn {
	_StringsOnlyTitleKo._(_StringsKo root) : this._root = root, super._(root);

	@override final _StringsKo _root; // ignore: unused_field

	// Translations
	@override String get contact => '문의하기';
}

// Path: universal
class _StringsUniversalKo extends _StringsUniversalEn {
	_StringsUniversalKo._(_StringsKo root) : this._root = root, super._(root);

	@override final _StringsKo _root; // ignore: unused_field

	// Translations
	@override String get coins => '금';
	@override String get requestError => '나중에 다시 시도 해주십시오';
	@override String get add => '계정을 추가';
}

// Path: tabbar
class _StringsTabbarKo extends _StringsTabbarEn {
	_StringsTabbarKo._(_StringsKo root) : this._root = root, super._(root);

	@override final _StringsKo _root; // ignore: unused_field

	// Translations
	@override String get task => '첫 장';
	@override String get store => '가게';
	@override String get setting => '설정';
}

// Path: task
class _StringsTaskKo extends _StringsTaskEn {
	_StringsTaskKo._(_StringsKo root) : this._root = root, super._(root);

	@override final _StringsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '첫 장';
	@override String get skip => '뛰어 넘다';
	@override String get follow => '집중하십시오';
	@override String get like => '처럼';
	@override String get noTask => '묻지 않는다';
	@override late final _StringsTaskTipKo tip = _StringsTaskTipKo._(_root);
}

// Path: store
class _StringsStoreKo extends _StringsStoreEn {
	_StringsStoreKo._(_StringsKo root) : this._root = root, super._(root);

	@override final _StringsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '가게';
	@override String get free => '무료';
	@override String get follow => '추종자';
	@override String get like => '처럼';
	@override String get view => '보다';
	@override String get share => '공유하다';
	@override String get retweet => '리트 윗';
	@override late final _StringsStoreAdKo ad = _StringsStoreAdKo._(_root);
	@override late final _StringsStoreChangeAccountKo changeAccount = _StringsStoreChangeAccountKo._(_root);
	@override late final _StringsStoreTipKo tip = _StringsStoreTipKo._(_root);
	@override late final _StringsStoreBuyKo buy = _StringsStoreBuyKo._(_root);
	@override late final _StringsStorePurchaseKo purchase = _StringsStorePurchaseKo._(_root);
	@override late final _StringsStoreNoticeKo notice = _StringsStoreNoticeKo._(_root);
}

// Path: coins
class _StringsCoinsKo extends _StringsCoinsEn {
	_StringsCoinsKo._(_StringsKo root) : this._root = root, super._(root);

	@override final _StringsKo _root; // ignore: unused_field

	// Translations
	@override String get empty => '역사가 없습니다';
}

// Path: login
class _StringsLoginKo extends _StringsLoginEn {
	_StringsLoginKo._(_StringsKo root) : this._root = root, super._(root);

	@override final _StringsKo _root; // ignore: unused_field

	// Translations
	@override String get confirm => '확인하다';
	@override String username({required Object value}) => '${value} 사용자 이름을 입력하십시오';
	@override String get channel => 'YouTube 채널 링크를 입력하십시오';
	@override String get publicUsername => '* 계정을 열어 두십시오';
	@override String get publicChannel => '* 채널을 열어 두십시오';
	@override String get add => '계정을 추가';
	@override String get hintUsername => '사용자 이름';
	@override String get hintChannel => '채널 링크';
}

// Path: setting
class _StringsSettingKo extends _StringsSettingEn {
	_StringsSettingKo._(_StringsKo root) : this._root = root, super._(root);

	@override final _StringsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '설정';
	@override String get editor => '정보 편집';
	@override String get daily => '로그인';
	@override String get wheel => '행운의 바퀴';
	@override String get account => '관리 계정';
	@override String get language => '언어';
	@override String get orders => '주문하다';
	@override String get faq => '일반적인 문제';
	@override String get about => '~에 대한';
	@override late final _StringsSettingShareKo share = _StringsSettingShareKo._(_root);
	@override String get rateUs => '우리를 평가하십시오';
}

// Path: language
class _StringsLanguageKo extends _StringsLanguageEn {
	_StringsLanguageKo._(_StringsKo root) : this._root = root, super._(root);

	@override final _StringsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '언어를 선택하십시오';
	@override String get start => '시작';
}

// Path: daily
class _StringsDailyKo extends _StringsDailyEn {
	_StringsDailyKo._(_StringsKo root) : this._root = root, super._(root);

	@override final _StringsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '로그인';
	@override String get checkIn => '로그인';
	@override late final _StringsDailyRulesKo rules = _StringsDailyRulesKo._(_root);
}

// Path: wheel
class _StringsWheelKo extends _StringsWheelEn {
	_StringsWheelKo._(_StringsKo root) : this._root = root, super._(root);

	@override final _StringsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '행운의 바퀴';
	@override late final _StringsWheelRulesKo rules = _StringsWheelRulesKo._(_root);
}

// Path: account
class _StringsAccountKo extends _StringsAccountEn {
	_StringsAccountKo._(_StringsKo root) : this._root = root, super._(root);

	@override final _StringsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '관리 계정';
	@override String get add => '+ 계정 번호를 추가하십시오';
	@override String get empty => '계정이 없습니다';
	@override late final _StringsAccountAlertKo alert = _StringsAccountAlertKo._(_root);
}

// Path: orders
class _StringsOrdersKo extends _StringsOrdersEn {
	_StringsOrdersKo._(_StringsKo root) : this._root = root, super._(root);

	@override final _StringsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '주문하다';
	@override String get pending => '대기줄';
	@override String get processing => '처리';
	@override String get inProgress => '처리';
	@override String get completed => '완전한';
	@override String get partial => '부분 완료';
	@override String get error => '실수';
	@override String get canceled => '취소 된';
	@override String get refunded => '환불';
	@override String get empty => '주문 없음';
}

// Path: faq
class _StringsFaqKo extends _StringsFaqEn {
	_StringsFaqKo._(_StringsKo root) : this._root = root, super._(root);

	@override final _StringsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '일반적인 문제';
	@override List<dynamic> get values => [
		_StringsFaq0i0Ko._(_root),
		_StringsFaq0i1Ko._(_root),
		_StringsFaq0i2Ko._(_root),
		_StringsFaq0i3Ko._(_root),
		_StringsFaq0i4Ko._(_root),
		_StringsFaq0i5Ko._(_root),
		_StringsFaq0i6Ko._(_root),
		_StringsFaq0i7Ko._(_root),
		_StringsFaq0i8Ko._(_root),
	];
}

// Path: about
class _StringsAboutKo extends _StringsAboutEn {
	_StringsAboutKo._(_StringsKo root) : this._root = root, super._(root);

	@override final _StringsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '~에 대한';
	@override String get contact => '문의하기';
	@override String get service => '서비스 약관';
	@override String get policy => '개인 정보 정책';
}

// Path: alert
class _StringsAlertKo extends _StringsAlertEn {
	_StringsAlertKo._(_StringsKo root) : this._root = root, super._(root);

	@override final _StringsKo _root; // ignore: unused_field

	// Translations
	@override String get ok => '확인';
	@override String get cancel => '취소';
	@override String get confirm => '확인하다';
}

// Path: toast
class _StringsToastKo extends _StringsToastEn {
	_StringsToastKo._(_StringsKo root) : this._root = root, super._(root);

	@override final _StringsKo _root; // ignore: unused_field

	// Translations
	@override String get unpurchase => '현재 살 수 없습니다';
	@override String get purchasedNotFound => '현재 서비스를 살 수 없습니다';
	@override String get payment => '결제 성공!';
	@override String get coinsNotEnough => '금이 부적절합니다!';
	@override String get received => '성공적인 영수증!';
	@override String get adError => '광고를 너무 자주보고 나중에 다시 시도하십시오!';
}

// Path: localNotification
class _StringsLocalNotificationKo extends _StringsLocalNotificationEn {
	_StringsLocalNotificationKo._(_StringsKo root) : this._root = root, super._(root);

	@override final _StringsKo _root; // ignore: unused_field

	// Translations
	@override String get adTaskReady => '새로운 광고 작업이 준비되었습니다!';
}

// Path: task.tip
class _StringsTaskTipKo extends _StringsTaskTipEn {
	_StringsTaskTipKo._(_StringsKo root) : this._root = root, super._(root);

	@override final _StringsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '즉각적인';
	@override List<dynamic> get values => [
		({required Object value}) => '1. ${value} 버튼을 클릭하십시오',
		({required Object value}) => '2. ${value}을 엽니 다',
		({required Object value}) => '${value}. ${value}',
		({required Object value}) => '4. ${value}으로 돌아갑니다',
		'5. 금화를 얻으십시오',
	];
	@override String get message => '관심을 취소하면 금화가 제거됩니다!';
}

// Path: store.ad
class _StringsStoreAdKo extends _StringsStoreAdEn {
	_StringsStoreAdKo._(_StringsKo root) : this._root = root, super._(root);

	@override final _StringsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '광고 보상';
	@override String get watch => '광고를보십시오';
}

// Path: store.changeAccount
class _StringsStoreChangeAccountKo extends _StringsStoreChangeAccountEn {
	_StringsStoreChangeAccountKo._(_StringsKo root) : this._root = root, super._(root);

	@override final _StringsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '계정을 수정하십시오';
	@override String get add => '계정을 추가';
}

// Path: store.tip
class _StringsStoreTipKo extends _StringsStoreTipEn {
	_StringsStoreTipKo._(_StringsKo root) : this._root = root, super._(root);

	@override final _StringsKo _root; // ignore: unused_field

	// Translations
	@override late final _StringsStoreTipFollowKo follow = _StringsStoreTipFollowKo._(_root);
	@override late final _StringsStoreTipLikeKo like = _StringsStoreTipLikeKo._(_root);
}

// Path: store.buy
class _StringsStoreBuyKo extends _StringsStoreBuyEn {
	_StringsStoreBuyKo._(_StringsKo root) : this._root = root, super._(root);

	@override final _StringsKo _root; // ignore: unused_field

	// Translations
	@override String get follow => '사는 사람';
	@override String get like => '칭찬을 사십시오';
	@override String get view => '사고 관찰하십시오';
	@override String get share => '구매 및 공유';
	@override String get retweet => '양도를 구입하십시오';
	@override String get accountPublic => '* 계정을 열어 두십시오';
	@override String get channelPublic => '* 채널을 열어 두십시오';
	@override String get tiktok => 'Tiktok 비디오 링크';
	@override String get twitter => '트위터 트윗 링크';
	@override String get instagram => 'Instagram 게시물 링크';
	@override String get youtube => 'YouTube 채널 링크';
	@override String get pay => '지불';
}

// Path: store.purchase
class _StringsStorePurchaseKo extends _StringsStorePurchaseEn {
	_StringsStorePurchaseKo._(_StringsKo root) : this._root = root, super._(root);

	@override final _StringsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '결제 성공';
	@override String get message => '주문이 완료되기를 기다리십시오!';
}

// Path: store.notice
class _StringsStoreNoticeKo extends _StringsStoreNoticeEn {
	_StringsStoreNoticeKo._(_StringsKo root) : this._root = root, super._(root);

	@override final _StringsKo _root; // ignore: unused_field

	// Translations
	@override String message({required Object value}) => '무료 팔로워 ${value} 명을 얻으려면 먼저 앱 알림을 엽니 다.';
	@override String get turnOn => '열려 있는';
}

// Path: setting.share
class _StringsSettingShareKo extends _StringsSettingShareEn {
	_StringsSettingShareKo._(_StringsKo root) : this._root = root, super._(root);

	@override final _StringsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '앱 공유';
	@override String message({required Object value}) => '무료 Tiktok 팬과 좋아하는 보물 애플리케이션을 찾았습니다. 다음 링크 설치를 통해 ${value} 개의 금 코인을 얻을 수 있습니다!';
}

// Path: daily.rules
class _StringsDailyRulesKo extends _StringsDailyRulesEn {
	_StringsDailyRulesKo._(_StringsKo root) : this._root = root, super._(root);

	@override final _StringsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '규칙';
	@override List<String> get values => [
		'24 시간마다 로그인 할 수 있습니다.',
		'서명이 중단되면 다시 시작됩니다.',
	];
}

// Path: wheel.rules
class _StringsWheelRulesKo extends _StringsWheelRulesEn {
	_StringsWheelRulesKo._(_StringsKo root) : this._root = root, super._(root);

	@override final _StringsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '규칙';
	@override List<dynamic> get values => [
		({required Object value}) => '각 복권은 금화 ${value} 개가 비용이 듭니다.',
		'무승부 수는 제한되지 않습니다.',
	];
}

// Path: account.alert
class _StringsAccountAlertKo extends _StringsAccountAlertEn {
	_StringsAccountAlertKo._(_StringsKo root) : this._root = root, super._(root);

	@override final _StringsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '계정 삭제';
	@override String get message => '삭제 후 관련 작업에 계정을 사용할 수 없습니다.';
}

// Path: faq.values.0
class _StringsFaq0i0Ko extends _StringsFaq0i0En {
	_StringsFaq0i0Ko._(_StringsKo root) : this._root = root, super._(root);

	@override final _StringsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '1. 시작하는 방법?';
	@override String get value => '페이지 프롬프트에 따라 플랫폼 사용자 이름을 추가하기 만하면 각 플랫폼에는 해당 프롬프트가 있습니다.';
}

// Path: faq.values.1
class _StringsFaq0i1Ko extends _StringsFaq0i1En {
	_StringsFaq0i1Ko._(_StringsKo root) : this._root = root, super._(root);

	@override final _StringsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '2. 그것을 사용하는 것이 안전합니까?';
	@override String get value => '물론 안전합니다. 우리는 귀하의 비밀번호가 필요하지 않으며, 다른 일에주의를 기울이거나 수행하기 위해 공식 응용 프로그램으로 뛰어 들기 때문에 소셜 응용 프로그램 데이터를 저장할 수 없습니다.';
}

// Path: faq.values.2
class _StringsFaq0i2Ko extends _StringsFaq0i2En {
	_StringsFaq0i2Ko._(_StringsKo root) : this._root = root, super._(root);

	@override final _StringsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '3.이 모든 것이 어떻게 작동합니까?';
	@override String get value => '작업 방법은 간단합니다. 귀하의 개인 데이터/비디오가 커뮤니티에 표시됩니다. 사용자는 개인 데이터의 내용을 기반으로주의를 기울여야하는지 여부를 자유롭게 결정합니다.좋아/팔로우하는 교환으로 금화를 받고 팔로어/애호가를 얻는 데 사용될 수 있습니다.';
}

// Path: faq.values.3
class _StringsFaq0i3Ko extends _StringsFaq0i3En {
	_StringsFaq0i3Ko._(_StringsKo root) : this._root = root, super._(root);

	@override final _StringsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '4.주의와 진짜가 좋아요?';
	@override String get value => '물론, 그것은 실제입니다. 관련 서비스를 구매할 때, 서비스를 제공하기위한 많은 실제 사용자가 있으며, 공식 앱에서 운영됩니다. 걱정할 필요가 없습니다.';
}

// Path: faq.values.4
class _StringsFaq0i4Ko extends _StringsFaq0i4En {
	_StringsFaq0i4Ko._(_StringsKo root) : this._root = root, super._(root);

	@override final _StringsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '5. 금화를 어떻게 얻습니까?';
	@override String get value => '홈페이지에서 작업 목록을보고, 클릭하거나 팔로우하거나 좋아하는 다음 해당 앱으로 이동하여 작동을 위해 해당 앱으로 점프 할 수 있습니다.주의를 취소하거나 취소하지 않도록주의하십시오.';
}

// Path: faq.values.5
class _StringsFaq0i5Ko extends _StringsFaq0i5En {
	_StringsFaq0i5Ko._(_StringsKo root) : this._root = root, super._(root);

	@override final _StringsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '6. 작업이 실패하는 이유는 무엇입니까?';
	@override String get value => '이것은 일반적으로주의를 기울이지 않거나 좋아하지 않기 때문입니다. 먼저 계정을 확인해야합니다.';
}

// Path: faq.values.6
class _StringsFaq0i6Ko extends _StringsFaq0i6En {
	_StringsFaq0i6Ko._(_StringsKo root) : this._root = root, super._(root);

	@override final _StringsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '7. 주문을 완료하는 데 얼마나 걸립니까?';
	@override List<String> get value => [
		'이것은 주문량에 따라 다릅니다. 일반적으로 주문을받은 후 즉시 서비스를 받기 시작하고 24 시간 이내에 완료 할 수는 있지만 뒷면 뒤에 작동하는 실제 사용자가 많기 때문에 정확한 시간을 줄 수는 없습니다. 황금 서비스는 일반 서비스보다 빠릅니다.',
		'짧은 시간에 너무 많은 트래픽을 얻으면 계정이 의심되므로 참을성있게 기다리는 것이 가장 좋습니다.',
	];
}

// Path: faq.values.7
class _StringsFaq0i7Ko extends _StringsFaq0i7En {
	_StringsFaq0i7Ko._(_StringsKo root) : this._root = root, super._(root);

	@override final _StringsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '8. 주문 후 어떻게해야합니까?';
	@override String get value => '주문한 후 계정을 공개하십시오. 주문이 완료되기 전에 사용자 이름을 수정하지 마십시오.';
}

// Path: faq.values.8
class _StringsFaq0i8Ko extends _StringsFaq0i8En {
	_StringsFaq0i8Ko._(_StringsKo root) : this._root = root, super._(root);

	@override final _StringsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '9. 문제가 있으면 어떻게해야합니까?';
	@override String get value => '앱의 피드백을 통해 당사에 문의 할 수 있습니다.';
}

// Path: store.tip.follow
class _StringsStoreTipFollowKo extends _StringsStoreTipFollowEn {
	_StringsStoreTipFollowKo._(_StringsKo root) : this._root = root, super._(root);

	@override final _StringsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '추종자 및 선임 추종자';
	@override List<String> get values => [
		'',
		'추종자',
		'선임 추종자',
		'완전한 시간',
		'1-24 시간',
		'1-4 시간',
		'보상 시간',
		'/',
		'7 일 이내에 보상',
		'추종자 품질',
		'진짜',
		'진짜 및 활동',
		'낙하율',
		'8-15%',
		'0-3%',
	];
}

// Path: store.tip.like
class _StringsStoreTipLikeKo extends _StringsStoreTipLikeEn {
	_StringsStoreTipLikeKo._(_StringsKo root) : this._root = root, super._(root);

	@override final _StringsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '같은 칭찬';
	@override List<String> get values => [
		'',
		'처럼',
		'높은 수준의 찬양',
		'완전한 시간',
		'1-24 시간',
		'1-4 시간',
		'보상 시간',
		'/',
		'7 일 이내에 보상',
		'낙하율',
		'8-15%',
		'0-3%',
	];
}

// Path: <root>
class _StringsMr extends _StringsEn {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsMr.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.mr,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <mr>.
	@override final TranslationMetadata<AppLocale, _StringsEn> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	@override late final _StringsMr _root = this; // ignore: unused_field

	// Translations
	@override late final _StringsOnlyTitleMr onlyTitle = _StringsOnlyTitleMr._(_root);
	@override late final _StringsUniversalMr universal = _StringsUniversalMr._(_root);
	@override late final _StringsTabbarMr tabbar = _StringsTabbarMr._(_root);
	@override late final _StringsTaskMr task = _StringsTaskMr._(_root);
	@override late final _StringsStoreMr store = _StringsStoreMr._(_root);
	@override late final _StringsCoinsMr coins = _StringsCoinsMr._(_root);
	@override late final _StringsLoginMr login = _StringsLoginMr._(_root);
	@override late final _StringsSettingMr setting = _StringsSettingMr._(_root);
	@override late final _StringsLanguageMr language = _StringsLanguageMr._(_root);
	@override late final _StringsDailyMr daily = _StringsDailyMr._(_root);
	@override late final _StringsWheelMr wheel = _StringsWheelMr._(_root);
	@override late final _StringsAccountMr account = _StringsAccountMr._(_root);
	@override late final _StringsOrdersMr orders = _StringsOrdersMr._(_root);
	@override late final _StringsFaqMr faq = _StringsFaqMr._(_root);
	@override late final _StringsAboutMr about = _StringsAboutMr._(_root);
	@override late final _StringsAlertMr alert = _StringsAlertMr._(_root);
	@override late final _StringsToastMr toast = _StringsToastMr._(_root);
	@override late final _StringsLocalNotificationMr localNotification = _StringsLocalNotificationMr._(_root);
}

// Path: onlyTitle
class _StringsOnlyTitleMr extends _StringsOnlyTitleEn {
	_StringsOnlyTitleMr._(_StringsMr root) : this._root = root, super._(root);

	@override final _StringsMr _root; // ignore: unused_field

	// Translations
	@override String get contact => 'आमच्याशी संपर्क साधा';
}

// Path: universal
class _StringsUniversalMr extends _StringsUniversalEn {
	_StringsUniversalMr._(_StringsMr root) : this._root = root, super._(root);

	@override final _StringsMr _root; // ignore: unused_field

	// Translations
	@override String get coins => 'सोने';
	@override String get requestError => 'कृपया पुन्हा प्रयत्न करा';
	@override String get add => 'खाते जोडा';
}

// Path: tabbar
class _StringsTabbarMr extends _StringsTabbarEn {
	_StringsTabbarMr._(_StringsMr root) : this._root = root, super._(root);

	@override final _StringsMr _root; // ignore: unused_field

	// Translations
	@override String get task => 'पहिले पान';
	@override String get store => 'दुकान';
	@override String get setting => 'सेट अप';
}

// Path: task
class _StringsTaskMr extends _StringsTaskEn {
	_StringsTaskMr._(_StringsMr root) : this._root = root, super._(root);

	@override final _StringsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'पहिले पान';
	@override String get skip => 'उडी मारा';
	@override String get follow => 'यावर लक्ष केंद्रित करा';
	@override String get like => 'आवडले';
	@override String get noTask => 'कोणतेही कार्य नाही';
	@override late final _StringsTaskTipMr tip = _StringsTaskTipMr._(_root);
}

// Path: store
class _StringsStoreMr extends _StringsStoreEn {
	_StringsStoreMr._(_StringsMr root) : this._root = root, super._(root);

	@override final _StringsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'दुकान';
	@override String get free => 'फुकट';
	@override String get follow => 'अनुयायी';
	@override String get like => 'आवडले';
	@override String get view => 'पहा';
	@override String get share => 'वाटा';
	@override String get retweet => 'रीट्वीट';
	@override late final _StringsStoreAdMr ad = _StringsStoreAdMr._(_root);
	@override late final _StringsStoreChangeAccountMr changeAccount = _StringsStoreChangeAccountMr._(_root);
	@override late final _StringsStoreTipMr tip = _StringsStoreTipMr._(_root);
	@override late final _StringsStoreBuyMr buy = _StringsStoreBuyMr._(_root);
	@override late final _StringsStorePurchaseMr purchase = _StringsStorePurchaseMr._(_root);
	@override late final _StringsStoreNoticeMr notice = _StringsStoreNoticeMr._(_root);
}

// Path: coins
class _StringsCoinsMr extends _StringsCoinsEn {
	_StringsCoinsMr._(_StringsMr root) : this._root = root, super._(root);

	@override final _StringsMr _root; // ignore: unused_field

	// Translations
	@override String get empty => 'इतिहास नाही';
}

// Path: login
class _StringsLoginMr extends _StringsLoginEn {
	_StringsLoginMr._(_StringsMr root) : this._root = root, super._(root);

	@override final _StringsMr _root; // ignore: unused_field

	// Translations
	@override String get confirm => 'पुष्टी';
	@override String username({required Object value}) => 'आपले ${value} वापरकर्ता नाव प्रविष्ट करा';
	@override String get channel => 'आपला YouTube चॅनेल दुवा प्रविष्ट करा';
	@override String get publicUsername => '* कृपया आपले खाते खुले आहे';
	@override String get publicChannel => '* कृपया आपले चॅनेल उघडे ठेवा';
	@override String get add => 'खाते जोडा';
	@override String get hintUsername => 'वापरकर्तानाव';
	@override String get hintChannel => 'चॅनेल दुवा';
}

// Path: setting
class _StringsSettingMr extends _StringsSettingEn {
	_StringsSettingMr._(_StringsMr root) : this._root = root, super._(root);

	@override final _StringsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'सेट अप';
	@override String get editor => 'माहिती संपादित करा';
	@override String get daily => 'साइन इन करा';
	@override String get wheel => 'फॉर्च्युनचे चाक';
	@override String get account => 'व्यवस्थापन खाते';
	@override String get language => 'इंग्रजी';
	@override String get orders => 'ऑर्डर';
	@override String get faq => 'सामान्य समस्या';
	@override String get about => 'बद्दल';
	@override late final _StringsSettingShareMr share = _StringsSettingShareMr._(_root);
	@override String get rateUs => 'आमचे मूल्यांकन करा';
}

// Path: language
class _StringsLanguageMr extends _StringsLanguageEn {
	_StringsLanguageMr._(_StringsMr root) : this._root = root, super._(root);

	@override final _StringsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'एक भाषा निवडा';
	@override String get start => 'प्रारंभ करा';
}

// Path: daily
class _StringsDailyMr extends _StringsDailyEn {
	_StringsDailyMr._(_StringsMr root) : this._root = root, super._(root);

	@override final _StringsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'साइन इन करा';
	@override String get checkIn => 'साइन इन करा';
	@override late final _StringsDailyRulesMr rules = _StringsDailyRulesMr._(_root);
}

// Path: wheel
class _StringsWheelMr extends _StringsWheelEn {
	_StringsWheelMr._(_StringsMr root) : this._root = root, super._(root);

	@override final _StringsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'फॉर्च्युनचे चाक';
	@override late final _StringsWheelRulesMr rules = _StringsWheelRulesMr._(_root);
}

// Path: account
class _StringsAccountMr extends _StringsAccountEn {
	_StringsAccountMr._(_StringsMr root) : this._root = root, super._(root);

	@override final _StringsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'व्यवस्थापन खाते';
	@override String get add => '+ खाते क्रमांक जोडा';
	@override String get empty => 'खाते नाही';
	@override late final _StringsAccountAlertMr alert = _StringsAccountAlertMr._(_root);
}

// Path: orders
class _StringsOrdersMr extends _StringsOrdersEn {
	_StringsOrdersMr._(_StringsMr root) : this._root = root, super._(root);

	@override final _StringsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ऑर्डर';
	@override String get pending => 'रांग';
	@override String get processing => 'प्रक्रिया';
	@override String get inProgress => 'प्रक्रिया';
	@override String get completed => 'पूर्ण';
	@override String get partial => 'आंशिक पूर्णता';
	@override String get error => 'चूक';
	@override String get canceled => 'रद्द';
	@override String get refunded => 'परत केले';
	@override String get empty => 'ऑर्डर नाही';
}

// Path: faq
class _StringsFaqMr extends _StringsFaqEn {
	_StringsFaqMr._(_StringsMr root) : this._root = root, super._(root);

	@override final _StringsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'सामान्य समस्या';
	@override List<dynamic> get values => [
		_StringsFaq0i0Mr._(_root),
		_StringsFaq0i1Mr._(_root),
		_StringsFaq0i2Mr._(_root),
		_StringsFaq0i3Mr._(_root),
		_StringsFaq0i4Mr._(_root),
		_StringsFaq0i5Mr._(_root),
		_StringsFaq0i6Mr._(_root),
		_StringsFaq0i7Mr._(_root),
		_StringsFaq0i8Mr._(_root),
	];
}

// Path: about
class _StringsAboutMr extends _StringsAboutEn {
	_StringsAboutMr._(_StringsMr root) : this._root = root, super._(root);

	@override final _StringsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'बद्दल';
	@override String get contact => 'आमच्याशी संपर्क साधा';
	@override String get service => 'सेवा अटी';
	@override String get policy => 'गोपनीयता धोरण';
}

// Path: alert
class _StringsAlertMr extends _StringsAlertEn {
	_StringsAlertMr._(_StringsMr root) : this._root = root, super._(root);

	@override final _StringsMr _root; // ignore: unused_field

	// Translations
	@override String get ok => 'ठीक आहे';
	@override String get cancel => 'रद्द करा';
	@override String get confirm => 'पुष्टी';
}

// Path: toast
class _StringsToastMr extends _StringsToastEn {
	_StringsToastMr._(_StringsMr root) : this._root = root, super._(root);

	@override final _StringsMr _root; // ignore: unused_field

	// Translations
	@override String get unpurchase => 'सध्या खरेदी करू शकत नाही';
	@override String get purchasedNotFound => 'सध्याची सेवा खरेदी करू शकत नाही';
	@override String get payment => 'देयक यशस्वी!';
	@override String get coinsNotEnough => 'सोन्याचे अपुरे!';
	@override String get received => 'यशस्वी पावती!';
	@override String get adError => 'जाहिराती बर्‍याचदा पहात आहेत, कृपया नंतर पुन्हा प्रयत्न करा!';
}

// Path: localNotification
class _StringsLocalNotificationMr extends _StringsLocalNotificationEn {
	_StringsLocalNotificationMr._(_StringsMr root) : this._root = root, super._(root);

	@override final _StringsMr _root; // ignore: unused_field

	// Translations
	@override String get adTaskReady => 'नवीन जाहिरात कार्य तयार आहे!';
}

// Path: task.tip
class _StringsTaskTipMr extends _StringsTaskTipEn {
	_StringsTaskTipMr._(_StringsMr root) : this._root = root, super._(root);

	@override final _StringsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'प्रॉमप्ट';
	@override List<dynamic> get values => [
		({required Object value}) => '1. ${value} बटणावर क्लिक करा',
		({required Object value}) => '2. उघडा ${value}',
		({required Object value}) => '${value}. ${value}',
		({required Object value}) => '4. ${value} वर परत',
		'5. सोन्याचे नाणी मिळवा',
	];
	@override String get message => 'आपण आपले लक्ष/जसे की, सोन्याचे नाणी काढल्या जातील!';
}

// Path: store.ad
class _StringsStoreAdMr extends _StringsStoreAdEn {
	_StringsStoreAdMr._(_StringsMr root) : this._root = root, super._(root);

	@override final _StringsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'जाहिरात बक्षीस';
	@override String get watch => 'एक जाहिरात पहा';
}

// Path: store.changeAccount
class _StringsStoreChangeAccountMr extends _StringsStoreChangeAccountEn {
	_StringsStoreChangeAccountMr._(_StringsMr root) : this._root = root, super._(root);

	@override final _StringsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'खाते सुधारित करा';
	@override String get add => 'खाते जोडा';
}

// Path: store.tip
class _StringsStoreTipMr extends _StringsStoreTipEn {
	_StringsStoreTipMr._(_StringsMr root) : this._root = root, super._(root);

	@override final _StringsMr _root; // ignore: unused_field

	// Translations
	@override late final _StringsStoreTipFollowMr follow = _StringsStoreTipFollowMr._(_root);
	@override late final _StringsStoreTipLikeMr like = _StringsStoreTipLikeMr._(_root);
}

// Path: store.buy
class _StringsStoreBuyMr extends _StringsStoreBuyEn {
	_StringsStoreBuyMr._(_StringsMr root) : this._root = root, super._(root);

	@override final _StringsMr _root; // ignore: unused_field

	// Translations
	@override String get follow => 'खरेदीदार';
	@override String get like => 'काही स्तुती खरेदी करा';
	@override String get view => 'खरेदी आणि पहा';
	@override String get share => 'खरेदी आणि सामायिक करा';
	@override String get retweet => 'हस्तांतरण खरेदी करा';
	@override String get accountPublic => '* कृपया आपले खाते खुले आहे';
	@override String get channelPublic => '* कृपया आपले चॅनेल उघडे ठेवा';
	@override String get tiktok => 'आपला टिकटोक व्हिडिओ दुवा';
	@override String get twitter => 'आपला ट्विटर ट्विट दुवा';
	@override String get instagram => 'आपला इंस्टाग्राम पोस्ट दुवा';
	@override String get youtube => 'आपला YouTube चॅनेल दुवा';
	@override String get pay => 'वेतन';
}

// Path: store.purchase
class _StringsStorePurchaseMr extends _StringsStorePurchaseEn {
	_StringsStorePurchaseMr._(_StringsMr root) : this._root = root, super._(root);

	@override final _StringsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'देयक यशस्वी';
	@override String get message => 'कृपया ऑर्डर पूर्ण होण्याची प्रतीक्षा करा!';
}

// Path: store.notice
class _StringsStoreNoticeMr extends _StringsStoreNoticeEn {
	_StringsStoreNoticeMr._(_StringsMr root) : this._root = root, super._(root);

	@override final _StringsMr _root; // ignore: unused_field

	// Translations
	@override String message({required Object value}) => '${value} विनामूल्य अनुयायी मिळविण्यासाठी, प्रथम अ‍ॅप सूचना उघडा.';
	@override String get turnOn => 'उघडा';
}

// Path: setting.share
class _StringsSettingShareMr extends _StringsSettingShareEn {
	_StringsSettingShareMr._(_StringsMr root) : this._root = root, super._(root);

	@override final _StringsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'अॅप सामायिक करा';
	@override String message({required Object value}) => 'मला एक खजिना अनुप्रयोग सापडला जो विनामूल्य टिकटोक चाहत्यांना आणि आवडी मिळवू शकेल. खालील दुवा स्थापनेद्वारे आम्हाला ${value} सोन्याचे नाणी मिळतील!';
}

// Path: daily.rules
class _StringsDailyRulesMr extends _StringsDailyRulesEn {
	_StringsDailyRulesMr._(_StringsMr root) : this._root = root, super._(root);

	@override final _StringsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'नियम';
	@override List<String> get values => [
		'आपण दर 24 तासांनी साइन इन करू शकता;',
		'चिन्ह -व्यत्ययानंतर, ते पुन्हा सुरू होईल.',
	];
}

// Path: wheel.rules
class _StringsWheelRulesMr extends _StringsWheelRulesEn {
	_StringsWheelRulesMr._(_StringsMr root) : this._root = root, super._(root);

	@override final _StringsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'नियम';
	@override List<dynamic> get values => [
		({required Object value}) => 'प्रत्येक लॉटरीची किंमत ${value} सोन्याची नाणी असेल;',
		'ड्रॉची संख्या मर्यादित नाही.',
	];
}

// Path: account.alert
class _StringsAccountAlertMr extends _StringsAccountAlertEn {
	_StringsAccountAlertMr._(_StringsMr root) : this._root = root, super._(root);

	@override final _StringsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'खाते हटवा';
	@override String get message => 'हटविल्यानंतर, आपण संबंधित ऑपरेशन्ससाठी खाते वापरण्यास सक्षम राहणार नाही.';
}

// Path: faq.values.0
class _StringsFaq0i0Mr extends _StringsFaq0i0En {
	_StringsFaq0i0Mr._(_StringsMr root) : this._root = root, super._(root);

	@override final _StringsMr _root; // ignore: unused_field

	// Translations
	@override String get title => '1. कसे सुरू करावे?';
	@override String get value => 'पृष्ठ सूचनांनुसार फक्त आपले प्लॅटफॉर्म वापरकर्ता नाव जोडा, संकेतशब्द नाही, प्रत्येक प्लॅटफॉर्मला संबंधित प्रॉमप्ट आहे.';
}

// Path: faq.values.1
class _StringsFaq0i1Mr extends _StringsFaq0i1En {
	_StringsFaq0i1Mr._(_StringsMr root) : this._root = root, super._(root);

	@override final _StringsMr _root; // ignore: unused_field

	// Translations
	@override String get title => '२. ते वापरणे सुरक्षित आहे का?';
	@override String get value => 'अर्थात, ते सुरक्षित आहे. आम्हाला आपल्या संकेतशब्दाची आवश्यकता नाही आणि आम्ही आपला सामाजिक अनुप्रयोग डेटा जतन करू शकत नाही कारण इतर गोष्टींकडे लक्ष देण्यासाठी किंवा करण्यासाठी अधिकृत अनुप्रयोगावर उडी मारत आहे.';
}

// Path: faq.values.2
class _StringsFaq0i2Mr extends _StringsFaq0i2En {
	_StringsFaq0i2Mr._(_StringsMr root) : this._root = root, super._(root);

	@override final _StringsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'This. हे सर्व कसे कार्य करते?';
	@override String get value => 'कामाची पद्धत सोपी आहे: आपला वैयक्तिक डेटा/व्हिडिओ आमच्या समाजात प्रदर्शित झाला आहे. वापरकर्त्यांनी आपल्या वैयक्तिक डेटाच्या सामग्रीवर आधारित आपल्याकडे लक्ष द्यावे की नाही हे स्वतंत्रपणे निर्णय घ्या.एक्सचेंज म्हणून/अनुसरण करणारे एक्सचेंज म्हणून, त्यांना सोन्याचे नाणी प्राप्त होतील आणि अनुयायी/प्रेमी मिळविण्यासाठी वापरले जाऊ शकतात.';
}

// Path: faq.values.3
class _StringsFaq0i3Mr extends _StringsFaq0i3En {
	_StringsFaq0i3Mr._(_StringsMr root) : this._root = root, super._(root);

	@override final _StringsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Motion. लक्ष आणि वास्तविक आहे का?';
	@override String get value => 'अर्थात, ते वास्तविक आहे. जेव्हा आपण संबंधित सेवा खरेदी करता तेव्हा आपल्याला सेवा प्रदान करण्यासाठी त्यामागे बरेच वास्तविक वापरकर्ते असतात आणि ते अधिकृत अॅपवर चालविले जाते. आपल्याला त्याबद्दल काळजी करण्याची आवश्यकता नाही.';
}

// Path: faq.values.4
class _StringsFaq0i4Mr extends _StringsFaq0i4En {
	_StringsFaq0i4Mr._(_StringsMr root) : this._root = root, super._(root);

	@override final _StringsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'I. मी सोन्याचे नाणी कशी मिळवू?';
	@override String get value => 'मुख्यपृष्ठावर, आपण कार्य यादी पाहू शकता, अनुसरण करण्यासाठी किंवा पसंत करण्यासाठी क्लिक करा आणि ऑपरेशनसाठी संबंधित अ‍ॅपवर जा. कृपया आपले लक्ष रद्द करू नका किंवा आवडू नका याची काळजी घ्या, ज्यामुळे आपले बक्षीस रद्द होईल.';
}

// Path: faq.values.5
class _StringsFaq0i5Mr extends _StringsFaq0i5En {
	_StringsFaq0i5Mr._(_StringsMr root) : this._root = root, super._(root);

	@override final _StringsMr _root; // ignore: unused_field

	// Translations
	@override String get title => '6. कार्ये का अयशस्वी होतात?';
	@override String get value => 'हे सहसा असे आहे कारण आपण खरोखर लक्ष देत नाही किंवा ते आवडत नाही. आपण प्रथम आपले खाते तपासले पाहिजे.';
}

// Path: faq.values.6
class _StringsFaq0i6Mr extends _StringsFaq0i6En {
	_StringsFaq0i6Mr._(_StringsMr root) : this._root = root, super._(root);

	@override final _StringsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'My. माझी ऑर्डर पूर्ण करण्यास किती वेळ लागेल?';
	@override List<String> get value => [
		'हे आपल्या ऑर्डर व्हॉल्यूमवर अवलंबून आहे. सहसा, ऑर्डर दिल्यानंतर आपण ताबडतोब सेवा मिळवू शकाल आणि 24 तासाच्या आत पूर्ण करू शकाल, परंतु आम्ही अचूक वेळ देऊ शकत नाही, कारण पाठीमागे मोठ्या संख्येने वास्तविक वापरकर्ते कार्यरत आहेत. ते पाहिजे. लक्षात घ्या की गोल्डन सर्व्हिस सामान्य सेवांपेक्षा वेगवान आहे.',
		'थोड्या वेळात जास्त रहदारी मिळवा आपले खाते संशयास्पद करेल, म्हणून धैर्याने वाट पाहणे हा एक उत्तम मार्ग आहे.',
	];
}

// Path: faq.values.7
class _StringsFaq0i7Mr extends _StringsFaq0i7En {
	_StringsFaq0i7Mr._(_StringsMr root) : this._root = root, super._(root);

	@override final _StringsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Orduy. ऑर्डर दिल्यानंतर मी काय करावे?';
	@override String get value => 'आपण ऑर्डर दिल्यानंतर आपले खाते उघड करा. ऑर्डर पूर्ण होण्यापूर्वी आपले वापरकर्तानाव सुधारित करू नका.';
}

// Path: faq.values.8
class _StringsFaq0i8Mr extends _StringsFaq0i8En {
	_StringsFaq0i8Mr._(_StringsMr root) : this._root = root, super._(root);

	@override final _StringsMr _root; // ignore: unused_field

	// Translations
	@override String get title => '9. मला समस्या असल्यास काय?';
	@override String get value => 'अ‍ॅपमधील अभिप्रायाद्वारे आपण आमच्याशी संपर्क साधू शकता.';
}

// Path: store.tip.follow
class _StringsStoreTipFollowMr extends _StringsStoreTipFollowEn {
	_StringsStoreTipFollowMr._(_StringsMr root) : this._root = root, super._(root);

	@override final _StringsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'अनुयायी आणि वरिष्ठ अनुयायी';
	@override List<String> get values => [
		'',
		'अनुयायी',
		'वरिष्ठ अनुयायी',
		'पूर्ण वेळ',
		'1-24 तास',
		'1-4 तास',
		'भरपाई वेळ',
		'/',
		'7 दिवसांच्या आत भरपाई',
		'अनुयायी गुणवत्ता',
		'वास्तविक',
		'वास्तविक आणि सक्रिय',
		'ड्रॉप रेट',
		'8-15%',
		'0-3%',
	];
}

// Path: store.tip.like
class _StringsStoreTipLikeMr extends _StringsStoreTipLikeEn {
	_StringsStoreTipLikeMr._(_StringsMr root) : this._root = root, super._(root);

	@override final _StringsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'जसे आणि प्रगत स्तुती';
	@override List<String> get values => [
		'',
		'आवडले',
		'उच्च -स्तरीय स्तुती',
		'पूर्ण वेळ',
		'1-24 तास',
		'1-4 तास',
		'भरपाई वेळ',
		'/',
		'7 दिवसांच्या आत भरपाई',
		'ड्रॉप रेट',
		'8-15%',
		'0-3%',
	];
}

// Path: <root>
class _StringsNe extends _StringsEn {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsNe.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.ne,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ne>.
	@override final TranslationMetadata<AppLocale, _StringsEn> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	@override late final _StringsNe _root = this; // ignore: unused_field

	// Translations
	@override late final _StringsOnlyTitleNe onlyTitle = _StringsOnlyTitleNe._(_root);
	@override late final _StringsUniversalNe universal = _StringsUniversalNe._(_root);
	@override late final _StringsTabbarNe tabbar = _StringsTabbarNe._(_root);
	@override late final _StringsTaskNe task = _StringsTaskNe._(_root);
	@override late final _StringsStoreNe store = _StringsStoreNe._(_root);
	@override late final _StringsCoinsNe coins = _StringsCoinsNe._(_root);
	@override late final _StringsLoginNe login = _StringsLoginNe._(_root);
	@override late final _StringsSettingNe setting = _StringsSettingNe._(_root);
	@override late final _StringsLanguageNe language = _StringsLanguageNe._(_root);
	@override late final _StringsDailyNe daily = _StringsDailyNe._(_root);
	@override late final _StringsWheelNe wheel = _StringsWheelNe._(_root);
	@override late final _StringsAccountNe account = _StringsAccountNe._(_root);
	@override late final _StringsOrdersNe orders = _StringsOrdersNe._(_root);
	@override late final _StringsFaqNe faq = _StringsFaqNe._(_root);
	@override late final _StringsAboutNe about = _StringsAboutNe._(_root);
	@override late final _StringsAlertNe alert = _StringsAlertNe._(_root);
	@override late final _StringsToastNe toast = _StringsToastNe._(_root);
	@override late final _StringsLocalNotificationNe localNotification = _StringsLocalNotificationNe._(_root);
}

// Path: onlyTitle
class _StringsOnlyTitleNe extends _StringsOnlyTitleEn {
	_StringsOnlyTitleNe._(_StringsNe root) : this._root = root, super._(root);

	@override final _StringsNe _root; // ignore: unused_field

	// Translations
	@override String get contact => 'हामीलाई सम्पर्क गर्नुहोस';
}

// Path: universal
class _StringsUniversalNe extends _StringsUniversalEn {
	_StringsUniversalNe._(_StringsNe root) : this._root = root, super._(root);

	@override final _StringsNe _root; // ignore: unused_field

	// Translations
	@override String get coins => 'सुन';
	@override String get requestError => 'फेरी प्रयास गर्नु होला';
	@override String get add => 'खाता थप्नुहोस्';
}

// Path: tabbar
class _StringsTabbarNe extends _StringsTabbarEn {
	_StringsTabbarNe._(_StringsNe root) : this._root = root, super._(root);

	@override final _StringsNe _root; // ignore: unused_field

	// Translations
	@override String get task => 'अग्रगामी पृष्ठ';
	@override String get store => 'पसल';
	@override String get setting => 'स्थापित गर्नु';
}

// Path: task
class _StringsTaskNe extends _StringsTaskEn {
	_StringsTaskNe._(_StringsNe root) : this._root = root, super._(root);

	@override final _StringsNe _root; // ignore: unused_field

	// Translations
	@override String get title => 'अग्रगामी पृष्ठ';
	@override String get skip => 'उफ्रनु';
	@override String get follow => 'ध्यान दिनुहोस्';
	@override String get like => 'मन पराउनु';
	@override String get noTask => 'काम होइन';
	@override late final _StringsTaskTipNe tip = _StringsTaskTipNe._(_root);
}

// Path: store
class _StringsStoreNe extends _StringsStoreEn {
	_StringsStoreNe._(_StringsNe root) : this._root = root, super._(root);

	@override final _StringsNe _root; // ignore: unused_field

	// Translations
	@override String get title => 'पसल';
	@override String get free => 'सितैमा';
	@override String get follow => 'अनुयायीहरू';
	@override String get like => 'मन पराउनु';
	@override String get view => 'अबलोकन गर्नु';
	@override String get share => 'भाग';
	@override String get retweet => 'खुदर ग्रर्काषदुक्षीरो उत्तुवृ्ट';
	@override late final _StringsStoreAdNe ad = _StringsStoreAdNe._(_root);
	@override late final _StringsStoreChangeAccountNe changeAccount = _StringsStoreChangeAccountNe._(_root);
	@override late final _StringsStoreTipNe tip = _StringsStoreTipNe._(_root);
	@override late final _StringsStoreBuyNe buy = _StringsStoreBuyNe._(_root);
	@override late final _StringsStorePurchaseNe purchase = _StringsStorePurchaseNe._(_root);
	@override late final _StringsStoreNoticeNe notice = _StringsStoreNoticeNe._(_root);
}

// Path: coins
class _StringsCoinsNe extends _StringsCoinsEn {
	_StringsCoinsNe._(_StringsNe root) : this._root = root, super._(root);

	@override final _StringsNe _root; // ignore: unused_field

	// Translations
	@override String get empty => 'कुनै इतिहास छैन';
}

// Path: login
class _StringsLoginNe extends _StringsLoginEn {
	_StringsLoginNe._(_StringsNe root) : this._root = root, super._(root);

	@override final _StringsNe _root; // ignore: unused_field

	// Translations
	@override String get confirm => 'पक्का गर्नु';
	@override String username({required Object value}) => 'तपाईंको ${value} प्रयोगकर्ता नाम प्रविष्ट गर्नुहोस्';
	@override String get channel => 'तपाईंको Youtube च्यानल लिंक प्रविष्ट गर्नुहोस्';
	@override String get publicUsername => '* कृपया तपाईंको खाता खुला राख्नुहोस्';
	@override String get publicChannel => '* कृपया तपाईंको च्यानल खुला राख्नुहोस्';
	@override String get add => 'खाता थप्नुहोस्';
	@override String get hintUsername => 'प्रयोगकर्ता नाम';
	@override String get hintChannel => 'कल्णीकरण';
}

// Path: setting
class _StringsSettingNe extends _StringsSettingEn {
	_StringsSettingNe._(_StringsNe root) : this._root = root, super._(root);

	@override final _StringsNe _root; // ignore: unused_field

	// Translations
	@override String get title => 'स्थापित गर्नु';
	@override String get editor => 'जानकारी सम्पादन गर्नुहोस्';
	@override String get daily => 'साइन इन गर';
	@override String get wheel => 'भाग्य को पाङ्ग्रा';
	@override String get account => 'व्यवस्थापन खाता';
	@override String get language => 'भाषा';
	@override String get orders => 'मगाउनु';
	@override String get faq => 'साधारण समस्या';
	@override String get about => 'प्राय';
	@override late final _StringsSettingShareNe share = _StringsSettingShareNe._(_root);
	@override String get rateUs => 'हामीलाई मूल्या ate ्कन गर्नुहोस्';
}

// Path: language
class _StringsLanguageNe extends _StringsLanguageEn {
	_StringsLanguageNe._(_StringsNe root) : this._root = root, super._(root);

	@override final _StringsNe _root; // ignore: unused_field

	// Translations
	@override String get title => 'भाषा छनौट गर्नुहोस्';
	@override String get start => 'शुरु';
}

// Path: daily
class _StringsDailyNe extends _StringsDailyEn {
	_StringsDailyNe._(_StringsNe root) : this._root = root, super._(root);

	@override final _StringsNe _root; // ignore: unused_field

	// Translations
	@override String get title => 'साइन इन गर';
	@override String get checkIn => 'साइन इन गर';
	@override late final _StringsDailyRulesNe rules = _StringsDailyRulesNe._(_root);
}

// Path: wheel
class _StringsWheelNe extends _StringsWheelEn {
	_StringsWheelNe._(_StringsNe root) : this._root = root, super._(root);

	@override final _StringsNe _root; // ignore: unused_field

	// Translations
	@override String get title => 'भाग्य को पाङ्ग्रा';
	@override late final _StringsWheelRulesNe rules = _StringsWheelRulesNe._(_root);
}

// Path: account
class _StringsAccountNe extends _StringsAccountEn {
	_StringsAccountNe._(_StringsNe root) : this._root = root, super._(root);

	@override final _StringsNe _root; // ignore: unused_field

	// Translations
	@override String get title => 'व्यवस्थापन खाता';
	@override String get add => '+ खाता नम्बर थप्नुहोस्';
	@override String get empty => 'खाता छैन';
	@override late final _StringsAccountAlertNe alert = _StringsAccountAlertNe._(_root);
}

// Path: orders
class _StringsOrdersNe extends _StringsOrdersEn {
	_StringsOrdersNe._(_StringsNe root) : this._root = root, super._(root);

	@override final _StringsNe _root; // ignore: unused_field

	// Translations
	@override String get title => 'मगाउनु';
	@override String get pending => 'लाम';
	@override String get processing => 'कार्यवाही चलीरहेको';
	@override String get inProgress => 'कार्यवाही चलीरहेको';
	@override String get completed => 'पूरा हुनु';
	@override String get partial => 'आंशिक सम्पन्नता';
	@override String get error => 'भुल';
	@override String get canceled => 'रद्द गरेको पद';
	@override String get refunded => 'पैसा फिर्ताक';
	@override String get empty => 'आदेश छैन';
}

// Path: faq
class _StringsFaqNe extends _StringsFaqEn {
	_StringsFaqNe._(_StringsNe root) : this._root = root, super._(root);

	@override final _StringsNe _root; // ignore: unused_field

	// Translations
	@override String get title => 'साधारण समस्या';
	@override List<dynamic> get values => [
		_StringsFaq0i0Ne._(_root),
		_StringsFaq0i1Ne._(_root),
		_StringsFaq0i2Ne._(_root),
		_StringsFaq0i3Ne._(_root),
		_StringsFaq0i4Ne._(_root),
		_StringsFaq0i5Ne._(_root),
		_StringsFaq0i6Ne._(_root),
		_StringsFaq0i7Ne._(_root),
		_StringsFaq0i8Ne._(_root),
	];
}

// Path: about
class _StringsAboutNe extends _StringsAboutEn {
	_StringsAboutNe._(_StringsNe root) : this._root = root, super._(root);

	@override final _StringsNe _root; // ignore: unused_field

	// Translations
	@override String get title => 'प्राय';
	@override String get contact => 'हामीलाई सम्पर्क गर्नुहोस';
	@override String get service => 'सेवाका सर्तहरु';
	@override String get policy => 'गोपनीयता नीति';
}

// Path: alert
class _StringsAlertNe extends _StringsAlertEn {
	_StringsAlertNe._(_StringsNe root) : this._root = root, super._(root);

	@override final _StringsNe _root; // ignore: unused_field

	// Translations
	@override String get ok => 'ठिक छ';
	@override String get cancel => 'रद्द गर्नु';
	@override String get confirm => 'पक्का गर्नु';
}

// Path: toast
class _StringsToastNe extends _StringsToastEn {
	_StringsToastNe._(_StringsNe root) : this._root = root, super._(root);

	@override final _StringsNe _root; // ignore: unused_field

	// Translations
	@override String get unpurchase => 'हाल खरीद गर्न सक्दैन';
	@override String get purchasedNotFound => 'हालको सेवा किन्न सक्दैन';
	@override String get payment => 'भुक्तानी सफल!';
	@override String get coinsNotEnough => 'सुनको अपर्याप्त!';
	@override String get received => 'सफल रसीद!';
	@override String get adError => 'बारम्बार विज्ञापनहरू हेर्दै, कृपया पछि पुन: प्रयास गर्नुहोस्!';
}

// Path: localNotification
class _StringsLocalNotificationNe extends _StringsLocalNotificationEn {
	_StringsLocalNotificationNe._(_StringsNe root) : this._root = root, super._(root);

	@override final _StringsNe _root; // ignore: unused_field

	// Translations
	@override String get adTaskReady => 'नयाँ विज्ञापन कार्य तयार छ!';
}

// Path: task.tip
class _StringsTaskTipNe extends _StringsTaskTipEn {
	_StringsTaskTipNe._(_StringsNe root) : this._root = root, super._(root);

	@override final _StringsNe _root; // ignore: unused_field

	// Translations
	@override String get title => 'तुरुन्तै';
	@override List<dynamic> get values => [
		'1. बटन क्लिक गर्नुहोस्',
		({required Object value}) => '2. खुला ${value}',
		({required Object value}) => '${value}. ${value}',
		'The। To मा फिर्ता',
		'Law। सुन सिक्का प्राप्त गर्नुहोस्',
	];
	@override String get message => 'यदि तपाइँ तपाइँको ध्यान रद्द / जस्तै सुनको सिक्का हटाइनेछ!';
}

// Path: store.ad
class _StringsStoreAdNe extends _StringsStoreAdEn {
	_StringsStoreAdNe._(_StringsNe root) : this._root = root, super._(root);

	@override final _StringsNe _root; // ignore: unused_field

	// Translations
	@override String get title => 'विज्ञापन इनाम';
	@override String get watch => 'विज्ञापन हेर्नुहोस्';
}

// Path: store.changeAccount
class _StringsStoreChangeAccountNe extends _StringsStoreChangeAccountEn {
	_StringsStoreChangeAccountNe._(_StringsNe root) : this._root = root, super._(root);

	@override final _StringsNe _root; // ignore: unused_field

	// Translations
	@override String get title => 'खाता परिमार्जन गर्नुहोस्';
	@override String get add => 'खाता थप्नुहोस्';
}

// Path: store.tip
class _StringsStoreTipNe extends _StringsStoreTipEn {
	_StringsStoreTipNe._(_StringsNe root) : this._root = root, super._(root);

	@override final _StringsNe _root; // ignore: unused_field

	// Translations
	@override late final _StringsStoreTipFollowNe follow = _StringsStoreTipFollowNe._(_root);
	@override late final _StringsStoreTipLikeNe like = _StringsStoreTipLikeNe._(_root);
}

// Path: store.buy
class _StringsStoreBuyNe extends _StringsStoreBuyEn {
	_StringsStoreBuyNe._(_StringsNe root) : this._root = root, super._(root);

	@override final _StringsNe _root; // ignore: unused_field

	// Translations
	@override String get follow => 'खरीददार';
	@override String get like => 'केही प्रशंसा किन्नुहोस्';
	@override String get view => 'किन्नुहोस् र हेर्नुहोस्';
	@override String get share => 'किन्नुहोस् र साझेदारी गर्नुहोस्';
	@override String get retweet => 'एउटा स्थानान्तरण किन्नुहोस्';
	@override String get accountPublic => '* कृपया तपाईंको खाता खुला राख्नुहोस्';
	@override String get channelPublic => '* कृपया तपाईंको च्यानल खुला राख्नुहोस्';
	@override String get tiktok => 'तपाईंको Tiktok भिडियो लिंक';
	@override String get twitter => 'तपाईंको ट्विटर ट्वीट लिंक';
	@override String get instagram => 'तपाईंको इन्स्टाग्राम पोष्ट लिंक';
	@override String get youtube => 'तपाईंको YouTube च्यानल लिंक';
	@override String get pay => 'तिर्ने काम';
}

// Path: store.purchase
class _StringsStorePurchaseNe extends _StringsStorePurchaseEn {
	_StringsStorePurchaseNe._(_StringsNe root) : this._root = root, super._(root);

	@override final _StringsNe _root; // ignore: unused_field

	// Translations
	@override String get title => 'भुक्तानी सफल';
	@override String get message => 'कृपया पूर्ण गर्नका लागि प्रतिक्षा गर्नुहोस्!';
}

// Path: store.notice
class _StringsStoreNoticeNe extends _StringsStoreNoticeEn {
	_StringsStoreNoticeNe._(_StringsNe root) : this._root = root, super._(root);

	@override final _StringsNe _root; // ignore: unused_field

	// Translations
	@override String message({required Object value}) => '${value} नि:शुल्क अनुयायीहरू प्राप्त गर्न, कृपया सूचनाहरू खोल्नुहोस्।';
	@override String get turnOn => 'खोल्नु';
}

// Path: setting.share
class _StringsSettingShareNe extends _StringsSettingShareEn {
	_StringsSettingShareNe._(_StringsNe root) : this._root = root, super._(root);

	@override final _StringsNe _root; // ignore: unused_field

	// Translations
	@override String get title => 'साझेदारी साझेदारी';
	@override String message({required Object value}) => 'मैले एउटा खजाना एप फेला पारेको छु जसले नि:शुल्क टिकटक फलोअरहरू र लाइकहरू प्राप्त गर्न सक्छ, तलको लिङ्क मार्फत एप स्थापना गर्नुहोस्, हामी दुवैले ${value} सिक्का पाउनेछौं!';
}

// Path: daily.rules
class _StringsDailyRulesNe extends _StringsDailyRulesEn {
	_StringsDailyRulesNe._(_StringsNe root) : this._root = root, super._(root);

	@override final _StringsNe _root; // ignore: unused_field

	// Translations
	@override String get title => 'नियम';
	@override List<String> get values => [
		'तपाईं प्रत्येक 2 hours घण्टामा साइन इन गर्न सक्नुहुन्छ;',
		'साइन -ine अवरोध पछि यो फेरि सुरु हुनेछ।',
	];
}

// Path: wheel.rules
class _StringsWheelRulesNe extends _StringsWheelRulesEn {
	_StringsWheelRulesNe._(_StringsNe root) : this._root = root, super._(root);

	@override final _StringsNe _root; // ignore: unused_field

	// Translations
	@override String get title => 'नियम';
	@override List<String> get values => [
		'प्रत्येक चिट्ठा to गोल्ड सिक्का हुन्छ;',
		'ड्र को संख्या सीमित छैन।',
	];
}

// Path: account.alert
class _StringsAccountAlertNe extends _StringsAccountAlertEn {
	_StringsAccountAlertNe._(_StringsNe root) : this._root = root, super._(root);

	@override final _StringsNe _root; // ignore: unused_field

	// Translations
	@override String get title => 'खाता मेट्नुहोस्';
	@override String get message => 'हटाउन पछि, तपाइँ सम्बन्धित अपरेशनको खाता प्रयोग गर्न सक्षम हुनुहुने छैन।';
}

// Path: faq.values.0
class _StringsFaq0i0Ne extends _StringsFaq0i0En {
	_StringsFaq0i0Ne._(_StringsNe root) : this._root = root, super._(root);

	@override final _StringsNe _root; // ignore: unused_field

	// Translations
	@override String get title => '1. कसरी सुरू गर्ने?';
	@override String get value => 'पृष्ठ प्रोम्प्ट्स अनुसार तपाईंको प्लेटफर्म प्रयोगकर्ता नामहरू थप्नुहोस्, कुनै पासवर्ड छैन, प्रत्येक मञ्चमा एक समान प्रम्प्टमा छ।';
}

// Path: faq.values.1
class _StringsFaq0i1Ne extends _StringsFaq0i1En {
	_StringsFaq0i1Ne._(_StringsNe root) : this._root = root, super._(root);

	@override final _StringsNe _root; // ignore: unused_field

	// Translations
	@override String get title => '2. यो प्रयोग गर्न सुरक्षित छ?';
	@override String get value => 'अवश्य पनि, यो सुरक्षित छ। हामीलाई तपाईंको पासवर्ड चाहिदैन, र हामी तपाईंको सामाजिक अनुप्रयोग डेटा बचत गर्न सक्दैनौं किनकि यो ध्यान दिन वा अन्य चीजहरू गर्न आधिकारिक अनुप्रयोगमा उफ्रिन्छौं।';
}

// Path: faq.values.2
class _StringsFaq0i2Ne extends _StringsFaq0i2En {
	_StringsFaq0i2Ne._(_StringsNe root) : this._root = root, super._(root);

	@override final _StringsNe _root; // ignore: unused_field

	// Translations
	@override String get title => 'यसले यो कसरी काम गर्दछ?';
	@override String get value => 'कामको विधि सरल छ: तपाईंको व्यक्तिगत डाटा / भिडियो हाम्रो समुदायमा प्रदर्शित हुन्छ। प्रयोगकर्ताहरूले तपाईंको व्यक्तिगत डेटाको सामग्रीमा आधारित तपाईंको रूपमा / जस्तै तपाईंको ध्यान दिएर / जस्ता।एक आदानप्रदानको रूपमा जुन मनपर्दछ / पछ्याउँदछ, तिनीहरूले सुनका सिक्काहरू प्राप्त गर्दछन् र अनुयायीहरू / प्रेमीहरू प्राप्त गर्न प्रयोग गर्न सकिन्छ।';
}

// Path: faq.values.3
class _StringsFaq0i3Ne extends _StringsFaq0i3En {
	_StringsFaq0i3Ne._(_StringsNe root) : this._root = root, super._(root);

	@override final _StringsNe _root; // ignore: unused_field

	// Translations
	@override String get title => 'S. ध्यान र वास्तविक जस्तो छ?';
	@override String get value => 'अवश्य पनि, यो वास्तविक छ। जब तपाईं सम्बन्धित सेवाहरू खरीद गर्नुहुन्छ, त्यहाँ तपाईंलाई सेवाहरू प्रदान गर्न पछाडि धेरै वास्तविक प्रयोगकर्ताहरू छन्, र यो आधिकारिक अनुप्रयोगमा सञ्चालित छ। तपाईंले यसको बारेमा चिन्ता लिनुपर्दैन।';
}

// Path: faq.values.4
class _StringsFaq0i4Ne extends _StringsFaq0i4En {
	_StringsFaq0i4Ne._(_StringsNe root) : this._root = root, super._(root);

	@override final _StringsNe _root; // ignore: unused_field

	// Translations
	@override String get title => 'म कसरी सुनको सिक्का कमाउँछु?';
	@override String get value => 'होमपेजमा, तपाईं कार्य सूची हेर्न सक्नुहुन्छ, अनुसरण गर्न वा मनपराउन क्लिक गर्नुहोस्, र अपरेशनको लागि सम्बन्धित अनुप्रयोगमा जानुहोस्। कृपया तपाईंको ध्यान रद्द गर्न नपरोस्।';
}

// Path: faq.values.5
class _StringsFaq0i5Ne extends _StringsFaq0i5En {
	_StringsFaq0i5Ne._(_StringsNe root) : this._root = root, super._(root);

	@override final _StringsNe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Thaks। किन स्वादहरू किन असफल हुन्छ?';
	@override String get value => 'यो सामान्यतया किनभने तपाईं वास्तवमै ध्यान दिन वा यो मनपर्दैन। तपाईंले पहिले तपाईंको खाता जाँच गर्नु पर्छ।';
}

// Path: faq.values.6
class _StringsFaq0i6Ne extends _StringsFaq0i6En {
	_StringsFaq0i6Ne._(_StringsNe root) : this._root = root, super._(root);

	@override final _StringsNe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Man। मेरो अर्डर पूरा गर्न कति समय लाग्छ?';
	@override List<String> get value => [
		'यो तपाईंको अर्डर भोल्युममा निर्भर गर्दछ। सामान्यतया, अर्डर राखिसकेपछि, अर्डर प्राप्त गरे पछि र यसलाई 2 24h भित्र पूरा गर्न थाल्नुहुनेछ, तर हामी पछाडिको पछाडि अपरेटरहरू प्रयोग गर्न सक्दैनौं। यो हुनु पर्छ ध्यान दिएन सुनौलो सेवा साधारण सेवाहरू भन्दा छिटो छ।',
		'छोटो समयमा धेरै ट्राफिक प्राप्त गर्नुहोस् तपाईंको खातालाई श icious ्कास्पद बनाउँदछ, ताकि धैर्यतासाथ उत्तम तरिका हो।',
	];
}

// Path: faq.values.7
class _StringsFaq0i7Ne extends _StringsFaq0i7En {
	_StringsFaq0i7Ne._(_StringsNe root) : this._root = root, super._(root);

	@override final _StringsNe _root; // ignore: unused_field

	// Translations
	@override String get title => 'अर्डरमा मैले के गर्नुपर्छ?';
	@override String get value => 'तपाईंले आफ्नो अर्डर राख्नु भएपछि, आफ्नो खाता खुला राख्नुहोस्। अर्डर पूरा हुनुभन्दा अघि तपाईंको प्रयोगकर्ता नाम परिमार्जन नगर्नुहोस्।';
}

// Path: faq.values.8
class _StringsFaq0i8Ne extends _StringsFaq0i8En {
	_StringsFaq0i8Ne._(_StringsNe root) : this._root = root, super._(root);

	@override final _StringsNe _root; // ignore: unused_field

	// Translations
	@override String get title => 'What। के भयो भने मलाई समस्या छ?';
	@override String get value => 'तपाईं अनुप्रयोगमा प्रतिक्रिया मार्फत हामीलाई सम्पर्क गर्न सक्नुहुन्छ।';
}

// Path: store.tip.follow
class _StringsStoreTipFollowNe extends _StringsStoreTipFollowEn {
	_StringsStoreTipFollowNe._(_StringsNe root) : this._root = root, super._(root);

	@override final _StringsNe _root; // ignore: unused_field

	// Translations
	@override String get title => 'अनुयायीहरू र वरिष्ठ अनुयायी';
	@override List<String> get values => [
		'',
		'अनुयायीहरू',
		'वरिष्ठ अनुयायी',
		'पूर्ण समय',
		'1-24 घण्टा',
		'1--- घण्टा',
		'क्षतिपूर्ति समय',
		'/',
		'Days दिन भित्र क्षतिपूर्ति',
		'अनुगमन गुणस्तर',
		'वास्तविक',
		'वास्तविक र सक्रिय',
		'ड्रप दर',
		'-15-1-15%',
		'0--3%',
	];
}

// Path: store.tip.like
class _StringsStoreTipLikeNe extends _StringsStoreTipLikeEn {
	_StringsStoreTipLikeNe._(_StringsNe root) : this._root = root, super._(root);

	@override final _StringsNe _root; // ignore: unused_field

	// Translations
	@override String get title => 'जस्तै र उन्नत प्रशंसा';
	@override List<String> get values => [
		'',
		'मन पराउनु',
		'उच्च - प्रशंसा प्रशंसा',
		'पूर्ण समय',
		'1-24 घण्टा',
		'1--- घण्टा',
		'क्षतिपूर्ति समय',
		'/',
		'Days दिन भित्र क्षतिपूर्ति',
		'ड्रप दर',
		'-15-1-15%',
		'0--3%',
	];
}

// Path: <root>
class _StringsPt extends _StringsEn {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsPt.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.pt,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <pt>.
	@override final TranslationMetadata<AppLocale, _StringsEn> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	@override late final _StringsPt _root = this; // ignore: unused_field

	// Translations
	@override late final _StringsOnlyTitlePt onlyTitle = _StringsOnlyTitlePt._(_root);
	@override late final _StringsUniversalPt universal = _StringsUniversalPt._(_root);
	@override late final _StringsTabbarPt tabbar = _StringsTabbarPt._(_root);
	@override late final _StringsTaskPt task = _StringsTaskPt._(_root);
	@override late final _StringsStorePt store = _StringsStorePt._(_root);
	@override late final _StringsCoinsPt coins = _StringsCoinsPt._(_root);
	@override late final _StringsLoginPt login = _StringsLoginPt._(_root);
	@override late final _StringsSettingPt setting = _StringsSettingPt._(_root);
	@override late final _StringsLanguagePt language = _StringsLanguagePt._(_root);
	@override late final _StringsDailyPt daily = _StringsDailyPt._(_root);
	@override late final _StringsWheelPt wheel = _StringsWheelPt._(_root);
	@override late final _StringsAccountPt account = _StringsAccountPt._(_root);
	@override late final _StringsOrdersPt orders = _StringsOrdersPt._(_root);
	@override late final _StringsFaqPt faq = _StringsFaqPt._(_root);
	@override late final _StringsAboutPt about = _StringsAboutPt._(_root);
	@override late final _StringsAlertPt alert = _StringsAlertPt._(_root);
	@override late final _StringsToastPt toast = _StringsToastPt._(_root);
	@override late final _StringsLocalNotificationPt localNotification = _StringsLocalNotificationPt._(_root);
}

// Path: onlyTitle
class _StringsOnlyTitlePt extends _StringsOnlyTitleEn {
	_StringsOnlyTitlePt._(_StringsPt root) : this._root = root, super._(root);

	@override final _StringsPt _root; // ignore: unused_field

	// Translations
	@override String get contact => 'Contate-Nos';
}

// Path: universal
class _StringsUniversalPt extends _StringsUniversalEn {
	_StringsUniversalPt._(_StringsPt root) : this._root = root, super._(root);

	@override final _StringsPt _root; // ignore: unused_field

	// Translations
	@override String get coins => 'ouro';
	@override String get requestError => 'Por favor, tente novamente mais tarde';
	@override String get add => 'Adicionar Conta';
}

// Path: tabbar
class _StringsTabbarPt extends _StringsTabbarEn {
	_StringsTabbarPt._(_StringsPt root) : this._root = root, super._(root);

	@override final _StringsPt _root; // ignore: unused_field

	// Translations
	@override String get task => 'primeira página';
	@override String get store => 'fazer compras';
	@override String get setting => 'configurar';
}

// Path: task
class _StringsTaskPt extends _StringsTaskEn {
	_StringsTaskPt._(_StringsPt root) : this._root = root, super._(root);

	@override final _StringsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'primeira página';
	@override String get skip => 'pular sobre';
	@override String get follow => 'focar em';
	@override String get like => 'Curti';
	@override String get noTask => 'Não pergunte';
	@override late final _StringsTaskTipPt tip = _StringsTaskTipPt._(_root);
}

// Path: store
class _StringsStorePt extends _StringsStoreEn {
	_StringsStorePt._(_StringsPt root) : this._root = root, super._(root);

	@override final _StringsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'fazer compras';
	@override String get free => 'gratuitamente';
	@override String get follow => 'Seguidores';
	@override String get like => 'Curti';
	@override String get view => 'Ver';
	@override String get share => 'compartilhar';
	@override String get retweet => 'Retweet';
	@override late final _StringsStoreAdPt ad = _StringsStoreAdPt._(_root);
	@override late final _StringsStoreChangeAccountPt changeAccount = _StringsStoreChangeAccountPt._(_root);
	@override late final _StringsStoreTipPt tip = _StringsStoreTipPt._(_root);
	@override late final _StringsStoreBuyPt buy = _StringsStoreBuyPt._(_root);
	@override late final _StringsStorePurchasePt purchase = _StringsStorePurchasePt._(_root);
	@override late final _StringsStoreNoticePt notice = _StringsStoreNoticePt._(_root);
}

// Path: coins
class _StringsCoinsPt extends _StringsCoinsEn {
	_StringsCoinsPt._(_StringsPt root) : this._root = root, super._(root);

	@override final _StringsPt _root; // ignore: unused_field

	// Translations
	@override String get empty => 'Sem história';
}

// Path: login
class _StringsLoginPt extends _StringsLoginEn {
	_StringsLoginPt._(_StringsPt root) : this._root = root, super._(root);

	@override final _StringsPt _root; // ignore: unused_field

	// Translations
	@override String get confirm => 'confirme';
	@override String username({required Object value}) => 'Digite seu nome de usuário ${value}';
	@override String get channel => 'Digite o link do seu canal do YouTube';
	@override String get publicUsername => '* Por favor, mantenha sua conta está aberta';
	@override String get publicChannel => '* Por favor, mantenha seu canal aberto';
	@override String get add => 'Adicionar Conta';
	@override String get hintUsername => 'nome de usuário';
	@override String get hintChannel => 'Link do canal';
}

// Path: setting
class _StringsSettingPt extends _StringsSettingEn {
	_StringsSettingPt._(_StringsPt root) : this._root = root, super._(root);

	@override final _StringsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'configurar';
	@override String get editor => 'Editar informações';
	@override String get daily => 'Entrar';
	@override String get wheel => 'Roda da fortuna';
	@override String get account => 'Conta de gerenciamento';
	@override String get language => 'Língua';
	@override String get orders => 'Ordem';
	@override String get faq => 'problema comum';
	@override String get about => 'cerca de';
	@override late final _StringsSettingSharePt share = _StringsSettingSharePt._(_root);
	@override String get rateUs => 'Avalie -nos';
}

// Path: language
class _StringsLanguagePt extends _StringsLanguageEn {
	_StringsLanguagePt._(_StringsPt root) : this._root = root, super._(root);

	@override final _StringsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Escolha um idioma';
	@override String get start => 'começar';
}

// Path: daily
class _StringsDailyPt extends _StringsDailyEn {
	_StringsDailyPt._(_StringsPt root) : this._root = root, super._(root);

	@override final _StringsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Entrar';
	@override String get checkIn => 'Entrar';
	@override late final _StringsDailyRulesPt rules = _StringsDailyRulesPt._(_root);
}

// Path: wheel
class _StringsWheelPt extends _StringsWheelEn {
	_StringsWheelPt._(_StringsPt root) : this._root = root, super._(root);

	@override final _StringsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Roda da fortuna';
	@override late final _StringsWheelRulesPt rules = _StringsWheelRulesPt._(_root);
}

// Path: account
class _StringsAccountPt extends _StringsAccountEn {
	_StringsAccountPt._(_StringsPt root) : this._root = root, super._(root);

	@override final _StringsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Conta de gerenciamento';
	@override String get add => '+ Adicione o número da conta';
	@override String get empty => 'Sem conta';
	@override late final _StringsAccountAlertPt alert = _StringsAccountAlertPt._(_root);
}

// Path: orders
class _StringsOrdersPt extends _StringsOrdersEn {
	_StringsOrdersPt._(_StringsPt root) : this._root = root, super._(root);

	@override final _StringsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ordem';
	@override String get pending => 'Fila';
	@override String get processing => 'Em processamento';
	@override String get inProgress => 'em processamento';
	@override String get completed => 'concluído';
	@override String get partial => 'Conclusão parcial';
	@override String get error => 'erro';
	@override String get canceled => 'Cancelado';
	@override String get refunded => 'devolveu';
	@override String get empty => 'Nenhuma ordem';
}

// Path: faq
class _StringsFaqPt extends _StringsFaqEn {
	_StringsFaqPt._(_StringsPt root) : this._root = root, super._(root);

	@override final _StringsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'problema comum';
	@override List<dynamic> get values => [
		_StringsFaq0i0Pt._(_root),
		_StringsFaq0i1Pt._(_root),
		_StringsFaq0i2Pt._(_root),
		_StringsFaq0i3Pt._(_root),
		_StringsFaq0i4Pt._(_root),
		_StringsFaq0i5Pt._(_root),
		_StringsFaq0i6Pt._(_root),
		_StringsFaq0i7Pt._(_root),
		_StringsFaq0i8Pt._(_root),
	];
}

// Path: about
class _StringsAboutPt extends _StringsAboutEn {
	_StringsAboutPt._(_StringsPt root) : this._root = root, super._(root);

	@override final _StringsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'cerca de';
	@override String get contact => 'Contate-Nos';
	@override String get service => 'Termos de serviço';
	@override String get policy => 'Política de Privacidade';
}

// Path: alert
class _StringsAlertPt extends _StringsAlertEn {
	_StringsAlertPt._(_StringsPt root) : this._root = root, super._(root);

	@override final _StringsPt _root; // ignore: unused_field

	// Translations
	@override String get ok => 'OK';
	@override String get cancel => 'Cancelar';
	@override String get confirm => 'confirme';
}

// Path: toast
class _StringsToastPt extends _StringsToastEn {
	_StringsToastPt._(_StringsPt root) : this._root = root, super._(root);

	@override final _StringsPt _root; // ignore: unused_field

	// Translations
	@override String get unpurchase => 'Não posso comprar atualmente';
	@override String get purchasedNotFound => 'Não posso comprar o serviço atual';
	@override String get payment => 'Pagamento bem -sucedido!';
	@override String get coinsNotEnough => 'Ouro inadequado!';
	@override String get received => 'Recibo bem -sucedido!';
	@override String get adError => 'Assistindo anúncios com muita frequência, tente novamente mais tarde!';
}

// Path: localNotification
class _StringsLocalNotificationPt extends _StringsLocalNotificationEn {
	_StringsLocalNotificationPt._(_StringsPt root) : this._root = root, super._(root);

	@override final _StringsPt _root; // ignore: unused_field

	// Translations
	@override String get adTaskReady => 'A nova tarefa de publicidade está pronta!';
}

// Path: task.tip
class _StringsTaskTipPt extends _StringsTaskTipEn {
	_StringsTaskTipPt._(_StringsPt root) : this._root = root, super._(root);

	@override final _StringsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pronto';
	@override List<dynamic> get values => [
		({required Object value}) => '1. Clique em ${value} botão',
		({required Object value}) => '2. Abra ${value}',
		({required Object value}) => '${value}. ${value}',
		({required Object value}) => '4. Voltar para ${value}',
		'5. Obtenha moedas de ouro',
	];
	@override String get message => 'Se você cancelar sua atenção/curar, as moedas de ouro serão removidas!';
}

// Path: store.ad
class _StringsStoreAdPt extends _StringsStoreAdEn {
	_StringsStoreAdPt._(_StringsPt root) : this._root = root, super._(root);

	@override final _StringsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Recompensa publicitária';
	@override String get watch => 'Assista a um anúncio';
}

// Path: store.changeAccount
class _StringsStoreChangeAccountPt extends _StringsStoreChangeAccountEn {
	_StringsStoreChangeAccountPt._(_StringsPt root) : this._root = root, super._(root);

	@override final _StringsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Modificar a conta';
	@override String get add => 'Adicionar Conta';
}

// Path: store.tip
class _StringsStoreTipPt extends _StringsStoreTipEn {
	_StringsStoreTipPt._(_StringsPt root) : this._root = root, super._(root);

	@override final _StringsPt _root; // ignore: unused_field

	// Translations
	@override late final _StringsStoreTipFollowPt follow = _StringsStoreTipFollowPt._(_root);
	@override late final _StringsStoreTipLikePt like = _StringsStoreTipLikePt._(_root);
}

// Path: store.buy
class _StringsStoreBuyPt extends _StringsStoreBuyEn {
	_StringsStoreBuyPt._(_StringsPt root) : this._root = root, super._(root);

	@override final _StringsPt _root; // ignore: unused_field

	// Translations
	@override String get follow => 'Comprador';
	@override String get like => 'Compre alguns elogios';
	@override String get view => 'Compre e assista';
	@override String get share => 'Compre e compartilhe';
	@override String get retweet => 'Compre uma transferência';
	@override String get accountPublic => '* Por favor, mantenha sua conta está aberta';
	@override String get channelPublic => '* Por favor, mantenha seu canal aberto';
	@override String get tiktok => 'Seu link de vídeo Tiktok';
	@override String get twitter => 'Seu link de tweet no Twitter';
	@override String get instagram => 'Seu link de postagem no Instagram';
	@override String get youtube => 'Seu link do canal do YouTube';
	@override String get pay => 'Pagar';
}

// Path: store.purchase
class _StringsStorePurchasePt extends _StringsStorePurchaseEn {
	_StringsStorePurchasePt._(_StringsPt root) : this._root = root, super._(root);

	@override final _StringsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'pagamento bem -sucedido';
	@override String get message => 'Aguarde o pedido para concluir!';
}

// Path: store.notice
class _StringsStoreNoticePt extends _StringsStoreNoticeEn {
	_StringsStoreNoticePt._(_StringsPt root) : this._root = root, super._(root);

	@override final _StringsPt _root; // ignore: unused_field

	// Translations
	@override String message({required Object value}) => 'Para receber ${value} seguidores grátis, ative as notificações.';
	@override String get turnOn => 'Abrir';
}

// Path: setting.share
class _StringsSettingSharePt extends _StringsSettingShareEn {
	_StringsSettingSharePt._(_StringsPt root) : this._root = root, super._(root);

	@override final _StringsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Compartilhe o aplicativo';
	@override String message({required Object value}) => 'Encontrei um aplicativo de tesouro que pode obter fãs e curtidas gratuitos do Tiktok. Através da instalação do link a seguir, obteremos ${value} moedas de ouro!';
}

// Path: daily.rules
class _StringsDailyRulesPt extends _StringsDailyRulesEn {
	_StringsDailyRulesPt._(_StringsPt root) : this._root = root, super._(root);

	@override final _StringsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'regra';
	@override List<String> get values => [
		'Você pode fazer login a cada 24 horas;',
		'Após a interrupção do sinal, ele começará novamente.',
	];
}

// Path: wheel.rules
class _StringsWheelRulesPt extends _StringsWheelRulesEn {
	_StringsWheelRulesPt._(_StringsPt root) : this._root = root, super._(root);

	@override final _StringsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'regra';
	@override List<dynamic> get values => [
		({required Object value}) => 'Cada loteria custará ${value} moedas de ouro;',
		'O número de empates não é limitado.',
	];
}

// Path: account.alert
class _StringsAccountAlertPt extends _StringsAccountAlertEn {
	_StringsAccountAlertPt._(_StringsPt root) : this._root = root, super._(root);

	@override final _StringsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Deletar conta';
	@override String get message => 'Após a exclusão, você não poderá usar a conta de operações relacionadas.';
}

// Path: faq.values.0
class _StringsFaq0i0Pt extends _StringsFaq0i0En {
	_StringsFaq0i0Pt._(_StringsPt root) : this._root = root, super._(root);

	@override final _StringsPt _root; // ignore: unused_field

	// Translations
	@override String get title => '1. Como começar?';
	@override String get value => 'Basta adicionar o nome de usuário da sua plataforma de acordo com os avisos da página, sem senha, cada plataforma possui um prompt correspondente.';
}

// Path: faq.values.1
class _StringsFaq0i1Pt extends _StringsFaq0i1En {
	_StringsFaq0i1Pt._(_StringsPt root) : this._root = root, super._(root);

	@override final _StringsPt _root; // ignore: unused_field

	// Translations
	@override String get title => '2. É seguro usá -lo?';
	@override String get value => 'Obviamente, é seguro. Não precisamos da sua senha e não podemos salvar seus dados de aplicativos sociais, porque está pulando para o aplicativo oficial para prestar atenção ou fazer outras coisas.';
}

// Path: faq.values.2
class _StringsFaq0i2Pt extends _StringsFaq0i2En {
	_StringsFaq0i2Pt._(_StringsPt root) : this._root = root, super._(root);

	@override final _StringsPt _root; // ignore: unused_field

	// Translations
	@override String get title => '3. Como isso funciona tudo?';
	@override String get value => 'O método de trabalho é simples: seus dados pessoais/vídeo são exibidos em nossa comunidade. Os usuários decidem livremente se devem prestar atenção/gostar de você com base no conteúdo de seus dados pessoais.Como uma troca que gosta/segue, eles receberão moedas de ouro e podem ser usados ​​para obter seguidores/amantes.';
}

// Path: faq.values.3
class _StringsFaq0i3Pt extends _StringsFaq0i3En {
	_StringsFaq0i3Pt._(_StringsPt root) : this._root = root, super._(root);

	@override final _StringsPt _root; // ignore: unused_field

	// Translations
	@override String get title => '4. A atenção é real?';
	@override String get value => 'Obviamente, é real. Quando você compra serviços relacionados, há muitos usuários reais por trás dele para fornecer serviços e é operado no aplicativo oficial. Você não precisa se preocupar com isso.';
}

// Path: faq.values.4
class _StringsFaq0i4Pt extends _StringsFaq0i4En {
	_StringsFaq0i4Pt._(_StringsPt root) : this._root = root, super._(root);

	@override final _StringsPt _root; // ignore: unused_field

	// Translations
	@override String get title => '5. Como ganho moedas de ouro?';
	@override String get value => 'Na página inicial, você pode ver a lista de tarefas, clicar para seguir ou curtir e pular para o aplicativo correspondente para operação. Tenha cuidado para não cancelar sua atenção ou gostar, o que fará com que sua recompensa seja cancelada.';
}

// Path: faq.values.5
class _StringsFaq0i5Pt extends _StringsFaq0i5En {
	_StringsFaq0i5Pt._(_StringsPt root) : this._root = root, super._(root);

	@override final _StringsPt _root; // ignore: unused_field

	// Translations
	@override String get title => '6. Por que as tarefas falham?';
	@override String get value => 'Isso geralmente ocorre porque você realmente não presta atenção ou gosta. Você deve verificar sua conta primeiro.';
}

// Path: faq.values.6
class _StringsFaq0i6Pt extends _StringsFaq0i6En {
	_StringsFaq0i6Pt._(_StringsPt root) : this._root = root, super._(root);

	@override final _StringsPt _root; // ignore: unused_field

	// Translations
	@override String get title => '7. Quanto tempo leva para concluir meu pedido?';
	@override List<String> get value => [
		'Isso depende do seu volume de pedido. Normalmente, você começará a obter o serviço imediatamente após fazer o pedido e concluí -lo dentro de 24 horas, mas não podemos dar um tempo preciso, porque há um grande número de usuários reais que operam atrás das costas. Deveria ser observado Golden Service é mais rápido que os serviços comuns.',
		'Obtenha muito tráfego em pouco tempo, deixará sua conta suspeita, portanto, esperar pacientemente é a melhor maneira.',
	];
}

// Path: faq.values.7
class _StringsFaq0i7Pt extends _StringsFaq0i7En {
	_StringsFaq0i7Pt._(_StringsPt root) : this._root = root, super._(root);

	@override final _StringsPt _root; // ignore: unused_field

	// Translations
	@override String get title => '8. O que devo fazer depois de fazer o pedido?';
	@override String get value => 'Depois de fazer seu pedido, mantenha sua conta divulgada. Não modifique seu nome de usuário antes que o pedido seja concluído.';
}

// Path: faq.values.8
class _StringsFaq0i8Pt extends _StringsFaq0i8En {
	_StringsFaq0i8Pt._(_StringsPt root) : this._root = root, super._(root);

	@override final _StringsPt _root; // ignore: unused_field

	// Translations
	@override String get title => '9. E se eu tiver um problema?';
	@override String get value => 'Você pode entrar em contato conosco por meio de feedback no aplicativo.';
}

// Path: store.tip.follow
class _StringsStoreTipFollowPt extends _StringsStoreTipFollowEn {
	_StringsStoreTipFollowPt._(_StringsPt root) : this._root = root, super._(root);

	@override final _StringsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Seguidores e seguidores sênior';
	@override List<String> get values => [
		'',
		'Seguidores',
		'Seguidor sênior',
		'Tempo completo',
		'1-24 horas',
		'1-4 horas',
		'Tempo de compensação',
		'/',
		'Compensação dentro de 7 dias',
		'Qualidade do seguidor',
		'real',
		'Real e ativo',
		'Taxa de queda',
		'8-15%',
		'0-3%',
	];
}

// Path: store.tip.like
class _StringsStoreTipLikePt extends _StringsStoreTipLikeEn {
	_StringsStoreTipLikePt._(_StringsPt root) : this._root = root, super._(root);

	@override final _StringsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Como e elogios avançados';
	@override List<String> get values => [
		'',
		'Curti',
		'Elogios de alto nível',
		'Tempo completo',
		'1-24 horas',
		'1-4 horas',
		'Tempo de compensação',
		'/',
		'Compensação dentro de 7 dias',
		'Taxa de queda',
		'8-15%',
		'0-3%',
	];
}

// Path: <root>
class _StringsRu extends _StringsEn {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsRu.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.ru,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ru>.
	@override final TranslationMetadata<AppLocale, _StringsEn> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	@override late final _StringsRu _root = this; // ignore: unused_field

	// Translations
	@override late final _StringsOnlyTitleRu onlyTitle = _StringsOnlyTitleRu._(_root);
	@override late final _StringsUniversalRu universal = _StringsUniversalRu._(_root);
	@override late final _StringsTabbarRu tabbar = _StringsTabbarRu._(_root);
	@override late final _StringsTaskRu task = _StringsTaskRu._(_root);
	@override late final _StringsStoreRu store = _StringsStoreRu._(_root);
	@override late final _StringsCoinsRu coins = _StringsCoinsRu._(_root);
	@override late final _StringsLoginRu login = _StringsLoginRu._(_root);
	@override late final _StringsSettingRu setting = _StringsSettingRu._(_root);
	@override late final _StringsLanguageRu language = _StringsLanguageRu._(_root);
	@override late final _StringsDailyRu daily = _StringsDailyRu._(_root);
	@override late final _StringsWheelRu wheel = _StringsWheelRu._(_root);
	@override late final _StringsAccountRu account = _StringsAccountRu._(_root);
	@override late final _StringsOrdersRu orders = _StringsOrdersRu._(_root);
	@override late final _StringsFaqRu faq = _StringsFaqRu._(_root);
	@override late final _StringsAboutRu about = _StringsAboutRu._(_root);
	@override late final _StringsAlertRu alert = _StringsAlertRu._(_root);
	@override late final _StringsToastRu toast = _StringsToastRu._(_root);
	@override late final _StringsLocalNotificationRu localNotification = _StringsLocalNotificationRu._(_root);
}

// Path: onlyTitle
class _StringsOnlyTitleRu extends _StringsOnlyTitleEn {
	_StringsOnlyTitleRu._(_StringsRu root) : this._root = root, super._(root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get contact => 'свяжитесь с нами';
}

// Path: universal
class _StringsUniversalRu extends _StringsUniversalEn {
	_StringsUniversalRu._(_StringsRu root) : this._root = root, super._(root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get coins => 'золото';
	@override String get requestError => 'Пожалуйста, попробуйте позже';
	@override String get add => 'Добавить аккаунт';
}

// Path: tabbar
class _StringsTabbarRu extends _StringsTabbarEn {
	_StringsTabbarRu._(_StringsRu root) : this._root = root, super._(root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get task => 'титульная страница';
	@override String get store => 'магазин';
	@override String get setting => 'настраивать';
}

// Path: task
class _StringsTaskRu extends _StringsTaskEn {
	_StringsTaskRu._(_StringsRu root) : this._root = root, super._(root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'титульная страница';
	@override String get skip => 'перепрыгни';
	@override String get follow => 'сконцентрируйся';
	@override String get like => 'как';
	@override String get noTask => 'Не спрашивай';
	@override late final _StringsTaskTipRu tip = _StringsTaskTipRu._(_root);
}

// Path: store
class _StringsStoreRu extends _StringsStoreEn {
	_StringsStoreRu._(_StringsRu root) : this._root = root, super._(root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'магазин';
	@override String get free => 'свободно';
	@override String get follow => 'Последователи';
	@override String get like => 'как';
	@override String get view => 'Смотреть';
	@override String get share => 'Поделиться';
	@override String get retweet => 'Ретвит';
	@override late final _StringsStoreAdRu ad = _StringsStoreAdRu._(_root);
	@override late final _StringsStoreChangeAccountRu changeAccount = _StringsStoreChangeAccountRu._(_root);
	@override late final _StringsStoreTipRu tip = _StringsStoreTipRu._(_root);
	@override late final _StringsStoreBuyRu buy = _StringsStoreBuyRu._(_root);
	@override late final _StringsStorePurchaseRu purchase = _StringsStorePurchaseRu._(_root);
	@override late final _StringsStoreNoticeRu notice = _StringsStoreNoticeRu._(_root);
}

// Path: coins
class _StringsCoinsRu extends _StringsCoinsEn {
	_StringsCoinsRu._(_StringsRu root) : this._root = root, super._(root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get empty => 'Нет истории';
}

// Path: login
class _StringsLoginRu extends _StringsLoginEn {
	_StringsLoginRu._(_StringsRu root) : this._root = root, super._(root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get confirm => 'подтверждать';
	@override String username({required Object value}) => 'Введите свое ${value} имя пользователя';
	@override String get channel => 'Введите ссылку на канал YouTube';
	@override String get publicUsername => '* Пожалуйста, оставьте свою учетную запись открыты';
	@override String get publicChannel => '* Пожалуйста, держите свой канал открытым';
	@override String get add => 'Добавить аккаунт';
	@override String get hintUsername => 'имя пользователя';
	@override String get hintChannel => 'Канал ссылка';
}

// Path: setting
class _StringsSettingRu extends _StringsSettingEn {
	_StringsSettingRu._(_StringsRu root) : this._root = root, super._(root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'настраивать';
	@override String get editor => 'Изменить информацию';
	@override String get daily => 'Войти';
	@override String get wheel => 'Колесо фортуны';
	@override String get account => 'Управляющий счет';
	@override String get language => 'язык';
	@override String get orders => 'Заказ';
	@override String get faq => 'Общая проблема';
	@override String get about => 'о';
	@override late final _StringsSettingShareRu share = _StringsSettingShareRu._(_root);
	@override String get rateUs => 'Оценить нас';
}

// Path: language
class _StringsLanguageRu extends _StringsLanguageEn {
	_StringsLanguageRu._(_StringsRu root) : this._root = root, super._(root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Выберите язык';
	@override String get start => 'Начало';
}

// Path: daily
class _StringsDailyRu extends _StringsDailyEn {
	_StringsDailyRu._(_StringsRu root) : this._root = root, super._(root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Войти';
	@override String get checkIn => 'Войти';
	@override late final _StringsDailyRulesRu rules = _StringsDailyRulesRu._(_root);
}

// Path: wheel
class _StringsWheelRu extends _StringsWheelEn {
	_StringsWheelRu._(_StringsRu root) : this._root = root, super._(root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Колесо фортуны';
	@override late final _StringsWheelRulesRu rules = _StringsWheelRulesRu._(_root);
}

// Path: account
class _StringsAccountRu extends _StringsAccountEn {
	_StringsAccountRu._(_StringsRu root) : this._root = root, super._(root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Управляющий счет';
	@override String get add => '+ Добавить номер счета';
	@override String get empty => 'Нет аккаунта';
	@override late final _StringsAccountAlertRu alert = _StringsAccountAlertRu._(_root);
}

// Path: orders
class _StringsOrdersRu extends _StringsOrdersEn {
	_StringsOrdersRu._(_StringsRu root) : this._root = root, super._(root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Заказ';
	@override String get pending => 'Очередь';
	@override String get processing => 'Обработка';
	@override String get inProgress => 'обработка';
	@override String get completed => 'завершенный';
	@override String get partial => 'Частичное завершение';
	@override String get error => 'ошибка';
	@override String get canceled => 'Отменен';
	@override String get refunded => 'возвращено';
	@override String get empty => 'Нет заказа';
}

// Path: faq
class _StringsFaqRu extends _StringsFaqEn {
	_StringsFaqRu._(_StringsRu root) : this._root = root, super._(root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Общая проблема';
	@override List<dynamic> get values => [
		_StringsFaq0i0Ru._(_root),
		_StringsFaq0i1Ru._(_root),
		_StringsFaq0i2Ru._(_root),
		_StringsFaq0i3Ru._(_root),
		_StringsFaq0i4Ru._(_root),
		_StringsFaq0i5Ru._(_root),
		_StringsFaq0i6Ru._(_root),
		_StringsFaq0i7Ru._(_root),
		_StringsFaq0i8Ru._(_root),
	];
}

// Path: about
class _StringsAboutRu extends _StringsAboutEn {
	_StringsAboutRu._(_StringsRu root) : this._root = root, super._(root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'о';
	@override String get contact => 'свяжитесь с нами';
	@override String get service => 'условия обслуживания';
	@override String get policy => 'Политика конфиденциальности';
}

// Path: alert
class _StringsAlertRu extends _StringsAlertEn {
	_StringsAlertRu._(_StringsRu root) : this._root = root, super._(root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get ok => 'ХОРОШО';
	@override String get cancel => 'Отмена';
	@override String get confirm => 'подтверждать';
}

// Path: toast
class _StringsToastRu extends _StringsToastEn {
	_StringsToastRu._(_StringsRu root) : this._root = root, super._(root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get unpurchase => 'Не могу купить в настоящее время';
	@override String get purchasedNotFound => 'Не могу купить текущую услугу';
	@override String get payment => 'Оплата успешно!';
	@override String get coinsNotEnough => 'Золото неадекватно!';
	@override String get received => 'Успешная квитанция!';
	@override String get adError => 'Слишком часто смотрю рекламу, попробуйте еще раз позже!';
}

// Path: localNotification
class _StringsLocalNotificationRu extends _StringsLocalNotificationEn {
	_StringsLocalNotificationRu._(_StringsRu root) : this._root = root, super._(root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get adTaskReady => 'Новая рекламная задача готова!';
}

// Path: task.tip
class _StringsTaskTipRu extends _StringsTaskTipEn {
	_StringsTaskTipRu._(_StringsRu root) : this._root = root, super._(root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Быстрый';
	@override List<dynamic> get values => [
		({required Object value}) => '1. Нажмите кнопку ${value}',
		({required Object value}) => '2. Открыть ${value}',
		({required Object value}) => '${value}. ${value}',
		({required Object value}) => '4. Вернуться к ${value}',
		'5. Получите золотые монеты',
	];
	@override String get message => 'Если вы отмените свое внимание/как, золотые монеты будут удалены!';
}

// Path: store.ad
class _StringsStoreAdRu extends _StringsStoreAdEn {
	_StringsStoreAdRu._(_StringsRu root) : this._root = root, super._(root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Рекламная награда';
	@override String get watch => 'Смотрите рекламу';
}

// Path: store.changeAccount
class _StringsStoreChangeAccountRu extends _StringsStoreChangeAccountEn {
	_StringsStoreChangeAccountRu._(_StringsRu root) : this._root = root, super._(root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Изменить учетную запись';
	@override String get add => 'Добавить аккаунт';
}

// Path: store.tip
class _StringsStoreTipRu extends _StringsStoreTipEn {
	_StringsStoreTipRu._(_StringsRu root) : this._root = root, super._(root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override late final _StringsStoreTipFollowRu follow = _StringsStoreTipFollowRu._(_root);
	@override late final _StringsStoreTipLikeRu like = _StringsStoreTipLikeRu._(_root);
}

// Path: store.buy
class _StringsStoreBuyRu extends _StringsStoreBuyEn {
	_StringsStoreBuyRu._(_StringsRu root) : this._root = root, super._(root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get follow => 'Покупатель';
	@override String get like => 'Купите немного похвалы';
	@override String get view => 'Купить и смотреть';
	@override String get share => 'Купить и поделиться';
	@override String get retweet => 'Купить трансфер';
	@override String get accountPublic => '* Пожалуйста, оставьте свою учетную запись открыты';
	@override String get channelPublic => '* Пожалуйста, держите свой канал открытым';
	@override String get tiktok => 'Ваша ссылка на видео Tiktok';
	@override String get twitter => 'Ваша ссылка на твитт -твитт';
	@override String get instagram => 'Ссылка на пост в Instagram';
	@override String get youtube => 'Ссылка на канал YouTube';
	@override String get pay => 'Платить';
}

// Path: store.purchase
class _StringsStorePurchaseRu extends _StringsStorePurchaseEn {
	_StringsStorePurchaseRu._(_StringsRu root) : this._root = root, super._(root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Оплата успешно';
	@override String get message => 'Пожалуйста, дождитесь завершения заказа!';
}

// Path: store.notice
class _StringsStoreNoticeRu extends _StringsStoreNoticeEn {
	_StringsStoreNoticeRu._(_StringsRu root) : this._root = root, super._(root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String message({required Object value}) => 'Чтобы получить ${value} бесплатных подписчика, сначала откройте уведомление о приложении.';
	@override String get turnOn => 'Открытым';
}

// Path: setting.share
class _StringsSettingShareRu extends _StringsSettingShareEn {
	_StringsSettingShareRu._(_StringsRu root) : this._root = root, super._(root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Поделиться приложением';
	@override String message({required Object value}) => 'Я нашел приложение для сокровищ, которое может получить бесплатные поклонники Tiktok и лайки. Благодаря установке следующей ссылки мы получим ${value} золотых монета!';
}

// Path: daily.rules
class _StringsDailyRulesRu extends _StringsDailyRulesEn {
	_StringsDailyRulesRu._(_StringsRu root) : this._root = root, super._(root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'правило';
	@override List<String> get values => [
		'Вы можете входить каждые 24 часа;',
		'После знака -в прерывании он начнется снова.',
	];
}

// Path: wheel.rules
class _StringsWheelRulesRu extends _StringsWheelRulesEn {
	_StringsWheelRulesRu._(_StringsRu root) : this._root = root, super._(root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'правило';
	@override List<dynamic> get values => [
		({required Object value}) => 'Каждая лотерея будет стоить ${value} золотых монета;',
		'Количество розыгрышей не ограничено.',
	];
}

// Path: account.alert
class _StringsAccountAlertRu extends _StringsAccountAlertEn {
	_StringsAccountAlertRu._(_StringsRu root) : this._root = root, super._(root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Удалить аккаунт';
	@override String get message => 'После удаления вы не сможете использовать учетную запись для связанных операций.';
}

// Path: faq.values.0
class _StringsFaq0i0Ru extends _StringsFaq0i0En {
	_StringsFaq0i0Ru._(_StringsRu root) : this._root = root, super._(root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get title => '1. Как начать?';
	@override String get value => 'Просто добавьте имя пользователя своей платформы в соответствии с запросами страницы, без пароля, каждая платформа имеет соответствующую подсказку.';
}

// Path: faq.values.1
class _StringsFaq0i1Ru extends _StringsFaq0i1En {
	_StringsFaq0i1Ru._(_StringsRu root) : this._root = root, super._(root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get title => '2. Безопасно ли его использовать?';
	@override String get value => 'Конечно, это безопасно. Нам не нужен ваш пароль, и мы не можем сохранить данные ваших социальных приложений, потому что он переходит к официальному приложению, чтобы обратить внимание или делать другие вещи.';
}

// Path: faq.values.2
class _StringsFaq0i2Ru extends _StringsFaq0i2En {
	_StringsFaq0i2Ru._(_StringsRu root) : this._root = root, super._(root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get title => '3. Как все это работает?';
	@override String get value => 'Метод работы прост: ваши личные данные/видео отображаются в нашем сообществе. Пользователи свободно решают, должны ли они обращать внимание/нравится вам на основе содержания ваших личных данных.В качестве обмена, который любит/следовать, они будут получать золотые монеты и могут быть использованы для получения последователей/любовников.';
}

// Path: faq.values.3
class _StringsFaq0i3Ru extends _StringsFaq0i3En {
	_StringsFaq0i3Ru._(_StringsRu root) : this._root = root, super._(root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get title => '4. Внимание и как реальное?';
	@override String get value => 'Конечно, это реально. Когда вы покупаете соответствующие услуги, за ним стоит много реальных пользователей, чтобы предоставить вам услуги, и оно работает в официальном приложении. Вам не нужно беспокоиться об этом.';
}

// Path: faq.values.4
class _StringsFaq0i4Ru extends _StringsFaq0i4En {
	_StringsFaq0i4Ru._(_StringsRu root) : this._root = root, super._(root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get title => '5. Как мне заработать золотые монеты?';
	@override String get value => 'На домашней странице вы можете увидеть список задач, нажимать, чтобы следовать или подобно, и перейти к соответствующему приложению для работы. Пожалуйста, будьте осторожны, чтобы не отменить ваше внимание или подобное, что приведет к отмене вашей награды.';
}

// Path: faq.values.5
class _StringsFaq0i5Ru extends _StringsFaq0i5En {
	_StringsFaq0i5Ru._(_StringsRu root) : this._root = root, super._(root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get title => '6. Почему задачи терпят неудачу?';
	@override String get value => 'Обычно это потому, что вы на самом деле не обращаете внимания или нравитесь. Вы должны сначала проверить свою учетную запись.';
}

// Path: faq.values.6
class _StringsFaq0i6Ru extends _StringsFaq0i6En {
	_StringsFaq0i6Ru._(_StringsRu root) : this._root = root, super._(root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get title => '7. Сколько времени нужно, чтобы завершить мой заказ?';
	@override List<String> get value => [
		'Это зависит от объема вашего заказа. Обычно вы начнете получать сервис сразу после размещения заказа и завершить его в течение 24 часов, но мы не можем дать точное время, потому что за спиной работает большое количество реальных пользователей. Будьте известны золотой сервис быстрее, чем обычные услуги.',
		'Получите слишком много трафика за короткое время сделает вашу учетную запись подозрительным, так что терпеливо ожидание - лучший способ.',
	];
}

// Path: faq.values.7
class _StringsFaq0i7Ru extends _StringsFaq0i7En {
	_StringsFaq0i7Ru._(_StringsRu root) : this._root = root, super._(root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get title => '8. Что мне делать после заказа?';
	@override String get value => 'После того, как вы разместите заказ, оставьте свою учетную запись раскрыты. Не изменяйте свое имя пользователя до завершения заказа.';
}

// Path: faq.values.8
class _StringsFaq0i8Ru extends _StringsFaq0i8En {
	_StringsFaq0i8Ru._(_StringsRu root) : this._root = root, super._(root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get title => '9. Что, если у меня есть проблема?';
	@override String get value => 'Вы можете связаться с нами через отзывы в приложении.';
}

// Path: store.tip.follow
class _StringsStoreTipFollowRu extends _StringsStoreTipFollowEn {
	_StringsStoreTipFollowRu._(_StringsRu root) : this._root = root, super._(root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Последователи и старший последователь';
	@override List<String> get values => [
		'',
		'Последователи',
		'Старший последователь',
		'Полное время',
		'1-24 часа',
		'1-4 часа',
		'Время компенсации',
		'/',
		'Компенсация в течение 7 дней',
		'Качество последователя',
		'настоящий',
		'Реал и активный',
		'Скорость падения',
		'8-15%',
		'0-3%',
	];
}

// Path: store.tip.like
class _StringsStoreTipLikeRu extends _StringsStoreTipLikeEn {
	_StringsStoreTipLikeRu._(_StringsRu root) : this._root = root, super._(root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Нравится и продвинутая похвала';
	@override List<String> get values => [
		'',
		'как',
		'Высокая похвала',
		'Полное время',
		'1-24 часа',
		'1-4 часа',
		'Время компенсации',
		'/',
		'Компенсация в течение 7 дней',
		'Скорость падения',
		'8-15%',
		'0-3%',
	];
}

// Path: <root>
class _StringsTh extends _StringsEn {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsTh.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.th,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <th>.
	@override final TranslationMetadata<AppLocale, _StringsEn> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	@override late final _StringsTh _root = this; // ignore: unused_field

	// Translations
	@override late final _StringsOnlyTitleTh onlyTitle = _StringsOnlyTitleTh._(_root);
	@override late final _StringsUniversalTh universal = _StringsUniversalTh._(_root);
	@override late final _StringsTabbarTh tabbar = _StringsTabbarTh._(_root);
	@override late final _StringsTaskTh task = _StringsTaskTh._(_root);
	@override late final _StringsStoreTh store = _StringsStoreTh._(_root);
	@override late final _StringsCoinsTh coins = _StringsCoinsTh._(_root);
	@override late final _StringsLoginTh login = _StringsLoginTh._(_root);
	@override late final _StringsSettingTh setting = _StringsSettingTh._(_root);
	@override late final _StringsLanguageTh language = _StringsLanguageTh._(_root);
	@override late final _StringsDailyTh daily = _StringsDailyTh._(_root);
	@override late final _StringsWheelTh wheel = _StringsWheelTh._(_root);
	@override late final _StringsAccountTh account = _StringsAccountTh._(_root);
	@override late final _StringsOrdersTh orders = _StringsOrdersTh._(_root);
	@override late final _StringsFaqTh faq = _StringsFaqTh._(_root);
	@override late final _StringsAboutTh about = _StringsAboutTh._(_root);
	@override late final _StringsAlertTh alert = _StringsAlertTh._(_root);
	@override late final _StringsToastTh toast = _StringsToastTh._(_root);
	@override late final _StringsLocalNotificationTh localNotification = _StringsLocalNotificationTh._(_root);
}

// Path: onlyTitle
class _StringsOnlyTitleTh extends _StringsOnlyTitleEn {
	_StringsOnlyTitleTh._(_StringsTh root) : this._root = root, super._(root);

	@override final _StringsTh _root; // ignore: unused_field

	// Translations
	@override String get contact => 'ติดต่อเรา';
}

// Path: universal
class _StringsUniversalTh extends _StringsUniversalEn {
	_StringsUniversalTh._(_StringsTh root) : this._root = root, super._(root);

	@override final _StringsTh _root; // ignore: unused_field

	// Translations
	@override String get coins => 'ทอง';
	@override String get requestError => 'โปรดลองอีกครั้งในภายหลัง';
	@override String get add => 'เพิ่มบัญชี';
}

// Path: tabbar
class _StringsTabbarTh extends _StringsTabbarEn {
	_StringsTabbarTh._(_StringsTh root) : this._root = root, super._(root);

	@override final _StringsTh _root; // ignore: unused_field

	// Translations
	@override String get task => 'หน้าแรก';
	@override String get store => 'ร้านค้า';
	@override String get setting => 'ติดตั้ง';
}

// Path: task
class _StringsTaskTh extends _StringsTaskEn {
	_StringsTaskTh._(_StringsTh root) : this._root = root, super._(root);

	@override final _StringsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'หน้าแรก';
	@override String get skip => 'กระโดดข้าม';
	@override String get follow => 'มุ่งเน้น';
	@override String get like => 'ชอบ';
	@override String get noTask => 'ไม่มีงาน';
	@override late final _StringsTaskTipTh tip = _StringsTaskTipTh._(_root);
}

// Path: store
class _StringsStoreTh extends _StringsStoreEn {
	_StringsStoreTh._(_StringsTh root) : this._root = root, super._(root);

	@override final _StringsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ร้านค้า';
	@override String get free => 'ฟรี';
	@override String get follow => 'ผู้ติดตาม';
	@override String get like => 'ชอบ';
	@override String get view => 'นาฬิกา';
	@override String get share => 'แบ่งปัน';
	@override String get retweet => 'รีทวีต';
	@override late final _StringsStoreAdTh ad = _StringsStoreAdTh._(_root);
	@override late final _StringsStoreChangeAccountTh changeAccount = _StringsStoreChangeAccountTh._(_root);
	@override late final _StringsStoreTipTh tip = _StringsStoreTipTh._(_root);
	@override late final _StringsStoreBuyTh buy = _StringsStoreBuyTh._(_root);
	@override late final _StringsStorePurchaseTh purchase = _StringsStorePurchaseTh._(_root);
	@override late final _StringsStoreNoticeTh notice = _StringsStoreNoticeTh._(_root);
}

// Path: coins
class _StringsCoinsTh extends _StringsCoinsEn {
	_StringsCoinsTh._(_StringsTh root) : this._root = root, super._(root);

	@override final _StringsTh _root; // ignore: unused_field

	// Translations
	@override String get empty => 'ไม่มีประวัติ';
}

// Path: login
class _StringsLoginTh extends _StringsLoginEn {
	_StringsLoginTh._(_StringsTh root) : this._root = root, super._(root);

	@override final _StringsTh _root; // ignore: unused_field

	// Translations
	@override String get confirm => 'ยืนยัน';
	@override String username({required Object value}) => 'ป้อนชื่อผู้ใช้ ${value} ชื่อของคุณ';
	@override String get channel => 'ป้อนลิงค์ช่อง YouTube ของคุณ';
	@override String get publicUsername => '* โปรดเปิดบัญชีของคุณไว้';
	@override String get publicChannel => '* โปรดเปิดช่องของคุณ';
	@override String get add => 'เพิ่มบัญชี';
	@override String get hintUsername => 'ชื่อผู้ใช้';
	@override String get hintChannel => 'ลิงค์ช่อง';
}

// Path: setting
class _StringsSettingTh extends _StringsSettingEn {
	_StringsSettingTh._(_StringsTh root) : this._root = root, super._(root);

	@override final _StringsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ติดตั้ง';
	@override String get editor => 'แก้ไขข้อมูล';
	@override String get daily => 'เข้าสู่ระบบ';
	@override String get wheel => 'วงล้อแห่งโชคลาภ';
	@override String get account => 'บัญชีการจัดการ';
	@override String get language => 'ภาษา';
	@override String get orders => 'คำสั่ง';
	@override String get faq => 'ปัญหาทั่วไป';
	@override String get about => 'เกี่ยวกับ';
	@override late final _StringsSettingShareTh share = _StringsSettingShareTh._(_root);
	@override String get rateUs => 'ประเมินเรา';
}

// Path: language
class _StringsLanguageTh extends _StringsLanguageEn {
	_StringsLanguageTh._(_StringsTh root) : this._root = root, super._(root);

	@override final _StringsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'เลือกภาษา';
	@override String get start => 'เริ่ม';
}

// Path: daily
class _StringsDailyTh extends _StringsDailyEn {
	_StringsDailyTh._(_StringsTh root) : this._root = root, super._(root);

	@override final _StringsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'เข้าสู่ระบบ';
	@override String get checkIn => 'เข้าสู่ระบบ';
	@override late final _StringsDailyRulesTh rules = _StringsDailyRulesTh._(_root);
}

// Path: wheel
class _StringsWheelTh extends _StringsWheelEn {
	_StringsWheelTh._(_StringsTh root) : this._root = root, super._(root);

	@override final _StringsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'วงล้อแห่งโชคลาภ';
	@override late final _StringsWheelRulesTh rules = _StringsWheelRulesTh._(_root);
}

// Path: account
class _StringsAccountTh extends _StringsAccountEn {
	_StringsAccountTh._(_StringsTh root) : this._root = root, super._(root);

	@override final _StringsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'บัญชีการจัดการ';
	@override String get add => '+ เพิ่มหมายเลขบัญชี';
	@override String get empty => 'ไม่มีบัญชี';
	@override late final _StringsAccountAlertTh alert = _StringsAccountAlertTh._(_root);
}

// Path: orders
class _StringsOrdersTh extends _StringsOrdersEn {
	_StringsOrdersTh._(_StringsTh root) : this._root = root, super._(root);

	@override final _StringsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'คำสั่ง';
	@override String get pending => 'คิว';
	@override String get processing => 'กำลังประมวลผล';
	@override String get inProgress => 'กำลังประมวลผล';
	@override String get completed => 'สมบูรณ์';
	@override String get partial => 'ความสำเร็จบางส่วน';
	@override String get error => 'ความผิดพลาด';
	@override String get canceled => 'ยกเลิก';
	@override String get refunded => 'ได้รับเงินคืน';
	@override String get empty => 'ไม่มีคำสั่งซื้อ';
}

// Path: faq
class _StringsFaqTh extends _StringsFaqEn {
	_StringsFaqTh._(_StringsTh root) : this._root = root, super._(root);

	@override final _StringsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ปัญหาทั่วไป';
	@override List<dynamic> get values => [
		_StringsFaq0i0Th._(_root),
		_StringsFaq0i1Th._(_root),
		_StringsFaq0i2Th._(_root),
		_StringsFaq0i3Th._(_root),
		_StringsFaq0i4Th._(_root),
		_StringsFaq0i5Th._(_root),
		_StringsFaq0i6Th._(_root),
		_StringsFaq0i7Th._(_root),
		_StringsFaq0i8Th._(_root),
	];
}

// Path: about
class _StringsAboutTh extends _StringsAboutEn {
	_StringsAboutTh._(_StringsTh root) : this._root = root, super._(root);

	@override final _StringsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'เกี่ยวกับ';
	@override String get contact => 'ติดต่อเรา';
	@override String get service => 'เงื่อนไขการให้บริการ';
	@override String get policy => 'นโยบายความเป็นส่วนตัว';
}

// Path: alert
class _StringsAlertTh extends _StringsAlertEn {
	_StringsAlertTh._(_StringsTh root) : this._root = root, super._(root);

	@override final _StringsTh _root; // ignore: unused_field

	// Translations
	@override String get ok => 'ตกลง';
	@override String get cancel => 'ยกเลิก';
	@override String get confirm => 'ยืนยัน';
}

// Path: toast
class _StringsToastTh extends _StringsToastEn {
	_StringsToastTh._(_StringsTh root) : this._root = root, super._(root);

	@override final _StringsTh _root; // ignore: unused_field

	// Translations
	@override String get unpurchase => 'ไม่สามารถซื้อได้ในปัจจุบัน';
	@override String get purchasedNotFound => 'ไม่สามารถซื้อบริการปัจจุบันได้';
	@override String get payment => 'การชำระเงินสำเร็จ!';
	@override String get coinsNotEnough => 'ทองไม่เพียงพอ!';
	@override String get received => 'ใบเสร็จรับเงินที่ประสบความสำเร็จ!';
	@override String get adError => 'ดูโฆษณาบ่อยเกินไปโปรดลองอีกครั้งในภายหลัง!';
}

// Path: localNotification
class _StringsLocalNotificationTh extends _StringsLocalNotificationEn {
	_StringsLocalNotificationTh._(_StringsTh root) : this._root = root, super._(root);

	@override final _StringsTh _root; // ignore: unused_field

	// Translations
	@override String get adTaskReady => 'งานโฆษณาใหม่พร้อมแล้ว!';
}

// Path: task.tip
class _StringsTaskTipTh extends _StringsTaskTipEn {
	_StringsTaskTipTh._(_StringsTh root) : this._root = root, super._(root);

	@override final _StringsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'แจ้ง';
	@override List<dynamic> get values => [
		({required Object value}) => '1. คลิกปุ่ม ${value}',
		({required Object value}) => '2. เปิด ${value}',
		({required Object value}) => '${value}. ${value}',
		({required Object value}) => '4. กลับไปที่ ${value}',
		'5. รับเหรียญทอง',
	];
	@override String get message => 'หากคุณยกเลิกความสนใจ/ชอบเหรียญทองจะถูกลบออก!';
}

// Path: store.ad
class _StringsStoreAdTh extends _StringsStoreAdEn {
	_StringsStoreAdTh._(_StringsTh root) : this._root = root, super._(root);

	@override final _StringsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'รางวัลโฆษณา';
	@override String get watch => 'ดูโฆษณา';
}

// Path: store.changeAccount
class _StringsStoreChangeAccountTh extends _StringsStoreChangeAccountEn {
	_StringsStoreChangeAccountTh._(_StringsTh root) : this._root = root, super._(root);

	@override final _StringsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ปรับเปลี่ยนบัญชี';
	@override String get add => 'เพิ่มบัญชี';
}

// Path: store.tip
class _StringsStoreTipTh extends _StringsStoreTipEn {
	_StringsStoreTipTh._(_StringsTh root) : this._root = root, super._(root);

	@override final _StringsTh _root; // ignore: unused_field

	// Translations
	@override late final _StringsStoreTipFollowTh follow = _StringsStoreTipFollowTh._(_root);
	@override late final _StringsStoreTipLikeTh like = _StringsStoreTipLikeTh._(_root);
}

// Path: store.buy
class _StringsStoreBuyTh extends _StringsStoreBuyEn {
	_StringsStoreBuyTh._(_StringsTh root) : this._root = root, super._(root);

	@override final _StringsTh _root; // ignore: unused_field

	// Translations
	@override String get follow => 'ผู้ซื้อ';
	@override String get like => 'ซื้อสรรเสริญ';
	@override String get view => 'ซื้อและดู';
	@override String get share => 'ซื้อและแบ่งปัน';
	@override String get retweet => 'ซื้อโอน';
	@override String get accountPublic => '* โปรดเปิดบัญชีของคุณไว้';
	@override String get channelPublic => '* โปรดเปิดช่องของคุณ';
	@override String get tiktok => 'ลิงค์วิดีโอ tiktok ของคุณ';
	@override String get twitter => 'ลิงค์ทวีต Twitter ของคุณ';
	@override String get instagram => 'ลิงค์โพสต์ Instagram ของคุณ';
	@override String get youtube => 'ลิงค์ช่อง YouTube ของคุณ';
	@override String get pay => 'จ่าย';
}

// Path: store.purchase
class _StringsStorePurchaseTh extends _StringsStorePurchaseEn {
	_StringsStorePurchaseTh._(_StringsTh root) : this._root = root, super._(root);

	@override final _StringsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'การชำระเงินสำเร็จ';
	@override String get message => 'โปรดรอให้คำสั่งซื้อเสร็จ!';
}

// Path: store.notice
class _StringsStoreNoticeTh extends _StringsStoreNoticeEn {
	_StringsStoreNoticeTh._(_StringsTh root) : this._root = root, super._(root);

	@override final _StringsTh _root; // ignore: unused_field

	// Translations
	@override String message({required Object value}) => 'หากต้องการรับผู้ติดตามฟรี ${value} คนให้เปิดการแจ้งเตือนแอปก่อน';
	@override String get turnOn => 'เปิด';
}

// Path: setting.share
class _StringsSettingShareTh extends _StringsSettingShareEn {
	_StringsSettingShareTh._(_StringsTh root) : this._root = root, super._(root);

	@override final _StringsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'แชร์แอป';
	@override String message({required Object value}) => 'ฉันพบแอปพลิเคชั่นสมบัติที่สามารถรับแฟน ๆ และชอบของ Tiktok ฟรีผ่านการติดตั้งลิงค์ต่อไปนี้เราจะได้รับเหรียญทอง ${value} เหรียญ!';
}

// Path: daily.rules
class _StringsDailyRulesTh extends _StringsDailyRulesEn {
	_StringsDailyRulesTh._(_StringsTh root) : this._root = root, super._(root);

	@override final _StringsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'กฎ';
	@override List<String> get values => [
		'คุณสามารถลงชื่อเข้าใช้ทุก 24 ชั่วโมง',
		'หลังจากการหยุดชะงักในการหยุดชะงักมันจะเริ่มขึ้นอีกครั้ง',
	];
}

// Path: wheel.rules
class _StringsWheelRulesTh extends _StringsWheelRulesEn {
	_StringsWheelRulesTh._(_StringsTh root) : this._root = root, super._(root);

	@override final _StringsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'กฎ';
	@override List<dynamic> get values => [
		({required Object value}) => 'ลอตเตอรีแต่ละอันจะมีราคา ${value} เหรียญทอง',
		'จำนวนการดึงไม่ จำกัด',
	];
}

// Path: account.alert
class _StringsAccountAlertTh extends _StringsAccountAlertEn {
	_StringsAccountAlertTh._(_StringsTh root) : this._root = root, super._(root);

	@override final _StringsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ลบบัญชี';
	@override String get message => 'หลังจากลบคุณจะไม่สามารถใช้บัญชีสำหรับการดำเนินการที่เกี่ยวข้อง';
}

// Path: faq.values.0
class _StringsFaq0i0Th extends _StringsFaq0i0En {
	_StringsFaq0i0Th._(_StringsTh root) : this._root = root, super._(root);

	@override final _StringsTh _root; // ignore: unused_field

	// Translations
	@override String get title => '1. จะเริ่มอย่างไร?';
	@override String get value => 'เพียงเพิ่มชื่อผู้ใช้แพลตฟอร์มของคุณตามพรอมต์หน้าไม่มีรหัสผ่านแต่ละแพลตฟอร์มมีพรอมต์ที่สอดคล้องกัน';
}

// Path: faq.values.1
class _StringsFaq0i1Th extends _StringsFaq0i1En {
	_StringsFaq0i1Th._(_StringsTh root) : this._root = root, super._(root);

	@override final _StringsTh _root; // ignore: unused_field

	// Translations
	@override String get title => '2. ปลอดภัยที่จะใช้หรือไม่?';
	@override String get value => 'แน่นอนว่าปลอดภัยเราไม่ต้องการรหัสผ่านของคุณและเราไม่สามารถบันทึกข้อมูลแอปพลิเคชันโซเชียลของคุณได้เพราะมันกำลังกระโดดไปยังแอปพลิเคชันอย่างเป็นทางการเพื่อให้ความสนใจหรือทำสิ่งอื่น ๆ';
}

// Path: faq.values.2
class _StringsFaq0i2Th extends _StringsFaq0i2En {
	_StringsFaq0i2Th._(_StringsTh root) : this._root = root, super._(root);

	@override final _StringsTh _root; // ignore: unused_field

	// Translations
	@override String get title => '3. งานนี้ทำงานอย่างไร?';
	@override String get value => 'วิธีการทำงานนั้นง่าย: ข้อมูลส่วนบุคคล/วิดีโอของคุณแสดงในชุมชนของเราผู้ใช้ตัดสินใจอย่างอิสระว่าควรให้ความสนใจกับ/เช่นคุณตามเนื้อหาของข้อมูลส่วนบุคคลของคุณหรือไม่เป็นการแลกเปลี่ยนที่ชอบ/ติดตามพวกเขาจะได้รับเหรียญทองและสามารถใช้เพื่อรับผู้ติดตาม/คนรัก';
}

// Path: faq.values.3
class _StringsFaq0i3Th extends _StringsFaq0i3En {
	_StringsFaq0i3Th._(_StringsTh root) : this._root = root, super._(root);

	@override final _StringsTh _root; // ignore: unused_field

	// Translations
	@override String get title => '4. ความสนใจและชอบจริงหรือไม่?';
	@override String get value => 'แน่นอนว่ามันเป็นเรื่องจริงเมื่อคุณซื้อบริการที่เกี่ยวข้องมีผู้ใช้จริงจำนวนมากอยู่ข้างหลังเพื่อให้บริการคุณและดำเนินการในแอพอย่างเป็นทางการคุณไม่จำเป็นต้องกังวลเกี่ยวกับมัน';
}

// Path: faq.values.4
class _StringsFaq0i4Th extends _StringsFaq0i4En {
	_StringsFaq0i4Th._(_StringsTh root) : this._root = root, super._(root);

	@override final _StringsTh _root; // ignore: unused_field

	// Translations
	@override String get title => '5. ฉันจะได้รับเหรียญทองได้อย่างไร?';
	@override String get value => 'ในหน้าแรกคุณสามารถดูรายการงานคลิกเพื่อติดตามหรือชอบและข้ามไปยังแอพที่เกี่ยวข้องสำหรับการดำเนินการโปรดระวังอย่ายกเลิกความสนใจหรือชอบซึ่งจะทำให้รางวัลของคุณถูกยกเลิก';
}

// Path: faq.values.5
class _StringsFaq0i5Th extends _StringsFaq0i5En {
	_StringsFaq0i5Th._(_StringsTh root) : this._root = root, super._(root);

	@override final _StringsTh _root; // ignore: unused_field

	// Translations
	@override String get title => '6. ทำไมงานจึงล้มเหลว?';
	@override String get value => 'โดยปกติแล้วคุณไม่ได้ให้ความสนใจหรือชอบคุณควรตรวจสอบบัญชีของคุณก่อน';
}

// Path: faq.values.6
class _StringsFaq0i6Th extends _StringsFaq0i6En {
	_StringsFaq0i6Th._(_StringsTh root) : this._root = root, super._(root);

	@override final _StringsTh _root; // ignore: unused_field

	// Translations
	@override String get title => '7. การสั่งซื้อของฉันใช้เวลานานแค่ไหน?';
	@override List<String> get value => [
		'ขึ้นอยู่กับปริมาณการสั่งซื้อของคุณโดยปกติคุณจะเริ่มรับบริการทันทีหลังจากทำการสั่งซื้อและเสร็จสิ้นภายใน 24 ชั่วโมง แต่เราไม่สามารถให้เวลาที่ถูกต้องได้เนื่องจากมีผู้ใช้จริงจำนวนมากที่ทำงานด้านหลังด้านหลังควร รับบริการทองคำเร็วกว่าบริการทั่วไป',
		'รับปริมาณการใช้งานมากเกินไปในเวลาอันสั้นจะทำให้บัญชีของคุณสงสัยดังนั้นการรออย่างอดทนเป็นวิธีที่ดีที่สุด',
	];
}

// Path: faq.values.7
class _StringsFaq0i7Th extends _StringsFaq0i7En {
	_StringsFaq0i7Th._(_StringsTh root) : this._root = root, super._(root);

	@override final _StringsTh _root; // ignore: unused_field

	// Translations
	@override String get title => '8. ฉันควรทำอย่างไรหลังจากสั่งซื้อ?';
	@override String get value => 'หลังจากที่คุณสั่งซื้อให้เปิดเผยบัญชีของคุณอย่าแก้ไขชื่อผู้ใช้ก่อนที่คำสั่งซื้อจะเสร็จสมบูรณ์';
}

// Path: faq.values.8
class _StringsFaq0i8Th extends _StringsFaq0i8En {
	_StringsFaq0i8Th._(_StringsTh root) : this._root = root, super._(root);

	@override final _StringsTh _root; // ignore: unused_field

	// Translations
	@override String get title => '9. จะเกิดอะไรขึ้นถ้าฉันมีปัญหา?';
	@override String get value => 'คุณสามารถติดต่อเราผ่านข้อเสนอแนะในแอพ';
}

// Path: store.tip.follow
class _StringsStoreTipFollowTh extends _StringsStoreTipFollowEn {
	_StringsStoreTipFollowTh._(_StringsTh root) : this._root = root, super._(root);

	@override final _StringsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ผู้ติดตามและผู้ติดตามอาวุโส';
	@override List<String> get values => [
		'',
		'ผู้ติดตาม',
		'ผู้ติดตามอาวุโส',
		'เวลาเสร็จสิ้น',
		'1-24 ชั่วโมง',
		'1-4 ชั่วโมง',
		'เวลาชดเชย',
		'/',
		'ค่าตอบแทนภายใน 7 วัน',
		'คุณภาพของผู้ติดตาม',
		'จริง',
		'จริงและกระตือรือร้น',
		'อัตราการลดลง',
		'8-15%',
		'0-3%',
	];
}

// Path: store.tip.like
class _StringsStoreTipLikeTh extends _StringsStoreTipLikeEn {
	_StringsStoreTipLikeTh._(_StringsTh root) : this._root = root, super._(root);

	@override final _StringsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ชอบและการสรรเสริญขั้นสูง';
	@override List<String> get values => [
		'',
		'ชอบ',
		'การสรรเสริญระดับสูง',
		'เวลาเสร็จสิ้น',
		'1-24 ชั่วโมง',
		'1-4 ชั่วโมง',
		'เวลาชดเชย',
		'/',
		'ค่าตอบแทนภายใน 7 วัน',
		'อัตราการลดลง',
		'8-15%',
		'0-3%',
	];
}

// Path: <root>
class _StringsTl extends _StringsEn {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsTl.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.tl,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <tl>.
	@override final TranslationMetadata<AppLocale, _StringsEn> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	@override late final _StringsTl _root = this; // ignore: unused_field

	// Translations
	@override late final _StringsOnlyTitleTl onlyTitle = _StringsOnlyTitleTl._(_root);
	@override late final _StringsUniversalTl universal = _StringsUniversalTl._(_root);
	@override late final _StringsTabbarTl tabbar = _StringsTabbarTl._(_root);
	@override late final _StringsTaskTl task = _StringsTaskTl._(_root);
	@override late final _StringsStoreTl store = _StringsStoreTl._(_root);
	@override late final _StringsCoinsTl coins = _StringsCoinsTl._(_root);
	@override late final _StringsLoginTl login = _StringsLoginTl._(_root);
	@override late final _StringsSettingTl setting = _StringsSettingTl._(_root);
	@override late final _StringsLanguageTl language = _StringsLanguageTl._(_root);
	@override late final _StringsDailyTl daily = _StringsDailyTl._(_root);
	@override late final _StringsWheelTl wheel = _StringsWheelTl._(_root);
	@override late final _StringsAccountTl account = _StringsAccountTl._(_root);
	@override late final _StringsOrdersTl orders = _StringsOrdersTl._(_root);
	@override late final _StringsFaqTl faq = _StringsFaqTl._(_root);
	@override late final _StringsAboutTl about = _StringsAboutTl._(_root);
	@override late final _StringsAlertTl alert = _StringsAlertTl._(_root);
	@override late final _StringsToastTl toast = _StringsToastTl._(_root);
	@override late final _StringsLocalNotificationTl localNotification = _StringsLocalNotificationTl._(_root);
}

// Path: onlyTitle
class _StringsOnlyTitleTl extends _StringsOnlyTitleEn {
	_StringsOnlyTitleTl._(_StringsTl root) : this._root = root, super._(root);

	@override final _StringsTl _root; // ignore: unused_field

	// Translations
	@override String get contact => 'Makipag-ugnayan sa amin';
}

// Path: universal
class _StringsUniversalTl extends _StringsUniversalEn {
	_StringsUniversalTl._(_StringsTl root) : this._root = root, super._(root);

	@override final _StringsTl _root; // ignore: unused_field

	// Translations
	@override String get coins => 'ginto';
	@override String get requestError => 'Subukang muli mamaya';
	@override String get add => 'Magdagdag ng account';
}

// Path: tabbar
class _StringsTabbarTl extends _StringsTabbarEn {
	_StringsTabbarTl._(_StringsTl root) : this._root = root, super._(root);

	@override final _StringsTl _root; // ignore: unused_field

	// Translations
	@override String get task => 'unang pahina';
	@override String get store => 'Mamili';
	@override String get setting => 'I -set up';
}

// Path: task
class _StringsTaskTl extends _StringsTaskEn {
	_StringsTaskTl._(_StringsTl root) : this._root = root, super._(root);

	@override final _StringsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'unang pahina';
	@override String get skip => 'tumalon';
	@override String get follow => 'tumuon sa';
	@override String get like => 'gusto';
	@override String get noTask => 'Walang gawain';
	@override late final _StringsTaskTipTl tip = _StringsTaskTipTl._(_root);
}

// Path: store
class _StringsStoreTl extends _StringsStoreEn {
	_StringsStoreTl._(_StringsTl root) : this._root = root, super._(root);

	@override final _StringsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mamili';
	@override String get free => 'libre';
	@override String get follow => 'Mga tagasunod';
	@override String get like => 'gusto';
	@override String get view => 'Panoorin';
	@override String get share => 'ibahagi';
	@override String get retweet => 'Retweet';
	@override late final _StringsStoreAdTl ad = _StringsStoreAdTl._(_root);
	@override late final _StringsStoreChangeAccountTl changeAccount = _StringsStoreChangeAccountTl._(_root);
	@override late final _StringsStoreTipTl tip = _StringsStoreTipTl._(_root);
	@override late final _StringsStoreBuyTl buy = _StringsStoreBuyTl._(_root);
	@override late final _StringsStorePurchaseTl purchase = _StringsStorePurchaseTl._(_root);
	@override late final _StringsStoreNoticeTl notice = _StringsStoreNoticeTl._(_root);
}

// Path: coins
class _StringsCoinsTl extends _StringsCoinsEn {
	_StringsCoinsTl._(_StringsTl root) : this._root = root, super._(root);

	@override final _StringsTl _root; // ignore: unused_field

	// Translations
	@override String get empty => 'Walang kasaysayan';
}

// Path: login
class _StringsLoginTl extends _StringsLoginEn {
	_StringsLoginTl._(_StringsTl root) : this._root = root, super._(root);

	@override final _StringsTl _root; // ignore: unused_field

	// Translations
	@override String get confirm => 'Kumpirmahin';
	@override String username({required Object value}) => 'Ipasok ang iyong ${value} pangalan ng gumagamit';
	@override String get channel => 'Ipasok ang iyong link sa channel sa YouTube';
	@override String get publicUsername => '* Mangyaring panatilihing bukas ang iyong account';
	@override String get publicChannel => '* Mangyaring panatilihing bukas ang iyong channel';
	@override String get add => 'Magdagdag ng account';
	@override String get hintUsername => 'Username';
	@override String get hintChannel => 'Link ng Channel';
}

// Path: setting
class _StringsSettingTl extends _StringsSettingEn {
	_StringsSettingTl._(_StringsTl root) : this._root = root, super._(root);

	@override final _StringsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'I -set up';
	@override String get editor => 'I -edit ang impormasyon';
	@override String get daily => 'Mag -sign in';
	@override String get wheel => 'Gulong ng kapalaran';
	@override String get account => 'Pamamahala ng account';
	@override String get language => 'Wika';
	@override String get orders => 'Order';
	@override String get faq => 'karaniwang problema';
	@override String get about => 'tungkol sa';
	@override late final _StringsSettingShareTl share = _StringsSettingShareTl._(_root);
	@override String get rateUs => 'Suriin kami';
}

// Path: language
class _StringsLanguageTl extends _StringsLanguageEn {
	_StringsLanguageTl._(_StringsTl root) : this._root = root, super._(root);

	@override final _StringsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pumili ng isang wika';
	@override String get start => 'magsimula';
}

// Path: daily
class _StringsDailyTl extends _StringsDailyEn {
	_StringsDailyTl._(_StringsTl root) : this._root = root, super._(root);

	@override final _StringsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mag -sign in';
	@override String get checkIn => 'Mag -sign in';
	@override late final _StringsDailyRulesTl rules = _StringsDailyRulesTl._(_root);
}

// Path: wheel
class _StringsWheelTl extends _StringsWheelEn {
	_StringsWheelTl._(_StringsTl root) : this._root = root, super._(root);

	@override final _StringsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Gulong ng kapalaran';
	@override late final _StringsWheelRulesTl rules = _StringsWheelRulesTl._(_root);
}

// Path: account
class _StringsAccountTl extends _StringsAccountEn {
	_StringsAccountTl._(_StringsTl root) : this._root = root, super._(root);

	@override final _StringsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pamamahala ng account';
	@override String get add => '+ Magdagdag ng numero ng account';
	@override String get empty => 'Walang account';
	@override late final _StringsAccountAlertTl alert = _StringsAccountAlertTl._(_root);
}

// Path: orders
class _StringsOrdersTl extends _StringsOrdersEn {
	_StringsOrdersTl._(_StringsTl root) : this._root = root, super._(root);

	@override final _StringsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Order';
	@override String get pending => 'Pila';
	@override String get processing => 'Pagproseso';
	@override String get inProgress => 'pagproseso';
	@override String get completed => 'nakumpleto';
	@override String get partial => 'Bahagyang pagkumpleto';
	@override String get error => 'pagkakamali';
	@override String get canceled => 'Kanselahin';
	@override String get refunded => 'na -refund';
	@override String get empty => 'Walang kaayusan';
}

// Path: faq
class _StringsFaqTl extends _StringsFaqEn {
	_StringsFaqTl._(_StringsTl root) : this._root = root, super._(root);

	@override final _StringsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'karaniwang problema';
	@override List<dynamic> get values => [
		_StringsFaq0i0Tl._(_root),
		_StringsFaq0i1Tl._(_root),
		_StringsFaq0i2Tl._(_root),
		_StringsFaq0i3Tl._(_root),
		_StringsFaq0i4Tl._(_root),
		_StringsFaq0i5Tl._(_root),
		_StringsFaq0i6Tl._(_root),
		_StringsFaq0i7Tl._(_root),
		_StringsFaq0i8Tl._(_root),
	];
}

// Path: about
class _StringsAboutTl extends _StringsAboutEn {
	_StringsAboutTl._(_StringsTl root) : this._root = root, super._(root);

	@override final _StringsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'tungkol sa';
	@override String get contact => 'Makipag-ugnayan sa amin';
	@override String get service => 'Mga Tuntunin ng Serbisyo';
	@override String get policy => 'Patakaran sa Pagkapribado';
}

// Path: alert
class _StringsAlertTl extends _StringsAlertEn {
	_StringsAlertTl._(_StringsTl root) : this._root = root, super._(root);

	@override final _StringsTl _root; // ignore: unused_field

	// Translations
	@override String get ok => 'OK';
	@override String get cancel => 'Kanselahin';
	@override String get confirm => 'Kumpirmahin';
}

// Path: toast
class _StringsToastTl extends _StringsToastEn {
	_StringsToastTl._(_StringsTl root) : this._root = root, super._(root);

	@override final _StringsTl _root; // ignore: unused_field

	// Translations
	@override String get unpurchase => 'Hindi mabibili ngayon';
	@override String get purchasedNotFound => 'Hindi mabibili ang kasalukuyang serbisyo';
	@override String get payment => 'matagumpay ang transaksiyon!';
	@override String get coinsNotEnough => 'Hindi sapat ang ginto!';
	@override String get received => 'Matagumpay na resibo!';
	@override String get adError => 'Madalas ang panonood ng mga ad, mangyaring subukang muli sa ibang pagkakataon!';
}

// Path: localNotification
class _StringsLocalNotificationTl extends _StringsLocalNotificationEn {
	_StringsLocalNotificationTl._(_StringsTl root) : this._root = root, super._(root);

	@override final _StringsTl _root; // ignore: unused_field

	// Translations
	@override String get adTaskReady => 'Handa na ang bagong gawain sa advertising!';
}

// Path: task.tip
class _StringsTaskTipTl extends _StringsTaskTipEn {
	_StringsTaskTipTl._(_StringsTl root) : this._root = root, super._(root);

	@override final _StringsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Prompt';
	@override List<dynamic> get values => [
		({required Object value}) => '1. Mag -click sa ${value} button',
		({required Object value}) => '2. Buksan ${value}',
		({required Object value}) => '${value}. ${value}',
		({required Object value}) => '4. Bumalik sa ${value}',
		'5. Kumuha ng mga gintong barya',
	];
	@override String get message => 'Kung kanselahin mo ang iyong pansin/gusto, aalisin ang mga barya ng ginto!';
}

// Path: store.ad
class _StringsStoreAdTl extends _StringsStoreAdEn {
	_StringsStoreAdTl._(_StringsTl root) : this._root = root, super._(root);

	@override final _StringsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Gantimpala sa advertising';
	@override String get watch => 'Panoorin ang isang ad';
}

// Path: store.changeAccount
class _StringsStoreChangeAccountTl extends _StringsStoreChangeAccountEn {
	_StringsStoreChangeAccountTl._(_StringsTl root) : this._root = root, super._(root);

	@override final _StringsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Baguhin ang account';
	@override String get add => 'Magdagdag ng account';
}

// Path: store.tip
class _StringsStoreTipTl extends _StringsStoreTipEn {
	_StringsStoreTipTl._(_StringsTl root) : this._root = root, super._(root);

	@override final _StringsTl _root; // ignore: unused_field

	// Translations
	@override late final _StringsStoreTipFollowTl follow = _StringsStoreTipFollowTl._(_root);
	@override late final _StringsStoreTipLikeTl like = _StringsStoreTipLikeTl._(_root);
}

// Path: store.buy
class _StringsStoreBuyTl extends _StringsStoreBuyEn {
	_StringsStoreBuyTl._(_StringsTl root) : this._root = root, super._(root);

	@override final _StringsTl _root; // ignore: unused_field

	// Translations
	@override String get follow => 'Mamimili';
	@override String get like => 'Bumili ng ilang papuri';
	@override String get view => 'Bumili at manood';
	@override String get share => 'Bumili at magbahagi';
	@override String get retweet => 'Bumili ng paglipat';
	@override String get accountPublic => '* Mangyaring panatilihing bukas ang iyong account';
	@override String get channelPublic => '* Mangyaring panatilihing bukas ang iyong channel';
	@override String get tiktok => 'Ang iyong Tiktok Video Link';
	@override String get twitter => 'Ang iyong link sa Twitter tweet';
	@override String get instagram => 'Ang iyong link sa post sa Instagram';
	@override String get youtube => 'Ang iyong link sa channel sa YouTube';
	@override String get pay => 'Magbayad';
}

// Path: store.purchase
class _StringsStorePurchaseTl extends _StringsStorePurchaseEn {
	_StringsStorePurchaseTl._(_StringsTl root) : this._root = root, super._(root);

	@override final _StringsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'matagumpay ang transaksiyon';
	@override String get message => 'Mangyaring maghintay para makumpleto ang order!';
}

// Path: store.notice
class _StringsStoreNoticeTl extends _StringsStoreNoticeEn {
	_StringsStoreNoticeTl._(_StringsTl root) : this._root = root, super._(root);

	@override final _StringsTl _root; // ignore: unused_field

	// Translations
	@override String message({required Object value}) => 'Upang makakuha ng ${value} libreng mga tagasunod, buksan muna ang abiso sa app.';
	@override String get turnOn => 'Buksan';
}

// Path: setting.share
class _StringsSettingShareTl extends _StringsSettingShareEn {
	_StringsSettingShareTl._(_StringsTl root) : this._root = root, super._(root);

	@override final _StringsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ibahagi ang app';
	@override String message({required Object value}) => 'Natagpuan ko ang isang application ng kayamanan na maaaring makakuha ng libreng mga tagahanga ng Tiktok at gusto. Sa pamamagitan ng sumusunod na pag -install ng link, makakakuha kami ng ${value} gintong barya!';
}

// Path: daily.rules
class _StringsDailyRulesTl extends _StringsDailyRulesEn {
	_StringsDailyRulesTl._(_StringsTl root) : this._root = root, super._(root);

	@override final _StringsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'panuntunan';
	@override List<String> get values => [
		'Maaari kang mag -sign in bawat 24 na oras;',
		'Matapos ang pagkagambala sa pag -sign -in, magsisimula ulit ito.',
	];
}

// Path: wheel.rules
class _StringsWheelRulesTl extends _StringsWheelRulesEn {
	_StringsWheelRulesTl._(_StringsTl root) : this._root = root, super._(root);

	@override final _StringsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'panuntunan';
	@override List<dynamic> get values => [
		({required Object value}) => 'Ang bawat loterya ay nagkakahalaga ng ${value} gintong barya;',
		'Ang bilang ng mga draw ay hindi limitado.',
	];
}

// Path: account.alert
class _StringsAccountAlertTl extends _StringsAccountAlertEn {
	_StringsAccountAlertTl._(_StringsTl root) : this._root = root, super._(root);

	@override final _StringsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tanggalin ang account';
	@override String get message => 'Matapos matanggal, hindi mo magagamit ang account para sa mga kaugnay na operasyon.';
}

// Path: faq.values.0
class _StringsFaq0i0Tl extends _StringsFaq0i0En {
	_StringsFaq0i0Tl._(_StringsTl root) : this._root = root, super._(root);

	@override final _StringsTl _root; // ignore: unused_field

	// Translations
	@override String get title => '1. Paano magsisimula?';
	@override String get value => 'Idagdag lamang ang iyong pangalan ng gumagamit ng platform ayon sa mga senyas ng pahina, walang password, ang bawat platform ay may kaukulang prompt.';
}

// Path: faq.values.1
class _StringsFaq0i1Tl extends _StringsFaq0i1En {
	_StringsFaq0i1Tl._(_StringsTl root) : this._root = root, super._(root);

	@override final _StringsTl _root; // ignore: unused_field

	// Translations
	@override String get title => '2. Ligtas bang gamitin ito?';
	@override String get value => 'Siyempre, ligtas ito. Hindi namin kailangan ang iyong password, at hindi namin mai -save ang iyong data sa application ng lipunan dahil tumatalon ito sa opisyal na aplikasyon upang bigyang -pansin o gumawa ng iba pang mga bagay.';
}

// Path: faq.values.2
class _StringsFaq0i2Tl extends _StringsFaq0i2En {
	_StringsFaq0i2Tl._(_StringsTl root) : this._root = root, super._(root);

	@override final _StringsTl _root; // ignore: unused_field

	// Translations
	@override String get title => '3. Paano ito gumagana?';
	@override String get value => 'Ang pamamaraan ng trabaho ay simple: ang iyong personal na data/video ay ipinapakita sa aming komunidad. Malayang magpasya ang mga gumagamit kung dapat bang bigyang pansin ang/tulad mo batay sa nilalaman ng iyong personal na data.Bilang isang palitan na gusto/sundin, makakatanggap sila ng mga gintong barya at maaaring magamit upang makakuha ng mga tagasunod/mahilig.';
}

// Path: faq.values.3
class _StringsFaq0i3Tl extends _StringsFaq0i3En {
	_StringsFaq0i3Tl._(_StringsTl root) : this._root = root, super._(root);

	@override final _StringsTl _root; // ignore: unused_field

	// Translations
	@override String get title => '4. Ang pansin ba at totoo?';
	@override String get value => 'Siyempre, ito ay totoo. Kapag bumili ka ng mga kaugnay na serbisyo, maraming mga tunay na gumagamit sa likod nito upang mabigyan ka ng mga serbisyo, at pinatatakbo ito sa opisyal na app. Hindi mo kailangang mag -alala tungkol dito.';
}

// Path: faq.values.4
class _StringsFaq0i4Tl extends _StringsFaq0i4En {
	_StringsFaq0i4Tl._(_StringsTl root) : this._root = root, super._(root);

	@override final _StringsTl _root; // ignore: unused_field

	// Translations
	@override String get title => '5. Paano ako makakakuha ng mga gintong barya?';
	@override String get value => 'Sa homepage, maaari mong makita ang listahan ng gawain, i -click upang sundin o gusto, at tumalon sa kaukulang app para sa operasyon. Mangyaring mag -ingat na huwag kanselahin ang iyong pansin o gusto, na magiging sanhi ng pagkansela ng iyong gantimpala.';
}

// Path: faq.values.5
class _StringsFaq0i5Tl extends _StringsFaq0i5En {
	_StringsFaq0i5Tl._(_StringsTl root) : this._root = root, super._(root);

	@override final _StringsTl _root; // ignore: unused_field

	// Translations
	@override String get title => '6. Bakit nabigo ang mga gawain?';
	@override String get value => 'Ito ay karaniwang dahil hindi ka talaga nagbabayad ng pansin o gusto mo. Dapat mo munang suriin ang iyong account.';
}

// Path: faq.values.6
class _StringsFaq0i6Tl extends _StringsFaq0i6En {
	_StringsFaq0i6Tl._(_StringsTl root) : this._root = root, super._(root);

	@override final _StringsTl _root; // ignore: unused_field

	// Translations
	@override String get title => '7. Gaano katagal bago makumpleto ang aking order?';
	@override List<String> get value => [
		'Ito ay nakasalalay sa dami ng iyong order. Karaniwan, sisimulan mong makuha ang serbisyo kaagad pagkatapos ilagay ang order at kumpletuhin ito sa loob ng 24h, ngunit hindi namin mabigyan ng tumpak na oras, dahil mayroong isang malaking bilang ng mga tunay na gumagamit na nagpapatakbo sa likod ng likuran. Dapat ito Mapapansin ang gintong serbisyo ay mas mabilis kaysa sa mga ordinaryong serbisyo.',
		'Kumuha ng labis na trapiko sa isang maikling panahon ay gagawing kahina -hinala ang iyong account, kaya ang paghihintay nang matiyaga ay ang pinakamahusay na paraan.',
	];
}

// Path: faq.values.7
class _StringsFaq0i7Tl extends _StringsFaq0i7En {
	_StringsFaq0i7Tl._(_StringsTl root) : this._root = root, super._(root);

	@override final _StringsTl _root; // ignore: unused_field

	// Translations
	@override String get title => '8. Ano ang dapat kong gawin pagkatapos mag -order?';
	@override String get value => 'Matapos mong ilagay ang iyong order, panatilihing isiwalat ang iyong account. Huwag baguhin ang iyong username bago makumpleto ang order.';
}

// Path: faq.values.8
class _StringsFaq0i8Tl extends _StringsFaq0i8En {
	_StringsFaq0i8Tl._(_StringsTl root) : this._root = root, super._(root);

	@override final _StringsTl _root; // ignore: unused_field

	// Translations
	@override String get title => '9. Paano kung may problema ako?';
	@override String get value => 'Maaari kang makipag -ugnay sa amin sa pamamagitan ng feedback sa app.';
}

// Path: store.tip.follow
class _StringsStoreTipFollowTl extends _StringsStoreTipFollowEn {
	_StringsStoreTipFollowTl._(_StringsTl root) : this._root = root, super._(root);

	@override final _StringsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mga tagasunod at Senior Follower';
	@override List<String> get values => [
		'',
		'Mga tagasunod',
		'Senior na tagasunod',
		'Kumpletuhin ang oras',
		'1-24 na oras',
		'1-4 na oras',
		'Oras ng kabayaran',
		'/',
		'Kabayaran sa loob ng 7 araw',
		'Kalidad ng tagasunod',
		'Tunay',
		'Tunay at aktibo',
		'Drop Rate',
		'8-15%',
		'0-3%',
	];
}

// Path: store.tip.like
class _StringsStoreTipLikeTl extends _StringsStoreTipLikeEn {
	_StringsStoreTipLikeTl._(_StringsTl root) : this._root = root, super._(root);

	@override final _StringsTl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tulad ng & advanced na papuri';
	@override List<String> get values => [
		'',
		'gusto',
		'Mataas -level papuri',
		'Kumpletuhin ang oras',
		'1-24 na oras',
		'1-4 na oras',
		'Oras ng kabayaran',
		'/',
		'Kabayaran sa loob ng 7 araw',
		'Drop Rate',
		'8-15%',
		'0-3%',
	];
}

// Path: <root>
class _StringsTr extends _StringsEn {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsTr.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.tr,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <tr>.
	@override final TranslationMetadata<AppLocale, _StringsEn> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	@override late final _StringsTr _root = this; // ignore: unused_field

	// Translations
	@override late final _StringsOnlyTitleTr onlyTitle = _StringsOnlyTitleTr._(_root);
	@override late final _StringsUniversalTr universal = _StringsUniversalTr._(_root);
	@override late final _StringsTabbarTr tabbar = _StringsTabbarTr._(_root);
	@override late final _StringsTaskTr task = _StringsTaskTr._(_root);
	@override late final _StringsStoreTr store = _StringsStoreTr._(_root);
	@override late final _StringsCoinsTr coins = _StringsCoinsTr._(_root);
	@override late final _StringsLoginTr login = _StringsLoginTr._(_root);
	@override late final _StringsSettingTr setting = _StringsSettingTr._(_root);
	@override late final _StringsLanguageTr language = _StringsLanguageTr._(_root);
	@override late final _StringsDailyTr daily = _StringsDailyTr._(_root);
	@override late final _StringsWheelTr wheel = _StringsWheelTr._(_root);
	@override late final _StringsAccountTr account = _StringsAccountTr._(_root);
	@override late final _StringsOrdersTr orders = _StringsOrdersTr._(_root);
	@override late final _StringsFaqTr faq = _StringsFaqTr._(_root);
	@override late final _StringsAboutTr about = _StringsAboutTr._(_root);
	@override late final _StringsAlertTr alert = _StringsAlertTr._(_root);
	@override late final _StringsToastTr toast = _StringsToastTr._(_root);
	@override late final _StringsLocalNotificationTr localNotification = _StringsLocalNotificationTr._(_root);
}

// Path: onlyTitle
class _StringsOnlyTitleTr extends _StringsOnlyTitleEn {
	_StringsOnlyTitleTr._(_StringsTr root) : this._root = root, super._(root);

	@override final _StringsTr _root; // ignore: unused_field

	// Translations
	@override String get contact => 'Bize Ulaşın';
}

// Path: universal
class _StringsUniversalTr extends _StringsUniversalEn {
	_StringsUniversalTr._(_StringsTr root) : this._root = root, super._(root);

	@override final _StringsTr _root; // ignore: unused_field

	// Translations
	@override String get coins => 'altın';
	@override String get requestError => 'Lütfen daha sonra tekrar deneyiniz';
	@override String get add => 'Hesap eklemek';
}

// Path: tabbar
class _StringsTabbarTr extends _StringsTabbarEn {
	_StringsTabbarTr._(_StringsTr root) : this._root = root, super._(root);

	@override final _StringsTr _root; // ignore: unused_field

	// Translations
	@override String get task => 'ön Sayfa';
	@override String get store => 'Dükkan';
	@override String get setting => 'kurmak';
}

// Path: task
class _StringsTaskTr extends _StringsTaskEn {
	_StringsTaskTr._(_StringsTr root) : this._root = root, super._(root);

	@override final _StringsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ön Sayfa';
	@override String get skip => 'üzerinden atlamak';
	@override String get follow => 'odaklan';
	@override String get like => 'beğenmek';
	@override String get noTask => 'Sorma';
	@override late final _StringsTaskTipTr tip = _StringsTaskTipTr._(_root);
}

// Path: store
class _StringsStoreTr extends _StringsStoreEn {
	_StringsStoreTr._(_StringsTr root) : this._root = root, super._(root);

	@override final _StringsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dükkan';
	@override String get free => 'Bedava';
	@override String get follow => 'Takipçiler';
	@override String get like => 'beğenmek';
	@override String get view => 'İzlemek';
	@override String get share => 'Paylaş';
	@override String get retweet => 'Retweet';
	@override late final _StringsStoreAdTr ad = _StringsStoreAdTr._(_root);
	@override late final _StringsStoreChangeAccountTr changeAccount = _StringsStoreChangeAccountTr._(_root);
	@override late final _StringsStoreTipTr tip = _StringsStoreTipTr._(_root);
	@override late final _StringsStoreBuyTr buy = _StringsStoreBuyTr._(_root);
	@override late final _StringsStorePurchaseTr purchase = _StringsStorePurchaseTr._(_root);
	@override late final _StringsStoreNoticeTr notice = _StringsStoreNoticeTr._(_root);
}

// Path: coins
class _StringsCoinsTr extends _StringsCoinsEn {
	_StringsCoinsTr._(_StringsTr root) : this._root = root, super._(root);

	@override final _StringsTr _root; // ignore: unused_field

	// Translations
	@override String get empty => 'Tarih Yok';
}

// Path: login
class _StringsLoginTr extends _StringsLoginEn {
	_StringsLoginTr._(_StringsTr root) : this._root = root, super._(root);

	@override final _StringsTr _root; // ignore: unused_field

	// Translations
	@override String get confirm => 'onaylamak';
	@override String username({required Object value}) => '${value} kullanıcı adınızı girin';
	@override String get channel => 'YouTube kanal bağlantınızı girin';
	@override String get publicUsername => '* Lütfen hesabınızın açık tutun';
	@override String get publicChannel => '* Lütfen kanalınızı açık tutun';
	@override String get add => 'Hesap eklemek';
	@override String get hintUsername => 'Kullanıcı adı';
	@override String get hintChannel => 'Kanal bağlantısı';
}

// Path: setting
class _StringsSettingTr extends _StringsSettingEn {
	_StringsSettingTr._(_StringsTr root) : this._root = root, super._(root);

	@override final _StringsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'kurmak';
	@override String get editor => 'Bilgileri Düzenle';
	@override String get daily => 'Kayıt olmak';
	@override String get wheel => 'Çarkıfelek';
	@override String get account => 'Hesap Yönetimi';
	@override String get language => 'dil';
	@override String get orders => 'Emir';
	@override String get faq => 'ortak sorun';
	@override String get about => 'hakkında';
	@override late final _StringsSettingShareTr share = _StringsSettingShareTr._(_root);
	@override String get rateUs => 'Bizi değerlendirin';
}

// Path: language
class _StringsLanguageTr extends _StringsLanguageEn {
	_StringsLanguageTr._(_StringsTr root) : this._root = root, super._(root);

	@override final _StringsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bir Dil Seçin';
	@override String get start => 'Başlat';
}

// Path: daily
class _StringsDailyTr extends _StringsDailyEn {
	_StringsDailyTr._(_StringsTr root) : this._root = root, super._(root);

	@override final _StringsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kayıt olmak';
	@override String get checkIn => 'Kayıt olmak';
	@override late final _StringsDailyRulesTr rules = _StringsDailyRulesTr._(_root);
}

// Path: wheel
class _StringsWheelTr extends _StringsWheelEn {
	_StringsWheelTr._(_StringsTr root) : this._root = root, super._(root);

	@override final _StringsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Çarkıfelek';
	@override late final _StringsWheelRulesTr rules = _StringsWheelRulesTr._(_root);
}

// Path: account
class _StringsAccountTr extends _StringsAccountEn {
	_StringsAccountTr._(_StringsTr root) : this._root = root, super._(root);

	@override final _StringsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hesap Yönetimi';
	@override String get add => '+ Hesap Numarası Ekle';
	@override String get empty => 'Hesap yok';
	@override late final _StringsAccountAlertTr alert = _StringsAccountAlertTr._(_root);
}

// Path: orders
class _StringsOrdersTr extends _StringsOrdersEn {
	_StringsOrdersTr._(_StringsTr root) : this._root = root, super._(root);

	@override final _StringsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Emir';
	@override String get pending => 'Sıra';
	@override String get processing => 'İşleme';
	@override String get inProgress => 'işleme';
	@override String get completed => 'Tamamlandı';
	@override String get partial => 'Kısmi tamamlama';
	@override String get error => 'hata';
	@override String get canceled => 'İptal edildi';
	@override String get refunded => 'geri ödemeli';
	@override String get empty => 'Sipariş yok';
}

// Path: faq
class _StringsFaqTr extends _StringsFaqEn {
	_StringsFaqTr._(_StringsTr root) : this._root = root, super._(root);

	@override final _StringsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ortak sorun';
	@override List<dynamic> get values => [
		_StringsFaq0i0Tr._(_root),
		_StringsFaq0i1Tr._(_root),
		_StringsFaq0i2Tr._(_root),
		_StringsFaq0i3Tr._(_root),
		_StringsFaq0i4Tr._(_root),
		_StringsFaq0i5Tr._(_root),
		_StringsFaq0i6Tr._(_root),
		_StringsFaq0i7Tr._(_root),
		_StringsFaq0i8Tr._(_root),
	];
}

// Path: about
class _StringsAboutTr extends _StringsAboutEn {
	_StringsAboutTr._(_StringsTr root) : this._root = root, super._(root);

	@override final _StringsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'hakkında';
	@override String get contact => 'Bize Ulaşın';
	@override String get service => 'Kullanım Şartları';
	@override String get policy => 'Gizlilik Politikası';
}

// Path: alert
class _StringsAlertTr extends _StringsAlertEn {
	_StringsAlertTr._(_StringsTr root) : this._root = root, super._(root);

	@override final _StringsTr _root; // ignore: unused_field

	// Translations
	@override String get ok => 'TAMAM';
	@override String get cancel => 'İptal';
	@override String get confirm => 'onaylamak';
}

// Path: toast
class _StringsToastTr extends _StringsToastEn {
	_StringsToastTr._(_StringsTr root) : this._root = root, super._(root);

	@override final _StringsTr _root; // ignore: unused_field

	// Translations
	@override String get unpurchase => 'Şu anda satın alamıyorum';
	@override String get purchasedNotFound => 'Mevcut hizmeti satın alamıyorum';
	@override String get payment => 'Ödeme başarılı!';
	@override String get coinsNotEnough => 'Altın yetersiz!';
	@override String get received => 'Başarılı makbuz!';
	@override String get adError => 'Reklamları çok sık izlerken, lütfen daha sonra tekrar deneyin!';
}

// Path: localNotification
class _StringsLocalNotificationTr extends _StringsLocalNotificationEn {
	_StringsLocalNotificationTr._(_StringsTr root) : this._root = root, super._(root);

	@override final _StringsTr _root; // ignore: unused_field

	// Translations
	@override String get adTaskReady => 'Yeni reklam görevi hazır!';
}

// Path: task.tip
class _StringsTaskTipTr extends _StringsTaskTipEn {
	_StringsTaskTipTr._(_StringsTr root) : this._root = root, super._(root);

	@override final _StringsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Çabuk';
	@override List<dynamic> get values => [
		({required Object value}) => '1. ${value} düğmeyi tıklayın',
		({required Object value}) => '2. Açık ${value}',
		({required Object value}) => '${value}. ${value}',
		({required Object value}) => '4. ${value}\'e geri dön',
		'5. Altın Para Alın',
	];
	@override String get message => 'Dikkatinizi/beğeninizi iptal ederseniz, altın madeni paralar kaldırılacaktır!';
}

// Path: store.ad
class _StringsStoreAdTr extends _StringsStoreAdEn {
	_StringsStoreAdTr._(_StringsTr root) : this._root = root, super._(root);

	@override final _StringsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Reklam ödülü';
	@override String get watch => 'Bir Reklam İzleyin';
}

// Path: store.changeAccount
class _StringsStoreChangeAccountTr extends _StringsStoreChangeAccountEn {
	_StringsStoreChangeAccountTr._(_StringsTr root) : this._root = root, super._(root);

	@override final _StringsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hesabı değiştir';
	@override String get add => 'Hesap eklemek';
}

// Path: store.tip
class _StringsStoreTipTr extends _StringsStoreTipEn {
	_StringsStoreTipTr._(_StringsTr root) : this._root = root, super._(root);

	@override final _StringsTr _root; // ignore: unused_field

	// Translations
	@override late final _StringsStoreTipFollowTr follow = _StringsStoreTipFollowTr._(_root);
	@override late final _StringsStoreTipLikeTr like = _StringsStoreTipLikeTr._(_root);
}

// Path: store.buy
class _StringsStoreBuyTr extends _StringsStoreBuyEn {
	_StringsStoreBuyTr._(_StringsTr root) : this._root = root, super._(root);

	@override final _StringsTr _root; // ignore: unused_field

	// Translations
	@override String get follow => 'Alıcı';
	@override String get like => 'Biraz övgü al';
	@override String get view => 'Satın Al ve İzle';
	@override String get share => 'Satın Al ve Paylaş';
	@override String get retweet => 'Transfer Satın Alın';
	@override String get accountPublic => '* Lütfen hesabınızın açık tutun';
	@override String get channelPublic => '* Lütfen kanalınızı açık tutun';
	@override String get tiktok => 'Tiktok video bağlantınız';
	@override String get twitter => 'Twitter tweet bağlantınız';
	@override String get instagram => 'Instagram Post bağlantınız';
	@override String get youtube => 'YouTube kanal bağlantınız';
	@override String get pay => 'Ödemek';
}

// Path: store.purchase
class _StringsStorePurchaseTr extends _StringsStorePurchaseEn {
	_StringsStorePurchaseTr._(_StringsTr root) : this._root = root, super._(root);

	@override final _StringsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ödeme başarılı';
	@override String get message => 'Lütfen siparişin tamamlanmasını bekleyin!';
}

// Path: store.notice
class _StringsStoreNoticeTr extends _StringsStoreNoticeEn {
	_StringsStoreNoticeTr._(_StringsTr root) : this._root = root, super._(root);

	@override final _StringsTr _root; // ignore: unused_field

	// Translations
	@override String message({required Object value}) => '${value} ücretsiz takipçi almak için önce uygulama bildirimini açın.';
	@override String get turnOn => 'Açık';
}

// Path: setting.share
class _StringsSettingShareTr extends _StringsSettingShareEn {
	_StringsSettingShareTr._(_StringsTr root) : this._root = root, super._(root);

	@override final _StringsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Uygulamayı Paylaş';
	@override String message({required Object value}) => 'Ücretsiz Tiktok hayranları ve beğeni alabilen bir hazine uygulaması buldum. Aşağıdaki bağlantı kurulumu aracılığıyla ${value} altın parayı alacağız!';
}

// Path: daily.rules
class _StringsDailyRulesTr extends _StringsDailyRulesEn {
	_StringsDailyRulesTr._(_StringsTr root) : this._root = root, super._(root);

	@override final _StringsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'kural';
	@override List<String> get values => [
		'Her 24 saatte bir oturum açabilirsiniz;',
		'İşaretten sonra -kesintiye göre tekrar başlayacak.',
	];
}

// Path: wheel.rules
class _StringsWheelRulesTr extends _StringsWheelRulesEn {
	_StringsWheelRulesTr._(_StringsTr root) : this._root = root, super._(root);

	@override final _StringsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'kural';
	@override List<dynamic> get values => [
		({required Object value}) => 'Her piyango ${value} altın paraya mal olacak;',
		'Çekiliş sayısı sınırlı değildir.',
	];
}

// Path: account.alert
class _StringsAccountAlertTr extends _StringsAccountAlertEn {
	_StringsAccountAlertTr._(_StringsTr root) : this._root = root, super._(root);

	@override final _StringsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hesabı sil';
	@override String get message => 'Silmeden sonra, ilgili işlemler için hesabı kullanamazsınız.';
}

// Path: faq.values.0
class _StringsFaq0i0Tr extends _StringsFaq0i0En {
	_StringsFaq0i0Tr._(_StringsTr root) : this._root = root, super._(root);

	@override final _StringsTr _root; // ignore: unused_field

	// Translations
	@override String get title => '1. Nasıl Başlatılır?';
	@override String get value => 'Platform kullanıcı adınızı sayfa istemlerine göre ekleyin, şifre yok, her platformun karşılık gelen bir istemi vardır.';
}

// Path: faq.values.1
class _StringsFaq0i1Tr extends _StringsFaq0i1En {
	_StringsFaq0i1Tr._(_StringsTr root) : this._root = root, super._(root);

	@override final _StringsTr _root; // ignore: unused_field

	// Translations
	@override String get title => '2. Kullanmak güvenli mi?';
	@override String get value => 'Tabii ki, bu güvenlidir. Parolanıza ihtiyacımız yoktur ve sosyal uygulama verilerinizi kaydedemeyiz, çünkü başka şeylere dikkat etmek veya başka şeyleri yapmak için resmi uygulamaya atlar.';
}

// Path: faq.values.2
class _StringsFaq0i2Tr extends _StringsFaq0i2En {
	_StringsFaq0i2Tr._(_StringsTr root) : this._root = root, super._(root);

	@override final _StringsTr _root; // ignore: unused_field

	// Translations
	@override String get title => '3. Bunlar nasıl çalışır?';
	@override String get value => 'Çalışma yöntemi basittir: kişisel verileriniz/videonuz topluluğumuzda görüntülenir. Kullanıcılar, kişisel verilerinizin içeriğine göre size dikkat edip etmemeleri/beğenmeleri gerekip gerekmediğine özgürce karar verirler.Seven/takip eden bir değişim olarak altın paralar alacaklar ve takipçileri/sevenleri almak için kullanılabilirler.';
}

// Path: faq.values.3
class _StringsFaq0i3Tr extends _StringsFaq0i3En {
	_StringsFaq0i3Tr._(_StringsTr root) : this._root = root, super._(root);

	@override final _StringsTr _root; // ignore: unused_field

	// Translations
	@override String get title => '4. Dikkat ve Gibi Gerçek mi?';
	@override String get value => 'Tabii ki, bu gerçek. İlgili hizmetler satın aldığınızda, size hizmet vermek için arkasında çok sayıda gerçek kullanıcı var ve resmi uygulamada işletiliyor. Bu konuda endişelenmenize gerek yok.';
}

// Path: faq.values.4
class _StringsFaq0i4Tr extends _StringsFaq0i4En {
	_StringsFaq0i4Tr._(_StringsTr root) : this._root = root, super._(root);

	@override final _StringsTr _root; // ignore: unused_field

	// Translations
	@override String get title => '5. Altın Paraları Nasıl Kazanırım?';
	@override String get value => 'Ana sayfada, görev listesini görebilir, takip etmek veya beğenmek için tıklayabilir ve operasyon için ilgili uygulamaya atlayabilirsiniz. Lütfen dikkatinizi iptal etmemeye dikkat edin, bu da ödülünüzün iptal edilmesine neden olacak.';
}

// Path: faq.values.5
class _StringsFaq0i5Tr extends _StringsFaq0i5En {
	_StringsFaq0i5Tr._(_StringsTr root) : this._root = root, super._(root);

	@override final _StringsTr _root; // ignore: unused_field

	// Translations
	@override String get title => '6. Görevler neden başarısız oluyor?';
	@override String get value => 'Bunun nedeni genellikle gerçekten dikkat etmemeniz veya beğenmemenizdir. Önce hesabınızı kontrol etmelisiniz.';
}

// Path: faq.values.6
class _StringsFaq0i6Tr extends _StringsFaq0i6En {
	_StringsFaq0i6Tr._(_StringsTr root) : this._root = root, super._(root);

	@override final _StringsTr _root; // ignore: unused_field

	// Translations
	@override String get title => '7. Siparişimi tamamlamak ne kadar sürer?';
	@override List<String> get value => [
		'Bu, sipariş hacminize bağlıdır. Genellikle, siparişi verdikten hemen sonra hizmeti almaya başlayacaksınız ve 24 saat içinde tamamlayacaksınız, ancak doğru zaman veremeyiz, çünkü arkada çalışan çok sayıda gerçek kullanıcı var. Altın hizmetin sıradan hizmetlerden daha hızlı olduğu belirtiliyor.',
		'Kısa sürede çok fazla trafik alın hesabınızı şüpheli hale getirecektir, bu nedenle sabırla beklemek en iyi yoldur.',
	];
}

// Path: faq.values.7
class _StringsFaq0i7Tr extends _StringsFaq0i7En {
	_StringsFaq0i7Tr._(_StringsTr root) : this._root = root, super._(root);

	@override final _StringsTr _root; // ignore: unused_field

	// Translations
	@override String get title => '8. Sipariş verdikten sonra ne yapmalıyım?';
	@override String get value => 'Siparişinizi verdikten sonra hesabınızı açıklayın. Sipariş tamamlanmadan önce kullanıcı adınızı değiştirmeyin.';
}

// Path: faq.values.8
class _StringsFaq0i8Tr extends _StringsFaq0i8En {
	_StringsFaq0i8Tr._(_StringsTr root) : this._root = root, super._(root);

	@override final _StringsTr _root; // ignore: unused_field

	// Translations
	@override String get title => '9. Ya bir sorunum varsa?';
	@override String get value => 'Uygulamadaki geri bildirimlerle bizimle iletişime geçebilirsiniz.';
}

// Path: store.tip.follow
class _StringsStoreTipFollowTr extends _StringsStoreTipFollowEn {
	_StringsStoreTipFollowTr._(_StringsTr root) : this._root = root, super._(root);

	@override final _StringsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Takipçiler ve kıdemli takipçi';
	@override List<String> get values => [
		'',
		'Takipçiler',
		'Kıdemli takipçi',
		'Tam zaman',
		'1-24 saat',
		'1-4 saat',
		'Tazminat süresi',
		'/',
		'7 gün içinde tazminat',
		'Takipçi kalitesi',
		'gerçek',
		'Gerçek ve Aktif',
		'Düşme oranı',
		'% 8-15',
		'% 0-3',
	];
}

// Path: store.tip.like
class _StringsStoreTipLikeTr extends _StringsStoreTipLikeEn {
	_StringsStoreTipLikeTr._(_StringsTr root) : this._root = root, super._(root);

	@override final _StringsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Gibi ve Gelişmiş Övgü';
	@override List<String> get values => [
		'',
		'beğenmek',
		'Yüksek seviyeli övgü',
		'Tam zaman',
		'1-24 saat',
		'1-4 saat',
		'Tazminat süresi',
		'/',
		'7 gün içinde tazminat',
		'Düşme oranı',
		'% 8-15',
		'% 0-3',
	];
}

// Path: <root>
class _StringsUk extends _StringsEn {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsUk.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.uk,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <uk>.
	@override final TranslationMetadata<AppLocale, _StringsEn> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	@override late final _StringsUk _root = this; // ignore: unused_field

	// Translations
	@override late final _StringsOnlyTitleUk onlyTitle = _StringsOnlyTitleUk._(_root);
	@override late final _StringsUniversalUk universal = _StringsUniversalUk._(_root);
	@override late final _StringsTabbarUk tabbar = _StringsTabbarUk._(_root);
	@override late final _StringsTaskUk task = _StringsTaskUk._(_root);
	@override late final _StringsStoreUk store = _StringsStoreUk._(_root);
	@override late final _StringsCoinsUk coins = _StringsCoinsUk._(_root);
	@override late final _StringsLoginUk login = _StringsLoginUk._(_root);
	@override late final _StringsSettingUk setting = _StringsSettingUk._(_root);
	@override late final _StringsLanguageUk language = _StringsLanguageUk._(_root);
	@override late final _StringsDailyUk daily = _StringsDailyUk._(_root);
	@override late final _StringsWheelUk wheel = _StringsWheelUk._(_root);
	@override late final _StringsAccountUk account = _StringsAccountUk._(_root);
	@override late final _StringsOrdersUk orders = _StringsOrdersUk._(_root);
	@override late final _StringsFaqUk faq = _StringsFaqUk._(_root);
	@override late final _StringsAboutUk about = _StringsAboutUk._(_root);
	@override late final _StringsAlertUk alert = _StringsAlertUk._(_root);
	@override late final _StringsToastUk toast = _StringsToastUk._(_root);
	@override late final _StringsLocalNotificationUk localNotification = _StringsLocalNotificationUk._(_root);
}

// Path: onlyTitle
class _StringsOnlyTitleUk extends _StringsOnlyTitleEn {
	_StringsOnlyTitleUk._(_StringsUk root) : this._root = root, super._(root);

	@override final _StringsUk _root; // ignore: unused_field

	// Translations
	@override String get contact => 'зв\'яжіться з нами';
}

// Path: universal
class _StringsUniversalUk extends _StringsUniversalEn {
	_StringsUniversalUk._(_StringsUk root) : this._root = root, super._(root);

	@override final _StringsUk _root; // ignore: unused_field

	// Translations
	@override String get coins => 'золото';
	@override String get requestError => 'Будь-ласка спробуйте пізніше';
	@override String get add => 'Додати обліковий запис';
}

// Path: tabbar
class _StringsTabbarUk extends _StringsTabbarEn {
	_StringsTabbarUk._(_StringsUk root) : this._root = root, super._(root);

	@override final _StringsUk _root; // ignore: unused_field

	// Translations
	@override String get task => 'титульна сторінка';
	@override String get store => 'магазин';
	@override String get setting => 'налаштувати';
}

// Path: task
class _StringsTaskUk extends _StringsTaskEn {
	_StringsTaskUk._(_StringsUk root) : this._root = root, super._(root);

	@override final _StringsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'титульна сторінка';
	@override String get skip => 'перестрибнути';
	@override String get follow => 'Зосередьтеся на';
	@override String get like => 'люблю';
	@override String get noTask => 'Немає завдання';
	@override late final _StringsTaskTipUk tip = _StringsTaskTipUk._(_root);
}

// Path: store
class _StringsStoreUk extends _StringsStoreEn {
	_StringsStoreUk._(_StringsUk root) : this._root = root, super._(root);

	@override final _StringsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'магазин';
	@override String get free => 'безкоштовний';
	@override String get follow => 'Послідовники';
	@override String get like => 'люблю';
	@override String get view => 'Стежити';
	@override String get share => 'розподіляти';
	@override String get retweet => 'Ретвіт';
	@override late final _StringsStoreAdUk ad = _StringsStoreAdUk._(_root);
	@override late final _StringsStoreChangeAccountUk changeAccount = _StringsStoreChangeAccountUk._(_root);
	@override late final _StringsStoreTipUk tip = _StringsStoreTipUk._(_root);
	@override late final _StringsStoreBuyUk buy = _StringsStoreBuyUk._(_root);
	@override late final _StringsStorePurchaseUk purchase = _StringsStorePurchaseUk._(_root);
	@override late final _StringsStoreNoticeUk notice = _StringsStoreNoticeUk._(_root);
}

// Path: coins
class _StringsCoinsUk extends _StringsCoinsEn {
	_StringsCoinsUk._(_StringsUk root) : this._root = root, super._(root);

	@override final _StringsUk _root; // ignore: unused_field

	// Translations
	@override String get empty => 'Немає історії';
}

// Path: login
class _StringsLoginUk extends _StringsLoginEn {
	_StringsLoginUk._(_StringsUk root) : this._root = root, super._(root);

	@override final _StringsUk _root; // ignore: unused_field

	// Translations
	@override String get confirm => 'підтверджувати';
	@override String username({required Object value}) => 'Введіть своє ${value} імені користувача';
	@override String get channel => 'Введіть посилання на канал YouTube';
	@override String get publicUsername => '* Будь ласка, тримайте свій рахунок відкритим';
	@override String get publicChannel => '* Будь ласка, тримайте свій канал відкритим';
	@override String get add => 'Додати обліковий запис';
	@override String get hintUsername => 'Ім\'я користувача';
	@override String get hintChannel => 'Канал посилання';
}

// Path: setting
class _StringsSettingUk extends _StringsSettingEn {
	_StringsSettingUk._(_StringsUk root) : this._root = root, super._(root);

	@override final _StringsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'налаштувати';
	@override String get editor => 'Редагувати інформацію';
	@override String get daily => 'Увійти';
	@override String get wheel => 'Колесо фортуни';
	@override String get account => 'Обліковий запис управління';
	@override String get language => 'мову';
	@override String get orders => 'Наказ';
	@override String get faq => 'Поширена проблема';
	@override String get about => 'про';
	@override late final _StringsSettingShareUk share = _StringsSettingShareUk._(_root);
	@override String get rateUs => 'Оцініть нас';
}

// Path: language
class _StringsLanguageUk extends _StringsLanguageEn {
	_StringsLanguageUk._(_StringsUk root) : this._root = root, super._(root);

	@override final _StringsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Виберіть мову';
	@override String get start => 'почати';
}

// Path: daily
class _StringsDailyUk extends _StringsDailyEn {
	_StringsDailyUk._(_StringsUk root) : this._root = root, super._(root);

	@override final _StringsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Увійти';
	@override String get checkIn => 'Увійти';
	@override late final _StringsDailyRulesUk rules = _StringsDailyRulesUk._(_root);
}

// Path: wheel
class _StringsWheelUk extends _StringsWheelEn {
	_StringsWheelUk._(_StringsUk root) : this._root = root, super._(root);

	@override final _StringsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Колесо фортуни';
	@override late final _StringsWheelRulesUk rules = _StringsWheelRulesUk._(_root);
}

// Path: account
class _StringsAccountUk extends _StringsAccountEn {
	_StringsAccountUk._(_StringsUk root) : this._root = root, super._(root);

	@override final _StringsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Обліковий запис управління';
	@override String get add => '+ Додати номер рахунку';
	@override String get empty => 'Немає рахунку';
	@override late final _StringsAccountAlertUk alert = _StringsAccountAlertUk._(_root);
}

// Path: orders
class _StringsOrdersUk extends _StringsOrdersEn {
	_StringsOrdersUk._(_StringsUk root) : this._root = root, super._(root);

	@override final _StringsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Наказ';
	@override String get pending => 'Чергу';
	@override String get processing => 'Обробка';
	@override String get inProgress => 'обробка';
	@override String get completed => 'завершений';
	@override String get partial => 'Часткове завершення';
	@override String get error => 'помилка';
	@override String get canceled => 'Скасований';
	@override String get refunded => 'повернутий';
	@override String get empty => 'Немає замовлення';
}

// Path: faq
class _StringsFaqUk extends _StringsFaqEn {
	_StringsFaqUk._(_StringsUk root) : this._root = root, super._(root);

	@override final _StringsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Поширена проблема';
	@override List<dynamic> get values => [
		_StringsFaq0i0Uk._(_root),
		_StringsFaq0i1Uk._(_root),
		_StringsFaq0i2Uk._(_root),
		_StringsFaq0i3Uk._(_root),
		_StringsFaq0i4Uk._(_root),
		_StringsFaq0i5Uk._(_root),
		_StringsFaq0i6Uk._(_root),
		_StringsFaq0i7Uk._(_root),
		_StringsFaq0i8Uk._(_root),
	];
}

// Path: about
class _StringsAboutUk extends _StringsAboutEn {
	_StringsAboutUk._(_StringsUk root) : this._root = root, super._(root);

	@override final _StringsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'про';
	@override String get contact => 'зв\'яжіться з нами';
	@override String get service => 'Умови обслуговування';
	@override String get policy => 'Політика конфіденційності';
}

// Path: alert
class _StringsAlertUk extends _StringsAlertEn {
	_StringsAlertUk._(_StringsUk root) : this._root = root, super._(root);

	@override final _StringsUk _root; // ignore: unused_field

	// Translations
	@override String get ok => 'в порядку';
	@override String get cancel => 'Скасувати';
	@override String get confirm => 'підтверджувати';
}

// Path: toast
class _StringsToastUk extends _StringsToastEn {
	_StringsToastUk._(_StringsUk root) : this._root = root, super._(root);

	@override final _StringsUk _root; // ignore: unused_field

	// Translations
	@override String get unpurchase => 'Наразі не можу купити';
	@override String get purchasedNotFound => 'Не вдається придбати поточну послугу';
	@override String get payment => 'Оплата успішна!';
	@override String get coinsNotEnough => 'Золото неадекватне!';
	@override String get received => 'Успішна квитанція!';
	@override String get adError => 'Переглядаючи рекламу занадто часто, спробуйте пізніше!';
}

// Path: localNotification
class _StringsLocalNotificationUk extends _StringsLocalNotificationEn {
	_StringsLocalNotificationUk._(_StringsUk root) : this._root = root, super._(root);

	@override final _StringsUk _root; // ignore: unused_field

	// Translations
	@override String get adTaskReady => 'Нове завдання реклами готова!';
}

// Path: task.tip
class _StringsTaskTipUk extends _StringsTaskTipEn {
	_StringsTaskTipUk._(_StringsUk root) : this._root = root, super._(root);

	@override final _StringsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Підказка';
	@override List<dynamic> get values => [
		({required Object value}) => '1. Натисніть кнопку ${value}',
		({required Object value}) => '2. Відкрити ${value}',
		({required Object value}) => '${value}. ${value}',
		({required Object value}) => '4. Назад до ${value}',
		'5. Отримайте золоті монети',
	];
	@override String get message => 'Якщо ви скасуєте свою увагу/подобається, золоті монети будуть видалені!';
}

// Path: store.ad
class _StringsStoreAdUk extends _StringsStoreAdEn {
	_StringsStoreAdUk._(_StringsUk root) : this._root = root, super._(root);

	@override final _StringsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Рекламна винагорода';
	@override String get watch => 'Дивіться рекламу';
}

// Path: store.changeAccount
class _StringsStoreChangeAccountUk extends _StringsStoreChangeAccountEn {
	_StringsStoreChangeAccountUk._(_StringsUk root) : this._root = root, super._(root);

	@override final _StringsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Змініть рахунок';
	@override String get add => 'Додати обліковий запис';
}

// Path: store.tip
class _StringsStoreTipUk extends _StringsStoreTipEn {
	_StringsStoreTipUk._(_StringsUk root) : this._root = root, super._(root);

	@override final _StringsUk _root; // ignore: unused_field

	// Translations
	@override late final _StringsStoreTipFollowUk follow = _StringsStoreTipFollowUk._(_root);
	@override late final _StringsStoreTipLikeUk like = _StringsStoreTipLikeUk._(_root);
}

// Path: store.buy
class _StringsStoreBuyUk extends _StringsStoreBuyEn {
	_StringsStoreBuyUk._(_StringsUk root) : this._root = root, super._(root);

	@override final _StringsUk _root; // ignore: unused_field

	// Translations
	@override String get follow => 'Покупець';
	@override String get like => 'Купуйте трохи похвалу';
	@override String get view => 'Купуйте і дивляться';
	@override String get share => 'Купити та ділитися';
	@override String get retweet => 'Купити трансфер';
	@override String get accountPublic => '* Будь ласка, тримайте свій рахунок відкритим';
	@override String get channelPublic => '* Будь ласка, тримайте свій канал відкритим';
	@override String get tiktok => 'Ваше посилання на відео Tiktok';
	@override String get twitter => 'Ваше посилання Twitter Tweet';
	@override String get instagram => 'Ваше посилання на повідомлення в Instagram';
	@override String get youtube => 'Ваше посилання на канал YouTube';
	@override String get pay => 'Оплачувати';
}

// Path: store.purchase
class _StringsStorePurchaseUk extends _StringsStorePurchaseEn {
	_StringsStorePurchaseUk._(_StringsUk root) : this._root = root, super._(root);

	@override final _StringsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Оплата успішна';
	@override String get message => 'Будь ласка, зачекайте, поки замовлення завершиться!';
}

// Path: store.notice
class _StringsStoreNoticeUk extends _StringsStoreNoticeEn {
	_StringsStoreNoticeUk._(_StringsUk root) : this._root = root, super._(root);

	@override final _StringsUk _root; // ignore: unused_field

	// Translations
	@override String message({required Object value}) => 'Щоб отримати ${value} безкоштовних підписників, спочатку відкрийте сповіщення про додаток.';
	@override String get turnOn => 'ВІДЧИНЕНО';
}

// Path: setting.share
class _StringsSettingShareUk extends _StringsSettingShareEn {
	_StringsSettingShareUk._(_StringsUk root) : this._root = root, super._(root);

	@override final _StringsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Поділитися додатком';
	@override String message({required Object value}) => 'Я знайшов додаток із скарбами, яка може отримати безкоштовні шанувальники Tiktok та подобаються. Завдяки наступній установці посилань ми отримаємо ${value} золоті монети!';
}

// Path: daily.rules
class _StringsDailyRulesUk extends _StringsDailyRulesEn {
	_StringsDailyRulesUk._(_StringsUk root) : this._root = root, super._(root);

	@override final _StringsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'правити';
	@override List<String> get values => [
		'Ви можете підписати кожні 24 години;',
		'Після переривання знаку він почнеться знову.',
	];
}

// Path: wheel.rules
class _StringsWheelRulesUk extends _StringsWheelRulesEn {
	_StringsWheelRulesUk._(_StringsUk root) : this._root = root, super._(root);

	@override final _StringsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'правити';
	@override List<dynamic> get values => [
		({required Object value}) => 'Кожна лотерея коштуватиме ${value} золотих монет;',
		'Кількість розіграшів не обмежена.',
	];
}

// Path: account.alert
class _StringsAccountAlertUk extends _StringsAccountAlertEn {
	_StringsAccountAlertUk._(_StringsUk root) : this._root = root, super._(root);

	@override final _StringsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Видалити аккаунт';
	@override String get message => 'Після видалення ви не зможете використовувати обліковий запис для відповідних операцій.';
}

// Path: faq.values.0
class _StringsFaq0i0Uk extends _StringsFaq0i0En {
	_StringsFaq0i0Uk._(_StringsUk root) : this._root = root, super._(root);

	@override final _StringsUk _root; // ignore: unused_field

	// Translations
	@override String get title => '1. Як почати?';
	@override String get value => 'Просто додайте ім\'я користувача своєї платформи відповідно до підказок сторінки, без пароля, кожна платформа має відповідний запит.';
}

// Path: faq.values.1
class _StringsFaq0i1Uk extends _StringsFaq0i1En {
	_StringsFaq0i1Uk._(_StringsUk root) : this._root = root, super._(root);

	@override final _StringsUk _root; // ignore: unused_field

	// Translations
	@override String get title => '2. Чи безпечно ним користуватися?';
	@override String get value => 'Звичайно, це безпечно. Нам не потрібен ваш пароль, і ми не можемо зберегти ваші соціальні програми, оскільки це переходить на офіційну програму, щоб звернути увагу на інші речі або робити інші речі.';
}

// Path: faq.values.2
class _StringsFaq0i2Uk extends _StringsFaq0i2En {
	_StringsFaq0i2Uk._(_StringsUk root) : this._root = root, super._(root);

	@override final _StringsUk _root; // ignore: unused_field

	// Translations
	@override String get title => '3. Як це працює все?';
	@override String get value => 'Метод роботи простий: ваші особисті дані/відео відображаються в нашій спільноті. Користувачі вільно вирішують, чи варто звертати увагу на/як ви на основі вмісту ваших особистих даних.Як обмін, який любить/слідує, вони отримають золоті монети і можуть використовуватися для отримання підписників/закоханих.';
}

// Path: faq.values.3
class _StringsFaq0i3Uk extends _StringsFaq0i3En {
	_StringsFaq0i3Uk._(_StringsUk root) : this._root = root, super._(root);

	@override final _StringsUk _root; // ignore: unused_field

	// Translations
	@override String get title => '4. Чи є увага і як справжня?';
	@override String get value => 'Звичайно, це реально. Коли ви купуєте пов’язані послуги, за ним є багато реальних користувачів, щоб надати вам послуги, і він працює в офіційному додатку. Вам не потрібно турбуватися про це.';
}

// Path: faq.values.4
class _StringsFaq0i4Uk extends _StringsFaq0i4En {
	_StringsFaq0i4Uk._(_StringsUk root) : this._root = root, super._(root);

	@override final _StringsUk _root; // ignore: unused_field

	// Translations
	@override String get title => '5. Як заробити золоті монети?';
	@override String get value => 'На домашній сторінці ви можете побачити список завдань, натиснути, щоб слідувати чи сподобатися, і перейти до відповідної програми для роботи. Будь ласка, будьте обережні, щоб не скасувати свою увагу чи подібну, що призведе до скасування вашої винагороди.';
}

// Path: faq.values.5
class _StringsFaq0i5Uk extends _StringsFaq0i5En {
	_StringsFaq0i5Uk._(_StringsUk root) : this._root = root, super._(root);

	@override final _StringsUk _root; // ignore: unused_field

	// Translations
	@override String get title => '6. Чому завдання провалюються?';
	@override String get value => 'Зазвичай це тому, що ви насправді не звертаєте уваги або не подобається. Спочатку слід перевірити свій рахунок.';
}

// Path: faq.values.6
class _StringsFaq0i6Uk extends _StringsFaq0i6En {
	_StringsFaq0i6Uk._(_StringsUk root) : this._root = root, super._(root);

	@override final _StringsUk _root; // ignore: unused_field

	// Translations
	@override String get title => '7. Скільки часу потрібно для завершення мого замовлення?';
	@override List<String> get value => [
		'Це залежить від обсягу вашого замовлення. Зазвичай ви почнете отримувати послугу відразу після розміщення замовлення та завершити його протягом 24 годин Зазначена Золота послуга швидша, ніж звичайні послуги.',
		'Отримайте занадто багато трафіку за короткий час, це зробить ваш рахунок підозрілим, тому терпляче очікування - це найкращий спосіб.',
	];
}

// Path: faq.values.7
class _StringsFaq0i7Uk extends _StringsFaq0i7En {
	_StringsFaq0i7Uk._(_StringsUk root) : this._root = root, super._(root);

	@override final _StringsUk _root; // ignore: unused_field

	// Translations
	@override String get title => '8. Що мені робити після замовлення?';
	@override String get value => 'Після того, як ви розміщуєте своє замовлення, повідомте свій обліковий запис. Не змінюйте своє ім’я користувача до завершення замовлення.';
}

// Path: faq.values.8
class _StringsFaq0i8Uk extends _StringsFaq0i8En {
	_StringsFaq0i8Uk._(_StringsUk root) : this._root = root, super._(root);

	@override final _StringsUk _root; // ignore: unused_field

	// Translations
	@override String get title => '9. Що робити, якщо у мене проблема?';
	@override String get value => 'Ви можете зв’язатися з нами через відгук у додатку.';
}

// Path: store.tip.follow
class _StringsStoreTipFollowUk extends _StringsStoreTipFollowEn {
	_StringsStoreTipFollowUk._(_StringsUk root) : this._root = root, super._(root);

	@override final _StringsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Послідовники та старший послідовник';
	@override List<String> get values => [
		'',
		'Послідовники',
		'Старший послідовник',
		'Повний час',
		'1-24 години',
		'1-4 години',
		'Час компенсації',
		'/',
		'Компенсація протягом 7 днів',
		'Якість послідовника',
		'реальний',
		'Реальний та активний',
		'Швидкість зниження',
		'8-15%',
		'0-3%',
	];
}

// Path: store.tip.like
class _StringsStoreTipLikeUk extends _StringsStoreTipLikeEn {
	_StringsStoreTipLikeUk._(_StringsUk root) : this._root = root, super._(root);

	@override final _StringsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Як і вдосконалена похвала';
	@override List<String> get values => [
		'',
		'люблю',
		'Висока кваліфікація',
		'Повний час',
		'1-24 години',
		'1-4 години',
		'Час компенсації',
		'/',
		'Компенсація протягом 7 днів',
		'Швидкість зниження',
		'8-15%',
		'0-3%',
	];
}

// Path: <root>
class _StringsUr extends _StringsEn {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsUr.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.ur,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ur>.
	@override final TranslationMetadata<AppLocale, _StringsEn> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	@override late final _StringsUr _root = this; // ignore: unused_field

	// Translations
	@override late final _StringsOnlyTitleUr onlyTitle = _StringsOnlyTitleUr._(_root);
	@override late final _StringsUniversalUr universal = _StringsUniversalUr._(_root);
	@override late final _StringsTabbarUr tabbar = _StringsTabbarUr._(_root);
	@override late final _StringsTaskUr task = _StringsTaskUr._(_root);
	@override late final _StringsStoreUr store = _StringsStoreUr._(_root);
	@override late final _StringsCoinsUr coins = _StringsCoinsUr._(_root);
	@override late final _StringsLoginUr login = _StringsLoginUr._(_root);
	@override late final _StringsSettingUr setting = _StringsSettingUr._(_root);
	@override late final _StringsLanguageUr language = _StringsLanguageUr._(_root);
	@override late final _StringsDailyUr daily = _StringsDailyUr._(_root);
	@override late final _StringsWheelUr wheel = _StringsWheelUr._(_root);
	@override late final _StringsAccountUr account = _StringsAccountUr._(_root);
	@override late final _StringsOrdersUr orders = _StringsOrdersUr._(_root);
	@override late final _StringsFaqUr faq = _StringsFaqUr._(_root);
	@override late final _StringsAboutUr about = _StringsAboutUr._(_root);
	@override late final _StringsAlertUr alert = _StringsAlertUr._(_root);
	@override late final _StringsToastUr toast = _StringsToastUr._(_root);
	@override late final _StringsLocalNotificationUr localNotification = _StringsLocalNotificationUr._(_root);
}

// Path: onlyTitle
class _StringsOnlyTitleUr extends _StringsOnlyTitleEn {
	_StringsOnlyTitleUr._(_StringsUr root) : this._root = root, super._(root);

	@override final _StringsUr _root; // ignore: unused_field

	// Translations
	@override String get contact => 'ہم سے رابطہ کریں';
}

// Path: universal
class _StringsUniversalUr extends _StringsUniversalEn {
	_StringsUniversalUr._(_StringsUr root) : this._root = root, super._(root);

	@override final _StringsUr _root; // ignore: unused_field

	// Translations
	@override String get coins => 'سونا';
	@override String get requestError => 'براہ کرم کچھ دیر بعد کوشش کریں';
	@override String get add => 'اکاؤنٹ کا اضافہ';
}

// Path: tabbar
class _StringsTabbarUr extends _StringsTabbarEn {
	_StringsTabbarUr._(_StringsUr root) : this._root = root, super._(root);

	@override final _StringsUr _root; // ignore: unused_field

	// Translations
	@override String get task => 'فرنٹ پیج';
	@override String get store => 'دکان';
	@override String get setting => 'سیٹ اپ';
}

// Path: task
class _StringsTaskUr extends _StringsTaskEn {
	_StringsTaskUr._(_StringsUr root) : this._root = root, super._(root);

	@override final _StringsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'فرنٹ پیج';
	@override String get skip => 'چھلانگ لگائیں';
	@override String get follow => 'توجہ مرکوز کریں';
	@override String get like => 'جیسے';
	@override String get noTask => 'کوئی کام نہیں';
	@override late final _StringsTaskTipUr tip = _StringsTaskTipUr._(_root);
}

// Path: store
class _StringsStoreUr extends _StringsStoreEn {
	_StringsStoreUr._(_StringsUr root) : this._root = root, super._(root);

	@override final _StringsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'دکان';
	@override String get free => 'مفت';
	@override String get follow => 'پیروکار';
	@override String get like => 'جیسے';
	@override String get view => 'دیکھو';
	@override String get share => 'بانٹیں';
	@override String get retweet => 'retweet';
	@override late final _StringsStoreAdUr ad = _StringsStoreAdUr._(_root);
	@override late final _StringsStoreChangeAccountUr changeAccount = _StringsStoreChangeAccountUr._(_root);
	@override late final _StringsStoreTipUr tip = _StringsStoreTipUr._(_root);
	@override late final _StringsStoreBuyUr buy = _StringsStoreBuyUr._(_root);
	@override late final _StringsStorePurchaseUr purchase = _StringsStorePurchaseUr._(_root);
	@override late final _StringsStoreNoticeUr notice = _StringsStoreNoticeUr._(_root);
}

// Path: coins
class _StringsCoinsUr extends _StringsCoinsEn {
	_StringsCoinsUr._(_StringsUr root) : this._root = root, super._(root);

	@override final _StringsUr _root; // ignore: unused_field

	// Translations
	@override String get empty => 'کوئی تاریخ نہیں';
}

// Path: login
class _StringsLoginUr extends _StringsLoginEn {
	_StringsLoginUr._(_StringsUr root) : this._root = root, super._(root);

	@override final _StringsUr _root; // ignore: unused_field

	// Translations
	@override String get confirm => 'تصدیق کریں';
	@override String username({required Object value}) => 'اپنا ${value} صارف نام درج کریں';
	@override String get channel => 'اپنا یوٹیوب چینل لنک درج کریں';
	@override String get publicUsername => '* براہ کرم اپنا اکاؤنٹ کھلا رکھیں';
	@override String get publicChannel => '* براہ کرم اپنے چینل کو کھلا رکھیں';
	@override String get add => 'اکاؤنٹ کا اضافہ';
	@override String get hintUsername => 'صارف نام';
	@override String get hintChannel => 'چینل لنک';
}

// Path: setting
class _StringsSettingUr extends _StringsSettingEn {
	_StringsSettingUr._(_StringsUr root) : this._root = root, super._(root);

	@override final _StringsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'سیٹ اپ';
	@override String get editor => 'معلومات میں ترمیم کریں';
	@override String get daily => 'سائن ان';
	@override String get wheel => 'نصیب کا پہیہ';
	@override String get account => 'مینجمنٹ اکاؤنٹ';
	@override String get language => 'زبان';
	@override String get orders => 'ترتیب';
	@override String get faq => 'عام مسئلہ';
	@override String get about => 'کے بارے میں';
	@override late final _StringsSettingShareUr share = _StringsSettingShareUr._(_root);
	@override String get rateUs => 'ہمارا اندازہ کریں';
}

// Path: language
class _StringsLanguageUr extends _StringsLanguageEn {
	_StringsLanguageUr._(_StringsUr root) : this._root = root, super._(root);

	@override final _StringsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'زبان کا انتخاب کریں';
	@override String get start => 'شروع کریں';
}

// Path: daily
class _StringsDailyUr extends _StringsDailyEn {
	_StringsDailyUr._(_StringsUr root) : this._root = root, super._(root);

	@override final _StringsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'سائن ان';
	@override String get checkIn => 'سائن ان';
	@override late final _StringsDailyRulesUr rules = _StringsDailyRulesUr._(_root);
}

// Path: wheel
class _StringsWheelUr extends _StringsWheelEn {
	_StringsWheelUr._(_StringsUr root) : this._root = root, super._(root);

	@override final _StringsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'نصیب کا پہیہ';
	@override late final _StringsWheelRulesUr rules = _StringsWheelRulesUr._(_root);
}

// Path: account
class _StringsAccountUr extends _StringsAccountEn {
	_StringsAccountUr._(_StringsUr root) : this._root = root, super._(root);

	@override final _StringsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'مینجمنٹ اکاؤنٹ';
	@override String get add => '+ اکاؤنٹ نمبر شامل کریں';
	@override String get empty => 'کوئی اکاؤنٹ نہیں';
	@override late final _StringsAccountAlertUr alert = _StringsAccountAlertUr._(_root);
}

// Path: orders
class _StringsOrdersUr extends _StringsOrdersEn {
	_StringsOrdersUr._(_StringsUr root) : this._root = root, super._(root);

	@override final _StringsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ترتیب';
	@override String get pending => 'قطار';
	@override String get processing => 'پروسیسنگ';
	@override String get inProgress => 'پروسیسنگ';
	@override String get completed => 'مکمل';
	@override String get partial => 'جزوی تکمیل';
	@override String get error => 'غلطی';
	@override String get canceled => 'منسوخ';
	@override String get refunded => 'رقم کی واپسی';
	@override String get empty => 'کوئی حکم نہیں';
}

// Path: faq
class _StringsFaqUr extends _StringsFaqEn {
	_StringsFaqUr._(_StringsUr root) : this._root = root, super._(root);

	@override final _StringsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'عام مسئلہ';
	@override List<dynamic> get values => [
		_StringsFaq0i0Ur._(_root),
		_StringsFaq0i1Ur._(_root),
		_StringsFaq0i2Ur._(_root),
		_StringsFaq0i3Ur._(_root),
		_StringsFaq0i4Ur._(_root),
		_StringsFaq0i5Ur._(_root),
		_StringsFaq0i6Ur._(_root),
		_StringsFaq0i7Ur._(_root),
		_StringsFaq0i8Ur._(_root),
	];
}

// Path: about
class _StringsAboutUr extends _StringsAboutEn {
	_StringsAboutUr._(_StringsUr root) : this._root = root, super._(root);

	@override final _StringsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'کے بارے میں';
	@override String get contact => 'ہم سے رابطہ کریں';
	@override String get service => 'سروس کی شرائط';
	@override String get policy => 'رازداری کی پالیسی';
}

// Path: alert
class _StringsAlertUr extends _StringsAlertEn {
	_StringsAlertUr._(_StringsUr root) : this._root = root, super._(root);

	@override final _StringsUr _root; // ignore: unused_field

	// Translations
	@override String get ok => 'ٹھیک ہے';
	@override String get cancel => 'منسوخ کریں';
	@override String get confirm => 'تصدیق کریں';
}

// Path: toast
class _StringsToastUr extends _StringsToastEn {
	_StringsToastUr._(_StringsUr root) : this._root = root, super._(root);

	@override final _StringsUr _root; // ignore: unused_field

	// Translations
	@override String get unpurchase => 'فی الحال نہیں خرید سکتے';
	@override String get purchasedNotFound => 'موجودہ خدمت نہیں خرید سکتے';
	@override String get payment => 'ادائیگی کامیاب!';
	@override String get coinsNotEnough => 'سونا ناکافی!';
	@override String get received => 'کامیاب رسید!';
	@override String get adError => 'اشتہارات بھی اکثر دیکھنا ، براہ کرم بعد میں دوبارہ کوشش کریں!';
}

// Path: localNotification
class _StringsLocalNotificationUr extends _StringsLocalNotificationEn {
	_StringsLocalNotificationUr._(_StringsUr root) : this._root = root, super._(root);

	@override final _StringsUr _root; // ignore: unused_field

	// Translations
	@override String get adTaskReady => 'نیا اشتہاری کام تیار ہے!';
}

// Path: task.tip
class _StringsTaskTipUr extends _StringsTaskTipEn {
	_StringsTaskTipUr._(_StringsUr root) : this._root = root, super._(root);

	@override final _StringsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'فوری طور پر';
	@override List<dynamic> get values => [
		({required Object value}) => '1. ${value} بٹن پر کلک کریں',
		({required Object value}) => '2. کھلا ${value}',
		({required Object value}) => '${value}. ${value}',
		({required Object value}) => '4. واپس ${value} پر',
		'5. سونے کے سکے حاصل کریں',
	];
	@override String get message => 'اگر آپ اپنی توجہ/پسند کو منسوخ کرتے ہیں تو ، سونے کے سککوں کو ہٹا دیا جائے گا!';
}

// Path: store.ad
class _StringsStoreAdUr extends _StringsStoreAdEn {
	_StringsStoreAdUr._(_StringsUr root) : this._root = root, super._(root);

	@override final _StringsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'اشتہاری انعام';
	@override String get watch => 'ایک اشتہار دیکھیں';
}

// Path: store.changeAccount
class _StringsStoreChangeAccountUr extends _StringsStoreChangeAccountEn {
	_StringsStoreChangeAccountUr._(_StringsUr root) : this._root = root, super._(root);

	@override final _StringsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'اکاؤنٹ میں ترمیم کریں';
	@override String get add => 'اکاؤنٹ کا اضافہ';
}

// Path: store.tip
class _StringsStoreTipUr extends _StringsStoreTipEn {
	_StringsStoreTipUr._(_StringsUr root) : this._root = root, super._(root);

	@override final _StringsUr _root; // ignore: unused_field

	// Translations
	@override late final _StringsStoreTipFollowUr follow = _StringsStoreTipFollowUr._(_root);
	@override late final _StringsStoreTipLikeUr like = _StringsStoreTipLikeUr._(_root);
}

// Path: store.buy
class _StringsStoreBuyUr extends _StringsStoreBuyEn {
	_StringsStoreBuyUr._(_StringsUr root) : this._root = root, super._(root);

	@override final _StringsUr _root; // ignore: unused_field

	// Translations
	@override String get follow => 'خریدار';
	@override String get like => 'کچھ تعریف خریدیں';
	@override String get view => 'خریدیں اور دیکھیں';
	@override String get share => 'خریدیں اور شیئر کریں';
	@override String get retweet => 'منتقلی خریدیں';
	@override String get accountPublic => '* براہ کرم اپنا اکاؤنٹ کھلا رکھیں';
	@override String get channelPublic => '* براہ کرم اپنے چینل کو کھلا رکھیں';
	@override String get tiktok => 'آپ کا ٹیکٹوک ویڈیو لنک';
	@override String get twitter => 'آپ کا ٹویٹر ٹویٹ لنک';
	@override String get instagram => 'آپ کا انسٹاگرام پوسٹ لنک';
	@override String get youtube => 'آپ کا یوٹیوب چینل لنک';
	@override String get pay => 'ادا کریں';
}

// Path: store.purchase
class _StringsStorePurchaseUr extends _StringsStorePurchaseEn {
	_StringsStorePurchaseUr._(_StringsUr root) : this._root = root, super._(root);

	@override final _StringsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ادائیگی کامیاب';
	@override String get message => 'براہ کرم آرڈر مکمل ہونے کا انتظار کریں!';
}

// Path: store.notice
class _StringsStoreNoticeUr extends _StringsStoreNoticeEn {
	_StringsStoreNoticeUr._(_StringsUr root) : this._root = root, super._(root);

	@override final _StringsUr _root; // ignore: unused_field

	// Translations
	@override String message({required Object value}) => '${value} مفت پیروکار حاصل کرنے کے لئے ، پہلے ایپ کی اطلاع کھولیں۔';
	@override String get turnOn => 'کھلا';
}

// Path: setting.share
class _StringsSettingShareUr extends _StringsSettingShareEn {
	_StringsSettingShareUr._(_StringsUr root) : this._root = root, super._(root);

	@override final _StringsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ایپ شیئر کریں';
	@override String message({required Object value}) => 'مجھے ایک خزانہ کی ایپلی کیشن ملی جس میں ٹیکٹوک کے مفت شائقین اور پسندیدگی حاصل کی جاسکتی ہے۔ مندرجہ ذیل لنک انسٹالیشن کے ذریعے ، ہمیں سونے کے ${value} سکے ملیں گے!';
}

// Path: daily.rules
class _StringsDailyRulesUr extends _StringsDailyRulesEn {
	_StringsDailyRulesUr._(_StringsUr root) : this._root = root, super._(root);

	@override final _StringsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'حکمرانی';
	@override List<String> get values => [
		'آپ ہر 24 گھنٹوں میں دستخط کرسکتے ہیں۔',
		'سائن ان مداخلت کے بعد ، یہ دوبارہ شروع ہوگا۔',
	];
}

// Path: wheel.rules
class _StringsWheelRulesUr extends _StringsWheelRulesEn {
	_StringsWheelRulesUr._(_StringsUr root) : this._root = root, super._(root);

	@override final _StringsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'حکمرانی';
	@override List<dynamic> get values => [
		({required Object value}) => 'ہر لاٹری میں ${value} سونے کے سککوں کی لاگت آئے گی۔',
		'ڈرا کی تعداد محدود نہیں ہے۔',
	];
}

// Path: account.alert
class _StringsAccountAlertUr extends _StringsAccountAlertEn {
	_StringsAccountAlertUr._(_StringsUr root) : this._root = root, super._(root);

	@override final _StringsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'کھاتہ مٹا دو';
	@override String get message => 'حذف کرنے کے بعد ، آپ اکاؤنٹ سے متعلقہ کارروائیوں کے لئے استعمال نہیں کرسکیں گے۔';
}

// Path: faq.values.0
class _StringsFaq0i0Ur extends _StringsFaq0i0En {
	_StringsFaq0i0Ur._(_StringsUr root) : this._root = root, super._(root);

	@override final _StringsUr _root; // ignore: unused_field

	// Translations
	@override String get title => '1. کیسے شروع کریں؟';
	@override String get value => 'صفحہ کے اشارے کے مطابق اپنے پلیٹ فارم صارف کا نام صرف شامل کریں ، پاس ورڈ نہیں ، ہر پلیٹ فارم میں اسی طرح کا اشارہ ہوتا ہے۔';
}

// Path: faq.values.1
class _StringsFaq0i1Ur extends _StringsFaq0i1En {
	_StringsFaq0i1Ur._(_StringsUr root) : this._root = root, super._(root);

	@override final _StringsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Is. کیا اسے استعمال کرنا محفوظ ہے؟';
	@override String get value => 'یقینا ، یہ محفوظ ہے۔ ہمیں آپ کے پاس ورڈ کی ضرورت نہیں ہے ، اور ہم آپ کے سماجی درخواست کے ڈیٹا کو محفوظ نہیں کرسکتے ہیں کیونکہ یہ دوسری چیزوں پر توجہ دینے یا کرنے کے لئے سرکاری درخواست پر کود رہا ہے۔';
}

// Path: faq.values.2
class _StringsFaq0i2Ur extends _StringsFaq0i2En {
	_StringsFaq0i2Ur._(_StringsUr root) : this._root = root, super._(root);

	@override final _StringsUr _root; // ignore: unused_field

	// Translations
	@override String get title => '3. یہ سب کیسے کام کرتے ہیں؟';
	@override String get value => 'کام کا طریقہ آسان ہے: آپ کا ذاتی ڈیٹا/ویڈیو ہماری برادری میں ظاہر ہوتا ہے۔ صارفین آزادانہ طور پر فیصلہ کرتے ہیں کہ آیا آپ کو آپ کے ذاتی ڈیٹا کے مواد کی بنیاد پر آپ کی طرح/جیسے آپ کی طرف توجہ دینی چاہئے۔ایک تبادلے کے طور پر جو پسند کرتا ہے/پیروی کرتا ہے ، وہ سونے کے سکے وصول کریں گے اور پیروکار/محبت کرنے والوں کو حاصل کرنے کے لئے استعمال ہوسکتے ہیں۔';
}

// Path: faq.values.3
class _StringsFaq0i3Ur extends _StringsFaq0i3En {
	_StringsFaq0i3Ur._(_StringsUr root) : this._root = root, super._(root);

	@override final _StringsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Is. کیا توجہ ہے اور حقیقی ہے؟';
	@override String get value => 'یقینا ، یہ حقیقت ہے۔ جب آپ متعلقہ خدمات خریدتے ہیں تو ، آپ کو خدمات فراہم کرنے کے لئے اس کے پیچھے بہت سارے حقیقی صارفین موجود ہیں ، اور یہ سرکاری ایپ پر چلایا جاتا ہے۔ آپ کو اس کے بارے میں فکر کرنے کی ضرورت نہیں ہے۔';
}

// Path: faq.values.4
class _StringsFaq0i4Ur extends _StringsFaq0i4En {
	_StringsFaq0i4Ur._(_StringsUr root) : this._root = root, super._(root);

	@override final _StringsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'I. میں سونے کے سکے کیسے کما سکتا ہوں؟';
	@override String get value => 'ہوم پیج پر ، آپ ٹاسک لسٹ دیکھ سکتے ہیں ، پیروی کرنے یا پسند کرنے کے لئے کلک کرسکتے ہیں ، اور آپریشن کے لئے اسی ایپ پر کود سکتے ہیں۔ براہ کرم محتاط رہیں کہ اپنی توجہ یا اس طرح کی طرح منسوخ نہ کریں ، جس کی وجہ سے آپ کا انعام منسوخ ہوجائے گا۔';
}

// Path: faq.values.5
class _StringsFaq0i5Ur extends _StringsFaq0i5En {
	_StringsFaq0i5Ur._(_StringsUr root) : this._root = root, super._(root);

	@override final _StringsUr _root; // ignore: unused_field

	// Translations
	@override String get title => '6. کام کیوں ناکام ہوتے ہیں؟';
	@override String get value => 'یہ عام طور پر اس وجہ سے ہوتا ہے کہ آپ واقعی توجہ نہیں دیتے یا پسند نہیں کرتے ہیں۔ آپ کو پہلے اپنے اکاؤنٹ کی جانچ کرنی چاہئے۔';
}

// Path: faq.values.6
class _StringsFaq0i6Ur extends _StringsFaq0i6En {
	_StringsFaq0i6Ur._(_StringsUr root) : this._root = root, super._(root);

	@override final _StringsUr _root; // ignore: unused_field

	// Translations
	@override String get title => '7. میرے آرڈر کو مکمل کرنے میں کتنا وقت لگتا ہے؟';
	@override List<String> get value => [
		'یہ آپ کے آرڈر کے حجم پر منحصر ہے۔ عام طور پر ، آپ آرڈر دینے کے بعد فوری طور پر خدمت حاصل کرنا شروع کردیں گے اور اسے 24h کے اندر مکمل کریں گے ، لیکن ہم درست وقت نہیں دے سکتے ہیں ، کیونکہ پیچھے کے پیچھے کام کرنے والے حقیقی صارفین کی ایک بڑی تعداد موجود ہے۔ اسے ہونا چاہئے۔ نوٹ کریں گولڈن سروس عام خدمات سے تیز ہے۔',
		'تھوڑے وقت میں بہت زیادہ ٹریفک حاصل کریں آپ کے اکاؤنٹ کو مشکوک بنائے گا ، لہذا صبر سے انتظار کرنا ایک بہترین طریقہ ہے۔',
	];
}

// Path: faq.values.7
class _StringsFaq0i7Ur extends _StringsFaq0i7En {
	_StringsFaq0i7Ur._(_StringsUr root) : this._root = root, super._(root);

	@override final _StringsUr _root; // ignore: unused_field

	// Translations
	@override String get title => '8. آرڈر کرنے کے بعد مجھے کیا کرنا چاہئے؟';
	@override String get value => 'اپنا آرڈر دینے کے بعد ، اپنا اکاؤنٹ انکشاف کریں۔ آرڈر مکمل ہونے سے پہلے اپنے صارف نام میں ترمیم نہ کریں۔';
}

// Path: faq.values.8
class _StringsFaq0i8Ur extends _StringsFaq0i8En {
	_StringsFaq0i8Ur._(_StringsUr root) : this._root = root, super._(root);

	@override final _StringsUr _root; // ignore: unused_field

	// Translations
	@override String get title => '9. اگر مجھے کوئی پریشانی ہو تو کیا ہوگا؟';
	@override String get value => 'آپ ایپ میں آراء کے ذریعے ہم سے رابطہ کرسکتے ہیں۔';
}

// Path: store.tip.follow
class _StringsStoreTipFollowUr extends _StringsStoreTipFollowEn {
	_StringsStoreTipFollowUr._(_StringsUr root) : this._root = root, super._(root);

	@override final _StringsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'پیروکار اور سینئر پیروکار';
	@override List<String> get values => [
		'',
		'پیروکار',
		'سینئر پیروکار',
		'مکمل وقت',
		'1-24 گھنٹے',
		'1-4 گھنٹے',
		'معاوضے کا وقت',
		'/',
		'7 دن کے اندر معاوضہ',
		'پیروکار کا معیار',
		'اصلی',
		'اصلی اور متحرک',
		'ڈراپ ریٹ',
		'8-15 ٪',
		'0-3 ٪',
	];
}

// Path: store.tip.like
class _StringsStoreTipLikeUr extends _StringsStoreTipLikeEn {
	_StringsStoreTipLikeUr._(_StringsUr root) : this._root = root, super._(root);

	@override final _StringsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'جیسے اور اعلی درجے کی تعریف';
	@override List<String> get values => [
		'',
		'جیسے',
		'اعلی سطح کی تعریف',
		'مکمل وقت',
		'1-24 گھنٹے',
		'1-4 گھنٹے',
		'معاوضے کا وقت',
		'/',
		'7 دن کے اندر معاوضہ',
		'ڈراپ ریٹ',
		'8-15 ٪',
		'0-3 ٪',
	];
}

// Path: <root>
class _StringsUz extends _StringsEn {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsUz.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.uz,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <uz>.
	@override final TranslationMetadata<AppLocale, _StringsEn> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	@override late final _StringsUz _root = this; // ignore: unused_field

	// Translations
	@override late final _StringsOnlyTitleUz onlyTitle = _StringsOnlyTitleUz._(_root);
	@override late final _StringsUniversalUz universal = _StringsUniversalUz._(_root);
	@override late final _StringsTabbarUz tabbar = _StringsTabbarUz._(_root);
	@override late final _StringsTaskUz task = _StringsTaskUz._(_root);
	@override late final _StringsStoreUz store = _StringsStoreUz._(_root);
	@override late final _StringsCoinsUz coins = _StringsCoinsUz._(_root);
	@override late final _StringsLoginUz login = _StringsLoginUz._(_root);
	@override late final _StringsSettingUz setting = _StringsSettingUz._(_root);
	@override late final _StringsLanguageUz language = _StringsLanguageUz._(_root);
	@override late final _StringsDailyUz daily = _StringsDailyUz._(_root);
	@override late final _StringsWheelUz wheel = _StringsWheelUz._(_root);
	@override late final _StringsAccountUz account = _StringsAccountUz._(_root);
	@override late final _StringsOrdersUz orders = _StringsOrdersUz._(_root);
	@override late final _StringsFaqUz faq = _StringsFaqUz._(_root);
	@override late final _StringsAboutUz about = _StringsAboutUz._(_root);
	@override late final _StringsAlertUz alert = _StringsAlertUz._(_root);
	@override late final _StringsToastUz toast = _StringsToastUz._(_root);
	@override late final _StringsLocalNotificationUz localNotification = _StringsLocalNotificationUz._(_root);
}

// Path: onlyTitle
class _StringsOnlyTitleUz extends _StringsOnlyTitleEn {
	_StringsOnlyTitleUz._(_StringsUz root) : this._root = root, super._(root);

	@override final _StringsUz _root; // ignore: unused_field

	// Translations
	@override String get contact => 'Biz bilan bog\'lanish';
}

// Path: universal
class _StringsUniversalUz extends _StringsUniversalEn {
	_StringsUniversalUz._(_StringsUz root) : this._root = root, super._(root);

	@override final _StringsUz _root; // ignore: unused_field

	// Translations
	@override String get coins => 'oltin';
	@override String get requestError => 'Iltimos keyinroq qayta urinib ko\'ring';
	@override String get add => 'Hisob qaydnomasini qo\'shing';
}

// Path: tabbar
class _StringsTabbarUz extends _StringsTabbarEn {
	_StringsTabbarUz._(_StringsUz root) : this._root = root, super._(root);

	@override final _StringsUz _root; // ignore: unused_field

	// Translations
	@override String get task => 'Old sahifa';
	@override String get store => 'do\'kon';
	@override String get setting => 'sozlash; o\'rnatish';
}

// Path: task
class _StringsTaskUz extends _StringsTaskEn {
	_StringsTaskUz._(_StringsUz root) : this._root = root, super._(root);

	@override final _StringsUz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Old sahifa';
	@override String get skip => 'sakrab o\'tish';
	@override String get follow => 'ga diqqatni jalb etish';
	@override String get like => 'o\'xshash';
	@override String get noTask => 'Vazifa yo\'q';
	@override late final _StringsTaskTipUz tip = _StringsTaskTipUz._(_root);
}

// Path: store
class _StringsStoreUz extends _StringsStoreEn {
	_StringsStoreUz._(_StringsUz root) : this._root = root, super._(root);

	@override final _StringsUz _root; // ignore: unused_field

	// Translations
	@override String get title => 'do\'kon';
	@override String get free => 'ozod';
	@override String get follow => 'Izdoshlar';
	@override String get like => 'o\'xshash';
	@override String get view => 'Tomosha';
	@override String get share => 'baham ko\'rmoq';
	@override String get retweet => 'Retwet';
	@override late final _StringsStoreAdUz ad = _StringsStoreAdUz._(_root);
	@override late final _StringsStoreChangeAccountUz changeAccount = _StringsStoreChangeAccountUz._(_root);
	@override late final _StringsStoreTipUz tip = _StringsStoreTipUz._(_root);
	@override late final _StringsStoreBuyUz buy = _StringsStoreBuyUz._(_root);
	@override late final _StringsStorePurchaseUz purchase = _StringsStorePurchaseUz._(_root);
	@override late final _StringsStoreNoticeUz notice = _StringsStoreNoticeUz._(_root);
}

// Path: coins
class _StringsCoinsUz extends _StringsCoinsEn {
	_StringsCoinsUz._(_StringsUz root) : this._root = root, super._(root);

	@override final _StringsUz _root; // ignore: unused_field

	// Translations
	@override String get empty => 'Tarix yo\'q';
}

// Path: login
class _StringsLoginUz extends _StringsLoginEn {
	_StringsLoginUz._(_StringsUz root) : this._root = root, super._(root);

	@override final _StringsUz _root; // ignore: unused_field

	// Translations
	@override String get confirm => 'tasdiqlamoq';
	@override String username({required Object value}) => '${value} ta foydalanuvchi ismingizni kiriting';
	@override String get channel => 'YouTube kanalingizni kiriting';
	@override String get publicUsername => '* Iltimos, hisobingizni oching';
	@override String get publicChannel => '* Iltimos, kanalingizni oching';
	@override String get add => 'Hisob qaydnomasini qo\'shing';
	@override String get hintUsername => 'foydalanuvchi nomi';
	@override String get hintChannel => 'Kanal havolasi';
}

// Path: setting
class _StringsSettingUz extends _StringsSettingEn {
	_StringsSettingUz._(_StringsUz root) : this._root = root, super._(root);

	@override final _StringsUz _root; // ignore: unused_field

	// Translations
	@override String get title => 'sozlash; o\'rnatish';
	@override String get editor => 'Ma\'lumotni tahrirlash';
	@override String get daily => 'tizimga kirish';
	@override String get wheel => 'Fortune g\'ildiragi';
	@override String get account => 'Boshqaruv hisobi';
	@override String get language => 'til';
	@override String get orders => 'Tartib';
	@override String get faq => 'keng tarqalgan muammo';
	@override String get about => 'haqida';
	@override late final _StringsSettingShareUz share = _StringsSettingShareUz._(_root);
	@override String get rateUs => 'Bizni baholang';
}

// Path: language
class _StringsLanguageUz extends _StringsLanguageEn {
	_StringsLanguageUz._(_StringsUz root) : this._root = root, super._(root);

	@override final _StringsUz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tilni tanlang';
	@override String get start => 'boshlamoq';
}

// Path: daily
class _StringsDailyUz extends _StringsDailyEn {
	_StringsDailyUz._(_StringsUz root) : this._root = root, super._(root);

	@override final _StringsUz _root; // ignore: unused_field

	// Translations
	@override String get title => 'tizimga kirish';
	@override String get checkIn => 'tizimga kirish';
	@override late final _StringsDailyRulesUz rules = _StringsDailyRulesUz._(_root);
}

// Path: wheel
class _StringsWheelUz extends _StringsWheelEn {
	_StringsWheelUz._(_StringsUz root) : this._root = root, super._(root);

	@override final _StringsUz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Fortune g\'ildiragi';
	@override late final _StringsWheelRulesUz rules = _StringsWheelRulesUz._(_root);
}

// Path: account
class _StringsAccountUz extends _StringsAccountEn {
	_StringsAccountUz._(_StringsUz root) : this._root = root, super._(root);

	@override final _StringsUz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Boshqaruv hisobi';
	@override String get add => '+ Hisob raqamini qo\'shing';
	@override String get empty => 'Hisob yo\'q';
	@override late final _StringsAccountAlertUz alert = _StringsAccountAlertUz._(_root);
}

// Path: orders
class _StringsOrdersUz extends _StringsOrdersEn {
	_StringsOrdersUz._(_StringsUz root) : this._root = root, super._(root);

	@override final _StringsUz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tartib';
	@override String get pending => 'Navbat';
	@override String get processing => 'Qayta ishlash';
	@override String get inProgress => 'qayta ishlash';
	@override String get completed => 'tugallangan';
	@override String get partial => 'Qisman tugatish';
	@override String get error => 'Xato';
	@override String get canceled => 'Bekor qilindi';
	@override String get refunded => 'qaytarib berilmagan';
	@override String get empty => 'Buyurtma yo\'q';
}

// Path: faq
class _StringsFaqUz extends _StringsFaqEn {
	_StringsFaqUz._(_StringsUz root) : this._root = root, super._(root);

	@override final _StringsUz _root; // ignore: unused_field

	// Translations
	@override String get title => 'keng tarqalgan muammo';
	@override List<dynamic> get values => [
		_StringsFaq0i0Uz._(_root),
		_StringsFaq0i1Uz._(_root),
		_StringsFaq0i2Uz._(_root),
		_StringsFaq0i3Uz._(_root),
		_StringsFaq0i4Uz._(_root),
		_StringsFaq0i5Uz._(_root),
		_StringsFaq0i6Uz._(_root),
		_StringsFaq0i7Uz._(_root),
		_StringsFaq0i8Uz._(_root),
	];
}

// Path: about
class _StringsAboutUz extends _StringsAboutEn {
	_StringsAboutUz._(_StringsUz root) : this._root = root, super._(root);

	@override final _StringsUz _root; // ignore: unused_field

	// Translations
	@override String get title => 'haqida';
	@override String get contact => 'Biz bilan bog\'lanish';
	@override String get service => 'Xizmat ko\'rsatish shartlari';
	@override String get policy => 'Maxfiylik siyosati';
}

// Path: alert
class _StringsAlertUz extends _StringsAlertEn {
	_StringsAlertUz._(_StringsUz root) : this._root = root, super._(root);

	@override final _StringsUz _root; // ignore: unused_field

	// Translations
	@override String get ok => 'OK';
	@override String get cancel => 'Bekor qilmoq';
	@override String get confirm => 'tasdiqlamoq';
}

// Path: toast
class _StringsToastUz extends _StringsToastEn {
	_StringsToastUz._(_StringsUz root) : this._root = root, super._(root);

	@override final _StringsUz _root; // ignore: unused_field

	// Translations
	@override String get unpurchase => 'Hozirda sotib ololmayapman';
	@override String get purchasedNotFound => 'Joriy xizmatni sotib ololmayman';
	@override String get payment => 'To\'lov muvaffaqiyatli!';
	@override String get coinsNotEnough => 'Oltin etarli emas!';
	@override String get received => 'Muvaffaqiyatli qabul qilish!';
	@override String get adError => 'Reklamani tez-tez tomosha qilish, keyinroq qayta urinib ko\'ring!';
}

// Path: localNotification
class _StringsLocalNotificationUz extends _StringsLocalNotificationEn {
	_StringsLocalNotificationUz._(_StringsUz root) : this._root = root, super._(root);

	@override final _StringsUz _root; // ignore: unused_field

	// Translations
	@override String get adTaskReady => 'Yangi reklama vazifasi tayyor!';
}

// Path: task.tip
class _StringsTaskTipUz extends _StringsTaskTipEn {
	_StringsTaskTipUz._(_StringsUz root) : this._root = root, super._(root);

	@override final _StringsUz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tez';
	@override List<dynamic> get values => [
		({required Object value}) => '1. ${value} tugmachani bosing',
		({required Object value}) => '2. ${value} oching',
		({required Object value}) => '${value}. ${value}',
		({required Object value}) => '4. orqaga ${value}',
		'5. Oltin tanga oling',
	];
	@override String get message => 'Agar sizning e\'tiboringizni bekor qilsangiz, oltin tangalar olib tashlanadi!';
}

// Path: store.ad
class _StringsStoreAdUz extends _StringsStoreAdEn {
	_StringsStoreAdUz._(_StringsUz root) : this._root = root, super._(root);

	@override final _StringsUz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Reklama mukofoti';
	@override String get watch => 'Reklamani tomosha qiling';
}

// Path: store.changeAccount
class _StringsStoreChangeAccountUz extends _StringsStoreChangeAccountEn {
	_StringsStoreChangeAccountUz._(_StringsUz root) : this._root = root, super._(root);

	@override final _StringsUz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hisobni o\'zgartirish';
	@override String get add => 'Hisob qaydnomasini qo\'shing';
}

// Path: store.tip
class _StringsStoreTipUz extends _StringsStoreTipEn {
	_StringsStoreTipUz._(_StringsUz root) : this._root = root, super._(root);

	@override final _StringsUz _root; // ignore: unused_field

	// Translations
	@override late final _StringsStoreTipFollowUz follow = _StringsStoreTipFollowUz._(_root);
	@override late final _StringsStoreTipLikeUz like = _StringsStoreTipLikeUz._(_root);
}

// Path: store.buy
class _StringsStoreBuyUz extends _StringsStoreBuyEn {
	_StringsStoreBuyUz._(_StringsUz root) : this._root = root, super._(root);

	@override final _StringsUz _root; // ignore: unused_field

	// Translations
	@override String get follow => 'Xaridor';
	@override String get like => 'Bir nechta maqtov sotib oling';
	@override String get view => 'Sotib oling va tomosha qiling';
	@override String get share => 'Sotib oling va baham ko\'ring';
	@override String get retweet => 'O\'tkazma sotib oling';
	@override String get accountPublic => '* Iltimos, hisobingizni oching';
	@override String get channelPublic => '* Iltimos, kanalingizni oching';
	@override String get tiktok => 'Tiktok video havolasi';
	@override String get twitter => 'Sizning Twitter tvitchiligi';
	@override String get instagram => 'Sizning Instagram Post havolasi';
	@override String get youtube => 'Sizning Youtube kanalingiz havolasi';
	@override String get pay => 'To\'lash';
}

// Path: store.purchase
class _StringsStorePurchaseUz extends _StringsStorePurchaseEn {
	_StringsStorePurchaseUz._(_StringsUz root) : this._root = root, super._(root);

	@override final _StringsUz _root; // ignore: unused_field

	// Translations
	@override String get title => 'To\'lov muvaffaqiyatli';
	@override String get message => 'Iltimos, buyurtma berishni kuting!';
}

// Path: store.notice
class _StringsStoreNoticeUz extends _StringsStoreNoticeEn {
	_StringsStoreNoticeUz._(_StringsUz root) : this._root = root, super._(root);

	@override final _StringsUz _root; // ignore: unused_field

	// Translations
	@override String message({required Object value}) => '${value} ta bepul izdoshlarni olish uchun avval App Notifice-ni oching.';
	@override String get turnOn => 'Ochiq';
}

// Path: setting.share
class _StringsSettingShareUz extends _StringsSettingShareEn {
	_StringsSettingShareUz._(_StringsUz root) : this._root = root, super._(root);

	@override final _StringsUz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ilovani qo\'shish';
	@override String message({required Object value}) => 'Men Tiktok muxlislari va yoqtirishlari mumkin bo\'lgan xazina dasturini topdim. Quyidagi aloqa o\'rnatish orqali biz ${value} ta oltin tanga olamiz!';
}

// Path: daily.rules
class _StringsDailyRulesUz extends _StringsDailyRulesEn {
	_StringsDailyRulesUz._(_StringsUz root) : this._root = root, super._(root);

	@override final _StringsUz _root; // ignore: unused_field

	// Translations
	@override String get title => 'qoida';
	@override List<String> get values => [
		'Siz har 24 soat ichida tizimga kirishingiz mumkin;',
		'Kirish Kimga uzilishdan so\'ng, u yana boshlanadi.',
	];
}

// Path: wheel.rules
class _StringsWheelRulesUz extends _StringsWheelRulesEn {
	_StringsWheelRulesUz._(_StringsUz root) : this._root = root, super._(root);

	@override final _StringsUz _root; // ignore: unused_field

	// Translations
	@override String get title => 'qoida';
	@override List<dynamic> get values => [
		({required Object value}) => 'Har bir lotereya ${value} ta oltin tanga bo\'ladi;',
		'Chizmalar soni cheklanmagan.',
	];
}

// Path: account.alert
class _StringsAccountAlertUz extends _StringsAccountAlertEn {
	_StringsAccountAlertUz._(_StringsUz root) : this._root = root, super._(root);

	@override final _StringsUz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hisobni o\'chirish';
	@override String get message => 'O\'chirilgandan so\'ng siz tegishli operatsiyalar uchun hisobdan foydalana olmaysiz.';
}

// Path: faq.values.0
class _StringsFaq0i0Uz extends _StringsFaq0i0En {
	_StringsFaq0i0Uz._(_StringsUz root) : this._root = root, super._(root);

	@override final _StringsUz _root; // ignore: unused_field

	// Translations
	@override String get title => '1. Qanday boshlash kerak?';
	@override String get value => 'Platforma foydalanuvchi nomini sahifangizga ko\'ra qo\'shing, parol yo\'q, parol yo\'q, har bir platforma tegishli so\'rovga ega.';
}

// Path: faq.values.1
class _StringsFaq0i1Uz extends _StringsFaq0i1En {
	_StringsFaq0i1Uz._(_StringsUz root) : this._root = root, super._(root);

	@override final _StringsUz _root; // ignore: unused_field

	// Translations
	@override String get title => '2. Foydalanish xavfsizmi?';
	@override String get value => 'Albatta, bu xavfsizdir. Sizning parolingiz bizga kerak emas, va biz sizning ijtimoiy ariz ma\'lumotlarini saqlab qolmaymiz, chunki u boshqa narsalarga e\'tibor berish yoki boshqa narsalarga e\'tibor berish uchun rasmiy dasturga sakra olmaymiz.';
}

// Path: faq.values.2
class _StringsFaq0i2Uz extends _StringsFaq0i2En {
	_StringsFaq0i2Uz._(_StringsUz root) : this._root = root, super._(root);

	@override final _StringsUz _root; // ignore: unused_field

	// Translations
	@override String get title => '3. Bu qanday ishlaydi?';
	@override String get value => 'Ish usuli oddiy: shaxsiy ma\'lumotlar / videongiz bizning hamjamiyatimizda namoyish etiladi. Foydalanuvchilar sizning shaxsiy ma\'lumotlaringiz tarkibiga qarab sizga e\'tibor berishlari kerakmi yoki yo\'qmi, ular sizning shaxsiy ma\'lumotlaringiz tarkibiga e\'tibor berishingizni erkin hal qiladilar.Yoqtirgan varoh sifatida ular oltin tanga oladilar va izdoshlar / sevuvchilar olish uchun ishlatilishi mumkin.';
}

// Path: faq.values.3
class _StringsFaq0i3Uz extends _StringsFaq0i3En {
	_StringsFaq0i3Uz._(_StringsUz root) : this._root = root, super._(root);

	@override final _StringsUz _root; // ignore: unused_field

	// Translations
	@override String get title => '4. Diqqat va haqiqiy kabi?';
	@override String get value => 'Albatta, bu haqiqat. Siz bilan tegishli xizmatlarni sotib olganingizda, sizga xizmatlarni taqdim etish uchun juda ko\'p foydalanuvchilar mavjud va u rasmiy ilovada ishlaydi. Siz buni rasmiy ilovada amalga oshiriladi. Siz buni rasmiy ilovada amalga oshiriladi. Siz bu haqda tashvishlanishingiz kerak.';
}

// Path: faq.values.4
class _StringsFaq0i4Uz extends _StringsFaq0i4En {
	_StringsFaq0i4Uz._(_StringsUz root) : this._root = root, super._(root);

	@override final _StringsUz _root; // ignore: unused_field

	// Translations
	@override String get title => '5. Qanday qilib oltin tanga olaman?';
	@override String get value => 'Bosh sahifada siz Vazifalar ro\'yxatini ko\'rishingiz mumkin, ko\'rish uchun yoki yoqish uchun bosing.';
}

// Path: faq.values.5
class _StringsFaq0i5Uz extends _StringsFaq0i5En {
	_StringsFaq0i5Uz._(_StringsUz root) : this._root = root, super._(root);

	@override final _StringsUz _root; // ignore: unused_field

	// Translations
	@override String get title => '6. Nima uchun vazifalar bajarilmayapti?';
	@override String get value => 'Odatda bu siz haqiqatan ham e\'tibor bermaysiz yoki unga o\'xshamaysiz. Siz avval hisobingizni tekshirishingiz kerak.';
}

// Path: faq.values.6
class _StringsFaq0i6Uz extends _StringsFaq0i6En {
	_StringsFaq0i6Uz._(_StringsUz root) : this._root = root, super._(root);

	@override final _StringsUz _root; // ignore: unused_field

	// Translations
	@override String get title => '7. Buyurtmani bajarish qancha davom etadi?';
	@override List<String> get value => [
		'Bu sizning buyurtmangizning hajmiga bog\'liq. Odatda, buyurtmani joylashtiring va uni 24 soat ichida bajaring, ammo biz aniq vaqtni bera olmaymiz, chunki orqa tomondan ko\'p sonli foydalanuvchilar mavjud. Shuni ta\'kidlash kerakki, oltin xizmat oddiy xizmatlardan tezroq.',
		'Qisqa vaqt ichida juda ko\'p trafik oling, hisobingizni shubhali qiladi, shuning uchun sabr-toqat eng yaxshi usul.',
	];
}

// Path: faq.values.7
class _StringsFaq0i7Uz extends _StringsFaq0i7En {
	_StringsFaq0i7Uz._(_StringsUz root) : this._root = root, super._(root);

	@override final _StringsUz _root; // ignore: unused_field

	// Translations
	@override String get title => '8. Buyurtmadan keyin nima qilishim kerak?';
	@override String get value => 'Buyurtmani berganingizdan so\'ng, hisob qaydnomangizni oshkor qiling. Buyurtma tugashidan oldin foydalanuvchi nomingizni o\'zgartirmang.';
}

// Path: faq.values.8
class _StringsFaq0i8Uz extends _StringsFaq0i8En {
	_StringsFaq0i8Uz._(_StringsUz root) : this._root = root, super._(root);

	@override final _StringsUz _root; // ignore: unused_field

	// Translations
	@override String get title => '9. Agar muammo bo\'lsa nima bo\'ladi?';
	@override String get value => 'Ilovada fikr-mulohazalar orqali biz bilan bog\'lanishingiz mumkin.';
}

// Path: store.tip.follow
class _StringsStoreTipFollowUz extends _StringsStoreTipFollowEn {
	_StringsStoreTipFollowUz._(_StringsUz root) : this._root = root, super._(root);

	@override final _StringsUz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Izdoshlar va katta izdoshlar';
	@override List<String> get values => [
		'',
		'Izdoshlar',
		'Katta izdosh',
		'To\'liq vaqt',
		'1-24 soat',
		'1-4 soat',
		'Kompensatsiya vaqti',
		'/',
		'7 kun ichida kompensatsiya',
		'Izdosh sifati',
		'haqiqiy',
		'Real va faol',
		'Tomchilik darajasi',
		'8-15%',
		'0-3%',
	];
}

// Path: store.tip.like
class _StringsStoreTipLikeUz extends _StringsStoreTipLikeEn {
	_StringsStoreTipLikeUz._(_StringsUz root) : this._root = root, super._(root);

	@override final _StringsUz _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kabi va maqtov kabi';
	@override List<String> get values => [
		'',
		'o\'xshash',
		'Yuqori -level maqtov',
		'To\'liq vaqt',
		'1-24 soat',
		'1-4 soat',
		'Kompensatsiya vaqti',
		'/',
		'7 kun ichida kompensatsiya',
		'Tomchilik darajasi',
		'8-15%',
		'0-3%',
	];
}

// Path: <root>
class _StringsVi extends _StringsEn {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsVi.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.vi,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <vi>.
	@override final TranslationMetadata<AppLocale, _StringsEn> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	@override late final _StringsVi _root = this; // ignore: unused_field

	// Translations
	@override late final _StringsOnlyTitleVi onlyTitle = _StringsOnlyTitleVi._(_root);
	@override late final _StringsUniversalVi universal = _StringsUniversalVi._(_root);
	@override late final _StringsTabbarVi tabbar = _StringsTabbarVi._(_root);
	@override late final _StringsTaskVi task = _StringsTaskVi._(_root);
	@override late final _StringsStoreVi store = _StringsStoreVi._(_root);
	@override late final _StringsCoinsVi coins = _StringsCoinsVi._(_root);
	@override late final _StringsLoginVi login = _StringsLoginVi._(_root);
	@override late final _StringsSettingVi setting = _StringsSettingVi._(_root);
	@override late final _StringsLanguageVi language = _StringsLanguageVi._(_root);
	@override late final _StringsDailyVi daily = _StringsDailyVi._(_root);
	@override late final _StringsWheelVi wheel = _StringsWheelVi._(_root);
	@override late final _StringsAccountVi account = _StringsAccountVi._(_root);
	@override late final _StringsOrdersVi orders = _StringsOrdersVi._(_root);
	@override late final _StringsFaqVi faq = _StringsFaqVi._(_root);
	@override late final _StringsAboutVi about = _StringsAboutVi._(_root);
	@override late final _StringsAlertVi alert = _StringsAlertVi._(_root);
	@override late final _StringsToastVi toast = _StringsToastVi._(_root);
	@override late final _StringsLocalNotificationVi localNotification = _StringsLocalNotificationVi._(_root);
}

// Path: onlyTitle
class _StringsOnlyTitleVi extends _StringsOnlyTitleEn {
	_StringsOnlyTitleVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get contact => 'liên hệ chúng tôi';
}

// Path: universal
class _StringsUniversalVi extends _StringsUniversalEn {
	_StringsUniversalVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get coins => 'vàng';
	@override String get requestError => 'Vui lòng thử lại sau';
	@override String get add => 'Thêm tài khoản';
}

// Path: tabbar
class _StringsTabbarVi extends _StringsTabbarEn {
	_StringsTabbarVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get task => 'trang nhất';
	@override String get store => 'cửa tiệm';
	@override String get setting => 'cài đặt';
}

// Path: task
class _StringsTaskVi extends _StringsTaskEn {
	_StringsTaskVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'trang nhất';
	@override String get skip => 'nhảy qua';
	@override String get follow => 'tập trung vào';
	@override String get like => 'giống';
	@override String get noTask => 'Đừng hỏi';
	@override late final _StringsTaskTipVi tip = _StringsTaskTipVi._(_root);
}

// Path: store
class _StringsStoreVi extends _StringsStoreEn {
	_StringsStoreVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'cửa tiệm';
	@override String get free => 'tự do';
	@override String get follow => 'Người theo dõi';
	@override String get like => 'giống';
	@override String get view => 'Đồng hồ';
	@override String get share => 'đăng lại';
	@override String get retweet => 'Retweet';
	@override late final _StringsStoreAdVi ad = _StringsStoreAdVi._(_root);
	@override late final _StringsStoreChangeAccountVi changeAccount = _StringsStoreChangeAccountVi._(_root);
	@override late final _StringsStoreTipVi tip = _StringsStoreTipVi._(_root);
	@override late final _StringsStoreBuyVi buy = _StringsStoreBuyVi._(_root);
	@override late final _StringsStorePurchaseVi purchase = _StringsStorePurchaseVi._(_root);
	@override late final _StringsStoreNoticeVi notice = _StringsStoreNoticeVi._(_root);
}

// Path: coins
class _StringsCoinsVi extends _StringsCoinsEn {
	_StringsCoinsVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get empty => 'Không có lịch sử';
}

// Path: login
class _StringsLoginVi extends _StringsLoginEn {
	_StringsLoginVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get confirm => 'xác nhận';
	@override String username({required Object value}) => 'Nhập ${value} tên người dùng của bạn';
	@override String get channel => 'Nhập liên kết kênh YouTube của bạn';
	@override String get publicUsername => '* Vui lòng giữ tài khoản của bạn đang mở';
	@override String get publicChannel => '* Vui lòng giữ kênh của bạn mở';
	@override String get add => 'Thêm tài khoản';
	@override String get hintUsername => 'tên tài khoản';
	@override String get hintChannel => 'Liên kết kênh';
}

// Path: setting
class _StringsSettingVi extends _StringsSettingEn {
	_StringsSettingVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'cài đặt';
	@override String get editor => 'chỉnh sửa thông tin';
	@override String get daily => 'Đăng nhập';
	@override String get wheel => 'Vòng quay may mắn';
	@override String get account => 'Tài khoản quản lý';
	@override String get language => 'ngôn ngữ';
	@override String get orders => 'Gọi món';
	@override String get faq => 'vấn đề thường gặp';
	@override String get about => 'Về';
	@override late final _StringsSettingShareVi share = _StringsSettingShareVi._(_root);
	@override String get rateUs => 'Đánh giá chúng tôi';
}

// Path: language
class _StringsLanguageVi extends _StringsLanguageEn {
	_StringsLanguageVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Chọn một ngôn ngữ';
	@override String get start => 'bắt đầu';
}

// Path: daily
class _StringsDailyVi extends _StringsDailyEn {
	_StringsDailyVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Đăng nhập';
	@override String get checkIn => 'Đăng nhập';
	@override late final _StringsDailyRulesVi rules = _StringsDailyRulesVi._(_root);
}

// Path: wheel
class _StringsWheelVi extends _StringsWheelEn {
	_StringsWheelVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vòng quay may mắn';
	@override late final _StringsWheelRulesVi rules = _StringsWheelRulesVi._(_root);
}

// Path: account
class _StringsAccountVi extends _StringsAccountEn {
	_StringsAccountVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tài khoản quản lý';
	@override String get add => '+ Thêm số tài khoản';
	@override String get empty => 'Không tài khoản';
	@override late final _StringsAccountAlertVi alert = _StringsAccountAlertVi._(_root);
}

// Path: orders
class _StringsOrdersVi extends _StringsOrdersEn {
	_StringsOrdersVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Gọi món';
	@override String get pending => 'Xếp hàng';
	@override String get processing => 'Xử lý';
	@override String get inProgress => 'Chế biến';
	@override String get completed => 'hoàn thành';
	@override String get partial => 'Hoàn thành một phần';
	@override String get error => 'sai lầm, điều sai, ngộ nhận';
	@override String get canceled => 'Bị hủy bỏ';
	@override String get refunded => 'hoàn lại tiền';
	@override String get empty => 'Không có đơn đặt hàng';
}

// Path: faq
class _StringsFaqVi extends _StringsFaqEn {
	_StringsFaqVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'vấn đề thường gặp';
	@override List<dynamic> get values => [
		_StringsFaq0i0Vi._(_root),
		_StringsFaq0i1Vi._(_root),
		_StringsFaq0i2Vi._(_root),
		_StringsFaq0i3Vi._(_root),
		_StringsFaq0i4Vi._(_root),
		_StringsFaq0i5Vi._(_root),
		_StringsFaq0i6Vi._(_root),
		_StringsFaq0i7Vi._(_root),
		_StringsFaq0i8Vi._(_root),
	];
}

// Path: about
class _StringsAboutVi extends _StringsAboutEn {
	_StringsAboutVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Về';
	@override String get contact => 'liên hệ chúng tôi';
	@override String get service => 'Điều khoản dịch vụ';
	@override String get policy => 'Chính sách bảo mật';
}

// Path: alert
class _StringsAlertVi extends _StringsAlertEn {
	_StringsAlertVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get ok => 'ĐƯỢC RỒI';
	@override String get cancel => 'Hủy bỏ';
	@override String get confirm => 'xác nhận';
}

// Path: toast
class _StringsToastVi extends _StringsToastEn {
	_StringsToastVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get unpurchase => 'Không thể mua hiện tại';
	@override String get purchasedNotFound => 'Không thể mua dịch vụ hiện tại';
	@override String get payment => 'Thanh toán thành công!';
	@override String get coinsNotEnough => 'Vàng không đủ!';
	@override String get received => 'Biên lai thành công!';
	@override String get adError => 'Xem quảng cáo quá thường xuyên, xin vui lòng thử lại sau!';
}

// Path: localNotification
class _StringsLocalNotificationVi extends _StringsLocalNotificationEn {
	_StringsLocalNotificationVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get adTaskReady => 'Nhiệm vụ quảng cáo mới đã sẵn sàng!';
}

// Path: task.tip
class _StringsTaskTipVi extends _StringsTaskTipEn {
	_StringsTaskTipVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Lời nhắc';
	@override List<dynamic> get values => [
		({required Object value}) => '1. Nhấp ${value} nút',
		({required Object value}) => '2. Mở ${value}',
		({required Object value}) => '${value}. ${value}',
		({required Object value}) => '4. Quay lại ${value}',
		'5. Nhận tiền vàng',
	];
	@override String get message => 'Nếu bạn hủy bỏ sự chú ý/thích, tiền vàng sẽ bị xóa!';
}

// Path: store.ad
class _StringsStoreAdVi extends _StringsStoreAdEn {
	_StringsStoreAdVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Phần thưởng quảng cáo';
	@override String get watch => 'Xem một quảng cáo';
}

// Path: store.changeAccount
class _StringsStoreChangeAccountVi extends _StringsStoreChangeAccountEn {
	_StringsStoreChangeAccountVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sửa đổi tài khoản';
	@override String get add => 'Thêm tài khoản';
}

// Path: store.tip
class _StringsStoreTipVi extends _StringsStoreTipEn {
	_StringsStoreTipVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override late final _StringsStoreTipFollowVi follow = _StringsStoreTipFollowVi._(_root);
	@override late final _StringsStoreTipLikeVi like = _StringsStoreTipLikeVi._(_root);
}

// Path: store.buy
class _StringsStoreBuyVi extends _StringsStoreBuyEn {
	_StringsStoreBuyVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get follow => 'Người mua';
	@override String get like => 'Mua một số khen ngợi';
	@override String get view => 'Mua và xem';
	@override String get share => 'Mua và chia sẻ';
	@override String get retweet => 'Mua một chuyển nhượng';
	@override String get accountPublic => '* Vui lòng giữ tài khoản của bạn đang mở';
	@override String get channelPublic => '* Vui lòng giữ kênh của bạn mở';
	@override String get tiktok => 'Liên kết video Tiktok của bạn';
	@override String get twitter => 'Liên kết Twitter của bạn';
	@override String get instagram => 'Liên kết bài đăng trên Instagram của bạn';
	@override String get youtube => 'Liên kết kênh YouTube của bạn';
	@override String get pay => 'Trả tiền';
}

// Path: store.purchase
class _StringsStorePurchaseVi extends _StringsStorePurchaseEn {
	_StringsStorePurchaseVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Thanh toán thành công';
	@override String get message => 'Vui lòng đợi đơn đặt hàng hoàn thành!';
}

// Path: store.notice
class _StringsStoreNoticeVi extends _StringsStoreNoticeEn {
	_StringsStoreNoticeVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String message({required Object value}) => 'Để có được ${value} người theo dõi miễn phí, hãy mở thông báo ứng dụng trước.';
	@override String get turnOn => 'Mở';
}

// Path: setting.share
class _StringsSettingShareVi extends _StringsSettingShareEn {
	_StringsSettingShareVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Chia sẻ ứng dụng';
	@override String message({required Object value}) => 'Tôi đã tìm thấy một ứng dụng kho báu có thể nhận được người hâm mộ và lượt thích Tiktok miễn phí. Thông qua việc cài đặt liên kết sau, chúng tôi sẽ nhận được ${value} đồng vàng!';
}

// Path: daily.rules
class _StringsDailyRulesVi extends _StringsDailyRulesEn {
	_StringsDailyRulesVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'qui định';
	@override List<String> get values => [
		'Bạn có thể đăng nhập cứ sau 24 giờ;',
		'Sau khi ký hiệu -gián đoạn, nó sẽ bắt đầu lại.',
	];
}

// Path: wheel.rules
class _StringsWheelRulesVi extends _StringsWheelRulesEn {
	_StringsWheelRulesVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'qui định';
	@override List<dynamic> get values => [
		({required Object value}) => 'Mỗi xổ số sẽ có giá ${value} đồng vàng;',
		'Số lượng trận hòa không bị giới hạn.',
	];
}

// Path: account.alert
class _StringsAccountAlertVi extends _StringsAccountAlertEn {
	_StringsAccountAlertVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Xóa tài khoản';
	@override String get message => 'Sau khi xóa, bạn sẽ không thể sử dụng tài khoản cho các hoạt động liên quan.';
}

// Path: faq.values.0
class _StringsFaq0i0Vi extends _StringsFaq0i0En {
	_StringsFaq0i0Vi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get title => '1. Làm thế nào để bắt đầu?';
	@override String get value => 'Chỉ cần thêm tên người dùng nền tảng của bạn theo lời nhắc trang, không có mật khẩu, mỗi nền tảng có một lời nhắc tương ứng.';
}

// Path: faq.values.1
class _StringsFaq0i1Vi extends _StringsFaq0i1En {
	_StringsFaq0i1Vi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get title => '2. Có an toàn khi sử dụng nó không?';
	@override String get value => 'Tất nhiên, nó an toàn. Chúng tôi không cần mật khẩu của bạn và chúng tôi không thể lưu dữ liệu ứng dụng xã hội của bạn vì nó đang chuyển sang ứng dụng chính thức để chú ý hoặc làm những việc khác.';
}

// Path: faq.values.2
class _StringsFaq0i2Vi extends _StringsFaq0i2En {
	_StringsFaq0i2Vi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get title => '3. Làm thế nào để làm việc tất cả?';
	@override String get value => 'Phương pháp làm việc rất đơn giản: Dữ liệu/video cá nhân của bạn được hiển thị trong cộng đồng của chúng tôi. Người dùng tự do quyết định xem họ có nên chú ý/thích bạn dựa trên nội dung dữ liệu cá nhân của bạn hay không.Là một trao đổi thích/theo dõi, họ sẽ nhận được tiền vàng và có thể được sử dụng để có được người theo dõi/người yêu.';
}

// Path: faq.values.3
class _StringsFaq0i3Vi extends _StringsFaq0i3En {
	_StringsFaq0i3Vi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get title => '4. Sự chú ý và giống như thật?';
	@override String get value => 'Tất nhiên, đó là sự thật. Khi bạn mua các dịch vụ liên quan, có rất nhiều người dùng thực sự đằng sau nó để cung cấp cho bạn các dịch vụ và nó được vận hành trên ứng dụng chính thức. Bạn không cần phải lo lắng về nó.';
}

// Path: faq.values.4
class _StringsFaq0i4Vi extends _StringsFaq0i4En {
	_StringsFaq0i4Vi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get title => '5. Làm cách nào để kiếm tiền vàng?';
	@override String get value => 'Trên trang chủ, bạn có thể thấy danh sách nhiệm vụ, bấm vào để làm theo hoặc thích và nhảy vào ứng dụng tương ứng để vận hành. Hãy cẩn thận không hủy sự chú ý của bạn hoặc thích, điều này sẽ khiến phần thưởng của bạn bị hủy.';
}

// Path: faq.values.5
class _StringsFaq0i5Vi extends _StringsFaq0i5En {
	_StringsFaq0i5Vi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get title => '6. Tại sao các nhiệm vụ thất bại?';
	@override String get value => 'Điều này thường là do bạn không thực sự chú ý hoặc thích nó. Bạn nên kiểm tra tài khoản của mình trước.';
}

// Path: faq.values.6
class _StringsFaq0i6Vi extends _StringsFaq0i6En {
	_StringsFaq0i6Vi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get title => '7. Mất bao lâu để hoàn thành đơn đặt hàng của tôi?';
	@override List<String> get value => [
		'Điều này phụ thuộc vào khối lượng đơn đặt hàng của bạn. Thông thường, bạn sẽ bắt đầu nhận dịch vụ ngay sau khi đặt hàng và hoàn thành nó trong vòng 24 giờ, nhưng chúng tôi không thể cho thời gian chính xác, vì có một số lượng lớn người dùng thực hoạt động sau lưng. Được lưu ý dịch vụ vàng nhanh hơn các dịch vụ thông thường.',
		'Nhận quá nhiều lưu lượng truy cập trong một thời gian ngắn sẽ khiến tài khoản của bạn đáng ngờ, vì vậy chờ đợi một cách kiên nhẫn là cách tốt nhất.',
	];
}

// Path: faq.values.7
class _StringsFaq0i7Vi extends _StringsFaq0i7En {
	_StringsFaq0i7Vi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get title => '8. Tôi nên làm gì sau khi đặt hàng?';
	@override String get value => 'Sau khi bạn đặt hàng, hãy giữ tài khoản của bạn được tiết lộ. Không sửa đổi tên người dùng của bạn trước khi đơn đặt hàng hoàn tất.';
}

// Path: faq.values.8
class _StringsFaq0i8Vi extends _StringsFaq0i8En {
	_StringsFaq0i8Vi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get title => '9. Nếu tôi gặp vấn đề thì sao?';
	@override String get value => 'Bạn có thể liên hệ với chúng tôi thông qua phản hồi trong ứng dụng.';
}

// Path: store.tip.follow
class _StringsStoreTipFollowVi extends _StringsStoreTipFollowEn {
	_StringsStoreTipFollowVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Người theo dõi & người theo dõi cao cấp';
	@override List<String> get values => [
		'',
		'Người theo dõi',
		'Người theo dõi cao cấp',
		'Hoàn thành thời gian',
		'1-24 giờ',
		'1-4 giờ',
		'Thời gian bồi thường',
		'/',
		'Bồi thường trong vòng 7 ngày',
		'Chất lượng người theo dõi',
		'có thật',
		'Thực & hoạt động',
		'Tỷ lệ giảm',
		'8-15%',
		'0-3%',
	];
}

// Path: store.tip.like
class _StringsStoreTipLikeVi extends _StringsStoreTipLikeEn {
	_StringsStoreTipLikeVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Thích & khen ngợi nâng cao';
	@override List<String> get values => [
		'',
		'giống',
		'CAO CẤP CÔNG CỤ',
		'Hoàn thành thời gian',
		'1-24 giờ',
		'1-4 giờ',
		'Thời gian bồi thường',
		'/',
		'Bồi thường trong vòng 7 ngày',
		'Tỷ lệ giảm',
		'8-15%',
		'0-3%',
	];
}

// Path: <root>
class _StringsZhCn extends _StringsEn {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsZhCn.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.zhCn,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <zh-CN>.
	@override final TranslationMetadata<AppLocale, _StringsEn> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	@override late final _StringsZhCn _root = this; // ignore: unused_field

	// Translations
	@override late final _StringsOnlyTitleZhCn onlyTitle = _StringsOnlyTitleZhCn._(_root);
	@override late final _StringsUniversalZhCn universal = _StringsUniversalZhCn._(_root);
	@override late final _StringsTabbarZhCn tabbar = _StringsTabbarZhCn._(_root);
	@override late final _StringsTaskZhCn task = _StringsTaskZhCn._(_root);
	@override late final _StringsStoreZhCn store = _StringsStoreZhCn._(_root);
	@override late final _StringsCoinsZhCn coins = _StringsCoinsZhCn._(_root);
	@override late final _StringsLoginZhCn login = _StringsLoginZhCn._(_root);
	@override late final _StringsSettingZhCn setting = _StringsSettingZhCn._(_root);
	@override late final _StringsLanguageZhCn language = _StringsLanguageZhCn._(_root);
	@override late final _StringsDailyZhCn daily = _StringsDailyZhCn._(_root);
	@override late final _StringsWheelZhCn wheel = _StringsWheelZhCn._(_root);
	@override late final _StringsAccountZhCn account = _StringsAccountZhCn._(_root);
	@override late final _StringsOrdersZhCn orders = _StringsOrdersZhCn._(_root);
	@override late final _StringsFaqZhCn faq = _StringsFaqZhCn._(_root);
	@override late final _StringsAboutZhCn about = _StringsAboutZhCn._(_root);
	@override late final _StringsAlertZhCn alert = _StringsAlertZhCn._(_root);
	@override late final _StringsToastZhCn toast = _StringsToastZhCn._(_root);
	@override late final _StringsLocalNotificationZhCn localNotification = _StringsLocalNotificationZhCn._(_root);
}

// Path: onlyTitle
class _StringsOnlyTitleZhCn extends _StringsOnlyTitleEn {
	_StringsOnlyTitleZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get contact => '联系我们';
}

// Path: universal
class _StringsUniversalZhCn extends _StringsUniversalEn {
	_StringsUniversalZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get coins => '金币';
	@override String get requestError => '请稍后再试';
	@override String get add => '添加账号';
}

// Path: tabbar
class _StringsTabbarZhCn extends _StringsTabbarEn {
	_StringsTabbarZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get task => '首页';
	@override String get store => '商店';
	@override String get setting => '设置';
}

// Path: task
class _StringsTaskZhCn extends _StringsTaskEn {
	_StringsTaskZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '首页';
	@override String get skip => '跳过';
	@override String get follow => '关注';
	@override String get like => '点赞';
	@override String get noTask => '暂无任务';
	@override late final _StringsTaskTipZhCn tip = _StringsTaskTipZhCn._(_root);
}

// Path: store
class _StringsStoreZhCn extends _StringsStoreEn {
	_StringsStoreZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '商店';
	@override String get free => '免费';
	@override String get follow => '关注者';
	@override String get like => '点赞';
	@override String get view => '观看';
	@override String get share => '分享';
	@override String get retweet => '转推';
	@override late final _StringsStoreAdZhCn ad = _StringsStoreAdZhCn._(_root);
	@override late final _StringsStoreChangeAccountZhCn changeAccount = _StringsStoreChangeAccountZhCn._(_root);
	@override late final _StringsStoreTipZhCn tip = _StringsStoreTipZhCn._(_root);
	@override late final _StringsStoreBuyZhCn buy = _StringsStoreBuyZhCn._(_root);
	@override late final _StringsStorePurchaseZhCn purchase = _StringsStorePurchaseZhCn._(_root);
	@override late final _StringsStoreNoticeZhCn notice = _StringsStoreNoticeZhCn._(_root);
}

// Path: coins
class _StringsCoinsZhCn extends _StringsCoinsEn {
	_StringsCoinsZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get empty => '暂无历史';
}

// Path: login
class _StringsLoginZhCn extends _StringsLoginEn {
	_StringsLoginZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get confirm => '确认';
	@override String username({required Object value}) => '输入你的 ${value} 用户名';
	@override String get channel => '输入你的 Youtube 频道链接';
	@override String get publicUsername => '* 请保持你的账号是公开状态';
	@override String get publicChannel => '* 请保持你的频道是公开状态';
	@override String get add => '添加账号';
	@override String get hintUsername => '用户名';
	@override String get hintChannel => '频道链接';
}

// Path: setting
class _StringsSettingZhCn extends _StringsSettingEn {
	_StringsSettingZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '设置';
	@override String get editor => '编辑资料';
	@override String get daily => '每日签到';
	@override String get wheel => '幸运转盘';
	@override String get account => '管理账号';
	@override String get language => '语言';
	@override String get orders => '订单';
	@override String get faq => '常见问题';
	@override String get about => '关于';
	@override late final _StringsSettingShareZhCn share = _StringsSettingShareZhCn._(_root);
	@override String get rateUs => '评价我们';
}

// Path: language
class _StringsLanguageZhCn extends _StringsLanguageEn {
	_StringsLanguageZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '选择语言';
	@override String get start => '开始';
}

// Path: daily
class _StringsDailyZhCn extends _StringsDailyEn {
	_StringsDailyZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '每日签到';
	@override String get checkIn => '签到';
	@override late final _StringsDailyRulesZhCn rules = _StringsDailyRulesZhCn._(_root);
}

// Path: wheel
class _StringsWheelZhCn extends _StringsWheelEn {
	_StringsWheelZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '幸运转盘';
	@override late final _StringsWheelRulesZhCn rules = _StringsWheelRulesZhCn._(_root);
}

// Path: account
class _StringsAccountZhCn extends _StringsAccountEn {
	_StringsAccountZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '管理账号';
	@override String get add => '+ 添加账号';
	@override String get empty => '无账号';
	@override late final _StringsAccountAlertZhCn alert = _StringsAccountAlertZhCn._(_root);
}

// Path: orders
class _StringsOrdersZhCn extends _StringsOrdersEn {
	_StringsOrdersZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '订单';
	@override String get pending => '队列中';
	@override String get processing => '处理中';
	@override String get inProgress => '进行中';
	@override String get completed => '已完成';
	@override String get partial => '部分完成';
	@override String get error => '错误';
	@override String get canceled => '已取消';
	@override String get refunded => '已退款';
	@override String get empty => '暂无订单';
}

// Path: faq
class _StringsFaqZhCn extends _StringsFaqEn {
	_StringsFaqZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '常见问题';
	@override List<dynamic> get values => [
		_StringsFaq0i0ZhCn._(_root),
		_StringsFaq0i1ZhCn._(_root),
		_StringsFaq0i2ZhCn._(_root),
		_StringsFaq0i3ZhCn._(_root),
		_StringsFaq0i4ZhCn._(_root),
		_StringsFaq0i5ZhCn._(_root),
		_StringsFaq0i6ZhCn._(_root),
		_StringsFaq0i7ZhCn._(_root),
		_StringsFaq0i8ZhCn._(_root),
	];
}

// Path: about
class _StringsAboutZhCn extends _StringsAboutEn {
	_StringsAboutZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '关于';
	@override String get contact => '联系我们';
	@override String get service => '服务条款';
	@override String get policy => '隐私政策';
}

// Path: alert
class _StringsAlertZhCn extends _StringsAlertEn {
	_StringsAlertZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get ok => '好的';
	@override String get cancel => '取消';
	@override String get confirm => '确认';
}

// Path: toast
class _StringsToastZhCn extends _StringsToastEn {
	_StringsToastZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get unpurchase => '目前无法购买';
	@override String get purchasedNotFound => '不能购买当前服务';
	@override String get payment => '支付成功!';
	@override String get coinsNotEnough => '金币不足!';
	@override String get received => '接收成功!';
	@override String get adError => '观看广告太频繁，请稍后再试！';
}

// Path: localNotification
class _StringsLocalNotificationZhCn extends _StringsLocalNotificationEn {
	_StringsLocalNotificationZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get adTaskReady => '新的广告任务已就绪!';
}

// Path: task.tip
class _StringsTaskTipZhCn extends _StringsTaskTipEn {
	_StringsTaskTipZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '🎉 提示';
	@override List<dynamic> get values => [
		({required Object value}) => '1. 点击 ${value} 按钮',
		({required Object value}) => '2. 打开 ${value}',
		({required Object value}) => '3. ${value}',
		({required Object value}) => '4. 回到 ${value}',
		'5. 获得金币',
	];
	@override String get message => '如果取消关注/点赞，金币将会被移除!';
}

// Path: store.ad
class _StringsStoreAdZhCn extends _StringsStoreAdEn {
	_StringsStoreAdZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '广告奖励';
	@override String get watch => '观看广告';
}

// Path: store.changeAccount
class _StringsStoreChangeAccountZhCn extends _StringsStoreChangeAccountEn {
	_StringsStoreChangeAccountZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '修改账号';
	@override String get add => '添加账号';
}

// Path: store.tip
class _StringsStoreTipZhCn extends _StringsStoreTipEn {
	_StringsStoreTipZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override late final _StringsStoreTipFollowZhCn follow = _StringsStoreTipFollowZhCn._(_root);
	@override late final _StringsStoreTipLikeZhCn like = _StringsStoreTipLikeZhCn._(_root);
}

// Path: store.buy
class _StringsStoreBuyZhCn extends _StringsStoreBuyEn {
	_StringsStoreBuyZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get follow => '购买关注者';
	@override String get like => '购买点赞';
	@override String get view => '购买观看';
	@override String get share => '购买分享';
	@override String get retweet => '购买转推';
	@override String get accountPublic => '* 请保持你的账号是公开状态';
	@override String get channelPublic => '* 请保持你的频道是公开状态';
	@override String get tiktok => '你的 TikTok 视频链接';
	@override String get twitter => '你的 Twitter 推文链接';
	@override String get instagram => '你的 Instagram 帖子链接';
	@override String get youtube => '你的 Youtube 频道链接';
	@override String get pay => '支付';
}

// Path: store.purchase
class _StringsStorePurchaseZhCn extends _StringsStorePurchaseEn {
	_StringsStorePurchaseZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '支付成功';
	@override String get message => '请等待订单完成!';
}

// Path: store.notice
class _StringsStoreNoticeZhCn extends _StringsStoreNoticeEn {
	_StringsStoreNoticeZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String message({required Object value}) => '要获得 ${value} 个免费关注者，请先打开 app 通知。';
	@override String get turnOn => '打开';
}

// Path: setting.share
class _StringsSettingShareZhCn extends _StringsSettingShareEn {
	_StringsSettingShareZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '分享 app';
	@override String message({required Object value}) => '我发现了一个可以获得免费的 Tiktok 粉丝和点赞的宝藏应用，通过下面的链接安装，我们都会得到 ${value} 金币!';
}

// Path: daily.rules
class _StringsDailyRulesZhCn extends _StringsDailyRulesEn {
	_StringsDailyRulesZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '规则';
	@override List<String> get values => [
		'每 24 小时可以签到一次;',
		'签到中断后将重新开始。',
	];
}

// Path: wheel.rules
class _StringsWheelRulesZhCn extends _StringsWheelRulesEn {
	_StringsWheelRulesZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '规则';
	@override List<dynamic> get values => [
		({required Object value}) => '每次抽奖将花费 ${value} 金币;',
		'抽奖次数不限。',
	];
}

// Path: account.alert
class _StringsAccountAlertZhCn extends _StringsAccountAlertEn {
	_StringsAccountAlertZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '删除账号';
	@override String get message => '删除后，你将无法使用该账号进行相关操作。';
}

// Path: faq.values.0
class _StringsFaq0i0ZhCn extends _StringsFaq0i0En {
	_StringsFaq0i0ZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '1. 如何开始？';
	@override String get value => '只要按照页面提示添加你的平台用户名即可，不需要密码，每个平台都有对应的提示。';
}

// Path: faq.values.1
class _StringsFaq0i1ZhCn extends _StringsFaq0i1En {
	_StringsFaq0i1ZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '2. 我使用它是否安全？';
	@override String get value => '当然是安全的，我们不需要你的密码，我们也无法保存你的社交应用数据，因为是跳转到官方应用来关注或做其他事情。';
}

// Path: faq.values.2
class _StringsFaq0i2ZhCn extends _StringsFaq0i2En {
	_StringsFaq0i2ZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '3. 这一切是如何工作的？';
	@override String get value => '工作方式很简单：你的个人资料/视频显示在我们的社区中，用户根据你的个人资料的内容自由决定他们是否要关注/喜欢你。作为喜欢/关注的交换，他们会收到金币，可以用来获得关注者/喜欢者。';
}

// Path: faq.values.3
class _StringsFaq0i3ZhCn extends _StringsFaq0i3En {
	_StringsFaq0i3ZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '4. 关注和点赞是真实的吗？';
	@override String get value => '当然是真实的，当你购买相关服务时，背后有大量的真实用户为你提供服务，而且是在官方的 app 上操作，你不需要担心。';
}

// Path: faq.values.4
class _StringsFaq0i4ZhCn extends _StringsFaq0i4En {
	_StringsFaq0i4ZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '5. 我如何赚取金币？';
	@override String get value => '在首页，你可以看到任务列表，点击关注或喜欢，跳转到相应的 app 进行操作，请注意不要取消关注或喜欢，这将导致你的奖励被取消。';
}

// Path: faq.values.5
class _StringsFaq0i5ZhCn extends _StringsFaq0i5En {
	_StringsFaq0i5ZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '6. 为什么任务有时会失败？';
	@override String get value => '通常这是因为你没有真正关注或喜欢，你应该先检查你的账户。';
}

// Path: faq.values.6
class _StringsFaq0i6ZhCn extends _StringsFaq0i6En {
	_StringsFaq0i6ZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '7. 我的订单需要多长时间才能完成？';
	@override List<String> get value => [
		'这取决于你的订单量，通常情况下，你会在下单后立即开始获得服务，并在 24h 内完成，但我们无法给出准确时间，因为有大量的真实用户在背后操作，需要注意的是，GOLDEN 服务比普通服务更迅速。',
		'你在短时间内获得太多的流量会使你的账户变得可疑，所以耐心等待是最好的方法。',
	];
}

// Path: faq.values.7
class _StringsFaq0i7ZhCn extends _StringsFaq0i7En {
	_StringsFaq0i7ZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '8. 下订单后，我应该做什么？';
	@override String get value => '下订单后，请保持你的账户公开，在订单完成前不要修改你的用户名。';
}

// Path: faq.values.8
class _StringsFaq0i8ZhCn extends _StringsFaq0i8En {
	_StringsFaq0i8ZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '9. 如果我有问题怎么办？';
	@override String get value => '你可以通过 app 中的反馈与我们联系。';
}

// Path: store.tip.follow
class _StringsStoreTipFollowZhCn extends _StringsStoreTipFollowEn {
	_StringsStoreTipFollowZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '关注者 & 高级关注者';
	@override List<String> get values => [
		'',
		'关注者',
		'高级关注者',
		'完成时间',
		'1-24 小时',
		'1-4 小时',
		'补偿时间',
		'/',
		'7天内补偿',
		'关注者质量',
		'真实的',
		'真实的 & 活跃的',
		'掉落率',
		'8-15%',
		'0-3%',
	];
}

// Path: store.tip.like
class _StringsStoreTipLikeZhCn extends _StringsStoreTipLikeEn {
	_StringsStoreTipLikeZhCn._(_StringsZhCn root) : this._root = root, super._(root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '点赞 & 高级点赞';
	@override List<String> get values => [
		'',
		'点赞',
		'高级点赞',
		'完成时间',
		'1-24 小时',
		'1-4 小时',
		'补偿时间',
		'/',
		'7天内补偿',
		'掉落率',
		'8-15%',
		'0-3%',
	];
}

// Path: <root>
class _StringsZhTw extends _StringsEn {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsZhTw.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.zhTw,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <zh-TW>.
	@override final TranslationMetadata<AppLocale, _StringsEn> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	@override late final _StringsZhTw _root = this; // ignore: unused_field

	// Translations
	@override late final _StringsOnlyTitleZhTw onlyTitle = _StringsOnlyTitleZhTw._(_root);
	@override late final _StringsUniversalZhTw universal = _StringsUniversalZhTw._(_root);
	@override late final _StringsTabbarZhTw tabbar = _StringsTabbarZhTw._(_root);
	@override late final _StringsTaskZhTw task = _StringsTaskZhTw._(_root);
	@override late final _StringsStoreZhTw store = _StringsStoreZhTw._(_root);
	@override late final _StringsCoinsZhTw coins = _StringsCoinsZhTw._(_root);
	@override late final _StringsLoginZhTw login = _StringsLoginZhTw._(_root);
	@override late final _StringsSettingZhTw setting = _StringsSettingZhTw._(_root);
	@override late final _StringsLanguageZhTw language = _StringsLanguageZhTw._(_root);
	@override late final _StringsDailyZhTw daily = _StringsDailyZhTw._(_root);
	@override late final _StringsWheelZhTw wheel = _StringsWheelZhTw._(_root);
	@override late final _StringsAccountZhTw account = _StringsAccountZhTw._(_root);
	@override late final _StringsOrdersZhTw orders = _StringsOrdersZhTw._(_root);
	@override late final _StringsFaqZhTw faq = _StringsFaqZhTw._(_root);
	@override late final _StringsAboutZhTw about = _StringsAboutZhTw._(_root);
	@override late final _StringsAlertZhTw alert = _StringsAlertZhTw._(_root);
	@override late final _StringsToastZhTw toast = _StringsToastZhTw._(_root);
	@override late final _StringsLocalNotificationZhTw localNotification = _StringsLocalNotificationZhTw._(_root);
}

// Path: onlyTitle
class _StringsOnlyTitleZhTw extends _StringsOnlyTitleEn {
	_StringsOnlyTitleZhTw._(_StringsZhTw root) : this._root = root, super._(root);

	@override final _StringsZhTw _root; // ignore: unused_field

	// Translations
	@override String get contact => '聯繫我們';
}

// Path: universal
class _StringsUniversalZhTw extends _StringsUniversalEn {
	_StringsUniversalZhTw._(_StringsZhTw root) : this._root = root, super._(root);

	@override final _StringsZhTw _root; // ignore: unused_field

	// Translations
	@override String get coins => '金幣';
	@override String get requestError => '請稍後再試';
	@override String get add => '添加賬號';
}

// Path: tabbar
class _StringsTabbarZhTw extends _StringsTabbarEn {
	_StringsTabbarZhTw._(_StringsZhTw root) : this._root = root, super._(root);

	@override final _StringsZhTw _root; // ignore: unused_field

	// Translations
	@override String get task => '首頁';
	@override String get store => '商店';
	@override String get setting => '設置';
}

// Path: task
class _StringsTaskZhTw extends _StringsTaskEn {
	_StringsTaskZhTw._(_StringsZhTw root) : this._root = root, super._(root);

	@override final _StringsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '首頁';
	@override String get skip => '跳過';
	@override String get follow => '關注';
	@override String get like => '點贊';
	@override String get noTask => '暫無任務';
	@override late final _StringsTaskTipZhTw tip = _StringsTaskTipZhTw._(_root);
}

// Path: store
class _StringsStoreZhTw extends _StringsStoreEn {
	_StringsStoreZhTw._(_StringsZhTw root) : this._root = root, super._(root);

	@override final _StringsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '商店';
	@override String get free => '免費';
	@override String get follow => '關注者';
	@override String get like => '點贊';
	@override String get view => '觀看';
	@override String get share => '分享';
	@override String get retweet => '轉推';
	@override late final _StringsStoreAdZhTw ad = _StringsStoreAdZhTw._(_root);
	@override late final _StringsStoreChangeAccountZhTw changeAccount = _StringsStoreChangeAccountZhTw._(_root);
	@override late final _StringsStoreTipZhTw tip = _StringsStoreTipZhTw._(_root);
	@override late final _StringsStoreBuyZhTw buy = _StringsStoreBuyZhTw._(_root);
	@override late final _StringsStorePurchaseZhTw purchase = _StringsStorePurchaseZhTw._(_root);
	@override late final _StringsStoreNoticeZhTw notice = _StringsStoreNoticeZhTw._(_root);
}

// Path: coins
class _StringsCoinsZhTw extends _StringsCoinsEn {
	_StringsCoinsZhTw._(_StringsZhTw root) : this._root = root, super._(root);

	@override final _StringsZhTw _root; // ignore: unused_field

	// Translations
	@override String get empty => '暫無歷史';
}

// Path: login
class _StringsLoginZhTw extends _StringsLoginEn {
	_StringsLoginZhTw._(_StringsZhTw root) : this._root = root, super._(root);

	@override final _StringsZhTw _root; // ignore: unused_field

	// Translations
	@override String get confirm => '確認';
	@override String username({required Object value}) => '輸入你的 ${value} 用戶名';
	@override String get channel => '輸入你的 Youtube 頻道鏈接';
	@override String get publicUsername => '* 請保持你的賬號是公開狀態';
	@override String get publicChannel => '* 請保持你的頻道是公開狀態';
	@override String get add => '添加賬號';
	@override String get hintUsername => '用戶名';
	@override String get hintChannel => '頻道鏈接';
}

// Path: setting
class _StringsSettingZhTw extends _StringsSettingEn {
	_StringsSettingZhTw._(_StringsZhTw root) : this._root = root, super._(root);

	@override final _StringsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '設置';
	@override String get editor => '編輯資料';
	@override String get daily => '每日簽到';
	@override String get wheel => '幸運轉盤';
	@override String get account => '管理賬號';
	@override String get language => '語言';
	@override String get orders => '訂單';
	@override String get faq => '常見問題';
	@override String get about => '關於';
	@override late final _StringsSettingShareZhTw share = _StringsSettingShareZhTw._(_root);
	@override String get rateUs => '評價我們';
}

// Path: language
class _StringsLanguageZhTw extends _StringsLanguageEn {
	_StringsLanguageZhTw._(_StringsZhTw root) : this._root = root, super._(root);

	@override final _StringsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '選擇語言';
	@override String get start => '開始';
}

// Path: daily
class _StringsDailyZhTw extends _StringsDailyEn {
	_StringsDailyZhTw._(_StringsZhTw root) : this._root = root, super._(root);

	@override final _StringsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '每日簽到';
	@override String get checkIn => '簽到';
	@override late final _StringsDailyRulesZhTw rules = _StringsDailyRulesZhTw._(_root);
}

// Path: wheel
class _StringsWheelZhTw extends _StringsWheelEn {
	_StringsWheelZhTw._(_StringsZhTw root) : this._root = root, super._(root);

	@override final _StringsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '幸運轉盤';
	@override late final _StringsWheelRulesZhTw rules = _StringsWheelRulesZhTw._(_root);
}

// Path: account
class _StringsAccountZhTw extends _StringsAccountEn {
	_StringsAccountZhTw._(_StringsZhTw root) : this._root = root, super._(root);

	@override final _StringsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '管理賬號';
	@override String get add => '+ 添加賬號';
	@override String get empty => '無賬號';
	@override late final _StringsAccountAlertZhTw alert = _StringsAccountAlertZhTw._(_root);
}

// Path: orders
class _StringsOrdersZhTw extends _StringsOrdersEn {
	_StringsOrdersZhTw._(_StringsZhTw root) : this._root = root, super._(root);

	@override final _StringsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '訂單';
	@override String get pending => '隊列中';
	@override String get processing => '處理中';
	@override String get inProgress => '進行中';
	@override String get completed => '已完成';
	@override String get partial => '部分完成';
	@override String get error => '錯誤';
	@override String get canceled => '已取消';
	@override String get refunded => '已退款';
	@override String get empty => '暫無訂單';
}

// Path: faq
class _StringsFaqZhTw extends _StringsFaqEn {
	_StringsFaqZhTw._(_StringsZhTw root) : this._root = root, super._(root);

	@override final _StringsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '常見問題';
	@override List<dynamic> get values => [
		_StringsFaq0i0ZhTw._(_root),
		_StringsFaq0i1ZhTw._(_root),
		_StringsFaq0i2ZhTw._(_root),
		_StringsFaq0i3ZhTw._(_root),
		_StringsFaq0i4ZhTw._(_root),
		_StringsFaq0i5ZhTw._(_root),
		_StringsFaq0i6ZhTw._(_root),
		_StringsFaq0i7ZhTw._(_root),
		_StringsFaq0i8ZhTw._(_root),
	];
}

// Path: about
class _StringsAboutZhTw extends _StringsAboutEn {
	_StringsAboutZhTw._(_StringsZhTw root) : this._root = root, super._(root);

	@override final _StringsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '關於';
	@override String get contact => '聯繫我們';
	@override String get service => '服務條款';
	@override String get policy => '隱私政策';
}

// Path: alert
class _StringsAlertZhTw extends _StringsAlertEn {
	_StringsAlertZhTw._(_StringsZhTw root) : this._root = root, super._(root);

	@override final _StringsZhTw _root; // ignore: unused_field

	// Translations
	@override String get ok => '好的';
	@override String get cancel => '取消';
	@override String get confirm => '確認';
}

// Path: toast
class _StringsToastZhTw extends _StringsToastEn {
	_StringsToastZhTw._(_StringsZhTw root) : this._root = root, super._(root);

	@override final _StringsZhTw _root; // ignore: unused_field

	// Translations
	@override String get unpurchase => '目前無法購買';
	@override String get purchasedNotFound => '不能購買當前服務';
	@override String get payment => '支付成功!';
	@override String get coinsNotEnough => '金幣不足!';
	@override String get received => '接收成功!';
	@override String get adError => '觀看廣告太頻繁，請稍後再試！';
}

// Path: localNotification
class _StringsLocalNotificationZhTw extends _StringsLocalNotificationEn {
	_StringsLocalNotificationZhTw._(_StringsZhTw root) : this._root = root, super._(root);

	@override final _StringsZhTw _root; // ignore: unused_field

	// Translations
	@override String get adTaskReady => '新的廣告任務已就緒!';
}

// Path: task.tip
class _StringsTaskTipZhTw extends _StringsTaskTipEn {
	_StringsTaskTipZhTw._(_StringsZhTw root) : this._root = root, super._(root);

	@override final _StringsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '🎉 提示';
	@override List<dynamic> get values => [
		({required Object value}) => '1. 點擊 ${value} 按鈕',
		({required Object value}) => '2. 打開 ${value}',
		({required Object value}) => '3. ${value}',
		({required Object value}) => '4. 回到 ${value}',
		'5. 獲得金幣',
	];
	@override String get message => '如果取消關注/點贊，金幣將會被移除!';
}

// Path: store.ad
class _StringsStoreAdZhTw extends _StringsStoreAdEn {
	_StringsStoreAdZhTw._(_StringsZhTw root) : this._root = root, super._(root);

	@override final _StringsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '廣告獎勵';
	@override String get watch => '觀看廣告';
}

// Path: store.changeAccount
class _StringsStoreChangeAccountZhTw extends _StringsStoreChangeAccountEn {
	_StringsStoreChangeAccountZhTw._(_StringsZhTw root) : this._root = root, super._(root);

	@override final _StringsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '修改賬號';
	@override String get add => '添加賬號';
}

// Path: store.tip
class _StringsStoreTipZhTw extends _StringsStoreTipEn {
	_StringsStoreTipZhTw._(_StringsZhTw root) : this._root = root, super._(root);

	@override final _StringsZhTw _root; // ignore: unused_field

	// Translations
	@override late final _StringsStoreTipFollowZhTw follow = _StringsStoreTipFollowZhTw._(_root);
	@override late final _StringsStoreTipLikeZhTw like = _StringsStoreTipLikeZhTw._(_root);
}

// Path: store.buy
class _StringsStoreBuyZhTw extends _StringsStoreBuyEn {
	_StringsStoreBuyZhTw._(_StringsZhTw root) : this._root = root, super._(root);

	@override final _StringsZhTw _root; // ignore: unused_field

	// Translations
	@override String get follow => '購買關注者';
	@override String get like => '購買點贊';
	@override String get view => '購買觀看';
	@override String get share => '購買分享';
	@override String get retweet => '購買轉推';
	@override String get accountPublic => '* 請保持你的賬號是公開狀態';
	@override String get channelPublic => '* 請保持你的頻道是公開狀態';
	@override String get tiktok => '你的 TikTok 視頻鏈接';
	@override String get twitter => '你的 Twitter 推文鏈接';
	@override String get instagram => '你的 Instagram 帖子鏈接';
	@override String get youtube => '你的 Youtube 頻道鏈接';
	@override String get pay => '支付';
}

// Path: store.purchase
class _StringsStorePurchaseZhTw extends _StringsStorePurchaseEn {
	_StringsStorePurchaseZhTw._(_StringsZhTw root) : this._root = root, super._(root);

	@override final _StringsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '支付成功';
	@override String get message => '請等待訂單完成!';
}

// Path: store.notice
class _StringsStoreNoticeZhTw extends _StringsStoreNoticeEn {
	_StringsStoreNoticeZhTw._(_StringsZhTw root) : this._root = root, super._(root);

	@override final _StringsZhTw _root; // ignore: unused_field

	// Translations
	@override String message({required Object value}) => '要獲得 ${value} 個免費關注者，請先打開 app 通知。';
	@override String get turnOn => '打開';
}

// Path: setting.share
class _StringsSettingShareZhTw extends _StringsSettingShareEn {
	_StringsSettingShareZhTw._(_StringsZhTw root) : this._root = root, super._(root);

	@override final _StringsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '分享 app';
	@override String message({required Object value}) => '我發現了一個可以獲得免費的 Tiktok 粉絲和點讚的寶藏應用，通過下面的鏈接安裝，我們都會得到 ${value} 金幣!';
}

// Path: daily.rules
class _StringsDailyRulesZhTw extends _StringsDailyRulesEn {
	_StringsDailyRulesZhTw._(_StringsZhTw root) : this._root = root, super._(root);

	@override final _StringsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '規則';
	@override List<String> get values => [
		'每 24 小時可以簽到一次;',
		'簽到中斷後將重新開始。',
	];
}

// Path: wheel.rules
class _StringsWheelRulesZhTw extends _StringsWheelRulesEn {
	_StringsWheelRulesZhTw._(_StringsZhTw root) : this._root = root, super._(root);

	@override final _StringsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '規則';
	@override List<dynamic> get values => [
		({required Object value}) => '每次抽獎將花費 ${value} 金幣;',
		'抽獎次數不限。',
	];
}

// Path: account.alert
class _StringsAccountAlertZhTw extends _StringsAccountAlertEn {
	_StringsAccountAlertZhTw._(_StringsZhTw root) : this._root = root, super._(root);

	@override final _StringsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '刪除賬號';
	@override String get message => '刪除後，你將無法使用該賬號進行相關操作。';
}

// Path: faq.values.0
class _StringsFaq0i0ZhTw extends _StringsFaq0i0En {
	_StringsFaq0i0ZhTw._(_StringsZhTw root) : this._root = root, super._(root);

	@override final _StringsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '1. 如何開始？';
	@override String get value => '只要按照頁面提示添加你的平台用戶名即可，不需要密碼，每個平台都有對應的提示。';
}

// Path: faq.values.1
class _StringsFaq0i1ZhTw extends _StringsFaq0i1En {
	_StringsFaq0i1ZhTw._(_StringsZhTw root) : this._root = root, super._(root);

	@override final _StringsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '2. 我使用它是否安全？';
	@override String get value => '當然是安全的，我們不需要你的密碼，我們也無法保存你的社交應用數據，因為是跳轉到官方應用來關注或做其他事情。';
}

// Path: faq.values.2
class _StringsFaq0i2ZhTw extends _StringsFaq0i2En {
	_StringsFaq0i2ZhTw._(_StringsZhTw root) : this._root = root, super._(root);

	@override final _StringsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '3. 這一切是如何工作的？';
	@override String get value => '工作方式很簡單：你的個人資料/視頻顯示在我們的社區中，用戶根據你的個人資料的內容自由決定他們是否要關注/喜歡你。作為喜歡/關注的交換，他們會收到金幣，可以用來獲得關注者/喜歡者。';
}

// Path: faq.values.3
class _StringsFaq0i3ZhTw extends _StringsFaq0i3En {
	_StringsFaq0i3ZhTw._(_StringsZhTw root) : this._root = root, super._(root);

	@override final _StringsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '4. 關注和點贊是真實的嗎？';
	@override String get value => '當然是真實的，當你購買相關服務時，背後有大量的真實用戶為你提供服務，而且是在官方的 app 上操作，你不需要擔心。';
}

// Path: faq.values.4
class _StringsFaq0i4ZhTw extends _StringsFaq0i4En {
	_StringsFaq0i4ZhTw._(_StringsZhTw root) : this._root = root, super._(root);

	@override final _StringsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '5. 我如何賺取金幣？';
	@override String get value => '在首頁，你可以看到任務列表，點擊關注或喜歡，跳轉到相應的 app 進行操作，請注意不要取消關注或喜歡，這將導致你的獎勵被取消。';
}

// Path: faq.values.5
class _StringsFaq0i5ZhTw extends _StringsFaq0i5En {
	_StringsFaq0i5ZhTw._(_StringsZhTw root) : this._root = root, super._(root);

	@override final _StringsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '6. 為什麼任務有時會失敗？';
	@override String get value => '通常這是因為你沒有真正關注或喜歡，你應該先檢查你的賬戶。';
}

// Path: faq.values.6
class _StringsFaq0i6ZhTw extends _StringsFaq0i6En {
	_StringsFaq0i6ZhTw._(_StringsZhTw root) : this._root = root, super._(root);

	@override final _StringsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '7. 我的訂單需要多長時間才能完成？';
	@override List<String> get value => [
		'這取決於你的訂單量，通常情況下，你會在下單後立即開始獲得服務，並在 24h 內完成，但我們無法給出準確時間，因為有大量的真實用戶在背後操作，需要注意的是，GOLDEN 服務比普通服務更迅速。',
		'你在短時間內獲得太多的流量會使你的賬戶變得可疑，所以耐心等待是最好的方法。',
	];
}

// Path: faq.values.7
class _StringsFaq0i7ZhTw extends _StringsFaq0i7En {
	_StringsFaq0i7ZhTw._(_StringsZhTw root) : this._root = root, super._(root);

	@override final _StringsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '8. 下訂單後，我應該做什麼？';
	@override String get value => '下訂單後，請保持你的賬戶公開，在訂單完成前不要修改你的用戶名。';
}

// Path: faq.values.8
class _StringsFaq0i8ZhTw extends _StringsFaq0i8En {
	_StringsFaq0i8ZhTw._(_StringsZhTw root) : this._root = root, super._(root);

	@override final _StringsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '9. 如果我有問題怎麼辦？';
	@override String get value => '你可以通過 app 中的反饋與我們聯繫。';
}

// Path: store.tip.follow
class _StringsStoreTipFollowZhTw extends _StringsStoreTipFollowEn {
	_StringsStoreTipFollowZhTw._(_StringsZhTw root) : this._root = root, super._(root);

	@override final _StringsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '關注者 & 高級關注者';
	@override List<String> get values => [
		'',
		'關注者',
		'高級關注者',
		'完成時間',
		'1-24 小時',
		'1-4 小時',
		'補償時間',
		'/',
		'7天內補償',
		'關注者質量',
		'真實的',
		'真實的 & 活躍的',
		'掉落率',
		'8-15%',
		'0-3%',
	];
}

// Path: store.tip.like
class _StringsStoreTipLikeZhTw extends _StringsStoreTipLikeEn {
	_StringsStoreTipLikeZhTw._(_StringsZhTw root) : this._root = root, super._(root);

	@override final _StringsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '點贊 & 高級點贊';
	@override List<String> get values => [
		'',
		'點贊',
		'高級點贊',
		'完成時間',
		'1-24 小時',
		'1-4 小時',
		'補償時間',
		'/',
		'7天內補償',
		'掉落率',
		'8-15%',
		'0-3%',
	];
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on _StringsEn {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'onlyTitle.contact': return 'Contact us';
			case 'universal.coins': return 'Coins';
			case 'universal.requestError': return 'Please try again later';
			case 'universal.add': return 'Add Account';
			case 'tabbar.task': return 'Home';
			case 'tabbar.store': return 'Store';
			case 'tabbar.setting': return 'Settings';
			case 'task.title': return 'Home';
			case 'task.skip': return 'Skip';
			case 'task.follow': return 'Follow';
			case 'task.like': return 'Like';
			case 'task.noTask': return 'No Tasks';
			case 'task.tip.title': return '🎉  Tips';
			case 'task.tip.values.0': return ({required Object value}) => '1. Click ${value} button';
			case 'task.tip.values.1': return ({required Object value}) => '2. Open ${value}';
			case 'task.tip.values.2': return ({required Object value}) => '3. Give ${value}';
			case 'task.tip.values.3': return ({required Object value}) => '4. Back to ${value}';
			case 'task.tip.values.4': return '5. Get coins';
			case 'task.tip.message': return 'If unfollow/unlike, coins will be removed!';
			case 'store.title': return 'Store';
			case 'store.free': return 'Free';
			case 'store.follow': return 'Followers';
			case 'store.like': return 'Likes';
			case 'store.view': return 'Views';
			case 'store.share': return 'Shares';
			case 'store.retweet': return 'Retweets';
			case 'store.ad.title': return 'AD Bouns';
			case 'store.ad.watch': return 'Watch AD';
			case 'store.changeAccount.title': return 'Change Account';
			case 'store.changeAccount.add': return 'Add Account';
			case 'store.tip.follow.title': return 'Followers & Golden Followers';
			case 'store.tip.follow.values.0': return '';
			case 'store.tip.follow.values.1': return 'Followers';
			case 'store.tip.follow.values.2': return 'Golden Followers';
			case 'store.tip.follow.values.3': return 'Completion Time';
			case 'store.tip.follow.values.4': return '1-24 hours';
			case 'store.tip.follow.values.5': return '1-4 hours';
			case 'store.tip.follow.values.6': return 'Followers Quality';
			case 'store.tip.follow.values.7': return 'Real';
			case 'store.tip.follow.values.8': return 'Real & Active';
			case 'store.tip.follow.values.9': return 'Followers Drop Rate';
			case 'store.tip.follow.values.10': return '8-15%';
			case 'store.tip.follow.values.11': return '0-3%';
			case 'store.tip.follow.values.12': return 'Compensation Time';
			case 'store.tip.follow.values.13': return '/';
			case 'store.tip.follow.values.14': return 'Compensate within 7 days';
			case 'store.tip.like.title': return 'Likes & Golden Likes';
			case 'store.tip.like.values.0': return '';
			case 'store.tip.like.values.1': return 'Likes';
			case 'store.tip.like.values.2': return 'Golden Likes';
			case 'store.tip.like.values.3': return 'Completion Time';
			case 'store.tip.like.values.4': return '1-24 hours';
			case 'store.tip.like.values.5': return '1-4 hours';
			case 'store.tip.like.values.6': return 'Likes Drop Rate';
			case 'store.tip.like.values.7': return '8-15%';
			case 'store.tip.like.values.8': return '0-3%';
			case 'store.tip.like.values.9': return 'Compensation Time';
			case 'store.tip.like.values.10': return '/';
			case 'store.tip.like.values.11': return 'Compensate within 7 days';
			case 'store.buy.follow': return 'Buy Followers';
			case 'store.buy.like': return 'Buy Likes';
			case 'store.buy.view': return 'Buy Views';
			case 'store.buy.share': return 'Buy Shares';
			case 'store.buy.retweet': return 'Buy Retweets';
			case 'store.buy.accountPublic': return '* Please keep your account public';
			case 'store.buy.channelPublic': return '* Please keep your channel public';
			case 'store.buy.tiktok': return 'Your TikTok video link';
			case 'store.buy.twitter': return 'Your Twitter tweet link';
			case 'store.buy.instagram': return 'Your Instagram post link';
			case 'store.buy.youtube': return 'Your Youtube channel link';
			case 'store.buy.pay': return 'Pay';
			case 'store.purchase.title': return 'Purchase Success';
			case 'store.purchase.message': return 'Please wait for the order completion!';
			case 'store.notice.message': return ({required Object value}) => 'To receive ${value} free followers, please turn on the notifications.';
			case 'store.notice.turnOn': return 'Turn On';
			case 'coins.empty': return 'No History';
			case 'login.confirm': return 'Confirm';
			case 'login.username': return ({required Object value}) => 'Enter your ${value} username';
			case 'login.channel': return 'Enter your Youtube channel link';
			case 'login.publicUsername': return '* Please keep your account public';
			case 'login.publicChannel': return '* Please keep your channel public';
			case 'login.add': return 'Add Account';
			case 'login.hintUsername': return 'username';
			case 'login.hintChannel': return 'channel link';
			case 'setting.title': return 'Settings';
			case 'setting.editor': return 'Edit Profile';
			case 'setting.daily': return 'Daily Check';
			case 'setting.wheel': return 'Lucky Coins';
			case 'setting.account': return 'Manage account';
			case 'setting.language': return 'Language';
			case 'setting.orders': return 'Orders';
			case 'setting.faq': return 'FAQ';
			case 'setting.about': return 'About';
			case 'setting.share.title': return 'Share app';
			case 'setting.share.message': return ({required Object value}) => 'I found a treasure app that can get free tiktok followers & likes, install the app via the link below, we will both get ${value} coins!';
			case 'setting.rateUs': return 'Rate us';
			case 'language.title': return 'Language';
			case 'language.start': return 'Start';
			case 'daily.title': return 'Daily Check';
			case 'daily.checkIn': return 'Check In';
			case 'daily.rules.title': return 'Rules';
			case 'daily.rules.values.0': return 'Check-in once every 24 hours;';
			case 'daily.rules.values.1': return 'Interruptions check-in will be recalculated;';
			case 'wheel.title': return 'Lucky Coins';
			case 'wheel.rules.title': return 'Rules';
			case 'wheel.rules.values.0': return ({required Object value}) => 'Each draw consumes ${value} coins;';
			case 'wheel.rules.values.1': return 'Unlimited number of draws.';
			case 'account.title': return 'Manage account';
			case 'account.add': return '+ Add Account';
			case 'account.empty': return 'No Account';
			case 'account.alert.title': return 'Delete Account';
			case 'account.alert.message': return 'After deletion, you will not be able to use the account for related operations.';
			case 'orders.title': return 'Orders';
			case 'orders.pending': return 'Pending';
			case 'orders.processing': return 'Processing';
			case 'orders.inProgress': return 'In Progress';
			case 'orders.completed': return 'Completed';
			case 'orders.partial': return 'Partial';
			case 'orders.error': return 'Error';
			case 'orders.canceled': return 'Canceled';
			case 'orders.refunded': return 'Refunded';
			case 'orders.empty': return 'No Orders';
			case 'faq.title': return 'FAQ';
			case 'faq.values.0.title': return '1. How to get started?';
			case 'faq.values.0.value': return 'Just follow the page prompts to add your platform username, no password required, each platform has a corresponding prompt.';
			case 'faq.values.1.title': return '2. Is it safe for me to use?';
			case 'faq.values.1.value': return 'Of course yes, we don\'t need your password, and we can\'t save your social app data because users are jumping to the official app to follow or do other things.';
			case 'faq.values.2.title': return '3. How does all this work?';
			case 'faq.values.2.value': return 'The way it works is simple: your profile/videos are shown in our community that users freely decide if they want to follow/like you based on the content of your profile. In exchange of a like/follow they receive virtual coins that they can use to get followers/likes.';
			case 'faq.values.3.title': return '4. Followers and likes are real?';
			case 'faq.values.3.value': return 'Of course, when you buy the relevant services, there are a large number of real users behind the service for you, and are operating on the official app, which you do not need to worry about.';
			case 'faq.values.4.title': return '5. How do I earn coins?';
			case 'faq.values.4.value': return 'On the earn page, you can see the current list of tasks, click follow or like to jump to the corresponding app for action, please be careful not to cancel the follow or like, it will cause your rewards to be cancelled.';
			case 'faq.values.5.title': return '6. Why did the task fail?';
			case 'faq.values.5.value': return 'Usually it\'s because you don\'t really follow or like, you should check your account.';
			case 'faq.values.6.title': return '7. How long will it take for my order to be completed?';
			case 'faq.values.6.value.0': return 'It depends on the volume of your order, normally, you will start getting the service immediately after placing the order and finish it within 24h, but it is impossible to give an exact time because of the large number of real users operating behind the scenes, it should be noted that the GOLDEN service is more rapid than the regular service.';
			case 'faq.values.6.value.1': return 'You get too much traffic in a short period of time will cause your account to become suspicious, so waiting patiently is the best way.';
			case 'faq.values.7.title': return '8. What should I do after I place an order?';
			case 'faq.values.7.value': return 'Please keep your account public after placing your order, and do not modify your username until your order is complete.';
			case 'faq.values.8.title': return '9. What if I have a problem?';
			case 'faq.values.8.value': return 'You can contact us through the feedback in the app.';
			case 'about.title': return 'About';
			case 'about.contact': return 'Contact us';
			case 'about.service': return 'Teams of Service';
			case 'about.policy': return 'Privacy Policy';
			case 'alert.ok': return 'OK';
			case 'alert.cancel': return 'Cancel';
			case 'alert.confirm': return 'Confirm';
			case 'toast.unpurchase': return 'Currently unavailable for purchas';
			case 'toast.purchasedNotFound': return 'The current service cannot be purchased';
			case 'toast.payment': return 'Payment successful';
			case 'toast.coinsNotEnough': return 'Coins not enough!';
			case 'toast.received': return 'Received successfully!';
			case 'toast.adError': return 'Watching ads too often, please try again later!';
			case 'localNotification.adTaskReady': return 'A new advertising task is ready!';
			default: return null;
		}
	}
}

extension on _StringsAr {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'onlyTitle.contact': return 'اتصل بنا';
			case 'universal.coins': return 'ذهب';
			case 'universal.requestError': return 'الرجاء معاودة المحاولة في وقت لاحق';
			case 'universal.add': return 'إنشاء حساب';
			case 'tabbar.task': return 'الصفحة الأمامية';
			case 'tabbar.store': return 'متجر';
			case 'tabbar.setting': return 'اقامة';
			case 'task.title': return 'الصفحة الأمامية';
			case 'task.skip': return 'القفز فوق';
			case 'task.follow': return 'قم بالتركيز على';
			case 'task.like': return 'مثل';
			case 'task.noTask': return 'لا مهمة';
			case 'task.tip.title': return 'مستعجل';
			case 'task.tip.values.0': return ({required Object value}) => '1. انقر فوق الزر ${value}';
			case 'task.tip.values.1': return ({required Object value}) => '2. فتح ${value}';
			case 'task.tip.values.2': return ({required Object value}) => '${value}. ${value}';
			case 'task.tip.values.3': return ({required Object value}) => '4. العودة إلى ${value}';
			case 'task.tip.values.4': return '5. احصل على عملات ذهبية';
			case 'task.tip.message': return 'إذا ألغت انتباهك/مثل ، فسيتم إزالة العملات الذهبية!';
			case 'store.title': return 'متجر';
			case 'store.free': return 'مجانا';
			case 'store.follow': return 'متابعون';
			case 'store.like': return 'مثل';
			case 'store.view': return 'راقب';
			case 'store.share': return 'شارك';
			case 'store.retweet': return 'إعادة تغريد';
			case 'store.ad.title': return 'مكافأة الإعلان';
			case 'store.ad.watch': return 'مشاهدة إعلان';
			case 'store.changeAccount.title': return 'تعديل الحساب';
			case 'store.changeAccount.add': return 'إنشاء حساب';
			case 'store.tip.follow.title': return 'أتباع وأتباع كبير';
			case 'store.tip.follow.values.0': return '';
			case 'store.tip.follow.values.1': return 'متابعون';
			case 'store.tip.follow.values.2': return 'أتباع كبير';
			case 'store.tip.follow.values.3': return 'الوقت الكامل';
			case 'store.tip.follow.values.4': return '1-24 ساعة';
			case 'store.tip.follow.values.5': return '1-4 ساعات';
			case 'store.tip.follow.values.6': return 'وقت التعويض';
			case 'store.tip.follow.values.7': return '/';
			case 'store.tip.follow.values.8': return 'التعويض في غضون 7 أيام';
			case 'store.tip.follow.values.9': return 'جودة أتباع';
			case 'store.tip.follow.values.10': return 'حقا';
			case 'store.tip.follow.values.11': return 'حقيقي ونشط';
			case 'store.tip.follow.values.12': return 'معدل انخفاض';
			case 'store.tip.follow.values.13': return '8-15 ٪';
			case 'store.tip.follow.values.14': return '0-3 ٪';
			case 'store.tip.like.title': return 'مثل الثناء المتقدم';
			case 'store.tip.like.values.0': return '';
			case 'store.tip.like.values.1': return 'مثل';
			case 'store.tip.like.values.2': return 'الثناء عالية المستوى';
			case 'store.tip.like.values.3': return 'الوقت الكامل';
			case 'store.tip.like.values.4': return '1-24 ساعة';
			case 'store.tip.like.values.5': return '1-4 ساعات';
			case 'store.tip.like.values.6': return 'وقت التعويض';
			case 'store.tip.like.values.7': return '/';
			case 'store.tip.like.values.8': return 'التعويض في غضون 7 أيام';
			case 'store.tip.like.values.9': return 'معدل انخفاض';
			case 'store.tip.like.values.10': return '8-15 ٪';
			case 'store.tip.like.values.11': return '0-3 ٪';
			case 'store.buy.follow': return 'مشتر';
			case 'store.buy.like': return 'شراء بعض الثناء';
			case 'store.buy.view': return 'شراء ومشاهدة';
			case 'store.buy.share': return 'شراء ومشاركة';
			case 'store.buy.retweet': return 'شراء التحويل';
			case 'store.buy.accountPublic': return '* يرجى الحفاظ على حسابك مفتوح';
			case 'store.buy.channelPublic': return '* يرجى الحفاظ على قناتك مفتوحة';
			case 'store.buy.tiktok': return 'رابط فيديو Tiktok الخاص بك';
			case 'store.buy.twitter': return 'رابط تغريدة Twitter الخاص بك';
			case 'store.buy.instagram': return 'رابط نشر Instagram الخاص بك';
			case 'store.buy.youtube': return 'رابط قناة يوتيوب الخاص بك';
			case 'store.buy.pay': return 'يدفع';
			case 'store.purchase.title': return 'الدفع ناجح';
			case 'store.purchase.message': return 'يرجى انتظار إكمال الطلب!';
			case 'store.notice.message': return ({required Object value}) => 'للحصول على ${value} متابعين مجانيين ، افتح إخطار التطبيق أولاً.';
			case 'store.notice.turnOn': return 'فتح';
			case 'coins.empty': return 'لا تاريخ';
			case 'login.confirm': return 'تؤكد';
			case 'login.username': return ({required Object value}) => 'أدخل اسم المستخدم ${value} الخاص بك';
			case 'login.channel': return 'أدخل رابط قناة YouTube الخاص بك';
			case 'login.publicUsername': return '* يرجى الحفاظ على حسابك مفتوح';
			case 'login.publicChannel': return '* يرجى الحفاظ على قناتك مفتوحة';
			case 'login.add': return 'إنشاء حساب';
			case 'login.hintUsername': return 'اسم االمستخدم';
			case 'login.hintChannel': return 'رابط القناة';
			case 'setting.title': return 'اقامة';
			case 'setting.editor': return 'تعديل المعلومات';
			case 'setting.daily': return 'تسجيل الدخول';
			case 'setting.wheel': return 'عجلة الحظ';
			case 'setting.account': return 'إدارة الحساب';
			case 'setting.language': return 'لغة';
			case 'setting.orders': return 'ترتيب';
			case 'setting.faq': return 'مشكلة شائعة';
			case 'setting.about': return 'حول';
			case 'setting.share.title': return 'شارك التطبيق';
			case 'setting.share.message': return ({required Object value}) => 'لقد وجدت تطبيق كنز يمكن أن يحصل على عشاق Tiktok مجانًا ويعجب. من خلال تثبيت الارتباط التالي ، سنحصل على ${value} عملات ذهبية!';
			case 'setting.rateUs': return 'تقييمنا';
			case 'language.title': return 'اختر لغة';
			case 'language.start': return 'بداية';
			case 'daily.title': return 'تسجيل الدخول';
			case 'daily.checkIn': return 'تسجيل الدخول';
			case 'daily.rules.title': return 'قاعدة';
			case 'daily.rules.values.0': return 'يمكنك تسجيل الدخول كل 24 ساعة ؛';
			case 'daily.rules.values.1': return 'بعد الإشارة -في انقطاع ، ستبدأ من جديد.';
			case 'wheel.title': return 'عجلة الحظ';
			case 'wheel.rules.title': return 'قاعدة';
			case 'wheel.rules.values.0': return ({required Object value}) => 'كل يانصيب سيكلف ${value} عملات ذهبية.';
			case 'wheel.rules.values.1': return 'عدد السحب غير محدود.';
			case 'account.title': return 'إدارة الحساب';
			case 'account.add': return '+ إضافة رقم حساب';
			case 'account.empty': return 'لا حساب';
			case 'account.alert.title': return 'حذف الحساب';
			case 'account.alert.message': return 'بعد الحذف ، لن تتمكن من استخدام الحساب للعمليات ذات الصلة.';
			case 'orders.title': return 'ترتيب';
			case 'orders.pending': return 'طابور';
			case 'orders.processing': return 'يعالج';
			case 'orders.inProgress': return 'يتم المعالجة';
			case 'orders.completed': return 'منجز';
			case 'orders.partial': return 'الانتهاء الجزئي';
			case 'orders.error': return 'خطأ';
			case 'orders.canceled': return 'ألغيت';
			case 'orders.refunded': return 'استرداد';
			case 'orders.empty': return 'لا طلب';
			case 'faq.title': return 'مشكلة شائعة';
			case 'faq.values.0.title': return '1. كيف تبدأ؟';
			case 'faq.values.0.value': return 'ما عليك سوى إضافة اسم مستخدم النظام الأساسي الخاص بك وفقًا لمطالبات الصفحة ، ولا كلمة مرور ، لكل منصة موجه مطابق.';
			case 'faq.values.1.title': return '2. هل من الآمن استخدامه؟';
			case 'faq.values.1.value': return 'بالطبع ، إنه آمن. لا نحتاج إلى كلمة مرورك ، ولا يمكننا حفظ بيانات التطبيق الاجتماعي الخاص بك لأنه يقفز إلى التطبيق الرسمي للانتباه إلى أشياء أخرى أو القيام بها.';
			case 'faq.values.2.title': return '3. كيف يعمل هذا كل شيء؟';
			case 'faq.values.2.value': return 'طريقة العمل بسيطة: يتم عرض بياناتك/الفيديو الشخصي في مجتمعنا. يقرر المستخدمون بحرية ما إذا كان ينبغي عليهم الانتباه إلى/مثلك بناءً على محتوى بياناتك الشخصية.كتبادل يحب/متابعة ، سيحصلون على عملات ذهبية ويمكن استخدامها للحصول على متابعين/عشاق.';
			case 'faq.values.3.title': return '4. هل الاهتمام ومثل حقيقي؟';
			case 'faq.values.3.value': return 'بالطبع ، إنه حقيقي. عندما تشتري الخدمات ذات الصلة ، هناك الكثير من المستخدمين الحقيقيين وراءها لتزويدك بالخدمات ، ويتم تشغيله على التطبيق الرسمي. لا داعي للقلق بشأنه.';
			case 'faq.values.4.title': return '5. كيف يمكنني كسب العملات الذهبية؟';
			case 'faq.values.4.value': return 'في الصفحة الرئيسية ، يمكنك رؤية قائمة المهام ، والنقر لمتابعة أو إعجاب ، والقفز إلى التطبيق المقابل للتشغيل. يرجى توخي الحذر من عدم إلغاء انتباهك أو مثل ، مما سيؤدي إلى إلغاء مكافأتك.';
			case 'faq.values.5.title': return '6. لماذا تفشل المهام؟';
			case 'faq.values.5.value': return 'هذا عادةً لأنك لا تهتم حقًا أو تعجبك. يجب عليك التحقق من حسابك أولاً.';
			case 'faq.values.6.title': return '7. كم من الوقت يستغرق لإكمال طلبي؟';
			case 'faq.values.6.value.0': return 'يعتمد هذا على حجم طلبك. عادة ، ستبدأ في الحصول على الخدمة فورًا بعد تقديم الطلب وإكماله في غضون 24 ساعة ، لكن لا يمكننا إعطاء وقت دقيق ، لأن هناك عددًا كبيرًا من المستخدمين الحقيقيين الذين يعملون خلف الظهر. يُلاحظ أن الخدمة الذهبية أسرع من الخدمات العادية.';
			case 'faq.values.6.value.1': return 'الحصول على الكثير من حركة المرور في وقت قصير سيجعل حسابك مشبوهًا ، لذا فإن الانتظار بصبر هو أفضل طريقة.';
			case 'faq.values.7.title': return '8. ماذا علي أن أفعل بعد الطلب؟';
			case 'faq.values.7.value': return 'بعد تقديم طلبك ، احتفظ بحسابك. لا تقم بتعديل اسم المستخدم الخاص بك قبل اكتمال الطلب.';
			case 'faq.values.8.title': return '9. ماذا لو كان لدي مشكلة؟';
			case 'faq.values.8.value': return 'يمكنك الاتصال بنا من خلال التعليقات في التطبيق.';
			case 'about.title': return 'حول';
			case 'about.contact': return 'اتصل بنا';
			case 'about.service': return 'شروط الخدمة';
			case 'about.policy': return 'سياسة الخصوصية';
			case 'alert.ok': return 'نعم';
			case 'alert.cancel': return 'يلغي';
			case 'alert.confirm': return 'تؤكد';
			case 'toast.unpurchase': return 'لا يمكن الشراء حاليا';
			case 'toast.purchasedNotFound': return 'لا يمكن شراء الخدمة الحالية';
			case 'toast.payment': return 'الدفع ناجح!';
			case 'toast.coinsNotEnough': return 'الذهب غير كاف!';
			case 'toast.received': return 'إيصال ناجح!';
			case 'toast.adError': return 'مشاهدة الإعلانات في كثير من الأحيان ، يرجى المحاولة مرة أخرى لاحقًا!';
			case 'localNotification.adTaskReady': return 'مهمة الإعلان الجديدة جاهزة!';
			default: return null;
		}
	}
}

extension on _StringsBn {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'onlyTitle.contact': return 'যোগাযোগ করুন';
			case 'universal.coins': return 'সোনার';
			case 'universal.requestError': return 'অনুগ্রহ করে একটু পরে আবার চেষ্টা করুন';
			case 'universal.add': return 'হিসাব যোগ করা';
			case 'tabbar.task': return 'প্রথম পৃষ্ঠা';
			case 'tabbar.store': return 'দোকান';
			case 'tabbar.setting': return 'সেট আপ';
			case 'task.title': return 'প্রথম পৃষ্ঠা';
			case 'task.skip': return 'লাফিয়ে উঠুন';
			case 'task.follow': return 'লক্ষ্য করা';
			case 'task.like': return 'যেমন';
			case 'task.noTask': return 'কোন কাজ';
			case 'task.tip.title': return 'শীঘ্র';
			case 'task.tip.values.0': return ({required Object value}) => '1. ${value} বোতাম ক্লিক করুন';
			case 'task.tip.values.1': return ({required Object value}) => '2. খোলা ${value}';
			case 'task.tip.values.2': return ({required Object value}) => '${value}. ${value}';
			case 'task.tip.values.3': return ({required Object value}) => '4. ফিরে ${value}';
			case 'task.tip.values.4': return '5. সোনার কয়েন পান';
			case 'task.tip.message': return 'আপনি যদি আপনার মনোযোগ/পছন্দ বাতিল করেন তবে সোনার মুদ্রাগুলি সরানো হবে!';
			case 'store.title': return 'দোকান';
			case 'store.free': return 'বিনামূল্যে';
			case 'store.follow': return 'অনুগামী';
			case 'store.like': return 'যেমন';
			case 'store.view': return 'ঘড়ি';
			case 'store.share': return 'শেয়ার';
			case 'store.retweet': return 'পুনঃটুইট';
			case 'store.ad.title': return 'বিজ্ঞাপন পুরষ্কার';
			case 'store.ad.watch': return 'একটি বিজ্ঞাপন দেখুন';
			case 'store.changeAccount.title': return 'অ্যাকাউন্টটি সংশোধন করুন';
			case 'store.changeAccount.add': return 'হিসাব যোগ করা';
			case 'store.tip.follow.title': return 'অনুগামী এবং প্রবীণ অনুগামী';
			case 'store.tip.follow.values.0': return '';
			case 'store.tip.follow.values.1': return 'অনুগামী';
			case 'store.tip.follow.values.2': return 'প্রবীণ অনুগামী';
			case 'store.tip.follow.values.3': return 'সম্পূর্ণ সময়';
			case 'store.tip.follow.values.4': return '1-24 ঘন্টা';
			case 'store.tip.follow.values.5': return '1-4 ঘন্টা';
			case 'store.tip.follow.values.6': return 'ক্ষতিপূরণ সময়';
			case 'store.tip.follow.values.7': return '/';
			case 'store.tip.follow.values.8': return '7 দিনের মধ্যে ক্ষতিপূরণ';
			case 'store.tip.follow.values.9': return 'অনুগামী গুণমান';
			case 'store.tip.follow.values.10': return 'বাস্তব';
			case 'store.tip.follow.values.11': return 'বাস্তব এবং সক্রিয়';
			case 'store.tip.follow.values.12': return 'পতনের হার';
			case 'store.tip.follow.values.13': return '8-15%';
			case 'store.tip.follow.values.14': return '0-3%';
			case 'store.tip.like.title': return 'পছন্দ এবং উন্নত প্রশংসা';
			case 'store.tip.like.values.0': return '';
			case 'store.tip.like.values.1': return 'যেমন';
			case 'store.tip.like.values.2': return 'উচ্চ -স্তরের প্রশংসা';
			case 'store.tip.like.values.3': return 'সম্পূর্ণ সময়';
			case 'store.tip.like.values.4': return '1-24 ঘন্টা';
			case 'store.tip.like.values.5': return '1-4 ঘন্টা';
			case 'store.tip.like.values.6': return 'ক্ষতিপূরণ সময়';
			case 'store.tip.like.values.7': return '/';
			case 'store.tip.like.values.8': return '7 দিনের মধ্যে ক্ষতিপূরণ';
			case 'store.tip.like.values.9': return 'পতনের হার';
			case 'store.tip.like.values.10': return '8-15%';
			case 'store.tip.like.values.11': return '0-3%';
			case 'store.buy.follow': return 'ক্রেতা';
			case 'store.buy.like': return 'কিছু প্রশংসা কিনুন';
			case 'store.buy.view': return 'কিনুন এবং দেখুন';
			case 'store.buy.share': return 'কিনুন এবং ভাগ করুন';
			case 'store.buy.retweet': return 'একটি স্থানান্তর কিনুন';
			case 'store.buy.accountPublic': return '* দয়া করে আপনার অ্যাকাউন্টটি খোলা রাখুন';
			case 'store.buy.channelPublic': return '* দয়া করে আপনার চ্যানেলটি খোলা রাখুন';
			case 'store.buy.tiktok': return 'আপনার টিকটোক ভিডিও লিঙ্ক';
			case 'store.buy.twitter': return 'আপনার টুইটার টুইট লিঙ্ক';
			case 'store.buy.instagram': return 'আপনার ইনস্টাগ্রাম পোস্ট লিঙ্ক';
			case 'store.buy.youtube': return 'আপনার ইউটিউব চ্যানেল লিঙ্ক';
			case 'store.buy.pay': return 'পে';
			case 'store.purchase.title': return 'পেমেন্ট সফল';
			case 'store.purchase.message': return 'অর্ডার সম্পূর্ণ করার জন্য অপেক্ষা করুন!';
			case 'store.notice.message': return ({required Object value}) => '${value} টি নিখরচায় অনুসরণকারী পেতে প্রথমে অ্যাপ্লিকেশন বিজ্ঞপ্তিটি খুলুন।';
			case 'store.notice.turnOn': return 'খোলা';
			case 'coins.empty': return 'কোনও ইতিহাস নেই';
			case 'login.confirm': return 'নিশ্চিত করুন';
			case 'login.username': return ({required Object value}) => 'আপনার ${value} ব্যবহারকারীর নাম লিখুন';
			case 'login.channel': return 'আপনার ইউটিউব চ্যানেল লিঙ্ক লিখুন';
			case 'login.publicUsername': return '* দয়া করে আপনার অ্যাকাউন্টটি খোলা রাখুন';
			case 'login.publicChannel': return '* দয়া করে আপনার চ্যানেলটি খোলা রাখুন';
			case 'login.add': return 'হিসাব যোগ করা';
			case 'login.hintUsername': return 'ব্যবহারকারীর নাম';
			case 'login.hintChannel': return 'চ্যানেল লিঙ্ক';
			case 'setting.title': return 'সেট আপ';
			case 'setting.editor': return 'তথ্য সম্পাদনা করুন';
			case 'setting.daily': return 'সাইন ইন করুন';
			case 'setting.wheel': return 'ভাগ্যের চাকা';
			case 'setting.account': return 'জমাখরচ ব্যাবস্থাপনার হিসাব';
			case 'setting.language': return 'ভাষা';
			case 'setting.orders': return 'অর্ডার';
			case 'setting.faq': return 'সাধারন সমস্যা';
			case 'setting.about': return 'সম্পর্কিত';
			case 'setting.share.title': return 'অ্যাপ্লিকেশন ভাগ করা';
			case 'setting.share.message': return ({required Object value}) => 'আমি একটি ট্রেজার অ্যাপ্লিকেশন পেয়েছি যা বিনামূল্যে টিকটোক অনুরাগী এবং পছন্দগুলি পেতে পারে Following নিম্নলিখিত লিঙ্ক ইনস্টলেশনটির মাধ্যমে আমরা ${value} টি সোনার কয়েন পাব!';
			case 'setting.rateUs': return 'আমাদের মূল্যায়ন';
			case 'language.title': return 'একটি ভাষা চয়ন করুন';
			case 'language.start': return 'শুরু';
			case 'daily.title': return 'সাইন ইন করুন';
			case 'daily.checkIn': return 'সাইন ইন করুন';
			case 'daily.rules.title': return 'নিয়ম';
			case 'daily.rules.values.0': return 'আপনি প্রতি 24 ঘন্টা সাইন ইন করতে পারেন;';
			case 'daily.rules.values.1': return 'সাইন -বাধা দেওয়ার পরে, এটি আবার শুরু হবে।';
			case 'wheel.title': return 'ভাগ্যের চাকা';
			case 'wheel.rules.title': return 'নিয়ম';
			case 'wheel.rules.values.0': return ({required Object value}) => 'প্রতিটি লটারির জন্য ${value} টি সোনার মুদ্রা লাগবে;';
			case 'wheel.rules.values.1': return 'অঙ্কনের সংখ্যা সীমাবদ্ধ নয়।';
			case 'account.title': return 'জমাখরচ ব্যাবস্থাপনার হিসাব';
			case 'account.add': return '+ অ্যাকাউন্ট নম্বর যুক্ত করুন';
			case 'account.empty': return 'কোন অ্যাকাউন্ট';
			case 'account.alert.title': return 'হিসাব মুছে ফেলা';
			case 'account.alert.message': return 'মুছে ফেলার পরে, আপনি সম্পর্কিত ক্রিয়াকলাপগুলির জন্য অ্যাকাউন্টটি ব্যবহার করতে সক্ষম হবেন না।';
			case 'orders.title': return 'অর্ডার';
			case 'orders.pending': return 'কিউ';
			case 'orders.processing': return 'প্রক্রিয়াজাতকরণ';
			case 'orders.inProgress': return 'প্রক্রিয়াজাতকরণ';
			case 'orders.completed': return 'সম্পূর্ণ';
			case 'orders.partial': return 'আংশিক সমাপ্তি';
			case 'orders.error': return 'ভুল';
			case 'orders.canceled': return 'বাতিল';
			case 'orders.refunded': return 'ফেরত দেওয়া';
			case 'orders.empty': return 'কোন নির্দেশ নেই';
			case 'faq.title': return 'সাধারন সমস্যা';
			case 'faq.values.0.title': return '1. কিভাবে শুরু করবেন?';
			case 'faq.values.0.value': return 'পৃষ্ঠা প্রম্পট অনুসারে আপনার প্ল্যাটফর্ম ব্যবহারকারীর নাম যুক্ত করুন, কোনও পাসওয়ার্ড নেই, প্রতিটি প্ল্যাটফর্মের সাথে সম্পর্কিত প্রম্পট রয়েছে।';
			case 'faq.values.1.title': return '২. এটি ব্যবহার করা কি নিরাপদ?';
			case 'faq.values.1.value': return 'অবশ্যই এটি নিরাপদ We আমাদের আপনার পাসওয়ার্ডের দরকার নেই, এবং আমরা আপনার সামাজিক অ্যাপ্লিকেশন ডেটা সংরক্ষণ করতে পারি না কারণ এটি অন্যান্য জিনিসগুলিতে মনোযোগ দিতে বা করার জন্য অফিসিয়াল অ্যাপ্লিকেশনটিতে ঝাঁপিয়ে পড়ছে।';
			case 'faq.values.2.title': return '৩. এই সব কীভাবে কাজ করে?';
			case 'faq.values.2.value': return 'কাজের পদ্ধতিটি সহজ: আপনার ব্যক্তিগত ডেটা/ভিডিওটি আমাদের সম্প্রদায়ের মধ্যে প্রদর্শিত হয় users ব্যবহারকারীরা আপনার ব্যক্তিগত ডেটার সামগ্রীর উপর ভিত্তি করে আপনার দিকে মনোযোগ দেওয়া/পছন্দ করবেন কিনা তা ব্যবহারকারীরা অবাধে সিদ্ধান্ত নেন।এমন একটি এক্সচেঞ্জ হিসাবে যা পছন্দ করে/অনুসরণ করে, তারা সোনার মুদ্রা গ্রহণ করবে এবং অনুসারী/প্রেমীদের পেতে ব্যবহার করা যেতে পারে।';
			case 'faq.values.3.title': return '৪. মনোযোগ এবং বাস্তবের মতো?';
			case 'faq.values.3.value': return 'অবশ্যই এটি আসল। আপনি যখন সম্পর্কিত পরিষেবাগুলি কিনেছেন তখন আপনাকে পরিষেবাগুলি সরবরাহ করার জন্য এর পিছনে প্রচুর বাস্তব ব্যবহারকারী রয়েছে এবং এটি অফিসিয়াল অ্যাপে পরিচালিত হয়। আপনার এটি নিয়ে চিন্তা করার দরকার নেই।';
			case 'faq.values.4.title': return '৫. আমি কীভাবে সোনার কয়েন উপার্জন করব?';
			case 'faq.values.4.value': return 'হোমপেজে, আপনি টাস্ক তালিকাটি দেখতে পারেন, অনুসরণ করতে বা পছন্দ করতে ক্লিক করতে পারেন এবং অপারেশনের জন্য সংশ্লিষ্ট অ্যাপটিতে ঝাঁপ দাও Please দয়া করে আপনার মনোযোগ বাতিল না করার জন্য সতর্ক হন বা পছন্দ করুন, যার ফলে আপনার পুরষ্কার বাতিল হয়ে যাবে।';
			case 'faq.values.5.title': return 'Task। কার্যগুলি কেন ব্যর্থ হয়?';
			case 'faq.values.5.value': return 'এটি সাধারণত কারণ আপনি সত্যিই মনোযোগ দেন না বা পছন্দ করেন না You আপনার প্রথমে আপনার অ্যাকাউন্টটি পরীক্ষা করা উচিত।';
			case 'faq.values.6.title': return 'My। আমার অর্ডার শেষ করতে কতক্ষণ সময় লাগে?';
			case 'faq.values.6.value.0': return 'এটি আপনার অর্ডার ভলিউমের উপর নির্ভর করে। সাধারণ পরিষেবাগুলির চেয়ে গোল্ডেন সার্ভিস দ্রুত উল্লেখ করা উচিত।';
			case 'faq.values.6.value.1': return 'অল্প সময়ে খুব বেশি ট্র্যাফিক পান আপনার অ্যাকাউন্টটি সন্দেহজনক করে তুলবে, তাই ধৈর্য সহকারে অপেক্ষা করা সর্বোত্তম উপায়।';
			case 'faq.values.7.title': return '৮. অর্ডার দেওয়ার পরে আমার কী করা উচিত?';
			case 'faq.values.7.value': return 'আপনি আপনার অর্ডার দেওয়ার পরে, আপনার অ্যাকাউন্টটি প্রকাশ করুন। অর্ডার শেষ হওয়ার আগে আপনার ব্যবহারকারীর নামটি পরিবর্তন করবেন না।';
			case 'faq.values.8.title': return '9. আমার যদি সমস্যা হয় তবে কী হবে?';
			case 'faq.values.8.value': return 'আপনি অ্যাপ্লিকেশনটিতে প্রতিক্রিয়া মাধ্যমে আমাদের সাথে যোগাযোগ করতে পারেন।';
			case 'about.title': return 'সম্পর্কিত';
			case 'about.contact': return 'যোগাযোগ করুন';
			case 'about.service': return 'সেবা পাবার শর্ত';
			case 'about.policy': return 'গোপনীয়তা নীতি';
			case 'alert.ok': return 'ঠিক আছে';
			case 'alert.cancel': return 'বাতিল';
			case 'alert.confirm': return 'নিশ্চিত করুন';
			case 'toast.unpurchase': return 'বর্তমানে কিনতে পারবেন না';
			case 'toast.purchasedNotFound': return 'বর্তমান পরিষেবা কিনতে পারবেন না';
			case 'toast.payment': return 'পেমেন্ট সফল!';
			case 'toast.coinsNotEnough': return 'স্বর্ণ অপর্যাপ্ত!';
			case 'toast.received': return 'সফল রসিদ!';
			case 'toast.adError': return 'বিজ্ঞাপনগুলি প্রায়শই দেখা, দয়া করে পরে আবার চেষ্টা করুন!';
			case 'localNotification.adTaskReady': return 'নতুন বিজ্ঞাপনের কাজ প্রস্তুত!';
			default: return null;
		}
	}
}

extension on _StringsDe {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'onlyTitle.contact': return 'kontaktiere uns';
			case 'universal.coins': return 'Gold';
			case 'universal.requestError': return 'Bitte versuchen Sie es später erneut';
			case 'universal.add': return 'Konto hinzufügen';
			case 'tabbar.task': return 'Titelseite';
			case 'tabbar.store': return 'Geschäft';
			case 'tabbar.setting': return 'Konfiguration';
			case 'task.title': return 'Titelseite';
			case 'task.skip': return 'über etwas springen';
			case 'task.follow': return 'konzentrieren Sie sich auf';
			case 'task.like': return 'wie';
			case 'task.noTask': return 'Nicht fragen';
			case 'task.tip.title': return 'Prompt';
			case 'task.tip.values.0': return ({required Object value}) => '1. Klicken Sie auf ${value} Schaltfläche';
			case 'task.tip.values.1': return ({required Object value}) => '2. Öffnen ${value}';
			case 'task.tip.values.2': return ({required Object value}) => '${value}. ${value}';
			case 'task.tip.values.3': return ({required Object value}) => '4. Zurück zu ${value}';
			case 'task.tip.values.4': return '5. Holen Sie sich Goldmünzen';
			case 'task.tip.message': return 'Wenn Sie Ihre Aufmerksamkeit/Like stornieren, werden Goldmünzen entfernt!';
			case 'store.title': return 'Geschäft';
			case 'store.free': return 'frei';
			case 'store.follow': return 'Anhänger';
			case 'store.like': return 'wie';
			case 'store.view': return 'Uhr';
			case 'store.share': return 'Teilen';
			case 'store.retweet': return 'Retweet';
			case 'store.ad.title': return 'Werbung Belohnung';
			case 'store.ad.watch': return 'Sehen Sie sich eine Anzeige an';
			case 'store.changeAccount.title': return 'Ändern Sie das Konto';
			case 'store.changeAccount.add': return 'Konto hinzufügen';
			case 'store.tip.follow.title': return 'Follower & Senior Anhänger';
			case 'store.tip.follow.values.0': return '';
			case 'store.tip.follow.values.1': return 'Anhänger';
			case 'store.tip.follow.values.2': return 'Senior Anhänger';
			case 'store.tip.follow.values.3': return 'Vollständige Zeit';
			case 'store.tip.follow.values.4': return '1-24 Stunden';
			case 'store.tip.follow.values.5': return '1-4 Stunden';
			case 'store.tip.follow.values.6': return 'Ausgleichszeit';
			case 'store.tip.follow.values.7': return '/';
			case 'store.tip.follow.values.8': return 'Entschädigung innerhalb von 7 Tagen';
			case 'store.tip.follow.values.9': return 'Follower -Qualität';
			case 'store.tip.follow.values.10': return 'real';
			case 'store.tip.follow.values.11': return 'Echt und aktiv';
			case 'store.tip.follow.values.12': return 'Fallgeschwindigkeit';
			case 'store.tip.follow.values.13': return '8-15%';
			case 'store.tip.follow.values.14': return '0-3%';
			case 'store.tip.like.title': return 'Wie & fortgeschrittenes Lob';
			case 'store.tip.like.values.0': return '';
			case 'store.tip.like.values.1': return 'wie';
			case 'store.tip.like.values.2': return 'Hoch -Level -Lob';
			case 'store.tip.like.values.3': return 'Vollständige Zeit';
			case 'store.tip.like.values.4': return '1-24 Stunden';
			case 'store.tip.like.values.5': return '1-4 Stunden';
			case 'store.tip.like.values.6': return 'Ausgleichszeit';
			case 'store.tip.like.values.7': return '/';
			case 'store.tip.like.values.8': return 'Entschädigung innerhalb von 7 Tagen';
			case 'store.tip.like.values.9': return 'Fallgeschwindigkeit';
			case 'store.tip.like.values.10': return '8-15%';
			case 'store.tip.like.values.11': return '0-3%';
			case 'store.buy.follow': return 'Käufer';
			case 'store.buy.like': return 'Kaufen Sie etwas Lob';
			case 'store.buy.view': return 'Kaufen und beobachten';
			case 'store.buy.share': return 'Kaufen und teilen';
			case 'store.buy.retweet': return 'Kaufen Sie eine Übertragung';
			case 'store.buy.accountPublic': return '* Bitte behalten Sie Ihr Konto offen, ist offen';
			case 'store.buy.channelPublic': return '* Bitte halten Sie Ihren Kanal offen';
			case 'store.buy.tiktok': return 'Ihr Tiktok -Videolink';
			case 'store.buy.twitter': return 'Ihr Twitter -Tweet -Link';
			case 'store.buy.instagram': return 'Ihr Instagram Post -Link';
			case 'store.buy.youtube': return 'Ihr YouTube -Kanal -Link';
			case 'store.buy.pay': return 'Zahlen';
			case 'store.purchase.title': return 'Bezahlung erfolgreich';
			case 'store.purchase.message': return 'Bitte warten Sie, bis die Bestellung abgeschlossen ist!';
			case 'store.notice.message': return ({required Object value}) => 'Um ${value} kostenlose Follower zu erhalten, öffnen Sie zuerst die App -Benachrichtigung.';
			case 'store.notice.turnOn': return 'Offen';
			case 'coins.empty': return 'Keine Geschichte';
			case 'login.confirm': return 'bestätigen';
			case 'login.username': return ({required Object value}) => 'Geben Sie Ihren ${value} -Benutzernamen ein';
			case 'login.channel': return 'Geben Sie Ihren YouTube -Kanal -Link ein';
			case 'login.publicUsername': return '* Bitte behalten Sie Ihr Konto offen, ist offen';
			case 'login.publicChannel': return '* Bitte halten Sie Ihren Kanal offen';
			case 'login.add': return 'Konto hinzufügen';
			case 'login.hintUsername': return 'Nutzername';
			case 'login.hintChannel': return 'Kanallink';
			case 'setting.title': return 'Konfiguration';
			case 'setting.editor': return 'Informationen bearbeiten';
			case 'setting.daily': return 'Einloggen';
			case 'setting.wheel': return 'Schicksalsrad';
			case 'setting.account': return 'Verwaltungskonto';
			case 'setting.language': return 'Sprache';
			case 'setting.orders': return 'Befehl';
			case 'setting.faq': return 'häufiges Problem';
			case 'setting.about': return 'um';
			case 'setting.share.title': return 'App teilen';
			case 'setting.share.message': return ({required Object value}) => 'Ich habe eine Schatzanwendung gefunden, die kostenlose Tiktok -Fans und -vorlagen erhalten kann. Durch die folgende Linkinstallation erhalten wir ${value} Goldmünzen!';
			case 'setting.rateUs': return 'Bewerten uns';
			case 'language.title': return 'Wählen Sie eine Sprache';
			case 'language.start': return 'Anfang';
			case 'daily.title': return 'Einloggen';
			case 'daily.checkIn': return 'Einloggen';
			case 'daily.rules.title': return 'Regel';
			case 'daily.rules.values.0': return 'Sie können sich alle 24 Stunden anmelden;';
			case 'daily.rules.values.1': return 'Nach der Unterbrechung des Zeichens wird es erneut beginnen.';
			case 'wheel.title': return 'Schicksalsrad';
			case 'wheel.rules.title': return 'Regel';
			case 'wheel.rules.values.0': return ({required Object value}) => 'Jede Lotterie kostet ${value} Goldmünzen;';
			case 'wheel.rules.values.1': return 'Die Anzahl der Ziehungen ist nicht begrenzt.';
			case 'account.title': return 'Verwaltungskonto';
			case 'account.add': return '+ Kontonummer hinzufügen';
			case 'account.empty': return 'Kein Account';
			case 'account.alert.title': return 'Konto löschen';
			case 'account.alert.message': return 'Nach dem Löschen können Sie das Konto für verwandte Vorgänge nicht verwenden.';
			case 'orders.title': return 'Befehl';
			case 'orders.pending': return 'Warteschlange';
			case 'orders.processing': return 'wird bearbeitet';
			case 'orders.inProgress': return 'wird bearbeitet';
			case 'orders.completed': return 'abgeschlossen';
			case 'orders.partial': return 'Teilweise Abschluss';
			case 'orders.error': return 'Fehler';
			case 'orders.canceled': return 'Abgesagt';
			case 'orders.refunded': return 'erstattet';
			case 'orders.empty': return 'Keine Bestellung';
			case 'faq.title': return 'häufiges Problem';
			case 'faq.values.0.title': return '1. Wie fange ich an?';
			case 'faq.values.0.value': return 'Fügen Sie einfach Ihren Plattform -Benutzernamen gemäß den Eingabeaufforderungen hinzu, kein Passwort, jede Plattform verfügt über eine entsprechende Eingabeaufforderung.';
			case 'faq.values.1.title': return '2. Ist es sicher, es zu verwenden?';
			case 'faq.values.1.value': return 'Natürlich ist es sicher. Wir benötigen Ihr Passwort nicht und können Ihre sozialen Anwendungsdaten nicht speichern, da sie in die offizielle Anwendung springen, um auf andere Dinge zu achten oder auf andere Dinge zu tun.';
			case 'faq.values.2.title': return '3. Wie funktioniert das alles?';
			case 'faq.values.2.value': return 'Die Arbeitsmethode ist einfach: Ihre personenbezogenen Daten/Ihr Video wird in unserer Community angezeigt. Benutzer entscheiden frei, ob sie auf dem Inhalt Ihrer persönlichen Daten auf/wie Sie berücksichtigen sollten.Als Austausch, der mag/folgt, erhalten sie Goldmünzen und können verwendet werden, um Follower/Liebhaber zu erhalten.';
			case 'faq.values.3.title': return '4. Ist Aufmerksamkeit und wie real?';
			case 'faq.values.3.value': return 'Natürlich ist es real. Wenn Sie verwandte Dienste kaufen, stehen viele echte Benutzer dahinter, die Ihnen Dienste zur Verfügung stellen, und sie werden in der offiziellen App betrieben. Sie müssen sich keine Sorgen machen.';
			case 'faq.values.4.title': return '5. Wie verdiene ich Goldmünzen?';
			case 'faq.values.4.value': return 'Auf der Homepage können Sie die Aufgabenliste sehen, klicken, um zu folgen oder zu mögen und zur entsprechenden App zu springen, um den Betrieb zu erhalten. Achten Sie darauf, Ihre Aufmerksamkeit nicht zu kündigen oder zu mögen, was dazu führt, dass Ihre Belohnung storniert wird.';
			case 'faq.values.5.title': return '6. Warum scheitern Aufgaben?';
			case 'faq.values.5.value': return 'Dies liegt normalerweise daran, dass Sie nicht wirklich darauf achten oder es mögen. Sie sollten zuerst Ihr Konto überprüfen.';
			case 'faq.values.6.title': return '7. Wie lange dauert es, bis meine Bestellung abgeschlossen ist?';
			case 'faq.values.6.value.0': return 'Dies hängt von Ihrem Bestellvolumen ab. Normalerweise erhalten Sie den Service unmittelbar nach dem Aufgeben und Vervollständigung innerhalb von 24 Stunden, aber wir können keine genaue Zeit angeben, da eine große Anzahl echter Benutzer hinter dem Rücken operieren. Beachten Sie, dass der Goldene Service schneller ist als normale Dienstleistungen.';
			case 'faq.values.6.value.1': return 'Wenn Sie in kurzer Zeit zu viel Verkehr erhalten, wird Ihr Konto misstrauisch, sodass das geduldiges Warten der beste Weg ist.';
			case 'faq.values.7.title': return '8. Was soll ich nach der Bestellung tun?';
			case 'faq.values.7.value': return 'Wenn Sie Ihre Bestellung aufgeben, halten Sie Ihr Konto offenbart. Ändern Sie Ihren Benutzernamen nicht, bevor die Bestellung abgeschlossen ist.';
			case 'faq.values.8.title': return '9. Was ist, wenn ich ein Problem habe?';
			case 'faq.values.8.value': return 'Sie können uns durch Feedback in der App kontaktieren.';
			case 'about.title': return 'um';
			case 'about.contact': return 'kontaktiere uns';
			case 'about.service': return 'Nutzungsbedingungen';
			case 'about.policy': return 'Datenschutz-Bestimmungen';
			case 'alert.ok': return 'OK';
			case 'alert.cancel': return 'Absagen';
			case 'alert.confirm': return 'bestätigen';
			case 'toast.unpurchase': return 'Ich kann derzeit nicht kaufen';
			case 'toast.purchasedNotFound': return 'Kann den aktuellen Service nicht kaufen';
			case 'toast.payment': return 'Bezahlung erfolgreich!';
			case 'toast.coinsNotEnough': return 'Gold unzureichend!';
			case 'toast.received': return 'Erfolgreiche Quittung!';
			case 'toast.adError': return 'Wenn Sie sich zu oft Anzeigen ansehen, versuchen Sie es bitte später erneut!';
			case 'localNotification.adTaskReady': return 'Die neue Werbeaufgabe ist fertig!';
			default: return null;
		}
	}
}

extension on _StringsEs {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'onlyTitle.contact': return 'Contáctenos';
			case 'universal.coins': return 'oro';
			case 'universal.requestError': return 'Por favor, inténtelo de nuevo más tarde';
			case 'universal.add': return 'Añadir cuenta';
			case 'tabbar.task': return 'página delantera';
			case 'tabbar.store': return 'tienda';
			case 'tabbar.setting': return 'configurar';
			case 'task.title': return 'página delantera';
			case 'task.skip': return 'salte por encima';
			case 'task.follow': return 'concentrarse en';
			case 'task.like': return 'me gusta';
			case 'task.noTask': return 'No preguntar';
			case 'task.tip.title': return 'Inmediato';
			case 'task.tip.values.0': return ({required Object value}) => '1. Haga clic en el botón ${value}';
			case 'task.tip.values.1': return ({required Object value}) => '2. Abrir ${value}';
			case 'task.tip.values.2': return ({required Object value}) => '${value}. ${value}';
			case 'task.tip.values.3': return ({required Object value}) => '4. Volver a ${value}';
			case 'task.tip.values.4': return '5. Obtenga monedas de oro';
			case 'task.tip.message': return 'Si cancela su atención/me gusta, ¡las monedas de oro se eliminarán!';
			case 'store.title': return 'tienda';
			case 'store.free': return 'libre';
			case 'store.follow': return 'Seguidores';
			case 'store.like': return 'me gusta';
			case 'store.view': return 'Reloj';
			case 'store.share': return 'Cuota';
			case 'store.retweet': return 'Retuitear';
			case 'store.ad.title': return 'Recompensa publicitaria';
			case 'store.ad.watch': return 'Mira un anuncio';
			case 'store.changeAccount.title': return 'Modificar la cuenta';
			case 'store.changeAccount.add': return 'Añadir cuenta';
			case 'store.tip.follow.title': return 'Seguidores y seguidor senior';
			case 'store.tip.follow.values.0': return '';
			case 'store.tip.follow.values.1': return 'Seguidores';
			case 'store.tip.follow.values.2': return 'Seguidor senior';
			case 'store.tip.follow.values.3': return 'Tiempo completo';
			case 'store.tip.follow.values.4': return '1-24 horas';
			case 'store.tip.follow.values.5': return '1-4 horas';
			case 'store.tip.follow.values.6': return 'Tiempo de compensación';
			case 'store.tip.follow.values.7': return '/';
			case 'store.tip.follow.values.8': return 'Compensación dentro de los 7 días';
			case 'store.tip.follow.values.9': return 'Calidad seguidor';
			case 'store.tip.follow.values.10': return 'real';
			case 'store.tip.follow.values.11': return 'Real y activo';
			case 'store.tip.follow.values.12': return 'Tasa de abandono';
			case 'store.tip.follow.values.13': return '8-15%';
			case 'store.tip.follow.values.14': return '0-3%';
			case 'store.tip.like.title': return 'Alabanza como y avanzada';
			case 'store.tip.like.values.0': return '';
			case 'store.tip.like.values.1': return 'me gusta';
			case 'store.tip.like.values.2': return 'Alabanza de alto nivel';
			case 'store.tip.like.values.3': return 'Tiempo completo';
			case 'store.tip.like.values.4': return '1-24 horas';
			case 'store.tip.like.values.5': return '1-4 horas';
			case 'store.tip.like.values.6': return 'Tiempo de compensación';
			case 'store.tip.like.values.7': return '/';
			case 'store.tip.like.values.8': return 'Compensación dentro de los 7 días';
			case 'store.tip.like.values.9': return 'Tasa de abandono';
			case 'store.tip.like.values.10': return '8-15%';
			case 'store.tip.like.values.11': return '0-3%';
			case 'store.buy.follow': return 'Comprador';
			case 'store.buy.like': return 'Comprar algunos elogios';
			case 'store.buy.view': return 'Comprar y mirar';
			case 'store.buy.share': return 'Comprar y compartir';
			case 'store.buy.retweet': return 'Comprar una transferencia';
			case 'store.buy.accountPublic': return '* Por favor, mantenga su cuenta abierta';
			case 'store.buy.channelPublic': return '* Mantenga su canal abierto';
			case 'store.buy.tiktok': return 'Tu enlace de video Tiktok';
			case 'store.buy.twitter': return 'Tu enlace de tweet de Twitter';
			case 'store.buy.instagram': return 'Tu enlace de publicación de Instagram';
			case 'store.buy.youtube': return 'Tu enlace de canal de YouTube';
			case 'store.buy.pay': return 'Pagar';
			case 'store.purchase.title': return 'Pago exitoso';
			case 'store.purchase.message': return '¡Espere a que se complete el pedido!';
			case 'store.notice.message': return ({required Object value}) => 'Para obtener ${value} seguidores gratuitos, abra la notificación de la aplicación primero.';
			case 'store.notice.turnOn': return 'Abierto';
			case 'coins.empty': return 'No historia';
			case 'login.confirm': return 'confirmar';
			case 'login.username': return ({required Object value}) => 'Ingrese su nombre de usuario ${value}';
			case 'login.channel': return 'Ingrese el enlace de su canal de YouTube';
			case 'login.publicUsername': return '* Por favor, mantenga su cuenta abierta';
			case 'login.publicChannel': return '* Mantenga su canal abierto';
			case 'login.add': return 'Añadir cuenta';
			case 'login.hintUsername': return 'nombre de usuario';
			case 'login.hintChannel': return 'Enlace de canal';
			case 'setting.title': return 'configurar';
			case 'setting.editor': return 'editar informacion';
			case 'setting.daily': return 'Iniciar sesión';
			case 'setting.wheel': return 'Rueda de la fortuna';
			case 'setting.account': return 'Cuenta de gestión';
			case 'setting.language': return 'idioma';
			case 'setting.orders': return 'Ordenar';
			case 'setting.faq': return 'problema comun';
			case 'setting.about': return 'sobre';
			case 'setting.share.title': return 'Compartir aplicación';
			case 'setting.share.message': return ({required Object value}) => 'Encontré una aplicación del tesoro que puede obtener fanáticos y me gusta de Tiktok gratis. A través de la siguiente instalación del enlace, ¡obtendremos ${value} monedas de oro!';
			case 'setting.rateUs': return 'Evaluarnos';
			case 'language.title': return 'Elija un idioma';
			case 'language.start': return 'comienzo';
			case 'daily.title': return 'Iniciar sesión';
			case 'daily.checkIn': return 'Iniciar sesión';
			case 'daily.rules.title': return 'regla';
			case 'daily.rules.values.0': return 'Puede iniciar sesión cada 24 horas;';
			case 'daily.rules.values.1': return 'Después de la interrupción del signo, comenzará de nuevo.';
			case 'wheel.title': return 'Rueda de la fortuna';
			case 'wheel.rules.title': return 'regla';
			case 'wheel.rules.values.0': return ({required Object value}) => 'Cada lotería costará ${value} monedas de oro;';
			case 'wheel.rules.values.1': return 'El número de sorteos no es limitado.';
			case 'account.title': return 'Cuenta de gestión';
			case 'account.add': return '+ Agregar número de cuenta';
			case 'account.empty': return 'Sin cuenta';
			case 'account.alert.title': return 'Borrar cuenta';
			case 'account.alert.message': return 'Después de eliminar, no podrá usar la cuenta para operaciones relacionadas.';
			case 'orders.title': return 'Ordenar';
			case 'orders.pending': return 'Cola';
			case 'orders.processing': return 'Procesando';
			case 'orders.inProgress': return 'Procesando';
			case 'orders.completed': return 'terminado';
			case 'orders.partial': return 'Finalización parcial';
			case 'orders.error': return 'error';
			case 'orders.canceled': return 'Cancelado';
			case 'orders.refunded': return 'reintegrado';
			case 'orders.empty': return 'Sin orden';
			case 'faq.title': return 'problema comun';
			case 'faq.values.0.title': return '1. ¿Cómo comenzar?';
			case 'faq.values.0.value': return 'Simplemente agregue el nombre de usuario de su plataforma de acuerdo con las indicaciones de la página, sin contraseña, cada plataforma tiene un mensaje correspondiente.';
			case 'faq.values.1.title': return '2. ¿Es seguro usarlo?';
			case 'faq.values.1.value': return 'Por supuesto, es seguro. No necesitamos su contraseña y no podemos guardar los datos de su aplicación social porque está saltando a la aplicación oficial para prestar atención o hacer otras cosas.';
			case 'faq.values.2.title': return '3. ¿Cómo funciona todo esto?';
			case 'faq.values.2.value': return 'El método de trabajo es simple: sus datos/video personales se muestran en nuestra comunidad. Los usuarios deciden libremente si deben prestar atención a/como usted en función del contenido de sus datos personales.Como un intercambio que le gusta/seguirán, recibirán monedas de oro y se pueden usar para obtener seguidores/amantes.';
			case 'faq.values.3.title': return '4. ¿Es la atención y como real?';
			case 'faq.values.3.value': return 'Por supuesto, es real. Cuando compra servicios relacionados, hay muchos usuarios reales detrás de él para brindarle servicios, y se opera en la aplicación oficial. No necesita preocuparse por ello.';
			case 'faq.values.4.title': return '5. ¿Cómo gano las monedas de oro?';
			case 'faq.values.4.value': return 'En la página de inicio, puede ver la lista de tareas, hacer clic para seguir o Me gusta, y saltar a la aplicación correspondiente para su operación. Tenga cuidado de no cancelar su atención o, lo que hará que su recompensa se cancele.';
			case 'faq.values.5.title': return '6. ¿Por qué fallan las tareas?';
			case 'faq.values.5.value': return 'Esto generalmente se debe a que realmente no presta atención o le gusta. Primero debe consultar su cuenta.';
			case 'faq.values.6.title': return '7. ¿Cuánto tiempo lleva completar mi pedido?';
			case 'faq.values.6.value.0': return 'Esto depende de su volumen de pedido. Por lo general, comenzará a obtener el servicio inmediatamente después de realizar el pedido y completarlo dentro de las 24h, pero no podemos dar un tiempo preciso, porque hay una gran cantidad de usuarios reales que operan detrás de la espalda. Debe hacerlo. Se notará que Golden Service es más rápido que los servicios ordinarios.';
			case 'faq.values.6.value.1': return 'Obtenga demasiado tráfico en poco tiempo hará que su cuenta sospeche, por lo que esperar pacientemente es la mejor manera.';
			case 'faq.values.7.title': return '8. ¿Qué debo hacer después de ordenar?';
			case 'faq.values.7.value': return 'Después de realizar su pedido, mantenga su cuenta divulgada. No modifique su nombre de usuario antes de que se complete el pedido.';
			case 'faq.values.8.title': return '9. ¿Qué pasa si tengo un problema?';
			case 'faq.values.8.value': return 'Puede contactarnos a través de comentarios en la aplicación.';
			case 'about.title': return 'sobre';
			case 'about.contact': return 'Contáctenos';
			case 'about.service': return 'Términos de servicio';
			case 'about.policy': return 'Política de privacidad';
			case 'alert.ok': return 'OK';
			case 'alert.cancel': return 'Cancelar';
			case 'alert.confirm': return 'confirmar';
			case 'toast.unpurchase': return 'No puedo comprar actualmente';
			case 'toast.purchasedNotFound': return 'No puedo comprar el servicio actual';
			case 'toast.payment': return '¡Pago exitoso!';
			case 'toast.coinsNotEnough': return '¡Oro inadecuado!';
			case 'toast.received': return 'Recibo exitoso!';
			case 'toast.adError': return 'Viendo anuncios con demasiada frecuencia, ¡inténtelo de nuevo más tarde!';
			case 'localNotification.adTaskReady': return '¡La nueva tarea publicitaria está lista!';
			default: return null;
		}
	}
}

extension on _StringsFr {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'onlyTitle.contact': return 'Nous contacter';
			case 'universal.coins': return 'or';
			case 'universal.requestError': return 'Veuillez réessayer plus tard';
			case 'universal.add': return 'Ajouter un compte';
			case 'tabbar.task': return 'page de garde';
			case 'tabbar.store': return 'magasin';
			case 'tabbar.setting': return 'd\'installation';
			case 'task.title': return 'page de garde';
			case 'task.skip': return 'franchir';
			case 'task.follow': return 'concentrer sur';
			case 'task.like': return 'Comme';
			case 'task.noTask': return 'Ne pas demander';
			case 'task.tip.title': return 'Rapide';
			case 'task.tip.values.0': return ({required Object value}) => '1. Cliquez sur ${value} bouton';
			case 'task.tip.values.1': return ({required Object value}) => '2. Ouvrir ${value}';
			case 'task.tip.values.2': return ({required Object value}) => '${value}. ${value}';
			case 'task.tip.values.3': return ({required Object value}) => '4. Retour à ${value}';
			case 'task.tip.values.4': return '5. Obtenez des pièces d\'or';
			case 'task.tip.message': return 'Si vous annulez votre attention / comme, les pièces d\'or seront supprimées!';
			case 'store.title': return 'magasin';
			case 'store.free': return 'libre';
			case 'store.follow': return 'Suiveurs';
			case 'store.like': return 'Comme';
			case 'store.view': return 'Regardez';
			case 'store.share': return 'partager';
			case 'store.retweet': return 'Retweeter';
			case 'store.ad.title': return 'Récompense publicitaire';
			case 'store.ad.watch': return 'Regarder une publicité';
			case 'store.changeAccount.title': return 'Modifier le compte';
			case 'store.changeAccount.add': return 'Ajouter un compte';
			case 'store.tip.follow.title': return 'Abonnés et adepte des seniors';
			case 'store.tip.follow.values.0': return '';
			case 'store.tip.follow.values.1': return 'Suiveurs';
			case 'store.tip.follow.values.2': return 'Disciple principal';
			case 'store.tip.follow.values.3': return 'Temps complet';
			case 'store.tip.follow.values.4': return '1-24 heures';
			case 'store.tip.follow.values.5': return '1 à 4 heures';
			case 'store.tip.follow.values.6': return 'Temps de rémunération';
			case 'store.tip.follow.values.7': return '/';
			case 'store.tip.follow.values.8': return 'Compensation dans les 7 jours';
			case 'store.tip.follow.values.9': return 'Qualité des suiveurs';
			case 'store.tip.follow.values.10': return 'réel';
			case 'store.tip.follow.values.11': return 'Réel et actif';
			case 'store.tip.follow.values.12': return 'Le taux d\'abandon';
			case 'store.tip.follow.values.13': return '8-15%';
			case 'store.tip.follow.values.14': return '0-3%';
			case 'store.tip.like.title': return 'Comme des éloges avancés';
			case 'store.tip.like.values.0': return '';
			case 'store.tip.like.values.1': return 'Comme';
			case 'store.tip.like.values.2': return 'Éloge de haut niveau';
			case 'store.tip.like.values.3': return 'Temps complet';
			case 'store.tip.like.values.4': return '1-24 heures';
			case 'store.tip.like.values.5': return '1 à 4 heures';
			case 'store.tip.like.values.6': return 'Temps de rémunération';
			case 'store.tip.like.values.7': return '/';
			case 'store.tip.like.values.8': return 'Compensation dans les 7 jours';
			case 'store.tip.like.values.9': return 'Le taux d\'abandon';
			case 'store.tip.like.values.10': return '8-15%';
			case 'store.tip.like.values.11': return '0-3%';
			case 'store.buy.follow': return 'Acheteur';
			case 'store.buy.like': return 'Achetez des éloges';
			case 'store.buy.view': return 'Acheter et regarder';
			case 'store.buy.share': return 'Acheter et partager';
			case 'store.buy.retweet': return 'Acheter un transfert';
			case 'store.buy.accountPublic': return '* Veuillez garder votre compte est ouvert';
			case 'store.buy.channelPublic': return '* Veuillez garder votre chaîne ouverte';
			case 'store.buy.tiktok': return 'Votre lien vidéo tiktok';
			case 'store.buy.twitter': return 'Votre lien Twitter Tweet';
			case 'store.buy.instagram': return 'Votre lien de publication Instagram';
			case 'store.buy.youtube': return 'Votre lien de chaîne YouTube';
			case 'store.buy.pay': return 'Payer';
			case 'store.purchase.title': return 'paiement réussi';
			case 'store.purchase.message': return 'Veuillez attendre que la commande se termine!';
			case 'store.notice.message': return ({required Object value}) => 'Pour obtenir ${value} abonnés gratuits, ouvrez d\'abord la notification de l\'application.';
			case 'store.notice.turnOn': return 'Ouvert';
			case 'coins.empty': return 'Pas d\'histoire';
			case 'login.confirm': return 'confirmer';
			case 'login.username': return ({required Object value}) => 'Saisissez vos ${value} identifiants';
			case 'login.channel': return 'Entrez votre lien de chaîne YouTube';
			case 'login.publicUsername': return '* Veuillez garder votre compte est ouvert';
			case 'login.publicChannel': return '* Veuillez garder votre chaîne ouverte';
			case 'login.add': return 'Ajouter un compte';
			case 'login.hintUsername': return 'Nom d\'utilisateur';
			case 'login.hintChannel': return 'Lien de canal';
			case 'setting.title': return 'd\'installation';
			case 'setting.editor': return 'Modifier les informations';
			case 'setting.daily': return 'S\'identifier';
			case 'setting.wheel': return 'Roue de la Fortune';
			case 'setting.account': return 'Compte de gestion';
			case 'setting.language': return 'Langue';
			case 'setting.orders': return 'Ordre';
			case 'setting.faq': return 'Problème commun';
			case 'setting.about': return 'sur';
			case 'setting.share.title': return 'Partager l\'application';
			case 'setting.share.message': return ({required Object value}) => 'J\'ai trouvé une application au trésor qui peut obtenir des fans et des likts Tiktok gratuits. Grâce à l\'installation de liens suivante, nous aurons ${value} pièces d\'or!';
			case 'setting.rateUs': return 'Nous évaluer';
			case 'language.title': return 'Choisissez une langue';
			case 'language.start': return 'début';
			case 'daily.title': return 'S\'identifier';
			case 'daily.checkIn': return 'S\'identifier';
			case 'daily.rules.title': return 'régner';
			case 'daily.rules.values.0': return 'Vous pouvez vous connecter toutes les 24 heures;';
			case 'daily.rules.values.1': return 'Après l\'interruption du signe, elle recommencera.';
			case 'wheel.title': return 'Roue de la Fortune';
			case 'wheel.rules.title': return 'régner';
			case 'wheel.rules.values.0': return ({required Object value}) => 'Chaque loterie coûtera ${value} pièces d\'or;';
			case 'wheel.rules.values.1': return 'Le nombre de tirages n\'est pas limité.';
			case 'account.title': return 'Compte de gestion';
			case 'account.add': return '+ Ajouter le numéro de compte';
			case 'account.empty': return 'Pas de compte';
			case 'account.alert.title': return 'Supprimer le compte';
			case 'account.alert.message': return 'Après la suppression, vous ne pourrez pas utiliser le compte pour les opérations connexes.';
			case 'orders.title': return 'Ordre';
			case 'orders.pending': return 'File d\'attente';
			case 'orders.processing': return 'Traitement';
			case 'orders.inProgress': return 'En traitement';
			case 'orders.completed': return 'complété';
			case 'orders.partial': return 'Achèvement partiel';
			case 'orders.error': return 'erreur';
			case 'orders.canceled': return 'Annulé';
			case 'orders.refunded': return 'remboursé';
			case 'orders.empty': return 'Pas de commande';
			case 'faq.title': return 'Problème commun';
			case 'faq.values.0.title': return '1. Comment commencer?';
			case 'faq.values.0.value': return 'Ajoutez simplement le nom d\'utilisateur de votre plate-forme en fonction des invites de page, pas de mot de passe, chaque plate-forme a une invite correspondante.';
			case 'faq.values.1.title': return '2. Est-il sûr de l\'utiliser?';
			case 'faq.values.1.value': return 'Bien sûr, il est sûr. Nous n\'avons pas besoin de votre mot de passe, et nous ne pouvons pas enregistrer vos données d\'application sociale, car elle passe à l\'application officielle pour faire attention ou faire d\'autres choses.';
			case 'faq.values.2.title': return '3. Comment cela fonctionne-t-il tout?';
			case 'faq.values.2.value': return 'La méthode de travail est simple: vos données / vidéos personnelles sont affichées dans notre communauté. Les utilisateurs décident librement s\'ils devraient prêter attention / comme vous en fonction du contenu de vos données personnelles.En tant qu\'échange qui aime / suivre, ils recevront des pièces d\'or et peuvent être utilisées pour obtenir des abonnés / amoureux.';
			case 'faq.values.3.title': return '4. L\'attention est-elle et comme réelle?';
			case 'faq.values.3.value': return 'Bien sûr, c\'est réel. Lorsque vous achetez des services connexes, il y a beaucoup de vrais utilisateurs derrière pour vous fournir des services, et il est exploité sur l\'application officielle. Vous n\'avez pas à vous en soucier.';
			case 'faq.values.4.title': return '5. Comment gagner des pièces d\'or?';
			case 'faq.values.4.value': return 'Sur la page d\'accueil, vous pouvez voir la liste des tâches, cliquer pour suivre ou comme, et sauter à l\'application correspondante pour l\'opération. Veuillez faire attention à ne pas annuler votre attention ou comme, ce qui entraînera l\'annulation de votre récompense.';
			case 'faq.values.5.title': return '6. Pourquoi les tâches échouent-elles?';
			case 'faq.values.5.value': return 'C\'est généralement parce que vous ne faites pas vraiment attention ou que vous l\'aimez. Vous devez d\'abord vérifier votre compte.';
			case 'faq.values.6.title': return '7. Combien de temps faut-il pour terminer ma commande?';
			case 'faq.values.6.value.0': return 'Cela dépend de votre volume de commande. Habituellement, vous commencerez à obtenir le service immédiatement après avoir passé la commande et à le terminer dans les 24 heures, mais nous ne pouvons pas donner de temps précis, car il y a un grand nombre d\'utilisateurs réel Soyez noté que le service d\'or est plus rapide que les services ordinaires.';
			case 'faq.values.6.value.1': return 'Obtenez trop de trafic en peu de temps rendra votre compte suspect, donc attendre patiemment est le meilleur moyen.';
			case 'faq.values.7.title': return '8. Que dois-je faire après avoir commandé?';
			case 'faq.values.7.value': return 'Après avoir passé votre commande, gardez votre compte divulgué. Ne modifiez pas votre nom d\'utilisateur avant la fin de la commande.';
			case 'faq.values.8.title': return '9. Et si j\'ai un problème?';
			case 'faq.values.8.value': return 'Vous pouvez nous contacter via des commentaires dans l\'application.';
			case 'about.title': return 'sur';
			case 'about.contact': return 'Nous contacter';
			case 'about.service': return 'Conditions d\'utilisation';
			case 'about.policy': return 'Politique de confidentialité';
			case 'alert.ok': return 'D\'ACCORD';
			case 'alert.cancel': return 'Annuler';
			case 'alert.confirm': return 'confirmer';
			case 'toast.unpurchase': return 'Impossible d\'acheter actuellement';
			case 'toast.purchasedNotFound': return 'Impossible d\'acheter le service actuel';
			case 'toast.payment': return 'Paiement réussi!';
			case 'toast.coinsNotEnough': return 'Or inadéquat!';
			case 'toast.received': return 'Reçu réussi!';
			case 'toast.adError': return 'Regarder les annonces trop souvent, réessayez plus tard!';
			case 'localNotification.adTaskReady': return 'La nouvelle tâche publicitaire est prête!';
			default: return null;
		}
	}
}

extension on _StringsHi {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'onlyTitle.contact': return 'संपर्क करें';
			case 'universal.coins': return 'सोना';
			case 'universal.requestError': return 'बाद में पुन: प्रयास करें';
			case 'universal.add': return 'खाता जोड़ो';
			case 'tabbar.task': return 'मुखपृष्ठ';
			case 'tabbar.store': return 'दुकान';
			case 'tabbar.setting': return 'स्थापित करना';
			case 'task.title': return 'मुखपृष्ठ';
			case 'task.skip': return 'इस पर से कूद जाओ';
			case 'task.follow': return 'ध्यान केंद्रित करना';
			case 'task.like': return 'पसंद करना';
			case 'task.noTask': return 'न पूछें';
			case 'task.tip.title': return 'तत्पर';
			case 'task.tip.values.0': return ({required Object value}) => '1. ${value} बटन पर क्लिक करें';
			case 'task.tip.values.1': return ({required Object value}) => '2. खुला ${value}';
			case 'task.tip.values.2': return ({required Object value}) => '${value}. ${value}';
			case 'task.tip.values.3': return ({required Object value}) => '4. वापस ${value} पर';
			case 'task.tip.values.4': return '5. सोने के सिक्के प्राप्त करें';
			case 'task.tip.message': return 'यदि आप अपना ध्यान रद्द करते हैं/जैसे, सोने के सिक्के हटा दिए जाएंगे!';
			case 'store.title': return 'दुकान';
			case 'store.free': return 'नि: शुल्क';
			case 'store.follow': return 'समर्थक';
			case 'store.like': return 'पसंद करना';
			case 'store.view': return 'घड़ी';
			case 'store.share': return 'शेयर करना';
			case 'store.retweet': return 'रीट्वीट';
			case 'store.ad.title': return 'विज्ञापन इनाम';
			case 'store.ad.watch': return 'एक विज्ञापन देखें';
			case 'store.changeAccount.title': return 'खाते को संशोधित करें';
			case 'store.changeAccount.add': return 'खाता जोड़ो';
			case 'store.tip.follow.title': return 'अनुयायी और वरिष्ठ अनुयायी';
			case 'store.tip.follow.values.0': return '';
			case 'store.tip.follow.values.1': return 'समर्थक';
			case 'store.tip.follow.values.2': return 'वरिष्ठ अनुयायी';
			case 'store.tip.follow.values.3': return 'पूरा समय';
			case 'store.tip.follow.values.4': return '1-24 घंटे';
			case 'store.tip.follow.values.5': return '1-4 घंटे';
			case 'store.tip.follow.values.6': return 'मुआवजा समय';
			case 'store.tip.follow.values.7': return '/';
			case 'store.tip.follow.values.8': return '7 दिनों के भीतर मुआवजा';
			case 'store.tip.follow.values.9': return 'अनुयायी गुणवत्ता';
			case 'store.tip.follow.values.10': return 'वास्तविक';
			case 'store.tip.follow.values.11': return 'वास्तविक और सक्रिय';
			case 'store.tip.follow.values.12': return 'गिरने की दर';
			case 'store.tip.follow.values.13': return '8-15%';
			case 'store.tip.follow.values.14': return '0-3%';
			case 'store.tip.like.title': return 'जैसे और उन्नत प्रशंसा';
			case 'store.tip.like.values.0': return '';
			case 'store.tip.like.values.1': return 'पसंद करना';
			case 'store.tip.like.values.2': return 'उच्च प्रशंसा';
			case 'store.tip.like.values.3': return 'पूरा समय';
			case 'store.tip.like.values.4': return '1-24 घंटे';
			case 'store.tip.like.values.5': return '1-4 घंटे';
			case 'store.tip.like.values.6': return 'मुआवजा समय';
			case 'store.tip.like.values.7': return '/';
			case 'store.tip.like.values.8': return '7 दिनों के भीतर मुआवजा';
			case 'store.tip.like.values.9': return 'गिरने की दर';
			case 'store.tip.like.values.10': return '8-15%';
			case 'store.tip.like.values.11': return '0-3%';
			case 'store.buy.follow': return 'क्रेता';
			case 'store.buy.like': return 'कुछ प्रशंसा खरीदें';
			case 'store.buy.view': return 'खरीदें और देखें';
			case 'store.buy.share': return 'खरीदें और साझा करें';
			case 'store.buy.retweet': return 'एक हस्तांतरण खरीदें';
			case 'store.buy.accountPublic': return '* कृपया अपना खाता खुला रखें';
			case 'store.buy.channelPublic': return '* कृपया अपना चैनल खुला रखें';
			case 'store.buy.tiktok': return 'आपका टिकटोक वीडियो लिंक';
			case 'store.buy.twitter': return 'आपका ट्विटर ट्वीट लिंक';
			case 'store.buy.instagram': return 'आपका इंस्टाग्राम पोस्ट लिंक';
			case 'store.buy.youtube': return 'आपका YouTube चैनल लिंक';
			case 'store.buy.pay': return 'भुगतान करना';
			case 'store.purchase.title': return 'भुगतान सफल';
			case 'store.purchase.message': return 'कृपया आदेश पूरा होने का इंतजार करें!';
			case 'store.notice.message': return ({required Object value}) => '${value} मुफ्त अनुयायियों को प्राप्त करने के लिए, पहले ऐप नोटिफिकेशन खोलें।';
			case 'store.notice.turnOn': return 'खुला हुआ';
			case 'coins.empty': return 'कोई इतिहास नहीं';
			case 'login.confirm': return 'पुष्टि करें';
			case 'login.username': return ({required Object value}) => 'अपना ${value} उपयोगकर्ता नाम दर्ज करें';
			case 'login.channel': return 'अपना YouTube चैनल लिंक दर्ज करें';
			case 'login.publicUsername': return '* कृपया अपना खाता खुला रखें';
			case 'login.publicChannel': return '* कृपया अपना चैनल खुला रखें';
			case 'login.add': return 'खाता जोड़ो';
			case 'login.hintUsername': return 'उपयोगकर्ता नाम';
			case 'login.hintChannel': return 'चैनल लिंक';
			case 'setting.title': return 'स्थापित करना';
			case 'setting.editor': return 'सूचना संपादित करें';
			case 'setting.daily': return 'साइन इन करें';
			case 'setting.wheel': return 'भाग्य का पहिया';
			case 'setting.account': return 'प्रबंधन खाता';
			case 'setting.language': return 'भाषा: हिन्दी';
			case 'setting.orders': return 'आदेश';
			case 'setting.faq': return 'आम समस्या';
			case 'setting.about': return 'के बारे में';
			case 'setting.share.title': return 'ऐप शेयर करें';
			case 'setting.share.message': return ({required Object value}) => 'मुझे एक ट्रेजर एप्लिकेशन मिला जो मुफ्त टिकटोक प्रशंसक और लाइक प्राप्त कर सकता है। निम्नलिखित लिंक इंस्टॉलेशन के माध्यम से, हमें ${value} गोल्ड सिक्के मिलेंगे!';
			case 'setting.rateUs': return 'हमारा मूल्यांकन करें';
			case 'language.title': return 'एक भाषा चुनें';
			case 'language.start': return 'प्रारंभ';
			case 'daily.title': return 'साइन इन करें';
			case 'daily.checkIn': return 'साइन इन करें';
			case 'daily.rules.title': return 'नियम';
			case 'daily.rules.values.0': return 'आप हर 24 घंटे में साइन इन कर सकते हैं;';
			case 'daily.rules.values.1': return 'साइन -इन रुकावट के बाद, यह फिर से शुरू हो जाएगा।';
			case 'wheel.title': return 'भाग्य का पहिया';
			case 'wheel.rules.title': return 'नियम';
			case 'wheel.rules.values.0': return ({required Object value}) => 'प्रत्येक लॉटरी में ${value} सोने के सिक्के खर्च होंगे;';
			case 'wheel.rules.values.1': return 'ड्रॉ की संख्या सीमित नहीं है।';
			case 'account.title': return 'प्रबंधन खाता';
			case 'account.add': return '+ खाता संख्या जोड़ें';
			case 'account.empty': return 'खाता नहीं';
			case 'account.alert.title': return 'खाता हटा दो';
			case 'account.alert.message': return 'हटाने के बाद, आप संबंधित संचालन के लिए खाते का उपयोग नहीं कर पाएंगे।';
			case 'orders.title': return 'आदेश';
			case 'orders.pending': return 'कतार';
			case 'orders.processing': return 'प्रसंस्करण';
			case 'orders.inProgress': return 'प्रसंस्करण';
			case 'orders.completed': return 'पूरा किया हुआ';
			case 'orders.partial': return 'आंशिक समापन';
			case 'orders.error': return 'गलती';
			case 'orders.canceled': return 'रद्द';
			case 'orders.refunded': return 'वापस कर दी';
			case 'orders.empty': return 'कोई आदेश नहीं';
			case 'faq.title': return 'आम समस्या';
			case 'faq.values.0.title': return '1. कैसे शुरू करें?';
			case 'faq.values.0.value': return 'बस अपने प्लेटफ़ॉर्म उपयोगकर्ता नाम को पृष्ठ के संकेत के अनुसार जोड़ें, कोई पासवर्ड नहीं, प्रत्येक प्लेटफ़ॉर्म में एक समान संकेत है।';
			case 'faq.values.1.title': return '2. क्या इसका उपयोग करना सुरक्षित है?';
			case 'faq.values.1.value': return 'बेशक, यह सुरक्षित है। हमें आपके पासवर्ड की आवश्यकता नहीं है, और हम आपके सामाजिक एप्लिकेशन डेटा को नहीं सहेज सकते हैं क्योंकि यह अन्य चीजों पर ध्यान देने या करने के लिए आधिकारिक एप्लिकेशन पर कूद रहा है।';
			case 'faq.values.2.title': return '3. यह सब कैसे काम करता है?';
			case 'faq.values.2.value': return 'कार्य विधि सरल है: आपका व्यक्तिगत डेटा/वीडियो हमारे समुदाय में प्रदर्शित किया जाता है। उपयोगकर्ता स्वतंत्र रूप से तय करते हैं कि क्या उन्हें आपके व्यक्तिगत डेटा की सामग्री के आधार पर ध्यान देना चाहिए।एक एक्सचेंज के रूप में जो पसंद/अनुसरण करता है, वे सोने के सिक्के प्राप्त करेंगे और अनुयायियों/प्रेमियों को प्राप्त करने के लिए उपयोग किया जा सकता है।';
			case 'faq.values.3.title': return '4. क्या ध्यान और वास्तविक की तरह है?';
			case 'faq.values.3.value': return 'बेशक, यह वास्तविक है। जब आप संबंधित सेवाएं खरीदते हैं, तो आपको सेवाएं प्रदान करने के लिए इसके पीछे बहुत सारे वास्तविक उपयोगकर्ता होते हैं, और यह आधिकारिक ऐप पर संचालित होता है। आपको इसके बारे में चिंता करने की आवश्यकता नहीं है।';
			case 'faq.values.4.title': return '5. मैं सोने के सिक्के कैसे कमाऊं?';
			case 'faq.values.4.value': return 'होमपेज पर, आप टास्क लिस्ट देख सकते हैं, फॉलो करने या पसंद करने के लिए क्लिक कर सकते हैं, और ऑपरेशन के लिए संबंधित ऐप पर कूद सकते हैं। कृपया सावधान रहें कि अपना ध्यान रद्द न करें या पसंद करें, जिससे आपका इनाम रद्द हो जाएगा।';
			case 'faq.values.5.title': return '6. कार्य क्यों विफल होते हैं?';
			case 'faq.values.5.value': return 'यह आमतौर पर है क्योंकि आप वास्तव में ध्यान नहीं देते हैं या इसे पसंद नहीं करते हैं। आपको पहले अपना खाता जांचना चाहिए।';
			case 'faq.values.6.title': return '7. मेरे आदेश को पूरा करने में कितना समय लगता है?';
			case 'faq.values.6.value.0': return 'यह आपके ऑर्डर वॉल्यूम पर निर्भर करता है। आमतौर पर, आप ऑर्डर देने के तुरंत बाद सेवा प्राप्त करना शुरू कर देंगे और इसे 24h के भीतर पूरा करेंगे, लेकिन हम सटीक समय नहीं दे सकते हैं, क्योंकि बड़ी संख्या में वास्तविक उपयोगकर्ता पीठ के पीछे काम कर रहे हैं। ध्यान दिया जाए कि गोल्डन सर्विस सामान्य सेवाओं की तुलना में तेज है।';
			case 'faq.values.6.value.1': return 'थोड़े समय में बहुत अधिक ट्रैफ़िक प्राप्त करें आपके खाते को संदिग्ध बना देगा, इसलिए धैर्यपूर्वक प्रतीक्षा करना सबसे अच्छा तरीका है।';
			case 'faq.values.7.title': return '8. आदेश देने के बाद मुझे क्या करना चाहिए?';
			case 'faq.values.7.value': return 'अपना ऑर्डर देने के बाद, अपने खाते का खुलासा रखें। ऑर्डर पूरा होने से पहले अपने उपयोगकर्ता नाम को संशोधित न करें।';
			case 'faq.values.8.title': return '9. अगर मुझे कोई समस्या है तो क्या होगा?';
			case 'faq.values.8.value': return 'आप ऐप में प्रतिक्रिया के माध्यम से हमसे संपर्क कर सकते हैं।';
			case 'about.title': return 'के बारे में';
			case 'about.contact': return 'संपर्क करें';
			case 'about.service': return 'सेवा की शर्तें';
			case 'about.policy': return 'गोपनीयता नीति';
			case 'alert.ok': return 'ठीक है';
			case 'alert.cancel': return 'रद्द करना';
			case 'alert.confirm': return 'पुष्टि करें';
			case 'toast.unpurchase': return 'वर्तमान में खरीद नहीं सकते';
			case 'toast.purchasedNotFound': return 'वर्तमान सेवा नहीं खरीद सकते';
			case 'toast.payment': return 'भुगतान सफल!';
			case 'toast.coinsNotEnough': return 'सोने की अपर्याप्त!';
			case 'toast.received': return 'सफल रसीद!';
			case 'toast.adError': return 'विज्ञापनों को अक्सर देखना, कृपया बाद में फिर से प्रयास करें!';
			case 'localNotification.adTaskReady': return 'नया विज्ञापन कार्य तैयार है!';
			default: return null;
		}
	}
}

extension on _StringsId {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'onlyTitle.contact': return 'hubungi kami';
			case 'universal.coins': return 'emas';
			case 'universal.requestError': return 'Silakan coba lagi nanti';
			case 'universal.add': return 'Menambahkan akun';
			case 'tabbar.task': return 'halaman Depan';
			case 'tabbar.store': return 'toko';
			case 'tabbar.setting': return 'mempersiapkan';
			case 'task.title': return 'halaman Depan';
			case 'task.skip': return 'Melompati';
			case 'task.follow': return 'fokus pada';
			case 'task.like': return 'Suka';
			case 'task.noTask': return 'Tidak bertanya';
			case 'task.tip.title': return 'Mengingatkan';
			case 'task.tip.values.0': return ({required Object value}) => '1. Klik ${value} tombol';
			case 'task.tip.values.1': return ({required Object value}) => '2. Buka ${value}';
			case 'task.tip.values.2': return ({required Object value}) => '${value}. ${value}';
			case 'task.tip.values.3': return ({required Object value}) => '4. Kembali ke ${value}';
			case 'task.tip.values.4': return '5. Dapatkan Koin Emas';
			case 'task.tip.message': return 'Jika Anda membatalkan perhatian/suka, koin emas akan dihapus!';
			case 'store.title': return 'toko';
			case 'store.free': return 'Gratis';
			case 'store.follow': return 'Pengikut';
			case 'store.like': return 'Suka';
			case 'store.view': return 'Jam tangan';
			case 'store.share': return 'Bagikan';
			case 'store.retweet': return 'Retweet';
			case 'store.ad.title': return 'Hadiah iklan';
			case 'store.ad.watch': return 'Tonton iklan';
			case 'store.changeAccount.title': return 'Ubah akun';
			case 'store.changeAccount.add': return 'Menambahkan akun';
			case 'store.tip.follow.title': return 'Pengikut & Pengikut Senior';
			case 'store.tip.follow.values.0': return '';
			case 'store.tip.follow.values.1': return 'Pengikut';
			case 'store.tip.follow.values.2': return 'Pengikut Senior';
			case 'store.tip.follow.values.3': return 'Waktu lengkap';
			case 'store.tip.follow.values.4': return '1-24 jam';
			case 'store.tip.follow.values.5': return '1-4 jam';
			case 'store.tip.follow.values.6': return 'Waktu kompensasi';
			case 'store.tip.follow.values.7': return '/';
			case 'store.tip.follow.values.8': return 'Kompensasi dalam 7 hari';
			case 'store.tip.follow.values.9': return 'Kualitas pengikut';
			case 'store.tip.follow.values.10': return 'nyata';
			case 'store.tip.follow.values.11': return 'Nyata & aktif';
			case 'store.tip.follow.values.12': return 'Drop rate';
			case 'store.tip.follow.values.13': return '8-15%';
			case 'store.tip.follow.values.14': return '0-3%';
			case 'store.tip.like.title': return 'Like & Advanced Praise';
			case 'store.tip.like.values.0': return '';
			case 'store.tip.like.values.1': return 'Suka';
			case 'store.tip.like.values.2': return 'Pujian tingkat tinggi';
			case 'store.tip.like.values.3': return 'Waktu lengkap';
			case 'store.tip.like.values.4': return '1-24 jam';
			case 'store.tip.like.values.5': return '1-4 jam';
			case 'store.tip.like.values.6': return 'Waktu kompensasi';
			case 'store.tip.like.values.7': return '/';
			case 'store.tip.like.values.8': return 'Kompensasi dalam 7 hari';
			case 'store.tip.like.values.9': return 'Drop rate';
			case 'store.tip.like.values.10': return '8-15%';
			case 'store.tip.like.values.11': return '0-3%';
			case 'store.buy.follow': return 'Pembeli';
			case 'store.buy.like': return 'Beli pujian';
			case 'store.buy.view': return 'Beli dan Tonton';
			case 'store.buy.share': return 'Beli dan Bagikan';
			case 'store.buy.retweet': return 'Beli transfer';
			case 'store.buy.accountPublic': return '* Harap jaga agar akun Anda tetap terbuka';
			case 'store.buy.channelPublic': return '* Harap tetap buka saluran Anda';
			case 'store.buy.tiktok': return 'Tautan video Tiktok Anda';
			case 'store.buy.twitter': return 'Tautan Tweet Twitter Anda';
			case 'store.buy.instagram': return 'Tautan Posting Instagram Anda';
			case 'store.buy.youtube': return 'Tautan Saluran YouTube Anda';
			case 'store.buy.pay': return 'Membayar';
			case 'store.purchase.title': return 'pembayaran berhasil';
			case 'store.purchase.message': return 'Harap tunggu pesanan selesaikan!';
			case 'store.notice.message': return ({required Object value}) => 'Untuk mendapatkan ${value} pengikut gratis, buka pemberitahuan aplikasi terlebih dahulu.';
			case 'store.notice.turnOn': return 'Membuka';
			case 'coins.empty': return 'Tidak ada sejarah';
			case 'login.confirm': return 'Konfirmasi';
			case 'login.username': return ({required Object value}) => 'Masukkan ${value} nama pengguna Anda';
			case 'login.channel': return 'Masukkan tautan saluran YouTube Anda';
			case 'login.publicUsername': return '* Harap jaga agar akun Anda tetap terbuka';
			case 'login.publicChannel': return '* Harap tetap buka saluran Anda';
			case 'login.add': return 'Menambahkan akun';
			case 'login.hintUsername': return 'nama belakang';
			case 'login.hintChannel': return 'Tautan saluran';
			case 'setting.title': return 'mempersiapkan';
			case 'setting.editor': return 'Edit informasi';
			case 'setting.daily': return 'Masuk';
			case 'setting.wheel': return 'Roda keberuntungan';
			case 'setting.account': return 'Akun Manajemen';
			case 'setting.language': return 'bahasa';
			case 'setting.orders': return 'Memesan';
			case 'setting.faq': return 'masalah umum';
			case 'setting.about': return 'tentang';
			case 'setting.share.title': return 'Bagikan aplikasi';
			case 'setting.share.message': return ({required Object value}) => 'Saya menemukan aplikasi harta karun yang bisa mendapatkan penggemar dan suka Tiktok gratis. Melalui instalasi tautan berikut, kami akan mendapatkan ${value} koin emas!';
			case 'setting.rateUs': return 'Mengevaluasi kami';
			case 'language.title': return 'Pilih bahasa';
			case 'language.start': return 'Mulailah';
			case 'daily.title': return 'Masuk';
			case 'daily.checkIn': return 'Masuk';
			case 'daily.rules.title': return 'aturan';
			case 'daily.rules.values.0': return 'Anda dapat masuk setiap 24 jam;';
			case 'daily.rules.values.1': return 'Setelah interupsi tanda -dalam, itu akan dimulai lagi.';
			case 'wheel.title': return 'Roda keberuntungan';
			case 'wheel.rules.title': return 'aturan';
			case 'wheel.rules.values.0': return ({required Object value}) => 'Setiap lotre akan menelan biaya ${value} koin emas;';
			case 'wheel.rules.values.1': return 'Jumlah undian tidak terbatas.';
			case 'account.title': return 'Akun Manajemen';
			case 'account.add': return '+ Tambahkan nomor akun';
			case 'account.empty': return 'Tidak ada akun';
			case 'account.alert.title': return 'Hapus akun';
			case 'account.alert.message': return 'Setelah menghapus, Anda tidak akan dapat menggunakan akun untuk operasi terkait.';
			case 'orders.title': return 'Memesan';
			case 'orders.pending': return 'Antre';
			case 'orders.processing': return 'Pengolahan';
			case 'orders.inProgress': return 'pengolahan';
			case 'orders.completed': return 'lengkap';
			case 'orders.partial': return 'Penyelesaian parsial';
			case 'orders.error': return 'kesalahan';
			case 'orders.canceled': return 'Dibatalkan';
			case 'orders.refunded': return 'dikembalikan';
			case 'orders.empty': return 'Tidak ada pesanan';
			case 'faq.title': return 'masalah umum';
			case 'faq.values.0.title': return '1. Bagaimana cara memulai?';
			case 'faq.values.0.value': return 'Cukup tambahkan nama pengguna platform Anda sesuai dengan prompt halaman, tidak ada kata sandi, setiap platform memiliki prompt yang sesuai.';
			case 'faq.values.1.title': return '2. Apakah aman menggunakannya?';
			case 'faq.values.1.value': return 'Tentu saja, ini aman. Kami tidak membutuhkan kata sandi Anda, dan kami tidak dapat menyimpan data aplikasi sosial Anda karena melompat ke aplikasi resmi untuk memperhatikan atau melakukan hal -hal lain.';
			case 'faq.values.2.title': return '3. Bagaimana ini bekerja semuanya?';
			case 'faq.values.2.value': return 'Metode kerja sederhana: Data/video pribadi Anda ditampilkan di komunitas kami. Pengguna dengan bebas memutuskan apakah mereka harus memperhatikan/seperti Anda berdasarkan konten data pribadi Anda.Sebagai pertukaran yang disukai/diikuti, mereka akan menerima koin emas dan dapat digunakan untuk mendapatkan pengikut/kekasih.';
			case 'faq.values.3.title': return '4. Apakah perhatian dan seperti nyata?';
			case 'faq.values.3.value': return 'Tentu saja, itu nyata. Ketika Anda membeli layanan terkait, ada banyak pengguna nyata di belakangnya untuk memberi Anda layanan, dan dioperasikan pada aplikasi resmi. Anda tidak perlu khawatir tentang hal itu.';
			case 'faq.values.4.title': return '5. Bagaimana cara mendapatkan koin emas?';
			case 'faq.values.4.value': return 'Di beranda, Anda dapat melihat daftar tugas, klik untuk mengikuti atau menyukai, dan melompat ke aplikasi yang sesuai untuk beroperasi. Harap berhati -hati untuk tidak membatalkan perhatian Anda atau suka, yang akan menyebabkan hadiah Anda dibatalkan.';
			case 'faq.values.5.title': return '6. Mengapa tugas gagal?';
			case 'faq.values.5.value': return 'Ini biasanya karena Anda tidak benar -benar memperhatikan atau menyukainya. Anda harus memeriksa akun Anda terlebih dahulu.';
			case 'faq.values.6.title': return '7. Berapa lama waktu yang dibutuhkan untuk menyelesaikan pesanan saya?';
			case 'faq.values.6.value.0': return 'Ini tergantung pada volume pesanan Anda. Biasanya, Anda akan mulai mendapatkan layanan segera setelah melakukan pemesanan dan menyelesaikannya dalam waktu 24 jam, tetapi kami tidak dapat memberikan waktu yang akurat, karena ada sejumlah besar pengguna nyata yang beroperasi di belakang. Itu harus Tercatat layanan emas lebih cepat dari layanan biasa.';
			case 'faq.values.6.value.1': return 'Dapatkan terlalu banyak lalu lintas dalam waktu singkat akan membuat akun Anda curiga, jadi menunggu dengan sabar adalah cara terbaik.';
			case 'faq.values.7.title': return '8. Apa yang harus saya lakukan setelah memesan?';
			case 'faq.values.7.value': return 'Setelah Anda melakukan pemesanan, simpan akun Anda diungkapkan. Jangan memodifikasi nama pengguna Anda sebelum pesanan selesai.';
			case 'faq.values.8.title': return '9. Bagaimana jika saya punya masalah?';
			case 'faq.values.8.value': return 'Anda dapat menghubungi kami melalui umpan balik di aplikasi.';
			case 'about.title': return 'tentang';
			case 'about.contact': return 'hubungi kami';
			case 'about.service': return 'Ketentuan Layanan';
			case 'about.policy': return 'Kebijakan pribadi';
			case 'alert.ok': return 'Oke';
			case 'alert.cancel': return 'Membatalkan';
			case 'alert.confirm': return 'Konfirmasi';
			case 'toast.unpurchase': return 'Tidak dapat membeli saat ini';
			case 'toast.purchasedNotFound': return 'Tidak dapat membeli layanan saat ini';
			case 'toast.payment': return 'pembayaran berhasil!';
			case 'toast.coinsNotEnough': return 'Emas tidak memadai!';
			case 'toast.received': return 'Tanda terima yang berhasil!';
			case 'toast.adError': return 'Menonton iklan terlalu sering, tolong coba lagi nanti!';
			case 'localNotification.adTaskReady': return 'Tugas iklan baru sudah siap!';
			default: return null;
		}
	}
}

extension on _StringsIt {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'onlyTitle.contact': return 'Contattaci';
			case 'universal.coins': return 'oro';
			case 'universal.requestError': return 'Per favore riprova più tardi';
			case 'universal.add': return 'Aggiungi account';
			case 'tabbar.task': return 'prima pagina';
			case 'tabbar.store': return 'negozio';
			case 'tabbar.setting': return 'impostare';
			case 'task.title': return 'prima pagina';
			case 'task.skip': return 'saltare';
			case 'task.follow': return 'concentrarsi su';
			case 'task.like': return 'piace';
			case 'task.noTask': return 'Non chiedere';
			case 'task.tip.title': return 'Richiesta';
			case 'task.tip.values.0': return ({required Object value}) => '1. Fare clic sul pulsante ${value}';
			case 'task.tip.values.1': return ({required Object value}) => '2. Aprire ${value}';
			case 'task.tip.values.2': return ({required Object value}) => '${value}. ${value}';
			case 'task.tip.values.3': return ({required Object value}) => '4. Torna a ${value}';
			case 'task.tip.values.4': return '5. Ottieni monete d\'oro';
			case 'task.tip.message': return 'Se annulla la tua attenzione/Mi piace, le monete d\'oro verranno rimosse!';
			case 'store.title': return 'negozio';
			case 'store.free': return 'gratuito';
			case 'store.follow': return 'Seguaci';
			case 'store.like': return 'piace';
			case 'store.view': return 'Guadare';
			case 'store.share': return 'Condividere';
			case 'store.retweet': return 'Retweet';
			case 'store.ad.title': return 'Ricompensa pubblicitaria';
			case 'store.ad.watch': return 'Guarda una pubblicità';
			case 'store.changeAccount.title': return 'Modifica l\'account';
			case 'store.changeAccount.add': return 'Aggiungi account';
			case 'store.tip.follow.title': return 'Follower e seguace senior';
			case 'store.tip.follow.values.0': return '';
			case 'store.tip.follow.values.1': return 'Seguaci';
			case 'store.tip.follow.values.2': return 'Seguace senior';
			case 'store.tip.follow.values.3': return 'Tempo completo';
			case 'store.tip.follow.values.4': return '1-24 ore';
			case 'store.tip.follow.values.5': return '1-4 ore';
			case 'store.tip.follow.values.6': return 'Tempo di compensazione';
			case 'store.tip.follow.values.7': return '/';
			case 'store.tip.follow.values.8': return 'Compensazione entro 7 giorni';
			case 'store.tip.follow.values.9': return 'Qualità follower';
			case 'store.tip.follow.values.10': return 'vero';
			case 'store.tip.follow.values.11': return 'Reale e attivo';
			case 'store.tip.follow.values.12': return 'Tasso di caduta';
			case 'store.tip.follow.values.13': return '8-15%';
			case 'store.tip.follow.values.14': return '0-3%';
			case 'store.tip.like.title': return 'Come e lode avanzate';
			case 'store.tip.like.values.0': return '';
			case 'store.tip.like.values.1': return 'piace';
			case 'store.tip.like.values.2': return 'Lode di alto livello';
			case 'store.tip.like.values.3': return 'Tempo completo';
			case 'store.tip.like.values.4': return '1-24 ore';
			case 'store.tip.like.values.5': return '1-4 ore';
			case 'store.tip.like.values.6': return 'Tempo di compensazione';
			case 'store.tip.like.values.7': return '/';
			case 'store.tip.like.values.8': return 'Compensazione entro 7 giorni';
			case 'store.tip.like.values.9': return 'Tasso di caduta';
			case 'store.tip.like.values.10': return '8-15%';
			case 'store.tip.like.values.11': return '0-3%';
			case 'store.buy.follow': return 'Acquirente';
			case 'store.buy.like': return 'Acquista un po \'di lode';
			case 'store.buy.view': return 'Acquista e guarda';
			case 'store.buy.share': return 'Acquista e condividi';
			case 'store.buy.retweet': return 'Acquista un trasferimento';
			case 'store.buy.accountPublic': return '* Si prega di mantenere il tuo account è aperto';
			case 'store.buy.channelPublic': return '* Per favore, tieni il tuo canale aperto';
			case 'store.buy.tiktok': return 'Il tuo link video tiktok';
			case 'store.buy.twitter': return 'Il tuo link a Twitter Tweet';
			case 'store.buy.instagram': return 'Il tuo link post Instagram';
			case 'store.buy.youtube': return 'Il tuo link per il canale YouTube';
			case 'store.buy.pay': return 'Paga';
			case 'store.purchase.title': return 'pagamento riuscito';
			case 'store.purchase.message': return 'Si prega di attendere che l\'ordine sia completato!';
			case 'store.notice.message': return ({required Object value}) => 'Per ottenere ${value} follower gratuiti, apri prima la notifica dell\'app.';
			case 'store.notice.turnOn': return 'Aprire';
			case 'coins.empty': return 'Nessuna storia';
			case 'login.confirm': return 'Confermare';
			case 'login.username': return ({required Object value}) => 'Inserisci il tuo nome utente ${value}';
			case 'login.channel': return 'Inserisci il collegamento del tuo canale YouTube';
			case 'login.publicUsername': return '* Si prega di mantenere il tuo account è aperto';
			case 'login.publicChannel': return '* Per favore, tieni il tuo canale aperto';
			case 'login.add': return 'Aggiungi account';
			case 'login.hintUsername': return 'nome utente';
			case 'login.hintChannel': return 'Collegamento del canale';
			case 'setting.title': return 'impostare';
			case 'setting.editor': return 'Modifica informazioni';
			case 'setting.daily': return 'Registrazione';
			case 'setting.wheel': return 'Ruota della fortuna';
			case 'setting.account': return 'Conto di gestione';
			case 'setting.language': return 'linguaggio';
			case 'setting.orders': return 'Ordine';
			case 'setting.faq': return 'problema comune';
			case 'setting.about': return 'di';
			case 'setting.share.title': return 'Condividi app';
			case 'setting.share.message': return ({required Object value}) => 'Ho trovato un\'applicazione Treasure in grado di ottenere fan e Mi piace gratuiti. Attraverso la seguente installazione di link, avremo ${value} monete d\'oro!';
			case 'setting.rateUs': return 'Valutaci';
			case 'language.title': return 'Scegli una lingua';
			case 'language.start': return 'inizio';
			case 'daily.title': return 'Registrazione';
			case 'daily.checkIn': return 'Registrazione';
			case 'daily.rules.title': return 'regola';
			case 'daily.rules.values.0': return 'Puoi accedere ogni 24 ore;';
			case 'daily.rules.values.1': return 'Dopo l\'interruzione del segno, ricomincerà.';
			case 'wheel.title': return 'Ruota della fortuna';
			case 'wheel.rules.title': return 'regola';
			case 'wheel.rules.values.0': return ({required Object value}) => 'Ogni lotteria costerà ${value} monete d\'oro;';
			case 'wheel.rules.values.1': return 'Il numero di sorteggi non è limitato.';
			case 'account.title': return 'Conto di gestione';
			case 'account.add': return '+ Aggiungi numero di account';
			case 'account.empty': return 'Nessun account';
			case 'account.alert.title': return 'Eliminare l\'account';
			case 'account.alert.message': return 'Dopo l\'eliminazione, non sarai in grado di utilizzare l\'account per le operazioni correlate.';
			case 'orders.title': return 'Ordine';
			case 'orders.pending': return 'Coda';
			case 'orders.processing': return 'in lavorazione';
			case 'orders.inProgress': return 'in lavorazione';
			case 'orders.completed': return 'completato';
			case 'orders.partial': return 'Completamento parziale';
			case 'orders.error': return 'errore';
			case 'orders.canceled': return 'Annullato';
			case 'orders.refunded': return 'rimborsato';
			case 'orders.empty': return 'Nessun ordine';
			case 'faq.title': return 'problema comune';
			case 'faq.values.0.title': return '1. Come iniziare?';
			case 'faq.values.0.value': return 'Basta aggiungere il nome utente della tua piattaforma in base ai prompt della pagina, nessuna password, ogni piattaforma ha un prompt corrispondente.';
			case 'faq.values.1.title': return '2. È sicuro usarlo?';
			case 'faq.values.1.value': return 'Naturalmente, è sicuro. Non abbiamo bisogno della tua password e non possiamo salvare i tuoi dati sull\'applicazione sociale perché sta saltando sull\'applicazione ufficiale per prestare attenzione o fare altre cose.';
			case 'faq.values.2.title': return '3. Come funziona tutto?';
			case 'faq.values.2.value': return 'Il metodo di lavoro è semplice: i tuoi dati/video personali vengono visualizzati nella nostra comunità. Gli utenti decidono liberamente se dovrebbero prestare attenzione/come te in base al contenuto dei tuoi dati personali.Come scambio che piace/segue, riceveranno monete d\'oro e possono essere utilizzati per ottenere follower/amanti.';
			case 'faq.values.3.title': return '4. L\'attenzione e come reale?';
			case 'faq.values.3.value': return 'Naturalmente, è reale. Quando acquisti servizi correlati, ci sono molti utenti reali dietro di esso per fornirti servizi ed è gestito sull\'app ufficiale. Non devi preoccuparti.';
			case 'faq.values.4.title': return '5. Come guadagno monete d\'oro?';
			case 'faq.values.4.value': return 'Nella homepage, puoi vedere l\'elenco delle attività, fare clic per seguire o simile e passare all\'app corrispondente per il funzionamento. Fai attenzione a non annullare la tua attenzione o come, il che causerà l\'annullamento della tua ricompensa.';
			case 'faq.values.5.title': return '6. Perché le attività falliscono?';
			case 'faq.values.5.value': return 'Questo di solito perché non presti davvero attenzione o ti piaccia. Dovresti prima controllare il tuo account.';
			case 'faq.values.6.title': return '7. Quanto tempo ci vuole per completare il mio ordine?';
			case 'faq.values.6.value.0': return 'Questo dipende dal volume dell\'ordine. Di solito, inizierai a ottenere il servizio immediatamente dopo aver effettuato l\'ordine e completarlo entro 24 ore Essere notato Golden Service è più veloce dei servizi ordinari.';
			case 'faq.values.6.value.1': return 'Ottieni troppo traffico in breve tempo renderà il tuo account sospettoso, quindi aspettare pazientemente è il modo migliore.';
			case 'faq.values.7.title': return '8. Cosa dovrei fare dopo l\'ordinazione?';
			case 'faq.values.7.value': return 'Dopo aver effettuato l\'ordine, tieni il tuo account divulgato. Non modificare il tuo nome utente prima che l\'ordine sia completato.';
			case 'faq.values.8.title': return '9. Cosa succede se ho un problema?';
			case 'faq.values.8.value': return 'Puoi contattarci tramite feedback nell\'app.';
			case 'about.title': return 'di';
			case 'about.contact': return 'Contattaci';
			case 'about.service': return 'Termini di servizio';
			case 'about.policy': return 'politica sulla riservatezza';
			case 'alert.ok': return 'OK';
			case 'alert.cancel': return 'Annulla';
			case 'alert.confirm': return 'Confermare';
			case 'toast.unpurchase': return 'Non posso acquistare attualmente';
			case 'toast.purchasedNotFound': return 'Non posso acquistare il servizio corrente';
			case 'toast.payment': return 'Pagamento di successo!';
			case 'toast.coinsNotEnough': return 'Oro inadeguato!';
			case 'toast.received': return 'Ricevuta riuscita!';
			case 'toast.adError': return 'Guardando gli annunci troppo spesso, riprova più tardi!';
			case 'localNotification.adTaskReady': return 'Il nuovo compito pubblicitario è pronto!';
			default: return null;
		}
	}
}

extension on _StringsJa {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'onlyTitle.contact': return 'お問い合わせ';
			case 'universal.coins': return '金';
			case 'universal.requestError': return '後でもう一度やり直してください';
			case 'universal.add': return 'アカウントを追加する';
			case 'tabbar.task': return '表紙';
			case 'tabbar.store': return '店';
			case 'tabbar.setting': return '設定';
			case 'task.title': return '表紙';
			case 'task.skip': return '飛び越える';
			case 'task.follow': return '焦点を合わせる';
			case 'task.like': return 'お気に入り';
			case 'task.noTask': return '聞かない';
			case 'task.tip.title': return '促す';
			case 'task.tip.values.0': return ({required Object value}) => '1. [${value}]ボタンをクリックします';
			case 'task.tip.values.1': return ({required Object value}) => '2.開く${value}';
			case 'task.tip.values.2': return ({required Object value}) => '${value}. ${value}';
			case 'task.tip.values.3': return ({required Object value}) => '4. ${value}に戻ります';
			case 'task.tip.values.4': return '5.金貨を入手します';
			case 'task.tip.message': return '注意/いいねをキャンセルすると、金貨が削除されます！';
			case 'store.title': return '店';
			case 'store.free': return '自由';
			case 'store.follow': return 'フォロワー';
			case 'store.like': return 'お気に入り';
			case 'store.view': return '時計';
			case 'store.share': return 'シェア';
			case 'store.retweet': return 'リツイート';
			case 'store.ad.title': return '広告報酬';
			case 'store.ad.watch': return '広告を見てください';
			case 'store.changeAccount.title': return 'アカウントを変更します';
			case 'store.changeAccount.add': return 'アカウントを追加する';
			case 'store.tip.follow.title': return 'フォロワーとシニアフォロワー';
			case 'store.tip.follow.values.0': return '';
			case 'store.tip.follow.values.1': return 'フォロワー';
			case 'store.tip.follow.values.2': return 'シニアフォロワー';
			case 'store.tip.follow.values.3': return '完了時間';
			case 'store.tip.follow.values.4': return '1〜24時間';
			case 'store.tip.follow.values.5': return '1〜4時間';
			case 'store.tip.follow.values.6': return '補償時間';
			case 'store.tip.follow.values.7': return '/';
			case 'store.tip.follow.values.8': return '7日以内の補償';
			case 'store.tip.follow.values.9': return 'フォロワーの品質';
			case 'store.tip.follow.values.10': return '本物';
			case 'store.tip.follow.values.11': return '本物でアクティブ';
			case 'store.tip.follow.values.12': return 'ドロップレート';
			case 'store.tip.follow.values.13': return '8-15％';
			case 'store.tip.follow.values.14': return '0-3％';
			case 'store.tip.like.title': return '好きで高度な賞賛';
			case 'store.tip.like.values.0': return '';
			case 'store.tip.like.values.1': return 'お気に入り';
			case 'store.tip.like.values.2': return '高いレベルの賞賛';
			case 'store.tip.like.values.3': return '完了時間';
			case 'store.tip.like.values.4': return '1〜24時間';
			case 'store.tip.like.values.5': return '1〜4時間';
			case 'store.tip.like.values.6': return '補償時間';
			case 'store.tip.like.values.7': return '/';
			case 'store.tip.like.values.8': return '7日以内の補償';
			case 'store.tip.like.values.9': return 'ドロップレート';
			case 'store.tip.like.values.10': return '8-15％';
			case 'store.tip.like.values.11': return '0-3％';
			case 'store.buy.follow': return '買い手';
			case 'store.buy.like': return '賞賛を買う';
			case 'store.buy.view': return '購入して見てください';
			case 'store.buy.share': return '購入して共有します';
			case 'store.buy.retweet': return '転送を購入します';
			case 'store.buy.accountPublic': return '*アカウントを開いておいてください';
			case 'store.buy.channelPublic': return '*チャンネルを開いたままにしてください';
			case 'store.buy.tiktok': return 'Tiktokビデオリンク';
			case 'store.buy.twitter': return 'Twitterのツイートリンク';
			case 'store.buy.instagram': return 'Instagramの投稿リンク';
			case 'store.buy.youtube': return 'YouTubeチャンネルリンク';
			case 'store.buy.pay': return '支払い';
			case 'store.purchase.title': return '支払い完了';
			case 'store.purchase.message': return '注文が完了するのを待ってください！';
			case 'store.notice.message': return ({required Object value}) => '${value}人の無料フォロワーを取得するには、最初にアプリ通知を開きます。';
			case 'store.notice.turnOn': return '開ける';
			case 'coins.empty': return '履歴はありません';
			case 'login.confirm': return '確認';
			case 'login.username': return ({required Object value}) => '${value}つのユーザー名を入力します';
			case 'login.channel': return 'YouTubeチャネルリンクを入力します';
			case 'login.publicUsername': return '*アカウントを開いておいてください';
			case 'login.publicChannel': return '*チャンネルを開いたままにしてください';
			case 'login.add': return 'アカウントを追加する';
			case 'login.hintUsername': return 'ユーザー名';
			case 'login.hintChannel': return 'チャネルリンク';
			case 'setting.title': return '設定';
			case 'setting.editor': return '情報を編集します';
			case 'setting.daily': return 'ログイン';
			case 'setting.wheel': return '運命の輪';
			case 'setting.account': return '管理アカウント';
			case 'setting.language': return '言語';
			case 'setting.orders': return '注文';
			case 'setting.faq': return '一般的な問題';
			case 'setting.about': return '約';
			case 'setting.share.title': return 'アプリを共有します';
			case 'setting.share.message': return ({required Object value}) => '無料のTiktokファンや好きなファンを獲得できるトレジャーアプリケーションを見つけました。次のリンクインストールを通じて、${value}つのゴールドコインが入ります。';
			case 'setting.rateUs': return '私たちを評価してください';
			case 'language.title': return '言語を選択してください';
			case 'language.start': return '始める';
			case 'daily.title': return 'ログイン';
			case 'daily.checkIn': return 'ログイン';
			case 'daily.rules.title': return 'ルール';
			case 'daily.rules.values.0': return '24時間ごとにサインインできます。';
			case 'daily.rules.values.1': return 'サインが中断された後、再び開始します。';
			case 'wheel.title': return '運命の輪';
			case 'wheel.rules.title': return 'ルール';
			case 'wheel.rules.values.0': return ({required Object value}) => '各宝くじには${value}枚の金のコインがかかります。';
			case 'wheel.rules.values.1': return '引き分けの数は制限されていません。';
			case 'account.title': return '管理アカウント';
			case 'account.add': return '+アカウント番号を追加します';
			case 'account.empty': return 'アカウントなし';
			case 'account.alert.title': return 'アカウントを削除する';
			case 'account.alert.message': return '削除した後、関連する操作にアカウントを使用することはできません。';
			case 'orders.title': return '注文';
			case 'orders.pending': return '列';
			case 'orders.processing': return '処理';
			case 'orders.inProgress': return '処理';
			case 'orders.completed': return '完了しました';
			case 'orders.partial': return '部分的な完成';
			case 'orders.error': return '間違い';
			case 'orders.canceled': return 'キャンセル';
			case 'orders.refunded': return '返金';
			case 'orders.empty': return '注文なし';
			case 'faq.title': return '一般的な問題';
			case 'faq.values.0.title': return '1.開始方法は？';
			case 'faq.values.0.value': return 'ページのプロンプト、パスワードなしでプラットフォームユーザー名を追加するだけで、各プラットフォームには対応するプロンプトがあります。';
			case 'faq.values.1.title': return '2.それを使用しても安全ですか？';
			case 'faq.values.1.value': return 'もちろん、それは安全です。パスワードは必要ありません。また、ソーシャルアプリケーションデータを保存することはできません。これは、他のことに注意を払うために公式のアプリケーションにジャンプしているためです。';
			case 'faq.values.2.title': return '3.これはどのように機能しますか？';
			case 'faq.values.2.value': return '作業方法は簡単です。個人データ/ビデオがコミュニティに表示されます。ユーザーは、個人データの内容に基づいてあなたに注意を払う/ように注意する必要があるかどうかを自由に決定します。好き/フォローする交換として、彼らは金貨を受け取り、フォロワー/恋人を得るために使用できます。';
			case 'faq.values.3.title': return '4.注意はリアルのようですか？';
			case 'faq.values.3.value': return 'もちろん、それは本物です。関連サービスを購入すると、その背後に多くの実際のユーザーがサービスを提供し、公式アプリで運用されています。心配する必要はありません。';
			case 'faq.values.4.title': return '5.金貨を獲得するにはどうすればよいですか？';
			case 'faq.values.4.value': return 'ホームページでは、タスクリストを表示し、クリックしてフォローまたはいいね、対応するアプリにジャンプして操作してください。注意をキャンセルしないように注意してください。これにより、報酬がキャンセルされます。';
			case 'faq.values.5.title': return '6.タスクが失敗するのはなぜですか？';
			case 'faq.values.5.value': return 'これは通常、あなたが本当に注意を払っていないか、それを好まないからです。最初にアカウントを確認する必要があります。';
			case 'faq.values.6.title': return '7.注文を完了するのにどれくらい時間がかかりますか？';
			case 'faq.values.6.value.0': return 'これはご注文のボリュームに依存します。通常、注文を出してすぐにサービスを取得し、24時間以内に完了しますが、正確な時間を与えることはできません。ゴールデンサービスは通常のサービスよりも速いことに注意してください。';
			case 'faq.values.6.value.1': return '短時間でトラフィックが多すぎるとアカウントが不審になるため、辛抱強く待つことが最善の方法です。';
			case 'faq.values.7.title': return '8.注文後はどうすればよいですか？';
			case 'faq.values.7.value': return 'ご注文後、アカウントを開示しておきます。注文が完了する前にユーザー名を変更しないでください。';
			case 'faq.values.8.title': return '9.問題がある場合はどうなりますか？';
			case 'faq.values.8.value': return 'アプリのフィードバックからお問い合わせください。';
			case 'about.title': return '約';
			case 'about.contact': return 'お問い合わせ';
			case 'about.service': return '利用規約';
			case 'about.policy': return 'プライバシーポリシー';
			case 'alert.ok': return 'わかった';
			case 'alert.cancel': return 'キャンセル';
			case 'alert.confirm': return '確認';
			case 'toast.unpurchase': return '現在購入できません';
			case 'toast.purchasedNotFound': return '現在のサービスを購入できません';
			case 'toast.payment': return '支払い完了！';
			case 'toast.coinsNotEnough': return '金は不十分です！';
			case 'toast.received': return '領収書が成功しました！';
			case 'toast.adError': return '広告を頻繁に見ているので、後でもう一度やり直してください！';
			case 'localNotification.adTaskReady': return '新しい広告タスクは準備ができています！';
			default: return null;
		}
	}
}

extension on _StringsKk {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'onlyTitle.contact': return 'бізбен хабарласыңыз';
			case 'universal.coins': return 'алтын';
			case 'universal.requestError': return 'Тағы жасауды сәл кейінірек көріңізді өтінеміз';
			case 'universal.add': return 'Аккаунт қосу';
			case 'tabbar.task': return 'Алдыңғы бет';
			case 'tabbar.store': return 'дүкен';
			case 'tabbar.setting': return 'орнату';
			case 'task.title': return 'Алдыңғы бет';
			case 'task.skip': return 'секіру';
			case 'task.follow': return 'жұмылдыру';
			case 'task.like': return 'сияқты';
			case 'task.noTask': return 'Тапсырма жоқ';
			case 'task.tip.title': return 'Тез';
			case 'task.tip.values.0': return ({required Object value}) => '1. ${value} түймесін басыңыз';
			case 'task.tip.values.1': return ({required Object value}) => '2. Ашу ${value}';
			case 'task.tip.values.2': return ({required Object value}) => '${value}. ${value}';
			case 'task.tip.values.3': return ({required Object value}) => '4. ${value}-ке дейін';
			case 'task.tip.values.4': return '5. Алтын монеталар алыңыз';
			case 'task.tip.message': return 'Егер сіз назардан бас тартсаңыз, алтын монеталар алынып тасталады!';
			case 'store.title': return 'дүкен';
			case 'store.free': return 'Тегін';
			case 'store.follow': return 'Ізбасарлар';
			case 'store.like': return 'сияқты';
			case 'store.view': return 'Қарау';
			case 'store.share': return 'бөлу';
			case 'store.retweet': return 'Ретвер';
			case 'store.ad.title': return 'Жарнамалық сыйақы';
			case 'store.ad.watch': return 'Жарнаманы қараңыз';
			case 'store.changeAccount.title': return 'Тіркелгіні өзгертіңіз';
			case 'store.changeAccount.add': return 'Аккаунт қосу';
			case 'store.tip.follow.title': return 'Ізбасарлары және аға ізбасарлары';
			case 'store.tip.follow.values.0': return '';
			case 'store.tip.follow.values.1': return 'Ізбасарлар';
			case 'store.tip.follow.values.2': return 'Аға ізбасар';
			case 'store.tip.follow.values.3': return 'Толығымен уақыт';
			case 'store.tip.follow.values.4': return '1-24 сағат';
			case 'store.tip.follow.values.5': return '1-4 сағат';
			case 'store.tip.follow.values.6': return 'Өтемақы уақыты';
			case 'store.tip.follow.values.7': return '/';
			case 'store.tip.follow.values.8': return '7 күн ішінде өтемақы';
			case 'store.tip.follow.values.9': return 'Бақытшылардың сапасы';
			case 'store.tip.follow.values.10': return 'шын';
			case 'store.tip.follow.values.11': return 'Нақты және белсенді';
			case 'store.tip.follow.values.12': return 'Тамшылатыңыз';
			case 'store.tip.follow.values.13': return '8-15%';
			case 'store.tip.follow.values.14': return '0-3%';
			case 'store.tip.like.title': return 'Сияқты және озық мадақтау';
			case 'store.tip.like.values.0': return '';
			case 'store.tip.like.values.1': return 'сияқты';
			case 'store.tip.like.values.2': return 'Биік мадақтау';
			case 'store.tip.like.values.3': return 'Толығымен уақыт';
			case 'store.tip.like.values.4': return '1-24 сағат';
			case 'store.tip.like.values.5': return '1-4 сағат';
			case 'store.tip.like.values.6': return 'Өтемақы уақыты';
			case 'store.tip.like.values.7': return '/';
			case 'store.tip.like.values.8': return '7 күн ішінде өтемақы';
			case 'store.tip.like.values.9': return 'Тамшылатыңыз';
			case 'store.tip.like.values.10': return '8-15%';
			case 'store.tip.like.values.11': return '0-3%';
			case 'store.buy.follow': return 'Сатып алушы';
			case 'store.buy.like': return 'Бірнеше мақтауды сатып алыңыз';
			case 'store.buy.view': return 'Сатып алыңыз және қараңыз';
			case 'store.buy.share': return 'Сатып алу және бөлісу';
			case 'store.buy.retweet': return 'Аударымды сатып алыңыз';
			case 'store.buy.accountPublic': return '* Тіркелгіңізді ашық ұстаңыз';
			case 'store.buy.channelPublic': return '* Арнаңызды ашық ұстаңыз';
			case 'store.buy.tiktok': return 'Сіздің Tiktok бейне сілтемесі';
			case 'store.buy.twitter': return 'Сіздің Twitter Tweet сілтемесі';
			case 'store.buy.instagram': return 'Сіздің инстаграмдағы хабарлама сілтемесі';
			case 'store.buy.youtube': return 'Сіздің YouTube арнасы сілтемесі';
			case 'store.buy.pay': return 'Төлеу';
			case 'store.purchase.title': return 'Төлем сәтті';
			case 'store.purchase.message': return 'Өтініш беруді күтіңіз!';
			case 'store.notice.message': return ({required Object value}) => 'Алдымен ${value} тегін ізбасарын алу үшін алдымен қолданба туралы хабарламаны ашыңыз.';
			case 'store.notice.turnOn': return 'Ашу';
			case 'coins.empty': return 'Тарих жоқ';
			case 'login.confirm': return 'растау';
			case 'login.username': return ({required Object value}) => '${value} пайдаланушының атын енгізіңіз';
			case 'login.channel': return 'Youtube арнасының сілтемесін енгізіңіз';
			case 'login.publicUsername': return '* Тіркелгіңізді ашық ұстаңыз';
			case 'login.publicChannel': return '* Арнаңызды ашық ұстаңыз';
			case 'login.add': return 'Аккаунт қосу';
			case 'login.hintUsername': return 'пайдаланушы аты';
			case 'login.hintChannel': return 'Арна байланысы';
			case 'setting.title': return 'орнату';
			case 'setting.editor': return 'Ақпаратты өңдеу';
			case 'setting.daily': return 'Кіру';
			case 'setting.wheel': return 'FORTUNE дөңгелегі';
			case 'setting.account': return 'Басқару шоты';
			case 'setting.language': return 'тіл';
			case 'setting.orders': return 'Тапсырыс';
			case 'setting.faq': return 'Жалпы проблема';
			case 'setting.about': return 'жөнінде';
			case 'setting.share.title': return 'Бағдарламаны бөлісу';
			case 'setting.share.message': return ({required Object value}) => 'Мен Tiktok Fans және ұнайтын қазыналық қосымшаны таптым. Келесі сілтемені орнату арқылы біз ${value} алтын монетаны аламыз!';
			case 'setting.rateUs': return 'Бізді бағалаңыз';
			case 'language.title': return 'Тілді таңдаңыз';
			case 'language.start': return 'жүргізу';
			case 'daily.title': return 'Кіру';
			case 'daily.checkIn': return 'Кіру';
			case 'daily.rules.title': return 'ереже';
			case 'daily.rules.values.0': return 'Сіз әр 24 сағат сайын кіре аласыз;';
			case 'daily.rules.values.1': return 'Қол қоюдан кейін үзілгеннен кейін ол қайтадан басталады.';
			case 'wheel.title': return 'FORTUNE дөңгелегі';
			case 'wheel.rules.title': return 'ереже';
			case 'wheel.rules.values.0': return ({required Object value}) => 'Әр лотереяға ${value} алтын монета тұрады;';
			case 'wheel.rules.values.1': return 'Суреттер саны шектелмейді.';
			case 'account.title': return 'Басқару шоты';
			case 'account.add': return '+ Есептік жазба нөмірін қосыңыз';
			case 'account.empty': return 'Есептік жазба жоқ';
			case 'account.alert.title': return 'Тіркелгіні жою';
			case 'account.alert.message': return 'Жойылғаннан кейін сіз осыған байланысты операциялар үшін есептік жазбаны пайдалана алмайсыз.';
			case 'orders.title': return 'Тапсырыс';
			case 'orders.pending': return 'Кезек';
			case 'orders.processing': return 'Өңдеу';
			case 'orders.inProgress': return 'өңдеу';
			case 'orders.completed': return 'орындалды';
			case 'orders.partial': return 'Ішінара аяқтау';
			case 'orders.error': return 'қателік';
			case 'orders.canceled': return 'Болдырмады';
			case 'orders.refunded': return 'Қайтарылған';
			case 'orders.empty': return 'Тапсырыс жоқ';
			case 'faq.title': return 'Жалпы проблема';
			case 'faq.values.0.title': return '1. Қалай бастау керек?';
			case 'faq.values.0.value': return 'Платформаңыздың пайдаланушы атын беттің нұсқауларына сәйкес қосыңыз, құпия сөз жоқ, әр платформада сәйкес шақыру бар.';
			case 'faq.values.1.title': return '2. Мұны пайдалану қауіпсіз бе?';
			case 'faq.values.1.value': return 'Әрине, бұл қауіпсіз. Бізге құпия сөзді қажет етпейді, және біз сіздің әлеуметтік өтініштеріңізді сақтай алмаймыз, өйткені ол ресми қосымшаға, басқа істерге назар аудару немесе жасау үшін секілді.';
			case 'faq.values.2.title': return '3. Бұл қалай жұмыс істейді?';
			case 'faq.values.2.value': return 'Жұмыс әдісі қарапайым: сіздің жеке деректеріңіз / видео біздің қоғамдастықта көрсетіледі. Пайдаланушылар сіздің жеке деректеріңіздің мазмұнына сүйене отырып, сізге назар аудару керек пе, жоқ па, соны еркін шешеді.Оларды ұнататын / ұстанатын алмасу ретінде олар алтын монеталар алады және оларды ізбасарлар / әуесқойлар алу үшін қолдануға болады.';
			case 'faq.values.3.title': return '4. НАЗАР АУДАРЫҢЫЗ ЖӘНЕ ҚЫЗДАР?';
			case 'faq.values.3.value': return 'Әрине, бұл нақты. Байланысты қызметтерді сатып алған кезде, сізге қызметтерді ұсыну үшін нақты пайдаланушылар көп, сондықтан ол қызметтерді ұсынады және ол ресми қосымшада жұмыс істейді. Сізге алаңдаудың қажеті жоқ.';
			case 'faq.values.4.title': return '5. Алтын монеталарды қалай табуға болады?';
			case 'faq.values.4.value': return 'Басты бетте, тапсырмалар тізімін көруге болады, орындау немесе ұнату үшін басыңыз, содан кейін жұмыс істеуі үшін сәйкес бағдарламаға өту және сәйкес бағдарламаға өту. Сіздің назарыңызды тоқтатпаңыз, бұл сіздің сыйақысыңызды болдырмауға тырысыңыз.';
			case 'faq.values.5.title': return '6. Неліктен міндеттер орындалмайды?';
			case 'faq.values.5.value': return 'Бұл әдетте сіз шынымен назар аудармағаныңыз немесе оған ұнамсыз. Алдымен сіздің шотыңызды тексеруіңіз керек.';
			case 'faq.values.6.title': return '7. Тапсырысымды аяқтауға қанша уақыт кетеді?';
			case 'faq.values.6.value.0': return 'Бұл тапсырыс көлеміне байланысты. Әдетте, сіз тапсырыс бергеннен кейін, оны бірден ала бастайсыз және оны 24 сағат ішінде аяқтай бастайсыз, бірақ дәл уақыт бере алмаймыз, себебі біз артында жұмыс істейтін нақты пайдаланушылар көп. Ол керек Айта кету керек, алтын қызметі қарапайым қызметтерге қарағанда тезірек.';
			case 'faq.values.6.value.1': return 'Тым көп трафик алыңыз, қысқа уақыт ішінде сіздің есептік жазбаңызды күдіктендіреді, сондықтан шыдамдылық тілі - ең жақсы әдіс.';
			case 'faq.values.7.title': return '8. Тапсырыс беруден кейін не істеуім керек?';
			case 'faq.values.7.value': return 'Тапсырысты қойғаннан кейін, есептік жазбаңызды ашыңыз. Пайдаланушы атын тапсырыс аяқталғанға дейін өзгертпеңіз.';
			case 'faq.values.8.title': return '9. Егер менде проблема болса ше?';
			case 'faq.values.8.value': return 'Бағдарламадағы кері байланыс арқылы бізбен байланыса аласыз.';
			case 'about.title': return 'жөнінде';
			case 'about.contact': return 'бізбен хабарласыңыз';
			case 'about.service': return 'Қызмет көрсету шарттары';
			case 'about.policy': return 'Құпиялылық саясаты';
			case 'alert.ok': return 'ЖАРАЙДЫ МА';
			case 'alert.cancel': return 'Күшін жою';
			case 'alert.confirm': return 'растау';
			case 'toast.unpurchase': return 'Қазір сатып ала алмаймын';
			case 'toast.purchasedNotFound': return 'Ағымдағы қызметті сатып ала алмайды';
			case 'toast.payment': return 'Төлем сәтті!';
			case 'toast.coinsNotEnough': return 'Алтын жеткіліксіз!';
			case 'toast.received': return 'Сәтті түбіртек!';
			case 'toast.adError': return 'Жарнамаларды жиі қарау, кейінірек қайталап көріңіз!';
			case 'localNotification.adTaskReady': return 'Жаңа жарнама тапсырмасы дайын!';
			default: return null;
		}
	}
}

extension on _StringsKo {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'onlyTitle.contact': return '문의하기';
			case 'universal.coins': return '금';
			case 'universal.requestError': return '나중에 다시 시도 해주십시오';
			case 'universal.add': return '계정을 추가';
			case 'tabbar.task': return '첫 장';
			case 'tabbar.store': return '가게';
			case 'tabbar.setting': return '설정';
			case 'task.title': return '첫 장';
			case 'task.skip': return '뛰어 넘다';
			case 'task.follow': return '집중하십시오';
			case 'task.like': return '처럼';
			case 'task.noTask': return '묻지 않는다';
			case 'task.tip.title': return '즉각적인';
			case 'task.tip.values.0': return ({required Object value}) => '1. ${value} 버튼을 클릭하십시오';
			case 'task.tip.values.1': return ({required Object value}) => '2. ${value}을 엽니 다';
			case 'task.tip.values.2': return ({required Object value}) => '${value}. ${value}';
			case 'task.tip.values.3': return ({required Object value}) => '4. ${value}으로 돌아갑니다';
			case 'task.tip.values.4': return '5. 금화를 얻으십시오';
			case 'task.tip.message': return '관심을 취소하면 금화가 제거됩니다!';
			case 'store.title': return '가게';
			case 'store.free': return '무료';
			case 'store.follow': return '추종자';
			case 'store.like': return '처럼';
			case 'store.view': return '보다';
			case 'store.share': return '공유하다';
			case 'store.retweet': return '리트 윗';
			case 'store.ad.title': return '광고 보상';
			case 'store.ad.watch': return '광고를보십시오';
			case 'store.changeAccount.title': return '계정을 수정하십시오';
			case 'store.changeAccount.add': return '계정을 추가';
			case 'store.tip.follow.title': return '추종자 및 선임 추종자';
			case 'store.tip.follow.values.0': return '';
			case 'store.tip.follow.values.1': return '추종자';
			case 'store.tip.follow.values.2': return '선임 추종자';
			case 'store.tip.follow.values.3': return '완전한 시간';
			case 'store.tip.follow.values.4': return '1-24 시간';
			case 'store.tip.follow.values.5': return '1-4 시간';
			case 'store.tip.follow.values.6': return '보상 시간';
			case 'store.tip.follow.values.7': return '/';
			case 'store.tip.follow.values.8': return '7 일 이내에 보상';
			case 'store.tip.follow.values.9': return '추종자 품질';
			case 'store.tip.follow.values.10': return '진짜';
			case 'store.tip.follow.values.11': return '진짜 및 활동';
			case 'store.tip.follow.values.12': return '낙하율';
			case 'store.tip.follow.values.13': return '8-15%';
			case 'store.tip.follow.values.14': return '0-3%';
			case 'store.tip.like.title': return '같은 칭찬';
			case 'store.tip.like.values.0': return '';
			case 'store.tip.like.values.1': return '처럼';
			case 'store.tip.like.values.2': return '높은 수준의 찬양';
			case 'store.tip.like.values.3': return '완전한 시간';
			case 'store.tip.like.values.4': return '1-24 시간';
			case 'store.tip.like.values.5': return '1-4 시간';
			case 'store.tip.like.values.6': return '보상 시간';
			case 'store.tip.like.values.7': return '/';
			case 'store.tip.like.values.8': return '7 일 이내에 보상';
			case 'store.tip.like.values.9': return '낙하율';
			case 'store.tip.like.values.10': return '8-15%';
			case 'store.tip.like.values.11': return '0-3%';
			case 'store.buy.follow': return '사는 사람';
			case 'store.buy.like': return '칭찬을 사십시오';
			case 'store.buy.view': return '사고 관찰하십시오';
			case 'store.buy.share': return '구매 및 공유';
			case 'store.buy.retweet': return '양도를 구입하십시오';
			case 'store.buy.accountPublic': return '* 계정을 열어 두십시오';
			case 'store.buy.channelPublic': return '* 채널을 열어 두십시오';
			case 'store.buy.tiktok': return 'Tiktok 비디오 링크';
			case 'store.buy.twitter': return '트위터 트윗 링크';
			case 'store.buy.instagram': return 'Instagram 게시물 링크';
			case 'store.buy.youtube': return 'YouTube 채널 링크';
			case 'store.buy.pay': return '지불';
			case 'store.purchase.title': return '결제 성공';
			case 'store.purchase.message': return '주문이 완료되기를 기다리십시오!';
			case 'store.notice.message': return ({required Object value}) => '무료 팔로워 ${value} 명을 얻으려면 먼저 앱 알림을 엽니 다.';
			case 'store.notice.turnOn': return '열려 있는';
			case 'coins.empty': return '역사가 없습니다';
			case 'login.confirm': return '확인하다';
			case 'login.username': return ({required Object value}) => '${value} 사용자 이름을 입력하십시오';
			case 'login.channel': return 'YouTube 채널 링크를 입력하십시오';
			case 'login.publicUsername': return '* 계정을 열어 두십시오';
			case 'login.publicChannel': return '* 채널을 열어 두십시오';
			case 'login.add': return '계정을 추가';
			case 'login.hintUsername': return '사용자 이름';
			case 'login.hintChannel': return '채널 링크';
			case 'setting.title': return '설정';
			case 'setting.editor': return '정보 편집';
			case 'setting.daily': return '로그인';
			case 'setting.wheel': return '행운의 바퀴';
			case 'setting.account': return '관리 계정';
			case 'setting.language': return '언어';
			case 'setting.orders': return '주문하다';
			case 'setting.faq': return '일반적인 문제';
			case 'setting.about': return '~에 대한';
			case 'setting.share.title': return '앱 공유';
			case 'setting.share.message': return ({required Object value}) => '무료 Tiktok 팬과 좋아하는 보물 애플리케이션을 찾았습니다. 다음 링크 설치를 통해 ${value} 개의 금 코인을 얻을 수 있습니다!';
			case 'setting.rateUs': return '우리를 평가하십시오';
			case 'language.title': return '언어를 선택하십시오';
			case 'language.start': return '시작';
			case 'daily.title': return '로그인';
			case 'daily.checkIn': return '로그인';
			case 'daily.rules.title': return '규칙';
			case 'daily.rules.values.0': return '24 시간마다 로그인 할 수 있습니다.';
			case 'daily.rules.values.1': return '서명이 중단되면 다시 시작됩니다.';
			case 'wheel.title': return '행운의 바퀴';
			case 'wheel.rules.title': return '규칙';
			case 'wheel.rules.values.0': return ({required Object value}) => '각 복권은 금화 ${value} 개가 비용이 듭니다.';
			case 'wheel.rules.values.1': return '무승부 수는 제한되지 않습니다.';
			case 'account.title': return '관리 계정';
			case 'account.add': return '+ 계정 번호를 추가하십시오';
			case 'account.empty': return '계정이 없습니다';
			case 'account.alert.title': return '계정 삭제';
			case 'account.alert.message': return '삭제 후 관련 작업에 계정을 사용할 수 없습니다.';
			case 'orders.title': return '주문하다';
			case 'orders.pending': return '대기줄';
			case 'orders.processing': return '처리';
			case 'orders.inProgress': return '처리';
			case 'orders.completed': return '완전한';
			case 'orders.partial': return '부분 완료';
			case 'orders.error': return '실수';
			case 'orders.canceled': return '취소 된';
			case 'orders.refunded': return '환불';
			case 'orders.empty': return '주문 없음';
			case 'faq.title': return '일반적인 문제';
			case 'faq.values.0.title': return '1. 시작하는 방법?';
			case 'faq.values.0.value': return '페이지 프롬프트에 따라 플랫폼 사용자 이름을 추가하기 만하면 각 플랫폼에는 해당 프롬프트가 있습니다.';
			case 'faq.values.1.title': return '2. 그것을 사용하는 것이 안전합니까?';
			case 'faq.values.1.value': return '물론 안전합니다. 우리는 귀하의 비밀번호가 필요하지 않으며, 다른 일에주의를 기울이거나 수행하기 위해 공식 응용 프로그램으로 뛰어 들기 때문에 소셜 응용 프로그램 데이터를 저장할 수 없습니다.';
			case 'faq.values.2.title': return '3.이 모든 것이 어떻게 작동합니까?';
			case 'faq.values.2.value': return '작업 방법은 간단합니다. 귀하의 개인 데이터/비디오가 커뮤니티에 표시됩니다. 사용자는 개인 데이터의 내용을 기반으로주의를 기울여야하는지 여부를 자유롭게 결정합니다.좋아/팔로우하는 교환으로 금화를 받고 팔로어/애호가를 얻는 데 사용될 수 있습니다.';
			case 'faq.values.3.title': return '4.주의와 진짜가 좋아요?';
			case 'faq.values.3.value': return '물론, 그것은 실제입니다. 관련 서비스를 구매할 때, 서비스를 제공하기위한 많은 실제 사용자가 있으며, 공식 앱에서 운영됩니다. 걱정할 필요가 없습니다.';
			case 'faq.values.4.title': return '5. 금화를 어떻게 얻습니까?';
			case 'faq.values.4.value': return '홈페이지에서 작업 목록을보고, 클릭하거나 팔로우하거나 좋아하는 다음 해당 앱으로 이동하여 작동을 위해 해당 앱으로 점프 할 수 있습니다.주의를 취소하거나 취소하지 않도록주의하십시오.';
			case 'faq.values.5.title': return '6. 작업이 실패하는 이유는 무엇입니까?';
			case 'faq.values.5.value': return '이것은 일반적으로주의를 기울이지 않거나 좋아하지 않기 때문입니다. 먼저 계정을 확인해야합니다.';
			case 'faq.values.6.title': return '7. 주문을 완료하는 데 얼마나 걸립니까?';
			case 'faq.values.6.value.0': return '이것은 주문량에 따라 다릅니다. 일반적으로 주문을받은 후 즉시 서비스를 받기 시작하고 24 시간 이내에 완료 할 수는 있지만 뒷면 뒤에 작동하는 실제 사용자가 많기 때문에 정확한 시간을 줄 수는 없습니다. 황금 서비스는 일반 서비스보다 빠릅니다.';
			case 'faq.values.6.value.1': return '짧은 시간에 너무 많은 트래픽을 얻으면 계정이 의심되므로 참을성있게 기다리는 것이 가장 좋습니다.';
			case 'faq.values.7.title': return '8. 주문 후 어떻게해야합니까?';
			case 'faq.values.7.value': return '주문한 후 계정을 공개하십시오. 주문이 완료되기 전에 사용자 이름을 수정하지 마십시오.';
			case 'faq.values.8.title': return '9. 문제가 있으면 어떻게해야합니까?';
			case 'faq.values.8.value': return '앱의 피드백을 통해 당사에 문의 할 수 있습니다.';
			case 'about.title': return '~에 대한';
			case 'about.contact': return '문의하기';
			case 'about.service': return '서비스 약관';
			case 'about.policy': return '개인 정보 정책';
			case 'alert.ok': return '확인';
			case 'alert.cancel': return '취소';
			case 'alert.confirm': return '확인하다';
			case 'toast.unpurchase': return '현재 살 수 없습니다';
			case 'toast.purchasedNotFound': return '현재 서비스를 살 수 없습니다';
			case 'toast.payment': return '결제 성공!';
			case 'toast.coinsNotEnough': return '금이 부적절합니다!';
			case 'toast.received': return '성공적인 영수증!';
			case 'toast.adError': return '광고를 너무 자주보고 나중에 다시 시도하십시오!';
			case 'localNotification.adTaskReady': return '새로운 광고 작업이 준비되었습니다!';
			default: return null;
		}
	}
}

extension on _StringsMr {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'onlyTitle.contact': return 'आमच्याशी संपर्क साधा';
			case 'universal.coins': return 'सोने';
			case 'universal.requestError': return 'कृपया पुन्हा प्रयत्न करा';
			case 'universal.add': return 'खाते जोडा';
			case 'tabbar.task': return 'पहिले पान';
			case 'tabbar.store': return 'दुकान';
			case 'tabbar.setting': return 'सेट अप';
			case 'task.title': return 'पहिले पान';
			case 'task.skip': return 'उडी मारा';
			case 'task.follow': return 'यावर लक्ष केंद्रित करा';
			case 'task.like': return 'आवडले';
			case 'task.noTask': return 'कोणतेही कार्य नाही';
			case 'task.tip.title': return 'प्रॉमप्ट';
			case 'task.tip.values.0': return ({required Object value}) => '1. ${value} बटणावर क्लिक करा';
			case 'task.tip.values.1': return ({required Object value}) => '2. उघडा ${value}';
			case 'task.tip.values.2': return ({required Object value}) => '${value}. ${value}';
			case 'task.tip.values.3': return ({required Object value}) => '4. ${value} वर परत';
			case 'task.tip.values.4': return '5. सोन्याचे नाणी मिळवा';
			case 'task.tip.message': return 'आपण आपले लक्ष/जसे की, सोन्याचे नाणी काढल्या जातील!';
			case 'store.title': return 'दुकान';
			case 'store.free': return 'फुकट';
			case 'store.follow': return 'अनुयायी';
			case 'store.like': return 'आवडले';
			case 'store.view': return 'पहा';
			case 'store.share': return 'वाटा';
			case 'store.retweet': return 'रीट्वीट';
			case 'store.ad.title': return 'जाहिरात बक्षीस';
			case 'store.ad.watch': return 'एक जाहिरात पहा';
			case 'store.changeAccount.title': return 'खाते सुधारित करा';
			case 'store.changeAccount.add': return 'खाते जोडा';
			case 'store.tip.follow.title': return 'अनुयायी आणि वरिष्ठ अनुयायी';
			case 'store.tip.follow.values.0': return '';
			case 'store.tip.follow.values.1': return 'अनुयायी';
			case 'store.tip.follow.values.2': return 'वरिष्ठ अनुयायी';
			case 'store.tip.follow.values.3': return 'पूर्ण वेळ';
			case 'store.tip.follow.values.4': return '1-24 तास';
			case 'store.tip.follow.values.5': return '1-4 तास';
			case 'store.tip.follow.values.6': return 'भरपाई वेळ';
			case 'store.tip.follow.values.7': return '/';
			case 'store.tip.follow.values.8': return '7 दिवसांच्या आत भरपाई';
			case 'store.tip.follow.values.9': return 'अनुयायी गुणवत्ता';
			case 'store.tip.follow.values.10': return 'वास्तविक';
			case 'store.tip.follow.values.11': return 'वास्तविक आणि सक्रिय';
			case 'store.tip.follow.values.12': return 'ड्रॉप रेट';
			case 'store.tip.follow.values.13': return '8-15%';
			case 'store.tip.follow.values.14': return '0-3%';
			case 'store.tip.like.title': return 'जसे आणि प्रगत स्तुती';
			case 'store.tip.like.values.0': return '';
			case 'store.tip.like.values.1': return 'आवडले';
			case 'store.tip.like.values.2': return 'उच्च -स्तरीय स्तुती';
			case 'store.tip.like.values.3': return 'पूर्ण वेळ';
			case 'store.tip.like.values.4': return '1-24 तास';
			case 'store.tip.like.values.5': return '1-4 तास';
			case 'store.tip.like.values.6': return 'भरपाई वेळ';
			case 'store.tip.like.values.7': return '/';
			case 'store.tip.like.values.8': return '7 दिवसांच्या आत भरपाई';
			case 'store.tip.like.values.9': return 'ड्रॉप रेट';
			case 'store.tip.like.values.10': return '8-15%';
			case 'store.tip.like.values.11': return '0-3%';
			case 'store.buy.follow': return 'खरेदीदार';
			case 'store.buy.like': return 'काही स्तुती खरेदी करा';
			case 'store.buy.view': return 'खरेदी आणि पहा';
			case 'store.buy.share': return 'खरेदी आणि सामायिक करा';
			case 'store.buy.retweet': return 'हस्तांतरण खरेदी करा';
			case 'store.buy.accountPublic': return '* कृपया आपले खाते खुले आहे';
			case 'store.buy.channelPublic': return '* कृपया आपले चॅनेल उघडे ठेवा';
			case 'store.buy.tiktok': return 'आपला टिकटोक व्हिडिओ दुवा';
			case 'store.buy.twitter': return 'आपला ट्विटर ट्विट दुवा';
			case 'store.buy.instagram': return 'आपला इंस्टाग्राम पोस्ट दुवा';
			case 'store.buy.youtube': return 'आपला YouTube चॅनेल दुवा';
			case 'store.buy.pay': return 'वेतन';
			case 'store.purchase.title': return 'देयक यशस्वी';
			case 'store.purchase.message': return 'कृपया ऑर्डर पूर्ण होण्याची प्रतीक्षा करा!';
			case 'store.notice.message': return ({required Object value}) => '${value} विनामूल्य अनुयायी मिळविण्यासाठी, प्रथम अ‍ॅप सूचना उघडा.';
			case 'store.notice.turnOn': return 'उघडा';
			case 'coins.empty': return 'इतिहास नाही';
			case 'login.confirm': return 'पुष्टी';
			case 'login.username': return ({required Object value}) => 'आपले ${value} वापरकर्ता नाव प्रविष्ट करा';
			case 'login.channel': return 'आपला YouTube चॅनेल दुवा प्रविष्ट करा';
			case 'login.publicUsername': return '* कृपया आपले खाते खुले आहे';
			case 'login.publicChannel': return '* कृपया आपले चॅनेल उघडे ठेवा';
			case 'login.add': return 'खाते जोडा';
			case 'login.hintUsername': return 'वापरकर्तानाव';
			case 'login.hintChannel': return 'चॅनेल दुवा';
			case 'setting.title': return 'सेट अप';
			case 'setting.editor': return 'माहिती संपादित करा';
			case 'setting.daily': return 'साइन इन करा';
			case 'setting.wheel': return 'फॉर्च्युनचे चाक';
			case 'setting.account': return 'व्यवस्थापन खाते';
			case 'setting.language': return 'इंग्रजी';
			case 'setting.orders': return 'ऑर्डर';
			case 'setting.faq': return 'सामान्य समस्या';
			case 'setting.about': return 'बद्दल';
			case 'setting.share.title': return 'अॅप सामायिक करा';
			case 'setting.share.message': return ({required Object value}) => 'मला एक खजिना अनुप्रयोग सापडला जो विनामूल्य टिकटोक चाहत्यांना आणि आवडी मिळवू शकेल. खालील दुवा स्थापनेद्वारे आम्हाला ${value} सोन्याचे नाणी मिळतील!';
			case 'setting.rateUs': return 'आमचे मूल्यांकन करा';
			case 'language.title': return 'एक भाषा निवडा';
			case 'language.start': return 'प्रारंभ करा';
			case 'daily.title': return 'साइन इन करा';
			case 'daily.checkIn': return 'साइन इन करा';
			case 'daily.rules.title': return 'नियम';
			case 'daily.rules.values.0': return 'आपण दर 24 तासांनी साइन इन करू शकता;';
			case 'daily.rules.values.1': return 'चिन्ह -व्यत्ययानंतर, ते पुन्हा सुरू होईल.';
			case 'wheel.title': return 'फॉर्च्युनचे चाक';
			case 'wheel.rules.title': return 'नियम';
			case 'wheel.rules.values.0': return ({required Object value}) => 'प्रत्येक लॉटरीची किंमत ${value} सोन्याची नाणी असेल;';
			case 'wheel.rules.values.1': return 'ड्रॉची संख्या मर्यादित नाही.';
			case 'account.title': return 'व्यवस्थापन खाते';
			case 'account.add': return '+ खाते क्रमांक जोडा';
			case 'account.empty': return 'खाते नाही';
			case 'account.alert.title': return 'खाते हटवा';
			case 'account.alert.message': return 'हटविल्यानंतर, आपण संबंधित ऑपरेशन्ससाठी खाते वापरण्यास सक्षम राहणार नाही.';
			case 'orders.title': return 'ऑर्डर';
			case 'orders.pending': return 'रांग';
			case 'orders.processing': return 'प्रक्रिया';
			case 'orders.inProgress': return 'प्रक्रिया';
			case 'orders.completed': return 'पूर्ण';
			case 'orders.partial': return 'आंशिक पूर्णता';
			case 'orders.error': return 'चूक';
			case 'orders.canceled': return 'रद्द';
			case 'orders.refunded': return 'परत केले';
			case 'orders.empty': return 'ऑर्डर नाही';
			case 'faq.title': return 'सामान्य समस्या';
			case 'faq.values.0.title': return '1. कसे सुरू करावे?';
			case 'faq.values.0.value': return 'पृष्ठ सूचनांनुसार फक्त आपले प्लॅटफॉर्म वापरकर्ता नाव जोडा, संकेतशब्द नाही, प्रत्येक प्लॅटफॉर्मला संबंधित प्रॉमप्ट आहे.';
			case 'faq.values.1.title': return '२. ते वापरणे सुरक्षित आहे का?';
			case 'faq.values.1.value': return 'अर्थात, ते सुरक्षित आहे. आम्हाला आपल्या संकेतशब्दाची आवश्यकता नाही आणि आम्ही आपला सामाजिक अनुप्रयोग डेटा जतन करू शकत नाही कारण इतर गोष्टींकडे लक्ष देण्यासाठी किंवा करण्यासाठी अधिकृत अनुप्रयोगावर उडी मारत आहे.';
			case 'faq.values.2.title': return 'This. हे सर्व कसे कार्य करते?';
			case 'faq.values.2.value': return 'कामाची पद्धत सोपी आहे: आपला वैयक्तिक डेटा/व्हिडिओ आमच्या समाजात प्रदर्शित झाला आहे. वापरकर्त्यांनी आपल्या वैयक्तिक डेटाच्या सामग्रीवर आधारित आपल्याकडे लक्ष द्यावे की नाही हे स्वतंत्रपणे निर्णय घ्या.एक्सचेंज म्हणून/अनुसरण करणारे एक्सचेंज म्हणून, त्यांना सोन्याचे नाणी प्राप्त होतील आणि अनुयायी/प्रेमी मिळविण्यासाठी वापरले जाऊ शकतात.';
			case 'faq.values.3.title': return 'Motion. लक्ष आणि वास्तविक आहे का?';
			case 'faq.values.3.value': return 'अर्थात, ते वास्तविक आहे. जेव्हा आपण संबंधित सेवा खरेदी करता तेव्हा आपल्याला सेवा प्रदान करण्यासाठी त्यामागे बरेच वास्तविक वापरकर्ते असतात आणि ते अधिकृत अॅपवर चालविले जाते. आपल्याला त्याबद्दल काळजी करण्याची आवश्यकता नाही.';
			case 'faq.values.4.title': return 'I. मी सोन्याचे नाणी कशी मिळवू?';
			case 'faq.values.4.value': return 'मुख्यपृष्ठावर, आपण कार्य यादी पाहू शकता, अनुसरण करण्यासाठी किंवा पसंत करण्यासाठी क्लिक करा आणि ऑपरेशनसाठी संबंधित अ‍ॅपवर जा. कृपया आपले लक्ष रद्द करू नका किंवा आवडू नका याची काळजी घ्या, ज्यामुळे आपले बक्षीस रद्द होईल.';
			case 'faq.values.5.title': return '6. कार्ये का अयशस्वी होतात?';
			case 'faq.values.5.value': return 'हे सहसा असे आहे कारण आपण खरोखर लक्ष देत नाही किंवा ते आवडत नाही. आपण प्रथम आपले खाते तपासले पाहिजे.';
			case 'faq.values.6.title': return 'My. माझी ऑर्डर पूर्ण करण्यास किती वेळ लागेल?';
			case 'faq.values.6.value.0': return 'हे आपल्या ऑर्डर व्हॉल्यूमवर अवलंबून आहे. सहसा, ऑर्डर दिल्यानंतर आपण ताबडतोब सेवा मिळवू शकाल आणि 24 तासाच्या आत पूर्ण करू शकाल, परंतु आम्ही अचूक वेळ देऊ शकत नाही, कारण पाठीमागे मोठ्या संख्येने वास्तविक वापरकर्ते कार्यरत आहेत. ते पाहिजे. लक्षात घ्या की गोल्डन सर्व्हिस सामान्य सेवांपेक्षा वेगवान आहे.';
			case 'faq.values.6.value.1': return 'थोड्या वेळात जास्त रहदारी मिळवा आपले खाते संशयास्पद करेल, म्हणून धैर्याने वाट पाहणे हा एक उत्तम मार्ग आहे.';
			case 'faq.values.7.title': return 'Orduy. ऑर्डर दिल्यानंतर मी काय करावे?';
			case 'faq.values.7.value': return 'आपण ऑर्डर दिल्यानंतर आपले खाते उघड करा. ऑर्डर पूर्ण होण्यापूर्वी आपले वापरकर्तानाव सुधारित करू नका.';
			case 'faq.values.8.title': return '9. मला समस्या असल्यास काय?';
			case 'faq.values.8.value': return 'अ‍ॅपमधील अभिप्रायाद्वारे आपण आमच्याशी संपर्क साधू शकता.';
			case 'about.title': return 'बद्दल';
			case 'about.contact': return 'आमच्याशी संपर्क साधा';
			case 'about.service': return 'सेवा अटी';
			case 'about.policy': return 'गोपनीयता धोरण';
			case 'alert.ok': return 'ठीक आहे';
			case 'alert.cancel': return 'रद्द करा';
			case 'alert.confirm': return 'पुष्टी';
			case 'toast.unpurchase': return 'सध्या खरेदी करू शकत नाही';
			case 'toast.purchasedNotFound': return 'सध्याची सेवा खरेदी करू शकत नाही';
			case 'toast.payment': return 'देयक यशस्वी!';
			case 'toast.coinsNotEnough': return 'सोन्याचे अपुरे!';
			case 'toast.received': return 'यशस्वी पावती!';
			case 'toast.adError': return 'जाहिराती बर्‍याचदा पहात आहेत, कृपया नंतर पुन्हा प्रयत्न करा!';
			case 'localNotification.adTaskReady': return 'नवीन जाहिरात कार्य तयार आहे!';
			default: return null;
		}
	}
}

extension on _StringsNe {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'onlyTitle.contact': return 'हामीलाई सम्पर्क गर्नुहोस';
			case 'universal.coins': return 'सुन';
			case 'universal.requestError': return 'फेरी प्रयास गर्नु होला';
			case 'universal.add': return 'खाता थप्नुहोस्';
			case 'tabbar.task': return 'अग्रगामी पृष्ठ';
			case 'tabbar.store': return 'पसल';
			case 'tabbar.setting': return 'स्थापित गर्नु';
			case 'task.title': return 'अग्रगामी पृष्ठ';
			case 'task.skip': return 'उफ्रनु';
			case 'task.follow': return 'ध्यान दिनुहोस्';
			case 'task.like': return 'मन पराउनु';
			case 'task.noTask': return 'काम होइन';
			case 'task.tip.title': return 'तुरुन्तै';
			case 'task.tip.values.0': return '1. बटन क्लिक गर्नुहोस्';
			case 'task.tip.values.1': return ({required Object value}) => '2. खुला ${value}';
			case 'task.tip.values.2': return ({required Object value}) => '${value}. ${value}';
			case 'task.tip.values.3': return 'The। To मा फिर्ता';
			case 'task.tip.values.4': return 'Law। सुन सिक्का प्राप्त गर्नुहोस्';
			case 'task.tip.message': return 'यदि तपाइँ तपाइँको ध्यान रद्द / जस्तै सुनको सिक्का हटाइनेछ!';
			case 'store.title': return 'पसल';
			case 'store.free': return 'सितैमा';
			case 'store.follow': return 'अनुयायीहरू';
			case 'store.like': return 'मन पराउनु';
			case 'store.view': return 'अबलोकन गर्नु';
			case 'store.share': return 'भाग';
			case 'store.retweet': return 'खुदर ग्रर्काषदुक्षीरो उत्तुवृ्ट';
			case 'store.ad.title': return 'विज्ञापन इनाम';
			case 'store.ad.watch': return 'विज्ञापन हेर्नुहोस्';
			case 'store.changeAccount.title': return 'खाता परिमार्जन गर्नुहोस्';
			case 'store.changeAccount.add': return 'खाता थप्नुहोस्';
			case 'store.tip.follow.title': return 'अनुयायीहरू र वरिष्ठ अनुयायी';
			case 'store.tip.follow.values.0': return '';
			case 'store.tip.follow.values.1': return 'अनुयायीहरू';
			case 'store.tip.follow.values.2': return 'वरिष्ठ अनुयायी';
			case 'store.tip.follow.values.3': return 'पूर्ण समय';
			case 'store.tip.follow.values.4': return '1-24 घण्टा';
			case 'store.tip.follow.values.5': return '1--- घण्टा';
			case 'store.tip.follow.values.6': return 'क्षतिपूर्ति समय';
			case 'store.tip.follow.values.7': return '/';
			case 'store.tip.follow.values.8': return 'Days दिन भित्र क्षतिपूर्ति';
			case 'store.tip.follow.values.9': return 'अनुगमन गुणस्तर';
			case 'store.tip.follow.values.10': return 'वास्तविक';
			case 'store.tip.follow.values.11': return 'वास्तविक र सक्रिय';
			case 'store.tip.follow.values.12': return 'ड्रप दर';
			case 'store.tip.follow.values.13': return '-15-1-15%';
			case 'store.tip.follow.values.14': return '0--3%';
			case 'store.tip.like.title': return 'जस्तै र उन्नत प्रशंसा';
			case 'store.tip.like.values.0': return '';
			case 'store.tip.like.values.1': return 'मन पराउनु';
			case 'store.tip.like.values.2': return 'उच्च - प्रशंसा प्रशंसा';
			case 'store.tip.like.values.3': return 'पूर्ण समय';
			case 'store.tip.like.values.4': return '1-24 घण्टा';
			case 'store.tip.like.values.5': return '1--- घण्टा';
			case 'store.tip.like.values.6': return 'क्षतिपूर्ति समय';
			case 'store.tip.like.values.7': return '/';
			case 'store.tip.like.values.8': return 'Days दिन भित्र क्षतिपूर्ति';
			case 'store.tip.like.values.9': return 'ड्रप दर';
			case 'store.tip.like.values.10': return '-15-1-15%';
			case 'store.tip.like.values.11': return '0--3%';
			case 'store.buy.follow': return 'खरीददार';
			case 'store.buy.like': return 'केही प्रशंसा किन्नुहोस्';
			case 'store.buy.view': return 'किन्नुहोस् र हेर्नुहोस्';
			case 'store.buy.share': return 'किन्नुहोस् र साझेदारी गर्नुहोस्';
			case 'store.buy.retweet': return 'एउटा स्थानान्तरण किन्नुहोस्';
			case 'store.buy.accountPublic': return '* कृपया तपाईंको खाता खुला राख्नुहोस्';
			case 'store.buy.channelPublic': return '* कृपया तपाईंको च्यानल खुला राख्नुहोस्';
			case 'store.buy.tiktok': return 'तपाईंको Tiktok भिडियो लिंक';
			case 'store.buy.twitter': return 'तपाईंको ट्विटर ट्वीट लिंक';
			case 'store.buy.instagram': return 'तपाईंको इन्स्टाग्राम पोष्ट लिंक';
			case 'store.buy.youtube': return 'तपाईंको YouTube च्यानल लिंक';
			case 'store.buy.pay': return 'तिर्ने काम';
			case 'store.purchase.title': return 'भुक्तानी सफल';
			case 'store.purchase.message': return 'कृपया पूर्ण गर्नका लागि प्रतिक्षा गर्नुहोस्!';
			case 'store.notice.message': return ({required Object value}) => '${value} नि:शुल्क अनुयायीहरू प्राप्त गर्न, कृपया सूचनाहरू खोल्नुहोस्।';
			case 'store.notice.turnOn': return 'खोल्नु';
			case 'coins.empty': return 'कुनै इतिहास छैन';
			case 'login.confirm': return 'पक्का गर्नु';
			case 'login.username': return ({required Object value}) => 'तपाईंको ${value} प्रयोगकर्ता नाम प्रविष्ट गर्नुहोस्';
			case 'login.channel': return 'तपाईंको Youtube च्यानल लिंक प्रविष्ट गर्नुहोस्';
			case 'login.publicUsername': return '* कृपया तपाईंको खाता खुला राख्नुहोस्';
			case 'login.publicChannel': return '* कृपया तपाईंको च्यानल खुला राख्नुहोस्';
			case 'login.add': return 'खाता थप्नुहोस्';
			case 'login.hintUsername': return 'प्रयोगकर्ता नाम';
			case 'login.hintChannel': return 'कल्णीकरण';
			case 'setting.title': return 'स्थापित गर्नु';
			case 'setting.editor': return 'जानकारी सम्पादन गर्नुहोस्';
			case 'setting.daily': return 'साइन इन गर';
			case 'setting.wheel': return 'भाग्य को पाङ्ग्रा';
			case 'setting.account': return 'व्यवस्थापन खाता';
			case 'setting.language': return 'भाषा';
			case 'setting.orders': return 'मगाउनु';
			case 'setting.faq': return 'साधारण समस्या';
			case 'setting.about': return 'प्राय';
			case 'setting.share.title': return 'साझेदारी साझेदारी';
			case 'setting.share.message': return ({required Object value}) => 'मैले एउटा खजाना एप फेला पारेको छु जसले नि:शुल्क टिकटक फलोअरहरू र लाइकहरू प्राप्त गर्न सक्छ, तलको लिङ्क मार्फत एप स्थापना गर्नुहोस्, हामी दुवैले ${value} सिक्का पाउनेछौं!';
			case 'setting.rateUs': return 'हामीलाई मूल्या ate ्कन गर्नुहोस्';
			case 'language.title': return 'भाषा छनौट गर्नुहोस्';
			case 'language.start': return 'शुरु';
			case 'daily.title': return 'साइन इन गर';
			case 'daily.checkIn': return 'साइन इन गर';
			case 'daily.rules.title': return 'नियम';
			case 'daily.rules.values.0': return 'तपाईं प्रत्येक 2 hours घण्टामा साइन इन गर्न सक्नुहुन्छ;';
			case 'daily.rules.values.1': return 'साइन -ine अवरोध पछि यो फेरि सुरु हुनेछ।';
			case 'wheel.title': return 'भाग्य को पाङ्ग्रा';
			case 'wheel.rules.title': return 'नियम';
			case 'wheel.rules.values.0': return 'प्रत्येक चिट्ठा to गोल्ड सिक्का हुन्छ;';
			case 'wheel.rules.values.1': return 'ड्र को संख्या सीमित छैन।';
			case 'account.title': return 'व्यवस्थापन खाता';
			case 'account.add': return '+ खाता नम्बर थप्नुहोस्';
			case 'account.empty': return 'खाता छैन';
			case 'account.alert.title': return 'खाता मेट्नुहोस्';
			case 'account.alert.message': return 'हटाउन पछि, तपाइँ सम्बन्धित अपरेशनको खाता प्रयोग गर्न सक्षम हुनुहुने छैन।';
			case 'orders.title': return 'मगाउनु';
			case 'orders.pending': return 'लाम';
			case 'orders.processing': return 'कार्यवाही चलीरहेको';
			case 'orders.inProgress': return 'कार्यवाही चलीरहेको';
			case 'orders.completed': return 'पूरा हुनु';
			case 'orders.partial': return 'आंशिक सम्पन्नता';
			case 'orders.error': return 'भुल';
			case 'orders.canceled': return 'रद्द गरेको पद';
			case 'orders.refunded': return 'पैसा फिर्ताक';
			case 'orders.empty': return 'आदेश छैन';
			case 'faq.title': return 'साधारण समस्या';
			case 'faq.values.0.title': return '1. कसरी सुरू गर्ने?';
			case 'faq.values.0.value': return 'पृष्ठ प्रोम्प्ट्स अनुसार तपाईंको प्लेटफर्म प्रयोगकर्ता नामहरू थप्नुहोस्, कुनै पासवर्ड छैन, प्रत्येक मञ्चमा एक समान प्रम्प्टमा छ।';
			case 'faq.values.1.title': return '2. यो प्रयोग गर्न सुरक्षित छ?';
			case 'faq.values.1.value': return 'अवश्य पनि, यो सुरक्षित छ। हामीलाई तपाईंको पासवर्ड चाहिदैन, र हामी तपाईंको सामाजिक अनुप्रयोग डेटा बचत गर्न सक्दैनौं किनकि यो ध्यान दिन वा अन्य चीजहरू गर्न आधिकारिक अनुप्रयोगमा उफ्रिन्छौं।';
			case 'faq.values.2.title': return 'यसले यो कसरी काम गर्दछ?';
			case 'faq.values.2.value': return 'कामको विधि सरल छ: तपाईंको व्यक्तिगत डाटा / भिडियो हाम्रो समुदायमा प्रदर्शित हुन्छ। प्रयोगकर्ताहरूले तपाईंको व्यक्तिगत डेटाको सामग्रीमा आधारित तपाईंको रूपमा / जस्तै तपाईंको ध्यान दिएर / जस्ता।एक आदानप्रदानको रूपमा जुन मनपर्दछ / पछ्याउँदछ, तिनीहरूले सुनका सिक्काहरू प्राप्त गर्दछन् र अनुयायीहरू / प्रेमीहरू प्राप्त गर्न प्रयोग गर्न सकिन्छ।';
			case 'faq.values.3.title': return 'S. ध्यान र वास्तविक जस्तो छ?';
			case 'faq.values.3.value': return 'अवश्य पनि, यो वास्तविक छ। जब तपाईं सम्बन्धित सेवाहरू खरीद गर्नुहुन्छ, त्यहाँ तपाईंलाई सेवाहरू प्रदान गर्न पछाडि धेरै वास्तविक प्रयोगकर्ताहरू छन्, र यो आधिकारिक अनुप्रयोगमा सञ्चालित छ। तपाईंले यसको बारेमा चिन्ता लिनुपर्दैन।';
			case 'faq.values.4.title': return 'म कसरी सुनको सिक्का कमाउँछु?';
			case 'faq.values.4.value': return 'होमपेजमा, तपाईं कार्य सूची हेर्न सक्नुहुन्छ, अनुसरण गर्न वा मनपराउन क्लिक गर्नुहोस्, र अपरेशनको लागि सम्बन्धित अनुप्रयोगमा जानुहोस्। कृपया तपाईंको ध्यान रद्द गर्न नपरोस्।';
			case 'faq.values.5.title': return 'Thaks। किन स्वादहरू किन असफल हुन्छ?';
			case 'faq.values.5.value': return 'यो सामान्यतया किनभने तपाईं वास्तवमै ध्यान दिन वा यो मनपर्दैन। तपाईंले पहिले तपाईंको खाता जाँच गर्नु पर्छ।';
			case 'faq.values.6.title': return 'Man। मेरो अर्डर पूरा गर्न कति समय लाग्छ?';
			case 'faq.values.6.value.0': return 'यो तपाईंको अर्डर भोल्युममा निर्भर गर्दछ। सामान्यतया, अर्डर राखिसकेपछि, अर्डर प्राप्त गरे पछि र यसलाई 2 24h भित्र पूरा गर्न थाल्नुहुनेछ, तर हामी पछाडिको पछाडि अपरेटरहरू प्रयोग गर्न सक्दैनौं। यो हुनु पर्छ ध्यान दिएन सुनौलो सेवा साधारण सेवाहरू भन्दा छिटो छ।';
			case 'faq.values.6.value.1': return 'छोटो समयमा धेरै ट्राफिक प्राप्त गर्नुहोस् तपाईंको खातालाई श icious ्कास्पद बनाउँदछ, ताकि धैर्यतासाथ उत्तम तरिका हो।';
			case 'faq.values.7.title': return 'अर्डरमा मैले के गर्नुपर्छ?';
			case 'faq.values.7.value': return 'तपाईंले आफ्नो अर्डर राख्नु भएपछि, आफ्नो खाता खुला राख्नुहोस्। अर्डर पूरा हुनुभन्दा अघि तपाईंको प्रयोगकर्ता नाम परिमार्जन नगर्नुहोस्।';
			case 'faq.values.8.title': return 'What। के भयो भने मलाई समस्या छ?';
			case 'faq.values.8.value': return 'तपाईं अनुप्रयोगमा प्रतिक्रिया मार्फत हामीलाई सम्पर्क गर्न सक्नुहुन्छ।';
			case 'about.title': return 'प्राय';
			case 'about.contact': return 'हामीलाई सम्पर्क गर्नुहोस';
			case 'about.service': return 'सेवाका सर्तहरु';
			case 'about.policy': return 'गोपनीयता नीति';
			case 'alert.ok': return 'ठिक छ';
			case 'alert.cancel': return 'रद्द गर्नु';
			case 'alert.confirm': return 'पक्का गर्नु';
			case 'toast.unpurchase': return 'हाल खरीद गर्न सक्दैन';
			case 'toast.purchasedNotFound': return 'हालको सेवा किन्न सक्दैन';
			case 'toast.payment': return 'भुक्तानी सफल!';
			case 'toast.coinsNotEnough': return 'सुनको अपर्याप्त!';
			case 'toast.received': return 'सफल रसीद!';
			case 'toast.adError': return 'बारम्बार विज्ञापनहरू हेर्दै, कृपया पछि पुन: प्रयास गर्नुहोस्!';
			case 'localNotification.adTaskReady': return 'नयाँ विज्ञापन कार्य तयार छ!';
			default: return null;
		}
	}
}

extension on _StringsPt {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'onlyTitle.contact': return 'Contate-Nos';
			case 'universal.coins': return 'ouro';
			case 'universal.requestError': return 'Por favor, tente novamente mais tarde';
			case 'universal.add': return 'Adicionar Conta';
			case 'tabbar.task': return 'primeira página';
			case 'tabbar.store': return 'fazer compras';
			case 'tabbar.setting': return 'configurar';
			case 'task.title': return 'primeira página';
			case 'task.skip': return 'pular sobre';
			case 'task.follow': return 'focar em';
			case 'task.like': return 'Curti';
			case 'task.noTask': return 'Não pergunte';
			case 'task.tip.title': return 'Pronto';
			case 'task.tip.values.0': return ({required Object value}) => '1. Clique em ${value} botão';
			case 'task.tip.values.1': return ({required Object value}) => '2. Abra ${value}';
			case 'task.tip.values.2': return ({required Object value}) => '${value}. ${value}';
			case 'task.tip.values.3': return ({required Object value}) => '4. Voltar para ${value}';
			case 'task.tip.values.4': return '5. Obtenha moedas de ouro';
			case 'task.tip.message': return 'Se você cancelar sua atenção/curar, as moedas de ouro serão removidas!';
			case 'store.title': return 'fazer compras';
			case 'store.free': return 'gratuitamente';
			case 'store.follow': return 'Seguidores';
			case 'store.like': return 'Curti';
			case 'store.view': return 'Ver';
			case 'store.share': return 'compartilhar';
			case 'store.retweet': return 'Retweet';
			case 'store.ad.title': return 'Recompensa publicitária';
			case 'store.ad.watch': return 'Assista a um anúncio';
			case 'store.changeAccount.title': return 'Modificar a conta';
			case 'store.changeAccount.add': return 'Adicionar Conta';
			case 'store.tip.follow.title': return 'Seguidores e seguidores sênior';
			case 'store.tip.follow.values.0': return '';
			case 'store.tip.follow.values.1': return 'Seguidores';
			case 'store.tip.follow.values.2': return 'Seguidor sênior';
			case 'store.tip.follow.values.3': return 'Tempo completo';
			case 'store.tip.follow.values.4': return '1-24 horas';
			case 'store.tip.follow.values.5': return '1-4 horas';
			case 'store.tip.follow.values.6': return 'Tempo de compensação';
			case 'store.tip.follow.values.7': return '/';
			case 'store.tip.follow.values.8': return 'Compensação dentro de 7 dias';
			case 'store.tip.follow.values.9': return 'Qualidade do seguidor';
			case 'store.tip.follow.values.10': return 'real';
			case 'store.tip.follow.values.11': return 'Real e ativo';
			case 'store.tip.follow.values.12': return 'Taxa de queda';
			case 'store.tip.follow.values.13': return '8-15%';
			case 'store.tip.follow.values.14': return '0-3%';
			case 'store.tip.like.title': return 'Como e elogios avançados';
			case 'store.tip.like.values.0': return '';
			case 'store.tip.like.values.1': return 'Curti';
			case 'store.tip.like.values.2': return 'Elogios de alto nível';
			case 'store.tip.like.values.3': return 'Tempo completo';
			case 'store.tip.like.values.4': return '1-24 horas';
			case 'store.tip.like.values.5': return '1-4 horas';
			case 'store.tip.like.values.6': return 'Tempo de compensação';
			case 'store.tip.like.values.7': return '/';
			case 'store.tip.like.values.8': return 'Compensação dentro de 7 dias';
			case 'store.tip.like.values.9': return 'Taxa de queda';
			case 'store.tip.like.values.10': return '8-15%';
			case 'store.tip.like.values.11': return '0-3%';
			case 'store.buy.follow': return 'Comprador';
			case 'store.buy.like': return 'Compre alguns elogios';
			case 'store.buy.view': return 'Compre e assista';
			case 'store.buy.share': return 'Compre e compartilhe';
			case 'store.buy.retweet': return 'Compre uma transferência';
			case 'store.buy.accountPublic': return '* Por favor, mantenha sua conta está aberta';
			case 'store.buy.channelPublic': return '* Por favor, mantenha seu canal aberto';
			case 'store.buy.tiktok': return 'Seu link de vídeo Tiktok';
			case 'store.buy.twitter': return 'Seu link de tweet no Twitter';
			case 'store.buy.instagram': return 'Seu link de postagem no Instagram';
			case 'store.buy.youtube': return 'Seu link do canal do YouTube';
			case 'store.buy.pay': return 'Pagar';
			case 'store.purchase.title': return 'pagamento bem -sucedido';
			case 'store.purchase.message': return 'Aguarde o pedido para concluir!';
			case 'store.notice.message': return ({required Object value}) => 'Para receber ${value} seguidores grátis, ative as notificações.';
			case 'store.notice.turnOn': return 'Abrir';
			case 'coins.empty': return 'Sem história';
			case 'login.confirm': return 'confirme';
			case 'login.username': return ({required Object value}) => 'Digite seu nome de usuário ${value}';
			case 'login.channel': return 'Digite o link do seu canal do YouTube';
			case 'login.publicUsername': return '* Por favor, mantenha sua conta está aberta';
			case 'login.publicChannel': return '* Por favor, mantenha seu canal aberto';
			case 'login.add': return 'Adicionar Conta';
			case 'login.hintUsername': return 'nome de usuário';
			case 'login.hintChannel': return 'Link do canal';
			case 'setting.title': return 'configurar';
			case 'setting.editor': return 'Editar informações';
			case 'setting.daily': return 'Entrar';
			case 'setting.wheel': return 'Roda da fortuna';
			case 'setting.account': return 'Conta de gerenciamento';
			case 'setting.language': return 'Língua';
			case 'setting.orders': return 'Ordem';
			case 'setting.faq': return 'problema comum';
			case 'setting.about': return 'cerca de';
			case 'setting.share.title': return 'Compartilhe o aplicativo';
			case 'setting.share.message': return ({required Object value}) => 'Encontrei um aplicativo de tesouro que pode obter fãs e curtidas gratuitos do Tiktok. Através da instalação do link a seguir, obteremos ${value} moedas de ouro!';
			case 'setting.rateUs': return 'Avalie -nos';
			case 'language.title': return 'Escolha um idioma';
			case 'language.start': return 'começar';
			case 'daily.title': return 'Entrar';
			case 'daily.checkIn': return 'Entrar';
			case 'daily.rules.title': return 'regra';
			case 'daily.rules.values.0': return 'Você pode fazer login a cada 24 horas;';
			case 'daily.rules.values.1': return 'Após a interrupção do sinal, ele começará novamente.';
			case 'wheel.title': return 'Roda da fortuna';
			case 'wheel.rules.title': return 'regra';
			case 'wheel.rules.values.0': return ({required Object value}) => 'Cada loteria custará ${value} moedas de ouro;';
			case 'wheel.rules.values.1': return 'O número de empates não é limitado.';
			case 'account.title': return 'Conta de gerenciamento';
			case 'account.add': return '+ Adicione o número da conta';
			case 'account.empty': return 'Sem conta';
			case 'account.alert.title': return 'Deletar conta';
			case 'account.alert.message': return 'Após a exclusão, você não poderá usar a conta de operações relacionadas.';
			case 'orders.title': return 'Ordem';
			case 'orders.pending': return 'Fila';
			case 'orders.processing': return 'Em processamento';
			case 'orders.inProgress': return 'em processamento';
			case 'orders.completed': return 'concluído';
			case 'orders.partial': return 'Conclusão parcial';
			case 'orders.error': return 'erro';
			case 'orders.canceled': return 'Cancelado';
			case 'orders.refunded': return 'devolveu';
			case 'orders.empty': return 'Nenhuma ordem';
			case 'faq.title': return 'problema comum';
			case 'faq.values.0.title': return '1. Como começar?';
			case 'faq.values.0.value': return 'Basta adicionar o nome de usuário da sua plataforma de acordo com os avisos da página, sem senha, cada plataforma possui um prompt correspondente.';
			case 'faq.values.1.title': return '2. É seguro usá -lo?';
			case 'faq.values.1.value': return 'Obviamente, é seguro. Não precisamos da sua senha e não podemos salvar seus dados de aplicativos sociais, porque está pulando para o aplicativo oficial para prestar atenção ou fazer outras coisas.';
			case 'faq.values.2.title': return '3. Como isso funciona tudo?';
			case 'faq.values.2.value': return 'O método de trabalho é simples: seus dados pessoais/vídeo são exibidos em nossa comunidade. Os usuários decidem livremente se devem prestar atenção/gostar de você com base no conteúdo de seus dados pessoais.Como uma troca que gosta/segue, eles receberão moedas de ouro e podem ser usados ​​para obter seguidores/amantes.';
			case 'faq.values.3.title': return '4. A atenção é real?';
			case 'faq.values.3.value': return 'Obviamente, é real. Quando você compra serviços relacionados, há muitos usuários reais por trás dele para fornecer serviços e é operado no aplicativo oficial. Você não precisa se preocupar com isso.';
			case 'faq.values.4.title': return '5. Como ganho moedas de ouro?';
			case 'faq.values.4.value': return 'Na página inicial, você pode ver a lista de tarefas, clicar para seguir ou curtir e pular para o aplicativo correspondente para operação. Tenha cuidado para não cancelar sua atenção ou gostar, o que fará com que sua recompensa seja cancelada.';
			case 'faq.values.5.title': return '6. Por que as tarefas falham?';
			case 'faq.values.5.value': return 'Isso geralmente ocorre porque você realmente não presta atenção ou gosta. Você deve verificar sua conta primeiro.';
			case 'faq.values.6.title': return '7. Quanto tempo leva para concluir meu pedido?';
			case 'faq.values.6.value.0': return 'Isso depende do seu volume de pedido. Normalmente, você começará a obter o serviço imediatamente após fazer o pedido e concluí -lo dentro de 24 horas, mas não podemos dar um tempo preciso, porque há um grande número de usuários reais que operam atrás das costas. Deveria ser observado Golden Service é mais rápido que os serviços comuns.';
			case 'faq.values.6.value.1': return 'Obtenha muito tráfego em pouco tempo, deixará sua conta suspeita, portanto, esperar pacientemente é a melhor maneira.';
			case 'faq.values.7.title': return '8. O que devo fazer depois de fazer o pedido?';
			case 'faq.values.7.value': return 'Depois de fazer seu pedido, mantenha sua conta divulgada. Não modifique seu nome de usuário antes que o pedido seja concluído.';
			case 'faq.values.8.title': return '9. E se eu tiver um problema?';
			case 'faq.values.8.value': return 'Você pode entrar em contato conosco por meio de feedback no aplicativo.';
			case 'about.title': return 'cerca de';
			case 'about.contact': return 'Contate-Nos';
			case 'about.service': return 'Termos de serviço';
			case 'about.policy': return 'Política de Privacidade';
			case 'alert.ok': return 'OK';
			case 'alert.cancel': return 'Cancelar';
			case 'alert.confirm': return 'confirme';
			case 'toast.unpurchase': return 'Não posso comprar atualmente';
			case 'toast.purchasedNotFound': return 'Não posso comprar o serviço atual';
			case 'toast.payment': return 'Pagamento bem -sucedido!';
			case 'toast.coinsNotEnough': return 'Ouro inadequado!';
			case 'toast.received': return 'Recibo bem -sucedido!';
			case 'toast.adError': return 'Assistindo anúncios com muita frequência, tente novamente mais tarde!';
			case 'localNotification.adTaskReady': return 'A nova tarefa de publicidade está pronta!';
			default: return null;
		}
	}
}

extension on _StringsRu {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'onlyTitle.contact': return 'свяжитесь с нами';
			case 'universal.coins': return 'золото';
			case 'universal.requestError': return 'Пожалуйста, попробуйте позже';
			case 'universal.add': return 'Добавить аккаунт';
			case 'tabbar.task': return 'титульная страница';
			case 'tabbar.store': return 'магазин';
			case 'tabbar.setting': return 'настраивать';
			case 'task.title': return 'титульная страница';
			case 'task.skip': return 'перепрыгни';
			case 'task.follow': return 'сконцентрируйся';
			case 'task.like': return 'как';
			case 'task.noTask': return 'Не спрашивай';
			case 'task.tip.title': return 'Быстрый';
			case 'task.tip.values.0': return ({required Object value}) => '1. Нажмите кнопку ${value}';
			case 'task.tip.values.1': return ({required Object value}) => '2. Открыть ${value}';
			case 'task.tip.values.2': return ({required Object value}) => '${value}. ${value}';
			case 'task.tip.values.3': return ({required Object value}) => '4. Вернуться к ${value}';
			case 'task.tip.values.4': return '5. Получите золотые монеты';
			case 'task.tip.message': return 'Если вы отмените свое внимание/как, золотые монеты будут удалены!';
			case 'store.title': return 'магазин';
			case 'store.free': return 'свободно';
			case 'store.follow': return 'Последователи';
			case 'store.like': return 'как';
			case 'store.view': return 'Смотреть';
			case 'store.share': return 'Поделиться';
			case 'store.retweet': return 'Ретвит';
			case 'store.ad.title': return 'Рекламная награда';
			case 'store.ad.watch': return 'Смотрите рекламу';
			case 'store.changeAccount.title': return 'Изменить учетную запись';
			case 'store.changeAccount.add': return 'Добавить аккаунт';
			case 'store.tip.follow.title': return 'Последователи и старший последователь';
			case 'store.tip.follow.values.0': return '';
			case 'store.tip.follow.values.1': return 'Последователи';
			case 'store.tip.follow.values.2': return 'Старший последователь';
			case 'store.tip.follow.values.3': return 'Полное время';
			case 'store.tip.follow.values.4': return '1-24 часа';
			case 'store.tip.follow.values.5': return '1-4 часа';
			case 'store.tip.follow.values.6': return 'Время компенсации';
			case 'store.tip.follow.values.7': return '/';
			case 'store.tip.follow.values.8': return 'Компенсация в течение 7 дней';
			case 'store.tip.follow.values.9': return 'Качество последователя';
			case 'store.tip.follow.values.10': return 'настоящий';
			case 'store.tip.follow.values.11': return 'Реал и активный';
			case 'store.tip.follow.values.12': return 'Скорость падения';
			case 'store.tip.follow.values.13': return '8-15%';
			case 'store.tip.follow.values.14': return '0-3%';
			case 'store.tip.like.title': return 'Нравится и продвинутая похвала';
			case 'store.tip.like.values.0': return '';
			case 'store.tip.like.values.1': return 'как';
			case 'store.tip.like.values.2': return 'Высокая похвала';
			case 'store.tip.like.values.3': return 'Полное время';
			case 'store.tip.like.values.4': return '1-24 часа';
			case 'store.tip.like.values.5': return '1-4 часа';
			case 'store.tip.like.values.6': return 'Время компенсации';
			case 'store.tip.like.values.7': return '/';
			case 'store.tip.like.values.8': return 'Компенсация в течение 7 дней';
			case 'store.tip.like.values.9': return 'Скорость падения';
			case 'store.tip.like.values.10': return '8-15%';
			case 'store.tip.like.values.11': return '0-3%';
			case 'store.buy.follow': return 'Покупатель';
			case 'store.buy.like': return 'Купите немного похвалы';
			case 'store.buy.view': return 'Купить и смотреть';
			case 'store.buy.share': return 'Купить и поделиться';
			case 'store.buy.retweet': return 'Купить трансфер';
			case 'store.buy.accountPublic': return '* Пожалуйста, оставьте свою учетную запись открыты';
			case 'store.buy.channelPublic': return '* Пожалуйста, держите свой канал открытым';
			case 'store.buy.tiktok': return 'Ваша ссылка на видео Tiktok';
			case 'store.buy.twitter': return 'Ваша ссылка на твитт -твитт';
			case 'store.buy.instagram': return 'Ссылка на пост в Instagram';
			case 'store.buy.youtube': return 'Ссылка на канал YouTube';
			case 'store.buy.pay': return 'Платить';
			case 'store.purchase.title': return 'Оплата успешно';
			case 'store.purchase.message': return 'Пожалуйста, дождитесь завершения заказа!';
			case 'store.notice.message': return ({required Object value}) => 'Чтобы получить ${value} бесплатных подписчика, сначала откройте уведомление о приложении.';
			case 'store.notice.turnOn': return 'Открытым';
			case 'coins.empty': return 'Нет истории';
			case 'login.confirm': return 'подтверждать';
			case 'login.username': return ({required Object value}) => 'Введите свое ${value} имя пользователя';
			case 'login.channel': return 'Введите ссылку на канал YouTube';
			case 'login.publicUsername': return '* Пожалуйста, оставьте свою учетную запись открыты';
			case 'login.publicChannel': return '* Пожалуйста, держите свой канал открытым';
			case 'login.add': return 'Добавить аккаунт';
			case 'login.hintUsername': return 'имя пользователя';
			case 'login.hintChannel': return 'Канал ссылка';
			case 'setting.title': return 'настраивать';
			case 'setting.editor': return 'Изменить информацию';
			case 'setting.daily': return 'Войти';
			case 'setting.wheel': return 'Колесо фортуны';
			case 'setting.account': return 'Управляющий счет';
			case 'setting.language': return 'язык';
			case 'setting.orders': return 'Заказ';
			case 'setting.faq': return 'Общая проблема';
			case 'setting.about': return 'о';
			case 'setting.share.title': return 'Поделиться приложением';
			case 'setting.share.message': return ({required Object value}) => 'Я нашел приложение для сокровищ, которое может получить бесплатные поклонники Tiktok и лайки. Благодаря установке следующей ссылки мы получим ${value} золотых монета!';
			case 'setting.rateUs': return 'Оценить нас';
			case 'language.title': return 'Выберите язык';
			case 'language.start': return 'Начало';
			case 'daily.title': return 'Войти';
			case 'daily.checkIn': return 'Войти';
			case 'daily.rules.title': return 'правило';
			case 'daily.rules.values.0': return 'Вы можете входить каждые 24 часа;';
			case 'daily.rules.values.1': return 'После знака -в прерывании он начнется снова.';
			case 'wheel.title': return 'Колесо фортуны';
			case 'wheel.rules.title': return 'правило';
			case 'wheel.rules.values.0': return ({required Object value}) => 'Каждая лотерея будет стоить ${value} золотых монета;';
			case 'wheel.rules.values.1': return 'Количество розыгрышей не ограничено.';
			case 'account.title': return 'Управляющий счет';
			case 'account.add': return '+ Добавить номер счета';
			case 'account.empty': return 'Нет аккаунта';
			case 'account.alert.title': return 'Удалить аккаунт';
			case 'account.alert.message': return 'После удаления вы не сможете использовать учетную запись для связанных операций.';
			case 'orders.title': return 'Заказ';
			case 'orders.pending': return 'Очередь';
			case 'orders.processing': return 'Обработка';
			case 'orders.inProgress': return 'обработка';
			case 'orders.completed': return 'завершенный';
			case 'orders.partial': return 'Частичное завершение';
			case 'orders.error': return 'ошибка';
			case 'orders.canceled': return 'Отменен';
			case 'orders.refunded': return 'возвращено';
			case 'orders.empty': return 'Нет заказа';
			case 'faq.title': return 'Общая проблема';
			case 'faq.values.0.title': return '1. Как начать?';
			case 'faq.values.0.value': return 'Просто добавьте имя пользователя своей платформы в соответствии с запросами страницы, без пароля, каждая платформа имеет соответствующую подсказку.';
			case 'faq.values.1.title': return '2. Безопасно ли его использовать?';
			case 'faq.values.1.value': return 'Конечно, это безопасно. Нам не нужен ваш пароль, и мы не можем сохранить данные ваших социальных приложений, потому что он переходит к официальному приложению, чтобы обратить внимание или делать другие вещи.';
			case 'faq.values.2.title': return '3. Как все это работает?';
			case 'faq.values.2.value': return 'Метод работы прост: ваши личные данные/видео отображаются в нашем сообществе. Пользователи свободно решают, должны ли они обращать внимание/нравится вам на основе содержания ваших личных данных.В качестве обмена, который любит/следовать, они будут получать золотые монеты и могут быть использованы для получения последователей/любовников.';
			case 'faq.values.3.title': return '4. Внимание и как реальное?';
			case 'faq.values.3.value': return 'Конечно, это реально. Когда вы покупаете соответствующие услуги, за ним стоит много реальных пользователей, чтобы предоставить вам услуги, и оно работает в официальном приложении. Вам не нужно беспокоиться об этом.';
			case 'faq.values.4.title': return '5. Как мне заработать золотые монеты?';
			case 'faq.values.4.value': return 'На домашней странице вы можете увидеть список задач, нажимать, чтобы следовать или подобно, и перейти к соответствующему приложению для работы. Пожалуйста, будьте осторожны, чтобы не отменить ваше внимание или подобное, что приведет к отмене вашей награды.';
			case 'faq.values.5.title': return '6. Почему задачи терпят неудачу?';
			case 'faq.values.5.value': return 'Обычно это потому, что вы на самом деле не обращаете внимания или нравитесь. Вы должны сначала проверить свою учетную запись.';
			case 'faq.values.6.title': return '7. Сколько времени нужно, чтобы завершить мой заказ?';
			case 'faq.values.6.value.0': return 'Это зависит от объема вашего заказа. Обычно вы начнете получать сервис сразу после размещения заказа и завершить его в течение 24 часов, но мы не можем дать точное время, потому что за спиной работает большое количество реальных пользователей. Будьте известны золотой сервис быстрее, чем обычные услуги.';
			case 'faq.values.6.value.1': return 'Получите слишком много трафика за короткое время сделает вашу учетную запись подозрительным, так что терпеливо ожидание - лучший способ.';
			case 'faq.values.7.title': return '8. Что мне делать после заказа?';
			case 'faq.values.7.value': return 'После того, как вы разместите заказ, оставьте свою учетную запись раскрыты. Не изменяйте свое имя пользователя до завершения заказа.';
			case 'faq.values.8.title': return '9. Что, если у меня есть проблема?';
			case 'faq.values.8.value': return 'Вы можете связаться с нами через отзывы в приложении.';
			case 'about.title': return 'о';
			case 'about.contact': return 'свяжитесь с нами';
			case 'about.service': return 'условия обслуживания';
			case 'about.policy': return 'Политика конфиденциальности';
			case 'alert.ok': return 'ХОРОШО';
			case 'alert.cancel': return 'Отмена';
			case 'alert.confirm': return 'подтверждать';
			case 'toast.unpurchase': return 'Не могу купить в настоящее время';
			case 'toast.purchasedNotFound': return 'Не могу купить текущую услугу';
			case 'toast.payment': return 'Оплата успешно!';
			case 'toast.coinsNotEnough': return 'Золото неадекватно!';
			case 'toast.received': return 'Успешная квитанция!';
			case 'toast.adError': return 'Слишком часто смотрю рекламу, попробуйте еще раз позже!';
			case 'localNotification.adTaskReady': return 'Новая рекламная задача готова!';
			default: return null;
		}
	}
}

extension on _StringsTh {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'onlyTitle.contact': return 'ติดต่อเรา';
			case 'universal.coins': return 'ทอง';
			case 'universal.requestError': return 'โปรดลองอีกครั้งในภายหลัง';
			case 'universal.add': return 'เพิ่มบัญชี';
			case 'tabbar.task': return 'หน้าแรก';
			case 'tabbar.store': return 'ร้านค้า';
			case 'tabbar.setting': return 'ติดตั้ง';
			case 'task.title': return 'หน้าแรก';
			case 'task.skip': return 'กระโดดข้าม';
			case 'task.follow': return 'มุ่งเน้น';
			case 'task.like': return 'ชอบ';
			case 'task.noTask': return 'ไม่มีงาน';
			case 'task.tip.title': return 'แจ้ง';
			case 'task.tip.values.0': return ({required Object value}) => '1. คลิกปุ่ม ${value}';
			case 'task.tip.values.1': return ({required Object value}) => '2. เปิด ${value}';
			case 'task.tip.values.2': return ({required Object value}) => '${value}. ${value}';
			case 'task.tip.values.3': return ({required Object value}) => '4. กลับไปที่ ${value}';
			case 'task.tip.values.4': return '5. รับเหรียญทอง';
			case 'task.tip.message': return 'หากคุณยกเลิกความสนใจ/ชอบเหรียญทองจะถูกลบออก!';
			case 'store.title': return 'ร้านค้า';
			case 'store.free': return 'ฟรี';
			case 'store.follow': return 'ผู้ติดตาม';
			case 'store.like': return 'ชอบ';
			case 'store.view': return 'นาฬิกา';
			case 'store.share': return 'แบ่งปัน';
			case 'store.retweet': return 'รีทวีต';
			case 'store.ad.title': return 'รางวัลโฆษณา';
			case 'store.ad.watch': return 'ดูโฆษณา';
			case 'store.changeAccount.title': return 'ปรับเปลี่ยนบัญชี';
			case 'store.changeAccount.add': return 'เพิ่มบัญชี';
			case 'store.tip.follow.title': return 'ผู้ติดตามและผู้ติดตามอาวุโส';
			case 'store.tip.follow.values.0': return '';
			case 'store.tip.follow.values.1': return 'ผู้ติดตาม';
			case 'store.tip.follow.values.2': return 'ผู้ติดตามอาวุโส';
			case 'store.tip.follow.values.3': return 'เวลาเสร็จสิ้น';
			case 'store.tip.follow.values.4': return '1-24 ชั่วโมง';
			case 'store.tip.follow.values.5': return '1-4 ชั่วโมง';
			case 'store.tip.follow.values.6': return 'เวลาชดเชย';
			case 'store.tip.follow.values.7': return '/';
			case 'store.tip.follow.values.8': return 'ค่าตอบแทนภายใน 7 วัน';
			case 'store.tip.follow.values.9': return 'คุณภาพของผู้ติดตาม';
			case 'store.tip.follow.values.10': return 'จริง';
			case 'store.tip.follow.values.11': return 'จริงและกระตือรือร้น';
			case 'store.tip.follow.values.12': return 'อัตราการลดลง';
			case 'store.tip.follow.values.13': return '8-15%';
			case 'store.tip.follow.values.14': return '0-3%';
			case 'store.tip.like.title': return 'ชอบและการสรรเสริญขั้นสูง';
			case 'store.tip.like.values.0': return '';
			case 'store.tip.like.values.1': return 'ชอบ';
			case 'store.tip.like.values.2': return 'การสรรเสริญระดับสูง';
			case 'store.tip.like.values.3': return 'เวลาเสร็จสิ้น';
			case 'store.tip.like.values.4': return '1-24 ชั่วโมง';
			case 'store.tip.like.values.5': return '1-4 ชั่วโมง';
			case 'store.tip.like.values.6': return 'เวลาชดเชย';
			case 'store.tip.like.values.7': return '/';
			case 'store.tip.like.values.8': return 'ค่าตอบแทนภายใน 7 วัน';
			case 'store.tip.like.values.9': return 'อัตราการลดลง';
			case 'store.tip.like.values.10': return '8-15%';
			case 'store.tip.like.values.11': return '0-3%';
			case 'store.buy.follow': return 'ผู้ซื้อ';
			case 'store.buy.like': return 'ซื้อสรรเสริญ';
			case 'store.buy.view': return 'ซื้อและดู';
			case 'store.buy.share': return 'ซื้อและแบ่งปัน';
			case 'store.buy.retweet': return 'ซื้อโอน';
			case 'store.buy.accountPublic': return '* โปรดเปิดบัญชีของคุณไว้';
			case 'store.buy.channelPublic': return '* โปรดเปิดช่องของคุณ';
			case 'store.buy.tiktok': return 'ลิงค์วิดีโอ tiktok ของคุณ';
			case 'store.buy.twitter': return 'ลิงค์ทวีต Twitter ของคุณ';
			case 'store.buy.instagram': return 'ลิงค์โพสต์ Instagram ของคุณ';
			case 'store.buy.youtube': return 'ลิงค์ช่อง YouTube ของคุณ';
			case 'store.buy.pay': return 'จ่าย';
			case 'store.purchase.title': return 'การชำระเงินสำเร็จ';
			case 'store.purchase.message': return 'โปรดรอให้คำสั่งซื้อเสร็จ!';
			case 'store.notice.message': return ({required Object value}) => 'หากต้องการรับผู้ติดตามฟรี ${value} คนให้เปิดการแจ้งเตือนแอปก่อน';
			case 'store.notice.turnOn': return 'เปิด';
			case 'coins.empty': return 'ไม่มีประวัติ';
			case 'login.confirm': return 'ยืนยัน';
			case 'login.username': return ({required Object value}) => 'ป้อนชื่อผู้ใช้ ${value} ชื่อของคุณ';
			case 'login.channel': return 'ป้อนลิงค์ช่อง YouTube ของคุณ';
			case 'login.publicUsername': return '* โปรดเปิดบัญชีของคุณไว้';
			case 'login.publicChannel': return '* โปรดเปิดช่องของคุณ';
			case 'login.add': return 'เพิ่มบัญชี';
			case 'login.hintUsername': return 'ชื่อผู้ใช้';
			case 'login.hintChannel': return 'ลิงค์ช่อง';
			case 'setting.title': return 'ติดตั้ง';
			case 'setting.editor': return 'แก้ไขข้อมูล';
			case 'setting.daily': return 'เข้าสู่ระบบ';
			case 'setting.wheel': return 'วงล้อแห่งโชคลาภ';
			case 'setting.account': return 'บัญชีการจัดการ';
			case 'setting.language': return 'ภาษา';
			case 'setting.orders': return 'คำสั่ง';
			case 'setting.faq': return 'ปัญหาทั่วไป';
			case 'setting.about': return 'เกี่ยวกับ';
			case 'setting.share.title': return 'แชร์แอป';
			case 'setting.share.message': return ({required Object value}) => 'ฉันพบแอปพลิเคชั่นสมบัติที่สามารถรับแฟน ๆ และชอบของ Tiktok ฟรีผ่านการติดตั้งลิงค์ต่อไปนี้เราจะได้รับเหรียญทอง ${value} เหรียญ!';
			case 'setting.rateUs': return 'ประเมินเรา';
			case 'language.title': return 'เลือกภาษา';
			case 'language.start': return 'เริ่ม';
			case 'daily.title': return 'เข้าสู่ระบบ';
			case 'daily.checkIn': return 'เข้าสู่ระบบ';
			case 'daily.rules.title': return 'กฎ';
			case 'daily.rules.values.0': return 'คุณสามารถลงชื่อเข้าใช้ทุก 24 ชั่วโมง';
			case 'daily.rules.values.1': return 'หลังจากการหยุดชะงักในการหยุดชะงักมันจะเริ่มขึ้นอีกครั้ง';
			case 'wheel.title': return 'วงล้อแห่งโชคลาภ';
			case 'wheel.rules.title': return 'กฎ';
			case 'wheel.rules.values.0': return ({required Object value}) => 'ลอตเตอรีแต่ละอันจะมีราคา ${value} เหรียญทอง';
			case 'wheel.rules.values.1': return 'จำนวนการดึงไม่ จำกัด';
			case 'account.title': return 'บัญชีการจัดการ';
			case 'account.add': return '+ เพิ่มหมายเลขบัญชี';
			case 'account.empty': return 'ไม่มีบัญชี';
			case 'account.alert.title': return 'ลบบัญชี';
			case 'account.alert.message': return 'หลังจากลบคุณจะไม่สามารถใช้บัญชีสำหรับการดำเนินการที่เกี่ยวข้อง';
			case 'orders.title': return 'คำสั่ง';
			case 'orders.pending': return 'คิว';
			case 'orders.processing': return 'กำลังประมวลผล';
			case 'orders.inProgress': return 'กำลังประมวลผล';
			case 'orders.completed': return 'สมบูรณ์';
			case 'orders.partial': return 'ความสำเร็จบางส่วน';
			case 'orders.error': return 'ความผิดพลาด';
			case 'orders.canceled': return 'ยกเลิก';
			case 'orders.refunded': return 'ได้รับเงินคืน';
			case 'orders.empty': return 'ไม่มีคำสั่งซื้อ';
			case 'faq.title': return 'ปัญหาทั่วไป';
			case 'faq.values.0.title': return '1. จะเริ่มอย่างไร?';
			case 'faq.values.0.value': return 'เพียงเพิ่มชื่อผู้ใช้แพลตฟอร์มของคุณตามพรอมต์หน้าไม่มีรหัสผ่านแต่ละแพลตฟอร์มมีพรอมต์ที่สอดคล้องกัน';
			case 'faq.values.1.title': return '2. ปลอดภัยที่จะใช้หรือไม่?';
			case 'faq.values.1.value': return 'แน่นอนว่าปลอดภัยเราไม่ต้องการรหัสผ่านของคุณและเราไม่สามารถบันทึกข้อมูลแอปพลิเคชันโซเชียลของคุณได้เพราะมันกำลังกระโดดไปยังแอปพลิเคชันอย่างเป็นทางการเพื่อให้ความสนใจหรือทำสิ่งอื่น ๆ';
			case 'faq.values.2.title': return '3. งานนี้ทำงานอย่างไร?';
			case 'faq.values.2.value': return 'วิธีการทำงานนั้นง่าย: ข้อมูลส่วนบุคคล/วิดีโอของคุณแสดงในชุมชนของเราผู้ใช้ตัดสินใจอย่างอิสระว่าควรให้ความสนใจกับ/เช่นคุณตามเนื้อหาของข้อมูลส่วนบุคคลของคุณหรือไม่เป็นการแลกเปลี่ยนที่ชอบ/ติดตามพวกเขาจะได้รับเหรียญทองและสามารถใช้เพื่อรับผู้ติดตาม/คนรัก';
			case 'faq.values.3.title': return '4. ความสนใจและชอบจริงหรือไม่?';
			case 'faq.values.3.value': return 'แน่นอนว่ามันเป็นเรื่องจริงเมื่อคุณซื้อบริการที่เกี่ยวข้องมีผู้ใช้จริงจำนวนมากอยู่ข้างหลังเพื่อให้บริการคุณและดำเนินการในแอพอย่างเป็นทางการคุณไม่จำเป็นต้องกังวลเกี่ยวกับมัน';
			case 'faq.values.4.title': return '5. ฉันจะได้รับเหรียญทองได้อย่างไร?';
			case 'faq.values.4.value': return 'ในหน้าแรกคุณสามารถดูรายการงานคลิกเพื่อติดตามหรือชอบและข้ามไปยังแอพที่เกี่ยวข้องสำหรับการดำเนินการโปรดระวังอย่ายกเลิกความสนใจหรือชอบซึ่งจะทำให้รางวัลของคุณถูกยกเลิก';
			case 'faq.values.5.title': return '6. ทำไมงานจึงล้มเหลว?';
			case 'faq.values.5.value': return 'โดยปกติแล้วคุณไม่ได้ให้ความสนใจหรือชอบคุณควรตรวจสอบบัญชีของคุณก่อน';
			case 'faq.values.6.title': return '7. การสั่งซื้อของฉันใช้เวลานานแค่ไหน?';
			case 'faq.values.6.value.0': return 'ขึ้นอยู่กับปริมาณการสั่งซื้อของคุณโดยปกติคุณจะเริ่มรับบริการทันทีหลังจากทำการสั่งซื้อและเสร็จสิ้นภายใน 24 ชั่วโมง แต่เราไม่สามารถให้เวลาที่ถูกต้องได้เนื่องจากมีผู้ใช้จริงจำนวนมากที่ทำงานด้านหลังด้านหลังควร รับบริการทองคำเร็วกว่าบริการทั่วไป';
			case 'faq.values.6.value.1': return 'รับปริมาณการใช้งานมากเกินไปในเวลาอันสั้นจะทำให้บัญชีของคุณสงสัยดังนั้นการรออย่างอดทนเป็นวิธีที่ดีที่สุด';
			case 'faq.values.7.title': return '8. ฉันควรทำอย่างไรหลังจากสั่งซื้อ?';
			case 'faq.values.7.value': return 'หลังจากที่คุณสั่งซื้อให้เปิดเผยบัญชีของคุณอย่าแก้ไขชื่อผู้ใช้ก่อนที่คำสั่งซื้อจะเสร็จสมบูรณ์';
			case 'faq.values.8.title': return '9. จะเกิดอะไรขึ้นถ้าฉันมีปัญหา?';
			case 'faq.values.8.value': return 'คุณสามารถติดต่อเราผ่านข้อเสนอแนะในแอพ';
			case 'about.title': return 'เกี่ยวกับ';
			case 'about.contact': return 'ติดต่อเรา';
			case 'about.service': return 'เงื่อนไขการให้บริการ';
			case 'about.policy': return 'นโยบายความเป็นส่วนตัว';
			case 'alert.ok': return 'ตกลง';
			case 'alert.cancel': return 'ยกเลิก';
			case 'alert.confirm': return 'ยืนยัน';
			case 'toast.unpurchase': return 'ไม่สามารถซื้อได้ในปัจจุบัน';
			case 'toast.purchasedNotFound': return 'ไม่สามารถซื้อบริการปัจจุบันได้';
			case 'toast.payment': return 'การชำระเงินสำเร็จ!';
			case 'toast.coinsNotEnough': return 'ทองไม่เพียงพอ!';
			case 'toast.received': return 'ใบเสร็จรับเงินที่ประสบความสำเร็จ!';
			case 'toast.adError': return 'ดูโฆษณาบ่อยเกินไปโปรดลองอีกครั้งในภายหลัง!';
			case 'localNotification.adTaskReady': return 'งานโฆษณาใหม่พร้อมแล้ว!';
			default: return null;
		}
	}
}

extension on _StringsTl {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'onlyTitle.contact': return 'Makipag-ugnayan sa amin';
			case 'universal.coins': return 'ginto';
			case 'universal.requestError': return 'Subukang muli mamaya';
			case 'universal.add': return 'Magdagdag ng account';
			case 'tabbar.task': return 'unang pahina';
			case 'tabbar.store': return 'Mamili';
			case 'tabbar.setting': return 'I -set up';
			case 'task.title': return 'unang pahina';
			case 'task.skip': return 'tumalon';
			case 'task.follow': return 'tumuon sa';
			case 'task.like': return 'gusto';
			case 'task.noTask': return 'Walang gawain';
			case 'task.tip.title': return 'Prompt';
			case 'task.tip.values.0': return ({required Object value}) => '1. Mag -click sa ${value} button';
			case 'task.tip.values.1': return ({required Object value}) => '2. Buksan ${value}';
			case 'task.tip.values.2': return ({required Object value}) => '${value}. ${value}';
			case 'task.tip.values.3': return ({required Object value}) => '4. Bumalik sa ${value}';
			case 'task.tip.values.4': return '5. Kumuha ng mga gintong barya';
			case 'task.tip.message': return 'Kung kanselahin mo ang iyong pansin/gusto, aalisin ang mga barya ng ginto!';
			case 'store.title': return 'Mamili';
			case 'store.free': return 'libre';
			case 'store.follow': return 'Mga tagasunod';
			case 'store.like': return 'gusto';
			case 'store.view': return 'Panoorin';
			case 'store.share': return 'ibahagi';
			case 'store.retweet': return 'Retweet';
			case 'store.ad.title': return 'Gantimpala sa advertising';
			case 'store.ad.watch': return 'Panoorin ang isang ad';
			case 'store.changeAccount.title': return 'Baguhin ang account';
			case 'store.changeAccount.add': return 'Magdagdag ng account';
			case 'store.tip.follow.title': return 'Mga tagasunod at Senior Follower';
			case 'store.tip.follow.values.0': return '';
			case 'store.tip.follow.values.1': return 'Mga tagasunod';
			case 'store.tip.follow.values.2': return 'Senior na tagasunod';
			case 'store.tip.follow.values.3': return 'Kumpletuhin ang oras';
			case 'store.tip.follow.values.4': return '1-24 na oras';
			case 'store.tip.follow.values.5': return '1-4 na oras';
			case 'store.tip.follow.values.6': return 'Oras ng kabayaran';
			case 'store.tip.follow.values.7': return '/';
			case 'store.tip.follow.values.8': return 'Kabayaran sa loob ng 7 araw';
			case 'store.tip.follow.values.9': return 'Kalidad ng tagasunod';
			case 'store.tip.follow.values.10': return 'Tunay';
			case 'store.tip.follow.values.11': return 'Tunay at aktibo';
			case 'store.tip.follow.values.12': return 'Drop Rate';
			case 'store.tip.follow.values.13': return '8-15%';
			case 'store.tip.follow.values.14': return '0-3%';
			case 'store.tip.like.title': return 'Tulad ng & advanced na papuri';
			case 'store.tip.like.values.0': return '';
			case 'store.tip.like.values.1': return 'gusto';
			case 'store.tip.like.values.2': return 'Mataas -level papuri';
			case 'store.tip.like.values.3': return 'Kumpletuhin ang oras';
			case 'store.tip.like.values.4': return '1-24 na oras';
			case 'store.tip.like.values.5': return '1-4 na oras';
			case 'store.tip.like.values.6': return 'Oras ng kabayaran';
			case 'store.tip.like.values.7': return '/';
			case 'store.tip.like.values.8': return 'Kabayaran sa loob ng 7 araw';
			case 'store.tip.like.values.9': return 'Drop Rate';
			case 'store.tip.like.values.10': return '8-15%';
			case 'store.tip.like.values.11': return '0-3%';
			case 'store.buy.follow': return 'Mamimili';
			case 'store.buy.like': return 'Bumili ng ilang papuri';
			case 'store.buy.view': return 'Bumili at manood';
			case 'store.buy.share': return 'Bumili at magbahagi';
			case 'store.buy.retweet': return 'Bumili ng paglipat';
			case 'store.buy.accountPublic': return '* Mangyaring panatilihing bukas ang iyong account';
			case 'store.buy.channelPublic': return '* Mangyaring panatilihing bukas ang iyong channel';
			case 'store.buy.tiktok': return 'Ang iyong Tiktok Video Link';
			case 'store.buy.twitter': return 'Ang iyong link sa Twitter tweet';
			case 'store.buy.instagram': return 'Ang iyong link sa post sa Instagram';
			case 'store.buy.youtube': return 'Ang iyong link sa channel sa YouTube';
			case 'store.buy.pay': return 'Magbayad';
			case 'store.purchase.title': return 'matagumpay ang transaksiyon';
			case 'store.purchase.message': return 'Mangyaring maghintay para makumpleto ang order!';
			case 'store.notice.message': return ({required Object value}) => 'Upang makakuha ng ${value} libreng mga tagasunod, buksan muna ang abiso sa app.';
			case 'store.notice.turnOn': return 'Buksan';
			case 'coins.empty': return 'Walang kasaysayan';
			case 'login.confirm': return 'Kumpirmahin';
			case 'login.username': return ({required Object value}) => 'Ipasok ang iyong ${value} pangalan ng gumagamit';
			case 'login.channel': return 'Ipasok ang iyong link sa channel sa YouTube';
			case 'login.publicUsername': return '* Mangyaring panatilihing bukas ang iyong account';
			case 'login.publicChannel': return '* Mangyaring panatilihing bukas ang iyong channel';
			case 'login.add': return 'Magdagdag ng account';
			case 'login.hintUsername': return 'Username';
			case 'login.hintChannel': return 'Link ng Channel';
			case 'setting.title': return 'I -set up';
			case 'setting.editor': return 'I -edit ang impormasyon';
			case 'setting.daily': return 'Mag -sign in';
			case 'setting.wheel': return 'Gulong ng kapalaran';
			case 'setting.account': return 'Pamamahala ng account';
			case 'setting.language': return 'Wika';
			case 'setting.orders': return 'Order';
			case 'setting.faq': return 'karaniwang problema';
			case 'setting.about': return 'tungkol sa';
			case 'setting.share.title': return 'Ibahagi ang app';
			case 'setting.share.message': return ({required Object value}) => 'Natagpuan ko ang isang application ng kayamanan na maaaring makakuha ng libreng mga tagahanga ng Tiktok at gusto. Sa pamamagitan ng sumusunod na pag -install ng link, makakakuha kami ng ${value} gintong barya!';
			case 'setting.rateUs': return 'Suriin kami';
			case 'language.title': return 'Pumili ng isang wika';
			case 'language.start': return 'magsimula';
			case 'daily.title': return 'Mag -sign in';
			case 'daily.checkIn': return 'Mag -sign in';
			case 'daily.rules.title': return 'panuntunan';
			case 'daily.rules.values.0': return 'Maaari kang mag -sign in bawat 24 na oras;';
			case 'daily.rules.values.1': return 'Matapos ang pagkagambala sa pag -sign -in, magsisimula ulit ito.';
			case 'wheel.title': return 'Gulong ng kapalaran';
			case 'wheel.rules.title': return 'panuntunan';
			case 'wheel.rules.values.0': return ({required Object value}) => 'Ang bawat loterya ay nagkakahalaga ng ${value} gintong barya;';
			case 'wheel.rules.values.1': return 'Ang bilang ng mga draw ay hindi limitado.';
			case 'account.title': return 'Pamamahala ng account';
			case 'account.add': return '+ Magdagdag ng numero ng account';
			case 'account.empty': return 'Walang account';
			case 'account.alert.title': return 'Tanggalin ang account';
			case 'account.alert.message': return 'Matapos matanggal, hindi mo magagamit ang account para sa mga kaugnay na operasyon.';
			case 'orders.title': return 'Order';
			case 'orders.pending': return 'Pila';
			case 'orders.processing': return 'Pagproseso';
			case 'orders.inProgress': return 'pagproseso';
			case 'orders.completed': return 'nakumpleto';
			case 'orders.partial': return 'Bahagyang pagkumpleto';
			case 'orders.error': return 'pagkakamali';
			case 'orders.canceled': return 'Kanselahin';
			case 'orders.refunded': return 'na -refund';
			case 'orders.empty': return 'Walang kaayusan';
			case 'faq.title': return 'karaniwang problema';
			case 'faq.values.0.title': return '1. Paano magsisimula?';
			case 'faq.values.0.value': return 'Idagdag lamang ang iyong pangalan ng gumagamit ng platform ayon sa mga senyas ng pahina, walang password, ang bawat platform ay may kaukulang prompt.';
			case 'faq.values.1.title': return '2. Ligtas bang gamitin ito?';
			case 'faq.values.1.value': return 'Siyempre, ligtas ito. Hindi namin kailangan ang iyong password, at hindi namin mai -save ang iyong data sa application ng lipunan dahil tumatalon ito sa opisyal na aplikasyon upang bigyang -pansin o gumawa ng iba pang mga bagay.';
			case 'faq.values.2.title': return '3. Paano ito gumagana?';
			case 'faq.values.2.value': return 'Ang pamamaraan ng trabaho ay simple: ang iyong personal na data/video ay ipinapakita sa aming komunidad. Malayang magpasya ang mga gumagamit kung dapat bang bigyang pansin ang/tulad mo batay sa nilalaman ng iyong personal na data.Bilang isang palitan na gusto/sundin, makakatanggap sila ng mga gintong barya at maaaring magamit upang makakuha ng mga tagasunod/mahilig.';
			case 'faq.values.3.title': return '4. Ang pansin ba at totoo?';
			case 'faq.values.3.value': return 'Siyempre, ito ay totoo. Kapag bumili ka ng mga kaugnay na serbisyo, maraming mga tunay na gumagamit sa likod nito upang mabigyan ka ng mga serbisyo, at pinatatakbo ito sa opisyal na app. Hindi mo kailangang mag -alala tungkol dito.';
			case 'faq.values.4.title': return '5. Paano ako makakakuha ng mga gintong barya?';
			case 'faq.values.4.value': return 'Sa homepage, maaari mong makita ang listahan ng gawain, i -click upang sundin o gusto, at tumalon sa kaukulang app para sa operasyon. Mangyaring mag -ingat na huwag kanselahin ang iyong pansin o gusto, na magiging sanhi ng pagkansela ng iyong gantimpala.';
			case 'faq.values.5.title': return '6. Bakit nabigo ang mga gawain?';
			case 'faq.values.5.value': return 'Ito ay karaniwang dahil hindi ka talaga nagbabayad ng pansin o gusto mo. Dapat mo munang suriin ang iyong account.';
			case 'faq.values.6.title': return '7. Gaano katagal bago makumpleto ang aking order?';
			case 'faq.values.6.value.0': return 'Ito ay nakasalalay sa dami ng iyong order. Karaniwan, sisimulan mong makuha ang serbisyo kaagad pagkatapos ilagay ang order at kumpletuhin ito sa loob ng 24h, ngunit hindi namin mabigyan ng tumpak na oras, dahil mayroong isang malaking bilang ng mga tunay na gumagamit na nagpapatakbo sa likod ng likuran. Dapat ito Mapapansin ang gintong serbisyo ay mas mabilis kaysa sa mga ordinaryong serbisyo.';
			case 'faq.values.6.value.1': return 'Kumuha ng labis na trapiko sa isang maikling panahon ay gagawing kahina -hinala ang iyong account, kaya ang paghihintay nang matiyaga ay ang pinakamahusay na paraan.';
			case 'faq.values.7.title': return '8. Ano ang dapat kong gawin pagkatapos mag -order?';
			case 'faq.values.7.value': return 'Matapos mong ilagay ang iyong order, panatilihing isiwalat ang iyong account. Huwag baguhin ang iyong username bago makumpleto ang order.';
			case 'faq.values.8.title': return '9. Paano kung may problema ako?';
			case 'faq.values.8.value': return 'Maaari kang makipag -ugnay sa amin sa pamamagitan ng feedback sa app.';
			case 'about.title': return 'tungkol sa';
			case 'about.contact': return 'Makipag-ugnayan sa amin';
			case 'about.service': return 'Mga Tuntunin ng Serbisyo';
			case 'about.policy': return 'Patakaran sa Pagkapribado';
			case 'alert.ok': return 'OK';
			case 'alert.cancel': return 'Kanselahin';
			case 'alert.confirm': return 'Kumpirmahin';
			case 'toast.unpurchase': return 'Hindi mabibili ngayon';
			case 'toast.purchasedNotFound': return 'Hindi mabibili ang kasalukuyang serbisyo';
			case 'toast.payment': return 'matagumpay ang transaksiyon!';
			case 'toast.coinsNotEnough': return 'Hindi sapat ang ginto!';
			case 'toast.received': return 'Matagumpay na resibo!';
			case 'toast.adError': return 'Madalas ang panonood ng mga ad, mangyaring subukang muli sa ibang pagkakataon!';
			case 'localNotification.adTaskReady': return 'Handa na ang bagong gawain sa advertising!';
			default: return null;
		}
	}
}

extension on _StringsTr {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'onlyTitle.contact': return 'Bize Ulaşın';
			case 'universal.coins': return 'altın';
			case 'universal.requestError': return 'Lütfen daha sonra tekrar deneyiniz';
			case 'universal.add': return 'Hesap eklemek';
			case 'tabbar.task': return 'ön Sayfa';
			case 'tabbar.store': return 'Dükkan';
			case 'tabbar.setting': return 'kurmak';
			case 'task.title': return 'ön Sayfa';
			case 'task.skip': return 'üzerinden atlamak';
			case 'task.follow': return 'odaklan';
			case 'task.like': return 'beğenmek';
			case 'task.noTask': return 'Sorma';
			case 'task.tip.title': return 'Çabuk';
			case 'task.tip.values.0': return ({required Object value}) => '1. ${value} düğmeyi tıklayın';
			case 'task.tip.values.1': return ({required Object value}) => '2. Açık ${value}';
			case 'task.tip.values.2': return ({required Object value}) => '${value}. ${value}';
			case 'task.tip.values.3': return ({required Object value}) => '4. ${value}\'e geri dön';
			case 'task.tip.values.4': return '5. Altın Para Alın';
			case 'task.tip.message': return 'Dikkatinizi/beğeninizi iptal ederseniz, altın madeni paralar kaldırılacaktır!';
			case 'store.title': return 'Dükkan';
			case 'store.free': return 'Bedava';
			case 'store.follow': return 'Takipçiler';
			case 'store.like': return 'beğenmek';
			case 'store.view': return 'İzlemek';
			case 'store.share': return 'Paylaş';
			case 'store.retweet': return 'Retweet';
			case 'store.ad.title': return 'Reklam ödülü';
			case 'store.ad.watch': return 'Bir Reklam İzleyin';
			case 'store.changeAccount.title': return 'Hesabı değiştir';
			case 'store.changeAccount.add': return 'Hesap eklemek';
			case 'store.tip.follow.title': return 'Takipçiler ve kıdemli takipçi';
			case 'store.tip.follow.values.0': return '';
			case 'store.tip.follow.values.1': return 'Takipçiler';
			case 'store.tip.follow.values.2': return 'Kıdemli takipçi';
			case 'store.tip.follow.values.3': return 'Tam zaman';
			case 'store.tip.follow.values.4': return '1-24 saat';
			case 'store.tip.follow.values.5': return '1-4 saat';
			case 'store.tip.follow.values.6': return 'Tazminat süresi';
			case 'store.tip.follow.values.7': return '/';
			case 'store.tip.follow.values.8': return '7 gün içinde tazminat';
			case 'store.tip.follow.values.9': return 'Takipçi kalitesi';
			case 'store.tip.follow.values.10': return 'gerçek';
			case 'store.tip.follow.values.11': return 'Gerçek ve Aktif';
			case 'store.tip.follow.values.12': return 'Düşme oranı';
			case 'store.tip.follow.values.13': return '% 8-15';
			case 'store.tip.follow.values.14': return '% 0-3';
			case 'store.tip.like.title': return 'Gibi ve Gelişmiş Övgü';
			case 'store.tip.like.values.0': return '';
			case 'store.tip.like.values.1': return 'beğenmek';
			case 'store.tip.like.values.2': return 'Yüksek seviyeli övgü';
			case 'store.tip.like.values.3': return 'Tam zaman';
			case 'store.tip.like.values.4': return '1-24 saat';
			case 'store.tip.like.values.5': return '1-4 saat';
			case 'store.tip.like.values.6': return 'Tazminat süresi';
			case 'store.tip.like.values.7': return '/';
			case 'store.tip.like.values.8': return '7 gün içinde tazminat';
			case 'store.tip.like.values.9': return 'Düşme oranı';
			case 'store.tip.like.values.10': return '% 8-15';
			case 'store.tip.like.values.11': return '% 0-3';
			case 'store.buy.follow': return 'Alıcı';
			case 'store.buy.like': return 'Biraz övgü al';
			case 'store.buy.view': return 'Satın Al ve İzle';
			case 'store.buy.share': return 'Satın Al ve Paylaş';
			case 'store.buy.retweet': return 'Transfer Satın Alın';
			case 'store.buy.accountPublic': return '* Lütfen hesabınızın açık tutun';
			case 'store.buy.channelPublic': return '* Lütfen kanalınızı açık tutun';
			case 'store.buy.tiktok': return 'Tiktok video bağlantınız';
			case 'store.buy.twitter': return 'Twitter tweet bağlantınız';
			case 'store.buy.instagram': return 'Instagram Post bağlantınız';
			case 'store.buy.youtube': return 'YouTube kanal bağlantınız';
			case 'store.buy.pay': return 'Ödemek';
			case 'store.purchase.title': return 'Ödeme başarılı';
			case 'store.purchase.message': return 'Lütfen siparişin tamamlanmasını bekleyin!';
			case 'store.notice.message': return ({required Object value}) => '${value} ücretsiz takipçi almak için önce uygulama bildirimini açın.';
			case 'store.notice.turnOn': return 'Açık';
			case 'coins.empty': return 'Tarih Yok';
			case 'login.confirm': return 'onaylamak';
			case 'login.username': return ({required Object value}) => '${value} kullanıcı adınızı girin';
			case 'login.channel': return 'YouTube kanal bağlantınızı girin';
			case 'login.publicUsername': return '* Lütfen hesabınızın açık tutun';
			case 'login.publicChannel': return '* Lütfen kanalınızı açık tutun';
			case 'login.add': return 'Hesap eklemek';
			case 'login.hintUsername': return 'Kullanıcı adı';
			case 'login.hintChannel': return 'Kanal bağlantısı';
			case 'setting.title': return 'kurmak';
			case 'setting.editor': return 'Bilgileri Düzenle';
			case 'setting.daily': return 'Kayıt olmak';
			case 'setting.wheel': return 'Çarkıfelek';
			case 'setting.account': return 'Hesap Yönetimi';
			case 'setting.language': return 'dil';
			case 'setting.orders': return 'Emir';
			case 'setting.faq': return 'ortak sorun';
			case 'setting.about': return 'hakkında';
			case 'setting.share.title': return 'Uygulamayı Paylaş';
			case 'setting.share.message': return ({required Object value}) => 'Ücretsiz Tiktok hayranları ve beğeni alabilen bir hazine uygulaması buldum. Aşağıdaki bağlantı kurulumu aracılığıyla ${value} altın parayı alacağız!';
			case 'setting.rateUs': return 'Bizi değerlendirin';
			case 'language.title': return 'Bir Dil Seçin';
			case 'language.start': return 'Başlat';
			case 'daily.title': return 'Kayıt olmak';
			case 'daily.checkIn': return 'Kayıt olmak';
			case 'daily.rules.title': return 'kural';
			case 'daily.rules.values.0': return 'Her 24 saatte bir oturum açabilirsiniz;';
			case 'daily.rules.values.1': return 'İşaretten sonra -kesintiye göre tekrar başlayacak.';
			case 'wheel.title': return 'Çarkıfelek';
			case 'wheel.rules.title': return 'kural';
			case 'wheel.rules.values.0': return ({required Object value}) => 'Her piyango ${value} altın paraya mal olacak;';
			case 'wheel.rules.values.1': return 'Çekiliş sayısı sınırlı değildir.';
			case 'account.title': return 'Hesap Yönetimi';
			case 'account.add': return '+ Hesap Numarası Ekle';
			case 'account.empty': return 'Hesap yok';
			case 'account.alert.title': return 'Hesabı sil';
			case 'account.alert.message': return 'Silmeden sonra, ilgili işlemler için hesabı kullanamazsınız.';
			case 'orders.title': return 'Emir';
			case 'orders.pending': return 'Sıra';
			case 'orders.processing': return 'İşleme';
			case 'orders.inProgress': return 'işleme';
			case 'orders.completed': return 'Tamamlandı';
			case 'orders.partial': return 'Kısmi tamamlama';
			case 'orders.error': return 'hata';
			case 'orders.canceled': return 'İptal edildi';
			case 'orders.refunded': return 'geri ödemeli';
			case 'orders.empty': return 'Sipariş yok';
			case 'faq.title': return 'ortak sorun';
			case 'faq.values.0.title': return '1. Nasıl Başlatılır?';
			case 'faq.values.0.value': return 'Platform kullanıcı adınızı sayfa istemlerine göre ekleyin, şifre yok, her platformun karşılık gelen bir istemi vardır.';
			case 'faq.values.1.title': return '2. Kullanmak güvenli mi?';
			case 'faq.values.1.value': return 'Tabii ki, bu güvenlidir. Parolanıza ihtiyacımız yoktur ve sosyal uygulama verilerinizi kaydedemeyiz, çünkü başka şeylere dikkat etmek veya başka şeyleri yapmak için resmi uygulamaya atlar.';
			case 'faq.values.2.title': return '3. Bunlar nasıl çalışır?';
			case 'faq.values.2.value': return 'Çalışma yöntemi basittir: kişisel verileriniz/videonuz topluluğumuzda görüntülenir. Kullanıcılar, kişisel verilerinizin içeriğine göre size dikkat edip etmemeleri/beğenmeleri gerekip gerekmediğine özgürce karar verirler.Seven/takip eden bir değişim olarak altın paralar alacaklar ve takipçileri/sevenleri almak için kullanılabilirler.';
			case 'faq.values.3.title': return '4. Dikkat ve Gibi Gerçek mi?';
			case 'faq.values.3.value': return 'Tabii ki, bu gerçek. İlgili hizmetler satın aldığınızda, size hizmet vermek için arkasında çok sayıda gerçek kullanıcı var ve resmi uygulamada işletiliyor. Bu konuda endişelenmenize gerek yok.';
			case 'faq.values.4.title': return '5. Altın Paraları Nasıl Kazanırım?';
			case 'faq.values.4.value': return 'Ana sayfada, görev listesini görebilir, takip etmek veya beğenmek için tıklayabilir ve operasyon için ilgili uygulamaya atlayabilirsiniz. Lütfen dikkatinizi iptal etmemeye dikkat edin, bu da ödülünüzün iptal edilmesine neden olacak.';
			case 'faq.values.5.title': return '6. Görevler neden başarısız oluyor?';
			case 'faq.values.5.value': return 'Bunun nedeni genellikle gerçekten dikkat etmemeniz veya beğenmemenizdir. Önce hesabınızı kontrol etmelisiniz.';
			case 'faq.values.6.title': return '7. Siparişimi tamamlamak ne kadar sürer?';
			case 'faq.values.6.value.0': return 'Bu, sipariş hacminize bağlıdır. Genellikle, siparişi verdikten hemen sonra hizmeti almaya başlayacaksınız ve 24 saat içinde tamamlayacaksınız, ancak doğru zaman veremeyiz, çünkü arkada çalışan çok sayıda gerçek kullanıcı var. Altın hizmetin sıradan hizmetlerden daha hızlı olduğu belirtiliyor.';
			case 'faq.values.6.value.1': return 'Kısa sürede çok fazla trafik alın hesabınızı şüpheli hale getirecektir, bu nedenle sabırla beklemek en iyi yoldur.';
			case 'faq.values.7.title': return '8. Sipariş verdikten sonra ne yapmalıyım?';
			case 'faq.values.7.value': return 'Siparişinizi verdikten sonra hesabınızı açıklayın. Sipariş tamamlanmadan önce kullanıcı adınızı değiştirmeyin.';
			case 'faq.values.8.title': return '9. Ya bir sorunum varsa?';
			case 'faq.values.8.value': return 'Uygulamadaki geri bildirimlerle bizimle iletişime geçebilirsiniz.';
			case 'about.title': return 'hakkında';
			case 'about.contact': return 'Bize Ulaşın';
			case 'about.service': return 'Kullanım Şartları';
			case 'about.policy': return 'Gizlilik Politikası';
			case 'alert.ok': return 'TAMAM';
			case 'alert.cancel': return 'İptal';
			case 'alert.confirm': return 'onaylamak';
			case 'toast.unpurchase': return 'Şu anda satın alamıyorum';
			case 'toast.purchasedNotFound': return 'Mevcut hizmeti satın alamıyorum';
			case 'toast.payment': return 'Ödeme başarılı!';
			case 'toast.coinsNotEnough': return 'Altın yetersiz!';
			case 'toast.received': return 'Başarılı makbuz!';
			case 'toast.adError': return 'Reklamları çok sık izlerken, lütfen daha sonra tekrar deneyin!';
			case 'localNotification.adTaskReady': return 'Yeni reklam görevi hazır!';
			default: return null;
		}
	}
}

extension on _StringsUk {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'onlyTitle.contact': return 'зв\'яжіться з нами';
			case 'universal.coins': return 'золото';
			case 'universal.requestError': return 'Будь-ласка спробуйте пізніше';
			case 'universal.add': return 'Додати обліковий запис';
			case 'tabbar.task': return 'титульна сторінка';
			case 'tabbar.store': return 'магазин';
			case 'tabbar.setting': return 'налаштувати';
			case 'task.title': return 'титульна сторінка';
			case 'task.skip': return 'перестрибнути';
			case 'task.follow': return 'Зосередьтеся на';
			case 'task.like': return 'люблю';
			case 'task.noTask': return 'Немає завдання';
			case 'task.tip.title': return 'Підказка';
			case 'task.tip.values.0': return ({required Object value}) => '1. Натисніть кнопку ${value}';
			case 'task.tip.values.1': return ({required Object value}) => '2. Відкрити ${value}';
			case 'task.tip.values.2': return ({required Object value}) => '${value}. ${value}';
			case 'task.tip.values.3': return ({required Object value}) => '4. Назад до ${value}';
			case 'task.tip.values.4': return '5. Отримайте золоті монети';
			case 'task.tip.message': return 'Якщо ви скасуєте свою увагу/подобається, золоті монети будуть видалені!';
			case 'store.title': return 'магазин';
			case 'store.free': return 'безкоштовний';
			case 'store.follow': return 'Послідовники';
			case 'store.like': return 'люблю';
			case 'store.view': return 'Стежити';
			case 'store.share': return 'розподіляти';
			case 'store.retweet': return 'Ретвіт';
			case 'store.ad.title': return 'Рекламна винагорода';
			case 'store.ad.watch': return 'Дивіться рекламу';
			case 'store.changeAccount.title': return 'Змініть рахунок';
			case 'store.changeAccount.add': return 'Додати обліковий запис';
			case 'store.tip.follow.title': return 'Послідовники та старший послідовник';
			case 'store.tip.follow.values.0': return '';
			case 'store.tip.follow.values.1': return 'Послідовники';
			case 'store.tip.follow.values.2': return 'Старший послідовник';
			case 'store.tip.follow.values.3': return 'Повний час';
			case 'store.tip.follow.values.4': return '1-24 години';
			case 'store.tip.follow.values.5': return '1-4 години';
			case 'store.tip.follow.values.6': return 'Час компенсації';
			case 'store.tip.follow.values.7': return '/';
			case 'store.tip.follow.values.8': return 'Компенсація протягом 7 днів';
			case 'store.tip.follow.values.9': return 'Якість послідовника';
			case 'store.tip.follow.values.10': return 'реальний';
			case 'store.tip.follow.values.11': return 'Реальний та активний';
			case 'store.tip.follow.values.12': return 'Швидкість зниження';
			case 'store.tip.follow.values.13': return '8-15%';
			case 'store.tip.follow.values.14': return '0-3%';
			case 'store.tip.like.title': return 'Як і вдосконалена похвала';
			case 'store.tip.like.values.0': return '';
			case 'store.tip.like.values.1': return 'люблю';
			case 'store.tip.like.values.2': return 'Висока кваліфікація';
			case 'store.tip.like.values.3': return 'Повний час';
			case 'store.tip.like.values.4': return '1-24 години';
			case 'store.tip.like.values.5': return '1-4 години';
			case 'store.tip.like.values.6': return 'Час компенсації';
			case 'store.tip.like.values.7': return '/';
			case 'store.tip.like.values.8': return 'Компенсація протягом 7 днів';
			case 'store.tip.like.values.9': return 'Швидкість зниження';
			case 'store.tip.like.values.10': return '8-15%';
			case 'store.tip.like.values.11': return '0-3%';
			case 'store.buy.follow': return 'Покупець';
			case 'store.buy.like': return 'Купуйте трохи похвалу';
			case 'store.buy.view': return 'Купуйте і дивляться';
			case 'store.buy.share': return 'Купити та ділитися';
			case 'store.buy.retweet': return 'Купити трансфер';
			case 'store.buy.accountPublic': return '* Будь ласка, тримайте свій рахунок відкритим';
			case 'store.buy.channelPublic': return '* Будь ласка, тримайте свій канал відкритим';
			case 'store.buy.tiktok': return 'Ваше посилання на відео Tiktok';
			case 'store.buy.twitter': return 'Ваше посилання Twitter Tweet';
			case 'store.buy.instagram': return 'Ваше посилання на повідомлення в Instagram';
			case 'store.buy.youtube': return 'Ваше посилання на канал YouTube';
			case 'store.buy.pay': return 'Оплачувати';
			case 'store.purchase.title': return 'Оплата успішна';
			case 'store.purchase.message': return 'Будь ласка, зачекайте, поки замовлення завершиться!';
			case 'store.notice.message': return ({required Object value}) => 'Щоб отримати ${value} безкоштовних підписників, спочатку відкрийте сповіщення про додаток.';
			case 'store.notice.turnOn': return 'ВІДЧИНЕНО';
			case 'coins.empty': return 'Немає історії';
			case 'login.confirm': return 'підтверджувати';
			case 'login.username': return ({required Object value}) => 'Введіть своє ${value} імені користувача';
			case 'login.channel': return 'Введіть посилання на канал YouTube';
			case 'login.publicUsername': return '* Будь ласка, тримайте свій рахунок відкритим';
			case 'login.publicChannel': return '* Будь ласка, тримайте свій канал відкритим';
			case 'login.add': return 'Додати обліковий запис';
			case 'login.hintUsername': return 'Ім\'я користувача';
			case 'login.hintChannel': return 'Канал посилання';
			case 'setting.title': return 'налаштувати';
			case 'setting.editor': return 'Редагувати інформацію';
			case 'setting.daily': return 'Увійти';
			case 'setting.wheel': return 'Колесо фортуни';
			case 'setting.account': return 'Обліковий запис управління';
			case 'setting.language': return 'мову';
			case 'setting.orders': return 'Наказ';
			case 'setting.faq': return 'Поширена проблема';
			case 'setting.about': return 'про';
			case 'setting.share.title': return 'Поділитися додатком';
			case 'setting.share.message': return ({required Object value}) => 'Я знайшов додаток із скарбами, яка може отримати безкоштовні шанувальники Tiktok та подобаються. Завдяки наступній установці посилань ми отримаємо ${value} золоті монети!';
			case 'setting.rateUs': return 'Оцініть нас';
			case 'language.title': return 'Виберіть мову';
			case 'language.start': return 'почати';
			case 'daily.title': return 'Увійти';
			case 'daily.checkIn': return 'Увійти';
			case 'daily.rules.title': return 'правити';
			case 'daily.rules.values.0': return 'Ви можете підписати кожні 24 години;';
			case 'daily.rules.values.1': return 'Після переривання знаку він почнеться знову.';
			case 'wheel.title': return 'Колесо фортуни';
			case 'wheel.rules.title': return 'правити';
			case 'wheel.rules.values.0': return ({required Object value}) => 'Кожна лотерея коштуватиме ${value} золотих монет;';
			case 'wheel.rules.values.1': return 'Кількість розіграшів не обмежена.';
			case 'account.title': return 'Обліковий запис управління';
			case 'account.add': return '+ Додати номер рахунку';
			case 'account.empty': return 'Немає рахунку';
			case 'account.alert.title': return 'Видалити аккаунт';
			case 'account.alert.message': return 'Після видалення ви не зможете використовувати обліковий запис для відповідних операцій.';
			case 'orders.title': return 'Наказ';
			case 'orders.pending': return 'Чергу';
			case 'orders.processing': return 'Обробка';
			case 'orders.inProgress': return 'обробка';
			case 'orders.completed': return 'завершений';
			case 'orders.partial': return 'Часткове завершення';
			case 'orders.error': return 'помилка';
			case 'orders.canceled': return 'Скасований';
			case 'orders.refunded': return 'повернутий';
			case 'orders.empty': return 'Немає замовлення';
			case 'faq.title': return 'Поширена проблема';
			case 'faq.values.0.title': return '1. Як почати?';
			case 'faq.values.0.value': return 'Просто додайте ім\'я користувача своєї платформи відповідно до підказок сторінки, без пароля, кожна платформа має відповідний запит.';
			case 'faq.values.1.title': return '2. Чи безпечно ним користуватися?';
			case 'faq.values.1.value': return 'Звичайно, це безпечно. Нам не потрібен ваш пароль, і ми не можемо зберегти ваші соціальні програми, оскільки це переходить на офіційну програму, щоб звернути увагу на інші речі або робити інші речі.';
			case 'faq.values.2.title': return '3. Як це працює все?';
			case 'faq.values.2.value': return 'Метод роботи простий: ваші особисті дані/відео відображаються в нашій спільноті. Користувачі вільно вирішують, чи варто звертати увагу на/як ви на основі вмісту ваших особистих даних.Як обмін, який любить/слідує, вони отримають золоті монети і можуть використовуватися для отримання підписників/закоханих.';
			case 'faq.values.3.title': return '4. Чи є увага і як справжня?';
			case 'faq.values.3.value': return 'Звичайно, це реально. Коли ви купуєте пов’язані послуги, за ним є багато реальних користувачів, щоб надати вам послуги, і він працює в офіційному додатку. Вам не потрібно турбуватися про це.';
			case 'faq.values.4.title': return '5. Як заробити золоті монети?';
			case 'faq.values.4.value': return 'На домашній сторінці ви можете побачити список завдань, натиснути, щоб слідувати чи сподобатися, і перейти до відповідної програми для роботи. Будь ласка, будьте обережні, щоб не скасувати свою увагу чи подібну, що призведе до скасування вашої винагороди.';
			case 'faq.values.5.title': return '6. Чому завдання провалюються?';
			case 'faq.values.5.value': return 'Зазвичай це тому, що ви насправді не звертаєте уваги або не подобається. Спочатку слід перевірити свій рахунок.';
			case 'faq.values.6.title': return '7. Скільки часу потрібно для завершення мого замовлення?';
			case 'faq.values.6.value.0': return 'Це залежить від обсягу вашого замовлення. Зазвичай ви почнете отримувати послугу відразу після розміщення замовлення та завершити його протягом 24 годин Зазначена Золота послуга швидша, ніж звичайні послуги.';
			case 'faq.values.6.value.1': return 'Отримайте занадто багато трафіку за короткий час, це зробить ваш рахунок підозрілим, тому терпляче очікування - це найкращий спосіб.';
			case 'faq.values.7.title': return '8. Що мені робити після замовлення?';
			case 'faq.values.7.value': return 'Після того, як ви розміщуєте своє замовлення, повідомте свій обліковий запис. Не змінюйте своє ім’я користувача до завершення замовлення.';
			case 'faq.values.8.title': return '9. Що робити, якщо у мене проблема?';
			case 'faq.values.8.value': return 'Ви можете зв’язатися з нами через відгук у додатку.';
			case 'about.title': return 'про';
			case 'about.contact': return 'зв\'яжіться з нами';
			case 'about.service': return 'Умови обслуговування';
			case 'about.policy': return 'Політика конфіденційності';
			case 'alert.ok': return 'в порядку';
			case 'alert.cancel': return 'Скасувати';
			case 'alert.confirm': return 'підтверджувати';
			case 'toast.unpurchase': return 'Наразі не можу купити';
			case 'toast.purchasedNotFound': return 'Не вдається придбати поточну послугу';
			case 'toast.payment': return 'Оплата успішна!';
			case 'toast.coinsNotEnough': return 'Золото неадекватне!';
			case 'toast.received': return 'Успішна квитанція!';
			case 'toast.adError': return 'Переглядаючи рекламу занадто часто, спробуйте пізніше!';
			case 'localNotification.adTaskReady': return 'Нове завдання реклами готова!';
			default: return null;
		}
	}
}

extension on _StringsUr {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'onlyTitle.contact': return 'ہم سے رابطہ کریں';
			case 'universal.coins': return 'سونا';
			case 'universal.requestError': return 'براہ کرم کچھ دیر بعد کوشش کریں';
			case 'universal.add': return 'اکاؤنٹ کا اضافہ';
			case 'tabbar.task': return 'فرنٹ پیج';
			case 'tabbar.store': return 'دکان';
			case 'tabbar.setting': return 'سیٹ اپ';
			case 'task.title': return 'فرنٹ پیج';
			case 'task.skip': return 'چھلانگ لگائیں';
			case 'task.follow': return 'توجہ مرکوز کریں';
			case 'task.like': return 'جیسے';
			case 'task.noTask': return 'کوئی کام نہیں';
			case 'task.tip.title': return 'فوری طور پر';
			case 'task.tip.values.0': return ({required Object value}) => '1. ${value} بٹن پر کلک کریں';
			case 'task.tip.values.1': return ({required Object value}) => '2. کھلا ${value}';
			case 'task.tip.values.2': return ({required Object value}) => '${value}. ${value}';
			case 'task.tip.values.3': return ({required Object value}) => '4. واپس ${value} پر';
			case 'task.tip.values.4': return '5. سونے کے سکے حاصل کریں';
			case 'task.tip.message': return 'اگر آپ اپنی توجہ/پسند کو منسوخ کرتے ہیں تو ، سونے کے سککوں کو ہٹا دیا جائے گا!';
			case 'store.title': return 'دکان';
			case 'store.free': return 'مفت';
			case 'store.follow': return 'پیروکار';
			case 'store.like': return 'جیسے';
			case 'store.view': return 'دیکھو';
			case 'store.share': return 'بانٹیں';
			case 'store.retweet': return 'retweet';
			case 'store.ad.title': return 'اشتہاری انعام';
			case 'store.ad.watch': return 'ایک اشتہار دیکھیں';
			case 'store.changeAccount.title': return 'اکاؤنٹ میں ترمیم کریں';
			case 'store.changeAccount.add': return 'اکاؤنٹ کا اضافہ';
			case 'store.tip.follow.title': return 'پیروکار اور سینئر پیروکار';
			case 'store.tip.follow.values.0': return '';
			case 'store.tip.follow.values.1': return 'پیروکار';
			case 'store.tip.follow.values.2': return 'سینئر پیروکار';
			case 'store.tip.follow.values.3': return 'مکمل وقت';
			case 'store.tip.follow.values.4': return '1-24 گھنٹے';
			case 'store.tip.follow.values.5': return '1-4 گھنٹے';
			case 'store.tip.follow.values.6': return 'معاوضے کا وقت';
			case 'store.tip.follow.values.7': return '/';
			case 'store.tip.follow.values.8': return '7 دن کے اندر معاوضہ';
			case 'store.tip.follow.values.9': return 'پیروکار کا معیار';
			case 'store.tip.follow.values.10': return 'اصلی';
			case 'store.tip.follow.values.11': return 'اصلی اور متحرک';
			case 'store.tip.follow.values.12': return 'ڈراپ ریٹ';
			case 'store.tip.follow.values.13': return '8-15 ٪';
			case 'store.tip.follow.values.14': return '0-3 ٪';
			case 'store.tip.like.title': return 'جیسے اور اعلی درجے کی تعریف';
			case 'store.tip.like.values.0': return '';
			case 'store.tip.like.values.1': return 'جیسے';
			case 'store.tip.like.values.2': return 'اعلی سطح کی تعریف';
			case 'store.tip.like.values.3': return 'مکمل وقت';
			case 'store.tip.like.values.4': return '1-24 گھنٹے';
			case 'store.tip.like.values.5': return '1-4 گھنٹے';
			case 'store.tip.like.values.6': return 'معاوضے کا وقت';
			case 'store.tip.like.values.7': return '/';
			case 'store.tip.like.values.8': return '7 دن کے اندر معاوضہ';
			case 'store.tip.like.values.9': return 'ڈراپ ریٹ';
			case 'store.tip.like.values.10': return '8-15 ٪';
			case 'store.tip.like.values.11': return '0-3 ٪';
			case 'store.buy.follow': return 'خریدار';
			case 'store.buy.like': return 'کچھ تعریف خریدیں';
			case 'store.buy.view': return 'خریدیں اور دیکھیں';
			case 'store.buy.share': return 'خریدیں اور شیئر کریں';
			case 'store.buy.retweet': return 'منتقلی خریدیں';
			case 'store.buy.accountPublic': return '* براہ کرم اپنا اکاؤنٹ کھلا رکھیں';
			case 'store.buy.channelPublic': return '* براہ کرم اپنے چینل کو کھلا رکھیں';
			case 'store.buy.tiktok': return 'آپ کا ٹیکٹوک ویڈیو لنک';
			case 'store.buy.twitter': return 'آپ کا ٹویٹر ٹویٹ لنک';
			case 'store.buy.instagram': return 'آپ کا انسٹاگرام پوسٹ لنک';
			case 'store.buy.youtube': return 'آپ کا یوٹیوب چینل لنک';
			case 'store.buy.pay': return 'ادا کریں';
			case 'store.purchase.title': return 'ادائیگی کامیاب';
			case 'store.purchase.message': return 'براہ کرم آرڈر مکمل ہونے کا انتظار کریں!';
			case 'store.notice.message': return ({required Object value}) => '${value} مفت پیروکار حاصل کرنے کے لئے ، پہلے ایپ کی اطلاع کھولیں۔';
			case 'store.notice.turnOn': return 'کھلا';
			case 'coins.empty': return 'کوئی تاریخ نہیں';
			case 'login.confirm': return 'تصدیق کریں';
			case 'login.username': return ({required Object value}) => 'اپنا ${value} صارف نام درج کریں';
			case 'login.channel': return 'اپنا یوٹیوب چینل لنک درج کریں';
			case 'login.publicUsername': return '* براہ کرم اپنا اکاؤنٹ کھلا رکھیں';
			case 'login.publicChannel': return '* براہ کرم اپنے چینل کو کھلا رکھیں';
			case 'login.add': return 'اکاؤنٹ کا اضافہ';
			case 'login.hintUsername': return 'صارف نام';
			case 'login.hintChannel': return 'چینل لنک';
			case 'setting.title': return 'سیٹ اپ';
			case 'setting.editor': return 'معلومات میں ترمیم کریں';
			case 'setting.daily': return 'سائن ان';
			case 'setting.wheel': return 'نصیب کا پہیہ';
			case 'setting.account': return 'مینجمنٹ اکاؤنٹ';
			case 'setting.language': return 'زبان';
			case 'setting.orders': return 'ترتیب';
			case 'setting.faq': return 'عام مسئلہ';
			case 'setting.about': return 'کے بارے میں';
			case 'setting.share.title': return 'ایپ شیئر کریں';
			case 'setting.share.message': return ({required Object value}) => 'مجھے ایک خزانہ کی ایپلی کیشن ملی جس میں ٹیکٹوک کے مفت شائقین اور پسندیدگی حاصل کی جاسکتی ہے۔ مندرجہ ذیل لنک انسٹالیشن کے ذریعے ، ہمیں سونے کے ${value} سکے ملیں گے!';
			case 'setting.rateUs': return 'ہمارا اندازہ کریں';
			case 'language.title': return 'زبان کا انتخاب کریں';
			case 'language.start': return 'شروع کریں';
			case 'daily.title': return 'سائن ان';
			case 'daily.checkIn': return 'سائن ان';
			case 'daily.rules.title': return 'حکمرانی';
			case 'daily.rules.values.0': return 'آپ ہر 24 گھنٹوں میں دستخط کرسکتے ہیں۔';
			case 'daily.rules.values.1': return 'سائن ان مداخلت کے بعد ، یہ دوبارہ شروع ہوگا۔';
			case 'wheel.title': return 'نصیب کا پہیہ';
			case 'wheel.rules.title': return 'حکمرانی';
			case 'wheel.rules.values.0': return ({required Object value}) => 'ہر لاٹری میں ${value} سونے کے سککوں کی لاگت آئے گی۔';
			case 'wheel.rules.values.1': return 'ڈرا کی تعداد محدود نہیں ہے۔';
			case 'account.title': return 'مینجمنٹ اکاؤنٹ';
			case 'account.add': return '+ اکاؤنٹ نمبر شامل کریں';
			case 'account.empty': return 'کوئی اکاؤنٹ نہیں';
			case 'account.alert.title': return 'کھاتہ مٹا دو';
			case 'account.alert.message': return 'حذف کرنے کے بعد ، آپ اکاؤنٹ سے متعلقہ کارروائیوں کے لئے استعمال نہیں کرسکیں گے۔';
			case 'orders.title': return 'ترتیب';
			case 'orders.pending': return 'قطار';
			case 'orders.processing': return 'پروسیسنگ';
			case 'orders.inProgress': return 'پروسیسنگ';
			case 'orders.completed': return 'مکمل';
			case 'orders.partial': return 'جزوی تکمیل';
			case 'orders.error': return 'غلطی';
			case 'orders.canceled': return 'منسوخ';
			case 'orders.refunded': return 'رقم کی واپسی';
			case 'orders.empty': return 'کوئی حکم نہیں';
			case 'faq.title': return 'عام مسئلہ';
			case 'faq.values.0.title': return '1. کیسے شروع کریں؟';
			case 'faq.values.0.value': return 'صفحہ کے اشارے کے مطابق اپنے پلیٹ فارم صارف کا نام صرف شامل کریں ، پاس ورڈ نہیں ، ہر پلیٹ فارم میں اسی طرح کا اشارہ ہوتا ہے۔';
			case 'faq.values.1.title': return 'Is. کیا اسے استعمال کرنا محفوظ ہے؟';
			case 'faq.values.1.value': return 'یقینا ، یہ محفوظ ہے۔ ہمیں آپ کے پاس ورڈ کی ضرورت نہیں ہے ، اور ہم آپ کے سماجی درخواست کے ڈیٹا کو محفوظ نہیں کرسکتے ہیں کیونکہ یہ دوسری چیزوں پر توجہ دینے یا کرنے کے لئے سرکاری درخواست پر کود رہا ہے۔';
			case 'faq.values.2.title': return '3. یہ سب کیسے کام کرتے ہیں؟';
			case 'faq.values.2.value': return 'کام کا طریقہ آسان ہے: آپ کا ذاتی ڈیٹا/ویڈیو ہماری برادری میں ظاہر ہوتا ہے۔ صارفین آزادانہ طور پر فیصلہ کرتے ہیں کہ آیا آپ کو آپ کے ذاتی ڈیٹا کے مواد کی بنیاد پر آپ کی طرح/جیسے آپ کی طرف توجہ دینی چاہئے۔ایک تبادلے کے طور پر جو پسند کرتا ہے/پیروی کرتا ہے ، وہ سونے کے سکے وصول کریں گے اور پیروکار/محبت کرنے والوں کو حاصل کرنے کے لئے استعمال ہوسکتے ہیں۔';
			case 'faq.values.3.title': return 'Is. کیا توجہ ہے اور حقیقی ہے؟';
			case 'faq.values.3.value': return 'یقینا ، یہ حقیقت ہے۔ جب آپ متعلقہ خدمات خریدتے ہیں تو ، آپ کو خدمات فراہم کرنے کے لئے اس کے پیچھے بہت سارے حقیقی صارفین موجود ہیں ، اور یہ سرکاری ایپ پر چلایا جاتا ہے۔ آپ کو اس کے بارے میں فکر کرنے کی ضرورت نہیں ہے۔';
			case 'faq.values.4.title': return 'I. میں سونے کے سکے کیسے کما سکتا ہوں؟';
			case 'faq.values.4.value': return 'ہوم پیج پر ، آپ ٹاسک لسٹ دیکھ سکتے ہیں ، پیروی کرنے یا پسند کرنے کے لئے کلک کرسکتے ہیں ، اور آپریشن کے لئے اسی ایپ پر کود سکتے ہیں۔ براہ کرم محتاط رہیں کہ اپنی توجہ یا اس طرح کی طرح منسوخ نہ کریں ، جس کی وجہ سے آپ کا انعام منسوخ ہوجائے گا۔';
			case 'faq.values.5.title': return '6. کام کیوں ناکام ہوتے ہیں؟';
			case 'faq.values.5.value': return 'یہ عام طور پر اس وجہ سے ہوتا ہے کہ آپ واقعی توجہ نہیں دیتے یا پسند نہیں کرتے ہیں۔ آپ کو پہلے اپنے اکاؤنٹ کی جانچ کرنی چاہئے۔';
			case 'faq.values.6.title': return '7. میرے آرڈر کو مکمل کرنے میں کتنا وقت لگتا ہے؟';
			case 'faq.values.6.value.0': return 'یہ آپ کے آرڈر کے حجم پر منحصر ہے۔ عام طور پر ، آپ آرڈر دینے کے بعد فوری طور پر خدمت حاصل کرنا شروع کردیں گے اور اسے 24h کے اندر مکمل کریں گے ، لیکن ہم درست وقت نہیں دے سکتے ہیں ، کیونکہ پیچھے کے پیچھے کام کرنے والے حقیقی صارفین کی ایک بڑی تعداد موجود ہے۔ اسے ہونا چاہئے۔ نوٹ کریں گولڈن سروس عام خدمات سے تیز ہے۔';
			case 'faq.values.6.value.1': return 'تھوڑے وقت میں بہت زیادہ ٹریفک حاصل کریں آپ کے اکاؤنٹ کو مشکوک بنائے گا ، لہذا صبر سے انتظار کرنا ایک بہترین طریقہ ہے۔';
			case 'faq.values.7.title': return '8. آرڈر کرنے کے بعد مجھے کیا کرنا چاہئے؟';
			case 'faq.values.7.value': return 'اپنا آرڈر دینے کے بعد ، اپنا اکاؤنٹ انکشاف کریں۔ آرڈر مکمل ہونے سے پہلے اپنے صارف نام میں ترمیم نہ کریں۔';
			case 'faq.values.8.title': return '9. اگر مجھے کوئی پریشانی ہو تو کیا ہوگا؟';
			case 'faq.values.8.value': return 'آپ ایپ میں آراء کے ذریعے ہم سے رابطہ کرسکتے ہیں۔';
			case 'about.title': return 'کے بارے میں';
			case 'about.contact': return 'ہم سے رابطہ کریں';
			case 'about.service': return 'سروس کی شرائط';
			case 'about.policy': return 'رازداری کی پالیسی';
			case 'alert.ok': return 'ٹھیک ہے';
			case 'alert.cancel': return 'منسوخ کریں';
			case 'alert.confirm': return 'تصدیق کریں';
			case 'toast.unpurchase': return 'فی الحال نہیں خرید سکتے';
			case 'toast.purchasedNotFound': return 'موجودہ خدمت نہیں خرید سکتے';
			case 'toast.payment': return 'ادائیگی کامیاب!';
			case 'toast.coinsNotEnough': return 'سونا ناکافی!';
			case 'toast.received': return 'کامیاب رسید!';
			case 'toast.adError': return 'اشتہارات بھی اکثر دیکھنا ، براہ کرم بعد میں دوبارہ کوشش کریں!';
			case 'localNotification.adTaskReady': return 'نیا اشتہاری کام تیار ہے!';
			default: return null;
		}
	}
}

extension on _StringsUz {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'onlyTitle.contact': return 'Biz bilan bog\'lanish';
			case 'universal.coins': return 'oltin';
			case 'universal.requestError': return 'Iltimos keyinroq qayta urinib ko\'ring';
			case 'universal.add': return 'Hisob qaydnomasini qo\'shing';
			case 'tabbar.task': return 'Old sahifa';
			case 'tabbar.store': return 'do\'kon';
			case 'tabbar.setting': return 'sozlash; o\'rnatish';
			case 'task.title': return 'Old sahifa';
			case 'task.skip': return 'sakrab o\'tish';
			case 'task.follow': return 'ga diqqatni jalb etish';
			case 'task.like': return 'o\'xshash';
			case 'task.noTask': return 'Vazifa yo\'q';
			case 'task.tip.title': return 'Tez';
			case 'task.tip.values.0': return ({required Object value}) => '1. ${value} tugmachani bosing';
			case 'task.tip.values.1': return ({required Object value}) => '2. ${value} oching';
			case 'task.tip.values.2': return ({required Object value}) => '${value}. ${value}';
			case 'task.tip.values.3': return ({required Object value}) => '4. orqaga ${value}';
			case 'task.tip.values.4': return '5. Oltin tanga oling';
			case 'task.tip.message': return 'Agar sizning e\'tiboringizni bekor qilsangiz, oltin tangalar olib tashlanadi!';
			case 'store.title': return 'do\'kon';
			case 'store.free': return 'ozod';
			case 'store.follow': return 'Izdoshlar';
			case 'store.like': return 'o\'xshash';
			case 'store.view': return 'Tomosha';
			case 'store.share': return 'baham ko\'rmoq';
			case 'store.retweet': return 'Retwet';
			case 'store.ad.title': return 'Reklama mukofoti';
			case 'store.ad.watch': return 'Reklamani tomosha qiling';
			case 'store.changeAccount.title': return 'Hisobni o\'zgartirish';
			case 'store.changeAccount.add': return 'Hisob qaydnomasini qo\'shing';
			case 'store.tip.follow.title': return 'Izdoshlar va katta izdoshlar';
			case 'store.tip.follow.values.0': return '';
			case 'store.tip.follow.values.1': return 'Izdoshlar';
			case 'store.tip.follow.values.2': return 'Katta izdosh';
			case 'store.tip.follow.values.3': return 'To\'liq vaqt';
			case 'store.tip.follow.values.4': return '1-24 soat';
			case 'store.tip.follow.values.5': return '1-4 soat';
			case 'store.tip.follow.values.6': return 'Kompensatsiya vaqti';
			case 'store.tip.follow.values.7': return '/';
			case 'store.tip.follow.values.8': return '7 kun ichida kompensatsiya';
			case 'store.tip.follow.values.9': return 'Izdosh sifati';
			case 'store.tip.follow.values.10': return 'haqiqiy';
			case 'store.tip.follow.values.11': return 'Real va faol';
			case 'store.tip.follow.values.12': return 'Tomchilik darajasi';
			case 'store.tip.follow.values.13': return '8-15%';
			case 'store.tip.follow.values.14': return '0-3%';
			case 'store.tip.like.title': return 'Kabi va maqtov kabi';
			case 'store.tip.like.values.0': return '';
			case 'store.tip.like.values.1': return 'o\'xshash';
			case 'store.tip.like.values.2': return 'Yuqori -level maqtov';
			case 'store.tip.like.values.3': return 'To\'liq vaqt';
			case 'store.tip.like.values.4': return '1-24 soat';
			case 'store.tip.like.values.5': return '1-4 soat';
			case 'store.tip.like.values.6': return 'Kompensatsiya vaqti';
			case 'store.tip.like.values.7': return '/';
			case 'store.tip.like.values.8': return '7 kun ichida kompensatsiya';
			case 'store.tip.like.values.9': return 'Tomchilik darajasi';
			case 'store.tip.like.values.10': return '8-15%';
			case 'store.tip.like.values.11': return '0-3%';
			case 'store.buy.follow': return 'Xaridor';
			case 'store.buy.like': return 'Bir nechta maqtov sotib oling';
			case 'store.buy.view': return 'Sotib oling va tomosha qiling';
			case 'store.buy.share': return 'Sotib oling va baham ko\'ring';
			case 'store.buy.retweet': return 'O\'tkazma sotib oling';
			case 'store.buy.accountPublic': return '* Iltimos, hisobingizni oching';
			case 'store.buy.channelPublic': return '* Iltimos, kanalingizni oching';
			case 'store.buy.tiktok': return 'Tiktok video havolasi';
			case 'store.buy.twitter': return 'Sizning Twitter tvitchiligi';
			case 'store.buy.instagram': return 'Sizning Instagram Post havolasi';
			case 'store.buy.youtube': return 'Sizning Youtube kanalingiz havolasi';
			case 'store.buy.pay': return 'To\'lash';
			case 'store.purchase.title': return 'To\'lov muvaffaqiyatli';
			case 'store.purchase.message': return 'Iltimos, buyurtma berishni kuting!';
			case 'store.notice.message': return ({required Object value}) => '${value} ta bepul izdoshlarni olish uchun avval App Notifice-ni oching.';
			case 'store.notice.turnOn': return 'Ochiq';
			case 'coins.empty': return 'Tarix yo\'q';
			case 'login.confirm': return 'tasdiqlamoq';
			case 'login.username': return ({required Object value}) => '${value} ta foydalanuvchi ismingizni kiriting';
			case 'login.channel': return 'YouTube kanalingizni kiriting';
			case 'login.publicUsername': return '* Iltimos, hisobingizni oching';
			case 'login.publicChannel': return '* Iltimos, kanalingizni oching';
			case 'login.add': return 'Hisob qaydnomasini qo\'shing';
			case 'login.hintUsername': return 'foydalanuvchi nomi';
			case 'login.hintChannel': return 'Kanal havolasi';
			case 'setting.title': return 'sozlash; o\'rnatish';
			case 'setting.editor': return 'Ma\'lumotni tahrirlash';
			case 'setting.daily': return 'tizimga kirish';
			case 'setting.wheel': return 'Fortune g\'ildiragi';
			case 'setting.account': return 'Boshqaruv hisobi';
			case 'setting.language': return 'til';
			case 'setting.orders': return 'Tartib';
			case 'setting.faq': return 'keng tarqalgan muammo';
			case 'setting.about': return 'haqida';
			case 'setting.share.title': return 'Ilovani qo\'shish';
			case 'setting.share.message': return ({required Object value}) => 'Men Tiktok muxlislari va yoqtirishlari mumkin bo\'lgan xazina dasturini topdim. Quyidagi aloqa o\'rnatish orqali biz ${value} ta oltin tanga olamiz!';
			case 'setting.rateUs': return 'Bizni baholang';
			case 'language.title': return 'Tilni tanlang';
			case 'language.start': return 'boshlamoq';
			case 'daily.title': return 'tizimga kirish';
			case 'daily.checkIn': return 'tizimga kirish';
			case 'daily.rules.title': return 'qoida';
			case 'daily.rules.values.0': return 'Siz har 24 soat ichida tizimga kirishingiz mumkin;';
			case 'daily.rules.values.1': return 'Kirish Kimga uzilishdan so\'ng, u yana boshlanadi.';
			case 'wheel.title': return 'Fortune g\'ildiragi';
			case 'wheel.rules.title': return 'qoida';
			case 'wheel.rules.values.0': return ({required Object value}) => 'Har bir lotereya ${value} ta oltin tanga bo\'ladi;';
			case 'wheel.rules.values.1': return 'Chizmalar soni cheklanmagan.';
			case 'account.title': return 'Boshqaruv hisobi';
			case 'account.add': return '+ Hisob raqamini qo\'shing';
			case 'account.empty': return 'Hisob yo\'q';
			case 'account.alert.title': return 'Hisobni o\'chirish';
			case 'account.alert.message': return 'O\'chirilgandan so\'ng siz tegishli operatsiyalar uchun hisobdan foydalana olmaysiz.';
			case 'orders.title': return 'Tartib';
			case 'orders.pending': return 'Navbat';
			case 'orders.processing': return 'Qayta ishlash';
			case 'orders.inProgress': return 'qayta ishlash';
			case 'orders.completed': return 'tugallangan';
			case 'orders.partial': return 'Qisman tugatish';
			case 'orders.error': return 'Xato';
			case 'orders.canceled': return 'Bekor qilindi';
			case 'orders.refunded': return 'qaytarib berilmagan';
			case 'orders.empty': return 'Buyurtma yo\'q';
			case 'faq.title': return 'keng tarqalgan muammo';
			case 'faq.values.0.title': return '1. Qanday boshlash kerak?';
			case 'faq.values.0.value': return 'Platforma foydalanuvchi nomini sahifangizga ko\'ra qo\'shing, parol yo\'q, parol yo\'q, har bir platforma tegishli so\'rovga ega.';
			case 'faq.values.1.title': return '2. Foydalanish xavfsizmi?';
			case 'faq.values.1.value': return 'Albatta, bu xavfsizdir. Sizning parolingiz bizga kerak emas, va biz sizning ijtimoiy ariz ma\'lumotlarini saqlab qolmaymiz, chunki u boshqa narsalarga e\'tibor berish yoki boshqa narsalarga e\'tibor berish uchun rasmiy dasturga sakra olmaymiz.';
			case 'faq.values.2.title': return '3. Bu qanday ishlaydi?';
			case 'faq.values.2.value': return 'Ish usuli oddiy: shaxsiy ma\'lumotlar / videongiz bizning hamjamiyatimizda namoyish etiladi. Foydalanuvchilar sizning shaxsiy ma\'lumotlaringiz tarkibiga qarab sizga e\'tibor berishlari kerakmi yoki yo\'qmi, ular sizning shaxsiy ma\'lumotlaringiz tarkibiga e\'tibor berishingizni erkin hal qiladilar.Yoqtirgan varoh sifatida ular oltin tanga oladilar va izdoshlar / sevuvchilar olish uchun ishlatilishi mumkin.';
			case 'faq.values.3.title': return '4. Diqqat va haqiqiy kabi?';
			case 'faq.values.3.value': return 'Albatta, bu haqiqat. Siz bilan tegishli xizmatlarni sotib olganingizda, sizga xizmatlarni taqdim etish uchun juda ko\'p foydalanuvchilar mavjud va u rasmiy ilovada ishlaydi. Siz buni rasmiy ilovada amalga oshiriladi. Siz buni rasmiy ilovada amalga oshiriladi. Siz bu haqda tashvishlanishingiz kerak.';
			case 'faq.values.4.title': return '5. Qanday qilib oltin tanga olaman?';
			case 'faq.values.4.value': return 'Bosh sahifada siz Vazifalar ro\'yxatini ko\'rishingiz mumkin, ko\'rish uchun yoki yoqish uchun bosing.';
			case 'faq.values.5.title': return '6. Nima uchun vazifalar bajarilmayapti?';
			case 'faq.values.5.value': return 'Odatda bu siz haqiqatan ham e\'tibor bermaysiz yoki unga o\'xshamaysiz. Siz avval hisobingizni tekshirishingiz kerak.';
			case 'faq.values.6.title': return '7. Buyurtmani bajarish qancha davom etadi?';
			case 'faq.values.6.value.0': return 'Bu sizning buyurtmangizning hajmiga bog\'liq. Odatda, buyurtmani joylashtiring va uni 24 soat ichida bajaring, ammo biz aniq vaqtni bera olmaymiz, chunki orqa tomondan ko\'p sonli foydalanuvchilar mavjud. Shuni ta\'kidlash kerakki, oltin xizmat oddiy xizmatlardan tezroq.';
			case 'faq.values.6.value.1': return 'Qisqa vaqt ichida juda ko\'p trafik oling, hisobingizni shubhali qiladi, shuning uchun sabr-toqat eng yaxshi usul.';
			case 'faq.values.7.title': return '8. Buyurtmadan keyin nima qilishim kerak?';
			case 'faq.values.7.value': return 'Buyurtmani berganingizdan so\'ng, hisob qaydnomangizni oshkor qiling. Buyurtma tugashidan oldin foydalanuvchi nomingizni o\'zgartirmang.';
			case 'faq.values.8.title': return '9. Agar muammo bo\'lsa nima bo\'ladi?';
			case 'faq.values.8.value': return 'Ilovada fikr-mulohazalar orqali biz bilan bog\'lanishingiz mumkin.';
			case 'about.title': return 'haqida';
			case 'about.contact': return 'Biz bilan bog\'lanish';
			case 'about.service': return 'Xizmat ko\'rsatish shartlari';
			case 'about.policy': return 'Maxfiylik siyosati';
			case 'alert.ok': return 'OK';
			case 'alert.cancel': return 'Bekor qilmoq';
			case 'alert.confirm': return 'tasdiqlamoq';
			case 'toast.unpurchase': return 'Hozirda sotib ololmayapman';
			case 'toast.purchasedNotFound': return 'Joriy xizmatni sotib ololmayman';
			case 'toast.payment': return 'To\'lov muvaffaqiyatli!';
			case 'toast.coinsNotEnough': return 'Oltin etarli emas!';
			case 'toast.received': return 'Muvaffaqiyatli qabul qilish!';
			case 'toast.adError': return 'Reklamani tez-tez tomosha qilish, keyinroq qayta urinib ko\'ring!';
			case 'localNotification.adTaskReady': return 'Yangi reklama vazifasi tayyor!';
			default: return null;
		}
	}
}

extension on _StringsVi {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'onlyTitle.contact': return 'liên hệ chúng tôi';
			case 'universal.coins': return 'vàng';
			case 'universal.requestError': return 'Vui lòng thử lại sau';
			case 'universal.add': return 'Thêm tài khoản';
			case 'tabbar.task': return 'trang nhất';
			case 'tabbar.store': return 'cửa tiệm';
			case 'tabbar.setting': return 'cài đặt';
			case 'task.title': return 'trang nhất';
			case 'task.skip': return 'nhảy qua';
			case 'task.follow': return 'tập trung vào';
			case 'task.like': return 'giống';
			case 'task.noTask': return 'Đừng hỏi';
			case 'task.tip.title': return 'Lời nhắc';
			case 'task.tip.values.0': return ({required Object value}) => '1. Nhấp ${value} nút';
			case 'task.tip.values.1': return ({required Object value}) => '2. Mở ${value}';
			case 'task.tip.values.2': return ({required Object value}) => '${value}. ${value}';
			case 'task.tip.values.3': return ({required Object value}) => '4. Quay lại ${value}';
			case 'task.tip.values.4': return '5. Nhận tiền vàng';
			case 'task.tip.message': return 'Nếu bạn hủy bỏ sự chú ý/thích, tiền vàng sẽ bị xóa!';
			case 'store.title': return 'cửa tiệm';
			case 'store.free': return 'tự do';
			case 'store.follow': return 'Người theo dõi';
			case 'store.like': return 'giống';
			case 'store.view': return 'Đồng hồ';
			case 'store.share': return 'đăng lại';
			case 'store.retweet': return 'Retweet';
			case 'store.ad.title': return 'Phần thưởng quảng cáo';
			case 'store.ad.watch': return 'Xem một quảng cáo';
			case 'store.changeAccount.title': return 'Sửa đổi tài khoản';
			case 'store.changeAccount.add': return 'Thêm tài khoản';
			case 'store.tip.follow.title': return 'Người theo dõi & người theo dõi cao cấp';
			case 'store.tip.follow.values.0': return '';
			case 'store.tip.follow.values.1': return 'Người theo dõi';
			case 'store.tip.follow.values.2': return 'Người theo dõi cao cấp';
			case 'store.tip.follow.values.3': return 'Hoàn thành thời gian';
			case 'store.tip.follow.values.4': return '1-24 giờ';
			case 'store.tip.follow.values.5': return '1-4 giờ';
			case 'store.tip.follow.values.6': return 'Thời gian bồi thường';
			case 'store.tip.follow.values.7': return '/';
			case 'store.tip.follow.values.8': return 'Bồi thường trong vòng 7 ngày';
			case 'store.tip.follow.values.9': return 'Chất lượng người theo dõi';
			case 'store.tip.follow.values.10': return 'có thật';
			case 'store.tip.follow.values.11': return 'Thực & hoạt động';
			case 'store.tip.follow.values.12': return 'Tỷ lệ giảm';
			case 'store.tip.follow.values.13': return '8-15%';
			case 'store.tip.follow.values.14': return '0-3%';
			case 'store.tip.like.title': return 'Thích & khen ngợi nâng cao';
			case 'store.tip.like.values.0': return '';
			case 'store.tip.like.values.1': return 'giống';
			case 'store.tip.like.values.2': return 'CAO CẤP CÔNG CỤ';
			case 'store.tip.like.values.3': return 'Hoàn thành thời gian';
			case 'store.tip.like.values.4': return '1-24 giờ';
			case 'store.tip.like.values.5': return '1-4 giờ';
			case 'store.tip.like.values.6': return 'Thời gian bồi thường';
			case 'store.tip.like.values.7': return '/';
			case 'store.tip.like.values.8': return 'Bồi thường trong vòng 7 ngày';
			case 'store.tip.like.values.9': return 'Tỷ lệ giảm';
			case 'store.tip.like.values.10': return '8-15%';
			case 'store.tip.like.values.11': return '0-3%';
			case 'store.buy.follow': return 'Người mua';
			case 'store.buy.like': return 'Mua một số khen ngợi';
			case 'store.buy.view': return 'Mua và xem';
			case 'store.buy.share': return 'Mua và chia sẻ';
			case 'store.buy.retweet': return 'Mua một chuyển nhượng';
			case 'store.buy.accountPublic': return '* Vui lòng giữ tài khoản của bạn đang mở';
			case 'store.buy.channelPublic': return '* Vui lòng giữ kênh của bạn mở';
			case 'store.buy.tiktok': return 'Liên kết video Tiktok của bạn';
			case 'store.buy.twitter': return 'Liên kết Twitter của bạn';
			case 'store.buy.instagram': return 'Liên kết bài đăng trên Instagram của bạn';
			case 'store.buy.youtube': return 'Liên kết kênh YouTube của bạn';
			case 'store.buy.pay': return 'Trả tiền';
			case 'store.purchase.title': return 'Thanh toán thành công';
			case 'store.purchase.message': return 'Vui lòng đợi đơn đặt hàng hoàn thành!';
			case 'store.notice.message': return ({required Object value}) => 'Để có được ${value} người theo dõi miễn phí, hãy mở thông báo ứng dụng trước.';
			case 'store.notice.turnOn': return 'Mở';
			case 'coins.empty': return 'Không có lịch sử';
			case 'login.confirm': return 'xác nhận';
			case 'login.username': return ({required Object value}) => 'Nhập ${value} tên người dùng của bạn';
			case 'login.channel': return 'Nhập liên kết kênh YouTube của bạn';
			case 'login.publicUsername': return '* Vui lòng giữ tài khoản của bạn đang mở';
			case 'login.publicChannel': return '* Vui lòng giữ kênh của bạn mở';
			case 'login.add': return 'Thêm tài khoản';
			case 'login.hintUsername': return 'tên tài khoản';
			case 'login.hintChannel': return 'Liên kết kênh';
			case 'setting.title': return 'cài đặt';
			case 'setting.editor': return 'chỉnh sửa thông tin';
			case 'setting.daily': return 'Đăng nhập';
			case 'setting.wheel': return 'Vòng quay may mắn';
			case 'setting.account': return 'Tài khoản quản lý';
			case 'setting.language': return 'ngôn ngữ';
			case 'setting.orders': return 'Gọi món';
			case 'setting.faq': return 'vấn đề thường gặp';
			case 'setting.about': return 'Về';
			case 'setting.share.title': return 'Chia sẻ ứng dụng';
			case 'setting.share.message': return ({required Object value}) => 'Tôi đã tìm thấy một ứng dụng kho báu có thể nhận được người hâm mộ và lượt thích Tiktok miễn phí. Thông qua việc cài đặt liên kết sau, chúng tôi sẽ nhận được ${value} đồng vàng!';
			case 'setting.rateUs': return 'Đánh giá chúng tôi';
			case 'language.title': return 'Chọn một ngôn ngữ';
			case 'language.start': return 'bắt đầu';
			case 'daily.title': return 'Đăng nhập';
			case 'daily.checkIn': return 'Đăng nhập';
			case 'daily.rules.title': return 'qui định';
			case 'daily.rules.values.0': return 'Bạn có thể đăng nhập cứ sau 24 giờ;';
			case 'daily.rules.values.1': return 'Sau khi ký hiệu -gián đoạn, nó sẽ bắt đầu lại.';
			case 'wheel.title': return 'Vòng quay may mắn';
			case 'wheel.rules.title': return 'qui định';
			case 'wheel.rules.values.0': return ({required Object value}) => 'Mỗi xổ số sẽ có giá ${value} đồng vàng;';
			case 'wheel.rules.values.1': return 'Số lượng trận hòa không bị giới hạn.';
			case 'account.title': return 'Tài khoản quản lý';
			case 'account.add': return '+ Thêm số tài khoản';
			case 'account.empty': return 'Không tài khoản';
			case 'account.alert.title': return 'Xóa tài khoản';
			case 'account.alert.message': return 'Sau khi xóa, bạn sẽ không thể sử dụng tài khoản cho các hoạt động liên quan.';
			case 'orders.title': return 'Gọi món';
			case 'orders.pending': return 'Xếp hàng';
			case 'orders.processing': return 'Xử lý';
			case 'orders.inProgress': return 'Chế biến';
			case 'orders.completed': return 'hoàn thành';
			case 'orders.partial': return 'Hoàn thành một phần';
			case 'orders.error': return 'sai lầm, điều sai, ngộ nhận';
			case 'orders.canceled': return 'Bị hủy bỏ';
			case 'orders.refunded': return 'hoàn lại tiền';
			case 'orders.empty': return 'Không có đơn đặt hàng';
			case 'faq.title': return 'vấn đề thường gặp';
			case 'faq.values.0.title': return '1. Làm thế nào để bắt đầu?';
			case 'faq.values.0.value': return 'Chỉ cần thêm tên người dùng nền tảng của bạn theo lời nhắc trang, không có mật khẩu, mỗi nền tảng có một lời nhắc tương ứng.';
			case 'faq.values.1.title': return '2. Có an toàn khi sử dụng nó không?';
			case 'faq.values.1.value': return 'Tất nhiên, nó an toàn. Chúng tôi không cần mật khẩu của bạn và chúng tôi không thể lưu dữ liệu ứng dụng xã hội của bạn vì nó đang chuyển sang ứng dụng chính thức để chú ý hoặc làm những việc khác.';
			case 'faq.values.2.title': return '3. Làm thế nào để làm việc tất cả?';
			case 'faq.values.2.value': return 'Phương pháp làm việc rất đơn giản: Dữ liệu/video cá nhân của bạn được hiển thị trong cộng đồng của chúng tôi. Người dùng tự do quyết định xem họ có nên chú ý/thích bạn dựa trên nội dung dữ liệu cá nhân của bạn hay không.Là một trao đổi thích/theo dõi, họ sẽ nhận được tiền vàng và có thể được sử dụng để có được người theo dõi/người yêu.';
			case 'faq.values.3.title': return '4. Sự chú ý và giống như thật?';
			case 'faq.values.3.value': return 'Tất nhiên, đó là sự thật. Khi bạn mua các dịch vụ liên quan, có rất nhiều người dùng thực sự đằng sau nó để cung cấp cho bạn các dịch vụ và nó được vận hành trên ứng dụng chính thức. Bạn không cần phải lo lắng về nó.';
			case 'faq.values.4.title': return '5. Làm cách nào để kiếm tiền vàng?';
			case 'faq.values.4.value': return 'Trên trang chủ, bạn có thể thấy danh sách nhiệm vụ, bấm vào để làm theo hoặc thích và nhảy vào ứng dụng tương ứng để vận hành. Hãy cẩn thận không hủy sự chú ý của bạn hoặc thích, điều này sẽ khiến phần thưởng của bạn bị hủy.';
			case 'faq.values.5.title': return '6. Tại sao các nhiệm vụ thất bại?';
			case 'faq.values.5.value': return 'Điều này thường là do bạn không thực sự chú ý hoặc thích nó. Bạn nên kiểm tra tài khoản của mình trước.';
			case 'faq.values.6.title': return '7. Mất bao lâu để hoàn thành đơn đặt hàng của tôi?';
			case 'faq.values.6.value.0': return 'Điều này phụ thuộc vào khối lượng đơn đặt hàng của bạn. Thông thường, bạn sẽ bắt đầu nhận dịch vụ ngay sau khi đặt hàng và hoàn thành nó trong vòng 24 giờ, nhưng chúng tôi không thể cho thời gian chính xác, vì có một số lượng lớn người dùng thực hoạt động sau lưng. Được lưu ý dịch vụ vàng nhanh hơn các dịch vụ thông thường.';
			case 'faq.values.6.value.1': return 'Nhận quá nhiều lưu lượng truy cập trong một thời gian ngắn sẽ khiến tài khoản của bạn đáng ngờ, vì vậy chờ đợi một cách kiên nhẫn là cách tốt nhất.';
			case 'faq.values.7.title': return '8. Tôi nên làm gì sau khi đặt hàng?';
			case 'faq.values.7.value': return 'Sau khi bạn đặt hàng, hãy giữ tài khoản của bạn được tiết lộ. Không sửa đổi tên người dùng của bạn trước khi đơn đặt hàng hoàn tất.';
			case 'faq.values.8.title': return '9. Nếu tôi gặp vấn đề thì sao?';
			case 'faq.values.8.value': return 'Bạn có thể liên hệ với chúng tôi thông qua phản hồi trong ứng dụng.';
			case 'about.title': return 'Về';
			case 'about.contact': return 'liên hệ chúng tôi';
			case 'about.service': return 'Điều khoản dịch vụ';
			case 'about.policy': return 'Chính sách bảo mật';
			case 'alert.ok': return 'ĐƯỢC RỒI';
			case 'alert.cancel': return 'Hủy bỏ';
			case 'alert.confirm': return 'xác nhận';
			case 'toast.unpurchase': return 'Không thể mua hiện tại';
			case 'toast.purchasedNotFound': return 'Không thể mua dịch vụ hiện tại';
			case 'toast.payment': return 'Thanh toán thành công!';
			case 'toast.coinsNotEnough': return 'Vàng không đủ!';
			case 'toast.received': return 'Biên lai thành công!';
			case 'toast.adError': return 'Xem quảng cáo quá thường xuyên, xin vui lòng thử lại sau!';
			case 'localNotification.adTaskReady': return 'Nhiệm vụ quảng cáo mới đã sẵn sàng!';
			default: return null;
		}
	}
}

extension on _StringsZhCn {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'onlyTitle.contact': return '联系我们';
			case 'universal.coins': return '金币';
			case 'universal.requestError': return '请稍后再试';
			case 'universal.add': return '添加账号';
			case 'tabbar.task': return '首页';
			case 'tabbar.store': return '商店';
			case 'tabbar.setting': return '设置';
			case 'task.title': return '首页';
			case 'task.skip': return '跳过';
			case 'task.follow': return '关注';
			case 'task.like': return '点赞';
			case 'task.noTask': return '暂无任务';
			case 'task.tip.title': return '🎉 提示';
			case 'task.tip.values.0': return ({required Object value}) => '1. 点击 ${value} 按钮';
			case 'task.tip.values.1': return ({required Object value}) => '2. 打开 ${value}';
			case 'task.tip.values.2': return ({required Object value}) => '3. ${value}';
			case 'task.tip.values.3': return ({required Object value}) => '4. 回到 ${value}';
			case 'task.tip.values.4': return '5. 获得金币';
			case 'task.tip.message': return '如果取消关注/点赞，金币将会被移除!';
			case 'store.title': return '商店';
			case 'store.free': return '免费';
			case 'store.follow': return '关注者';
			case 'store.like': return '点赞';
			case 'store.view': return '观看';
			case 'store.share': return '分享';
			case 'store.retweet': return '转推';
			case 'store.ad.title': return '广告奖励';
			case 'store.ad.watch': return '观看广告';
			case 'store.changeAccount.title': return '修改账号';
			case 'store.changeAccount.add': return '添加账号';
			case 'store.tip.follow.title': return '关注者 & 高级关注者';
			case 'store.tip.follow.values.0': return '';
			case 'store.tip.follow.values.1': return '关注者';
			case 'store.tip.follow.values.2': return '高级关注者';
			case 'store.tip.follow.values.3': return '完成时间';
			case 'store.tip.follow.values.4': return '1-24 小时';
			case 'store.tip.follow.values.5': return '1-4 小时';
			case 'store.tip.follow.values.6': return '补偿时间';
			case 'store.tip.follow.values.7': return '/';
			case 'store.tip.follow.values.8': return '7天内补偿';
			case 'store.tip.follow.values.9': return '关注者质量';
			case 'store.tip.follow.values.10': return '真实的';
			case 'store.tip.follow.values.11': return '真实的 & 活跃的';
			case 'store.tip.follow.values.12': return '掉落率';
			case 'store.tip.follow.values.13': return '8-15%';
			case 'store.tip.follow.values.14': return '0-3%';
			case 'store.tip.like.title': return '点赞 & 高级点赞';
			case 'store.tip.like.values.0': return '';
			case 'store.tip.like.values.1': return '点赞';
			case 'store.tip.like.values.2': return '高级点赞';
			case 'store.tip.like.values.3': return '完成时间';
			case 'store.tip.like.values.4': return '1-24 小时';
			case 'store.tip.like.values.5': return '1-4 小时';
			case 'store.tip.like.values.6': return '补偿时间';
			case 'store.tip.like.values.7': return '/';
			case 'store.tip.like.values.8': return '7天内补偿';
			case 'store.tip.like.values.9': return '掉落率';
			case 'store.tip.like.values.10': return '8-15%';
			case 'store.tip.like.values.11': return '0-3%';
			case 'store.buy.follow': return '购买关注者';
			case 'store.buy.like': return '购买点赞';
			case 'store.buy.view': return '购买观看';
			case 'store.buy.share': return '购买分享';
			case 'store.buy.retweet': return '购买转推';
			case 'store.buy.accountPublic': return '* 请保持你的账号是公开状态';
			case 'store.buy.channelPublic': return '* 请保持你的频道是公开状态';
			case 'store.buy.tiktok': return '你的 TikTok 视频链接';
			case 'store.buy.twitter': return '你的 Twitter 推文链接';
			case 'store.buy.instagram': return '你的 Instagram 帖子链接';
			case 'store.buy.youtube': return '你的 Youtube 频道链接';
			case 'store.buy.pay': return '支付';
			case 'store.purchase.title': return '支付成功';
			case 'store.purchase.message': return '请等待订单完成!';
			case 'store.notice.message': return ({required Object value}) => '要获得 ${value} 个免费关注者，请先打开 app 通知。';
			case 'store.notice.turnOn': return '打开';
			case 'coins.empty': return '暂无历史';
			case 'login.confirm': return '确认';
			case 'login.username': return ({required Object value}) => '输入你的 ${value} 用户名';
			case 'login.channel': return '输入你的 Youtube 频道链接';
			case 'login.publicUsername': return '* 请保持你的账号是公开状态';
			case 'login.publicChannel': return '* 请保持你的频道是公开状态';
			case 'login.add': return '添加账号';
			case 'login.hintUsername': return '用户名';
			case 'login.hintChannel': return '频道链接';
			case 'setting.title': return '设置';
			case 'setting.editor': return '编辑资料';
			case 'setting.daily': return '每日签到';
			case 'setting.wheel': return '幸运转盘';
			case 'setting.account': return '管理账号';
			case 'setting.language': return '语言';
			case 'setting.orders': return '订单';
			case 'setting.faq': return '常见问题';
			case 'setting.about': return '关于';
			case 'setting.share.title': return '分享 app';
			case 'setting.share.message': return ({required Object value}) => '我发现了一个可以获得免费的 Tiktok 粉丝和点赞的宝藏应用，通过下面的链接安装，我们都会得到 ${value} 金币!';
			case 'setting.rateUs': return '评价我们';
			case 'language.title': return '选择语言';
			case 'language.start': return '开始';
			case 'daily.title': return '每日签到';
			case 'daily.checkIn': return '签到';
			case 'daily.rules.title': return '规则';
			case 'daily.rules.values.0': return '每 24 小时可以签到一次;';
			case 'daily.rules.values.1': return '签到中断后将重新开始。';
			case 'wheel.title': return '幸运转盘';
			case 'wheel.rules.title': return '规则';
			case 'wheel.rules.values.0': return ({required Object value}) => '每次抽奖将花费 ${value} 金币;';
			case 'wheel.rules.values.1': return '抽奖次数不限。';
			case 'account.title': return '管理账号';
			case 'account.add': return '+ 添加账号';
			case 'account.empty': return '无账号';
			case 'account.alert.title': return '删除账号';
			case 'account.alert.message': return '删除后，你将无法使用该账号进行相关操作。';
			case 'orders.title': return '订单';
			case 'orders.pending': return '队列中';
			case 'orders.processing': return '处理中';
			case 'orders.inProgress': return '进行中';
			case 'orders.completed': return '已完成';
			case 'orders.partial': return '部分完成';
			case 'orders.error': return '错误';
			case 'orders.canceled': return '已取消';
			case 'orders.refunded': return '已退款';
			case 'orders.empty': return '暂无订单';
			case 'faq.title': return '常见问题';
			case 'faq.values.0.title': return '1. 如何开始？';
			case 'faq.values.0.value': return '只要按照页面提示添加你的平台用户名即可，不需要密码，每个平台都有对应的提示。';
			case 'faq.values.1.title': return '2. 我使用它是否安全？';
			case 'faq.values.1.value': return '当然是安全的，我们不需要你的密码，我们也无法保存你的社交应用数据，因为是跳转到官方应用来关注或做其他事情。';
			case 'faq.values.2.title': return '3. 这一切是如何工作的？';
			case 'faq.values.2.value': return '工作方式很简单：你的个人资料/视频显示在我们的社区中，用户根据你的个人资料的内容自由决定他们是否要关注/喜欢你。作为喜欢/关注的交换，他们会收到金币，可以用来获得关注者/喜欢者。';
			case 'faq.values.3.title': return '4. 关注和点赞是真实的吗？';
			case 'faq.values.3.value': return '当然是真实的，当你购买相关服务时，背后有大量的真实用户为你提供服务，而且是在官方的 app 上操作，你不需要担心。';
			case 'faq.values.4.title': return '5. 我如何赚取金币？';
			case 'faq.values.4.value': return '在首页，你可以看到任务列表，点击关注或喜欢，跳转到相应的 app 进行操作，请注意不要取消关注或喜欢，这将导致你的奖励被取消。';
			case 'faq.values.5.title': return '6. 为什么任务有时会失败？';
			case 'faq.values.5.value': return '通常这是因为你没有真正关注或喜欢，你应该先检查你的账户。';
			case 'faq.values.6.title': return '7. 我的订单需要多长时间才能完成？';
			case 'faq.values.6.value.0': return '这取决于你的订单量，通常情况下，你会在下单后立即开始获得服务，并在 24h 内完成，但我们无法给出准确时间，因为有大量的真实用户在背后操作，需要注意的是，GOLDEN 服务比普通服务更迅速。';
			case 'faq.values.6.value.1': return '你在短时间内获得太多的流量会使你的账户变得可疑，所以耐心等待是最好的方法。';
			case 'faq.values.7.title': return '8. 下订单后，我应该做什么？';
			case 'faq.values.7.value': return '下订单后，请保持你的账户公开，在订单完成前不要修改你的用户名。';
			case 'faq.values.8.title': return '9. 如果我有问题怎么办？';
			case 'faq.values.8.value': return '你可以通过 app 中的反馈与我们联系。';
			case 'about.title': return '关于';
			case 'about.contact': return '联系我们';
			case 'about.service': return '服务条款';
			case 'about.policy': return '隐私政策';
			case 'alert.ok': return '好的';
			case 'alert.cancel': return '取消';
			case 'alert.confirm': return '确认';
			case 'toast.unpurchase': return '目前无法购买';
			case 'toast.purchasedNotFound': return '不能购买当前服务';
			case 'toast.payment': return '支付成功!';
			case 'toast.coinsNotEnough': return '金币不足!';
			case 'toast.received': return '接收成功!';
			case 'toast.adError': return '观看广告太频繁，请稍后再试！';
			case 'localNotification.adTaskReady': return '新的广告任务已就绪!';
			default: return null;
		}
	}
}

extension on _StringsZhTw {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'onlyTitle.contact': return '聯繫我們';
			case 'universal.coins': return '金幣';
			case 'universal.requestError': return '請稍後再試';
			case 'universal.add': return '添加賬號';
			case 'tabbar.task': return '首頁';
			case 'tabbar.store': return '商店';
			case 'tabbar.setting': return '設置';
			case 'task.title': return '首頁';
			case 'task.skip': return '跳過';
			case 'task.follow': return '關注';
			case 'task.like': return '點贊';
			case 'task.noTask': return '暫無任務';
			case 'task.tip.title': return '🎉 提示';
			case 'task.tip.values.0': return ({required Object value}) => '1. 點擊 ${value} 按鈕';
			case 'task.tip.values.1': return ({required Object value}) => '2. 打開 ${value}';
			case 'task.tip.values.2': return ({required Object value}) => '3. ${value}';
			case 'task.tip.values.3': return ({required Object value}) => '4. 回到 ${value}';
			case 'task.tip.values.4': return '5. 獲得金幣';
			case 'task.tip.message': return '如果取消關注/點贊，金幣將會被移除!';
			case 'store.title': return '商店';
			case 'store.free': return '免費';
			case 'store.follow': return '關注者';
			case 'store.like': return '點贊';
			case 'store.view': return '觀看';
			case 'store.share': return '分享';
			case 'store.retweet': return '轉推';
			case 'store.ad.title': return '廣告獎勵';
			case 'store.ad.watch': return '觀看廣告';
			case 'store.changeAccount.title': return '修改賬號';
			case 'store.changeAccount.add': return '添加賬號';
			case 'store.tip.follow.title': return '關注者 & 高級關注者';
			case 'store.tip.follow.values.0': return '';
			case 'store.tip.follow.values.1': return '關注者';
			case 'store.tip.follow.values.2': return '高級關注者';
			case 'store.tip.follow.values.3': return '完成時間';
			case 'store.tip.follow.values.4': return '1-24 小時';
			case 'store.tip.follow.values.5': return '1-4 小時';
			case 'store.tip.follow.values.6': return '補償時間';
			case 'store.tip.follow.values.7': return '/';
			case 'store.tip.follow.values.8': return '7天內補償';
			case 'store.tip.follow.values.9': return '關注者質量';
			case 'store.tip.follow.values.10': return '真實的';
			case 'store.tip.follow.values.11': return '真實的 & 活躍的';
			case 'store.tip.follow.values.12': return '掉落率';
			case 'store.tip.follow.values.13': return '8-15%';
			case 'store.tip.follow.values.14': return '0-3%';
			case 'store.tip.like.title': return '點贊 & 高級點贊';
			case 'store.tip.like.values.0': return '';
			case 'store.tip.like.values.1': return '點贊';
			case 'store.tip.like.values.2': return '高級點贊';
			case 'store.tip.like.values.3': return '完成時間';
			case 'store.tip.like.values.4': return '1-24 小時';
			case 'store.tip.like.values.5': return '1-4 小時';
			case 'store.tip.like.values.6': return '補償時間';
			case 'store.tip.like.values.7': return '/';
			case 'store.tip.like.values.8': return '7天內補償';
			case 'store.tip.like.values.9': return '掉落率';
			case 'store.tip.like.values.10': return '8-15%';
			case 'store.tip.like.values.11': return '0-3%';
			case 'store.buy.follow': return '購買關注者';
			case 'store.buy.like': return '購買點贊';
			case 'store.buy.view': return '購買觀看';
			case 'store.buy.share': return '購買分享';
			case 'store.buy.retweet': return '購買轉推';
			case 'store.buy.accountPublic': return '* 請保持你的賬號是公開狀態';
			case 'store.buy.channelPublic': return '* 請保持你的頻道是公開狀態';
			case 'store.buy.tiktok': return '你的 TikTok 視頻鏈接';
			case 'store.buy.twitter': return '你的 Twitter 推文鏈接';
			case 'store.buy.instagram': return '你的 Instagram 帖子鏈接';
			case 'store.buy.youtube': return '你的 Youtube 頻道鏈接';
			case 'store.buy.pay': return '支付';
			case 'store.purchase.title': return '支付成功';
			case 'store.purchase.message': return '請等待訂單完成!';
			case 'store.notice.message': return ({required Object value}) => '要獲得 ${value} 個免費關注者，請先打開 app 通知。';
			case 'store.notice.turnOn': return '打開';
			case 'coins.empty': return '暫無歷史';
			case 'login.confirm': return '確認';
			case 'login.username': return ({required Object value}) => '輸入你的 ${value} 用戶名';
			case 'login.channel': return '輸入你的 Youtube 頻道鏈接';
			case 'login.publicUsername': return '* 請保持你的賬號是公開狀態';
			case 'login.publicChannel': return '* 請保持你的頻道是公開狀態';
			case 'login.add': return '添加賬號';
			case 'login.hintUsername': return '用戶名';
			case 'login.hintChannel': return '頻道鏈接';
			case 'setting.title': return '設置';
			case 'setting.editor': return '編輯資料';
			case 'setting.daily': return '每日簽到';
			case 'setting.wheel': return '幸運轉盤';
			case 'setting.account': return '管理賬號';
			case 'setting.language': return '語言';
			case 'setting.orders': return '訂單';
			case 'setting.faq': return '常見問題';
			case 'setting.about': return '關於';
			case 'setting.share.title': return '分享 app';
			case 'setting.share.message': return ({required Object value}) => '我發現了一個可以獲得免費的 Tiktok 粉絲和點讚的寶藏應用，通過下面的鏈接安裝，我們都會得到 ${value} 金幣!';
			case 'setting.rateUs': return '評價我們';
			case 'language.title': return '選擇語言';
			case 'language.start': return '開始';
			case 'daily.title': return '每日簽到';
			case 'daily.checkIn': return '簽到';
			case 'daily.rules.title': return '規則';
			case 'daily.rules.values.0': return '每 24 小時可以簽到一次;';
			case 'daily.rules.values.1': return '簽到中斷後將重新開始。';
			case 'wheel.title': return '幸運轉盤';
			case 'wheel.rules.title': return '規則';
			case 'wheel.rules.values.0': return ({required Object value}) => '每次抽獎將花費 ${value} 金幣;';
			case 'wheel.rules.values.1': return '抽獎次數不限。';
			case 'account.title': return '管理賬號';
			case 'account.add': return '+ 添加賬號';
			case 'account.empty': return '無賬號';
			case 'account.alert.title': return '刪除賬號';
			case 'account.alert.message': return '刪除後，你將無法使用該賬號進行相關操作。';
			case 'orders.title': return '訂單';
			case 'orders.pending': return '隊列中';
			case 'orders.processing': return '處理中';
			case 'orders.inProgress': return '進行中';
			case 'orders.completed': return '已完成';
			case 'orders.partial': return '部分完成';
			case 'orders.error': return '錯誤';
			case 'orders.canceled': return '已取消';
			case 'orders.refunded': return '已退款';
			case 'orders.empty': return '暫無訂單';
			case 'faq.title': return '常見問題';
			case 'faq.values.0.title': return '1. 如何開始？';
			case 'faq.values.0.value': return '只要按照頁面提示添加你的平台用戶名即可，不需要密碼，每個平台都有對應的提示。';
			case 'faq.values.1.title': return '2. 我使用它是否安全？';
			case 'faq.values.1.value': return '當然是安全的，我們不需要你的密碼，我們也無法保存你的社交應用數據，因為是跳轉到官方應用來關注或做其他事情。';
			case 'faq.values.2.title': return '3. 這一切是如何工作的？';
			case 'faq.values.2.value': return '工作方式很簡單：你的個人資料/視頻顯示在我們的社區中，用戶根據你的個人資料的內容自由決定他們是否要關注/喜歡你。作為喜歡/關注的交換，他們會收到金幣，可以用來獲得關注者/喜歡者。';
			case 'faq.values.3.title': return '4. 關注和點贊是真實的嗎？';
			case 'faq.values.3.value': return '當然是真實的，當你購買相關服務時，背後有大量的真實用戶為你提供服務，而且是在官方的 app 上操作，你不需要擔心。';
			case 'faq.values.4.title': return '5. 我如何賺取金幣？';
			case 'faq.values.4.value': return '在首頁，你可以看到任務列表，點擊關注或喜歡，跳轉到相應的 app 進行操作，請注意不要取消關注或喜歡，這將導致你的獎勵被取消。';
			case 'faq.values.5.title': return '6. 為什麼任務有時會失敗？';
			case 'faq.values.5.value': return '通常這是因為你沒有真正關注或喜歡，你應該先檢查你的賬戶。';
			case 'faq.values.6.title': return '7. 我的訂單需要多長時間才能完成？';
			case 'faq.values.6.value.0': return '這取決於你的訂單量，通常情況下，你會在下單後立即開始獲得服務，並在 24h 內完成，但我們無法給出準確時間，因為有大量的真實用戶在背後操作，需要注意的是，GOLDEN 服務比普通服務更迅速。';
			case 'faq.values.6.value.1': return '你在短時間內獲得太多的流量會使你的賬戶變得可疑，所以耐心等待是最好的方法。';
			case 'faq.values.7.title': return '8. 下訂單後，我應該做什麼？';
			case 'faq.values.7.value': return '下訂單後，請保持你的賬戶公開，在訂單完成前不要修改你的用戶名。';
			case 'faq.values.8.title': return '9. 如果我有問題怎麼辦？';
			case 'faq.values.8.value': return '你可以通過 app 中的反饋與我們聯繫。';
			case 'about.title': return '關於';
			case 'about.contact': return '聯繫我們';
			case 'about.service': return '服務條款';
			case 'about.policy': return '隱私政策';
			case 'alert.ok': return '好的';
			case 'alert.cancel': return '取消';
			case 'alert.confirm': return '確認';
			case 'toast.unpurchase': return '目前無法購買';
			case 'toast.purchasedNotFound': return '不能購買當前服務';
			case 'toast.payment': return '支付成功!';
			case 'toast.coinsNotEnough': return '金幣不足!';
			case 'toast.received': return '接收成功!';
			case 'toast.adError': return '觀看廣告太頻繁，請稍後再試！';
			case 'localNotification.adTaskReady': return '新的廣告任務已就緒!';
			default: return null;
		}
	}
}
