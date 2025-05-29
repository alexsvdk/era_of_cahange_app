///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsRu extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsRu({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ru,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ru>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsRu _root = this; // ignore: unused_field

	@override 
	TranslationsRu $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsRu(meta: meta ?? this.$meta);

	// Translations
	@override late final TranslationsAuthRu auth = TranslationsAuthRu._(_root);
	@override late final TranslationsEmailRu email = TranslationsEmailRu._(_root);
	@override late final TranslationsErrorRu error = TranslationsErrorRu._(_root);
}

// Path: auth
class TranslationsAuthRu extends TranslationsAuthEn {
	TranslationsAuthRu._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override late final TranslationsAuthAggreementRu aggreement = TranslationsAuthAggreementRu._(_root);
	@override late final TranslationsAuthSignInScreenRu signInScreen = TranslationsAuthSignInScreenRu._(_root);
	@override late final TranslationsAuthSignUpScreenRu signUpScreen = TranslationsAuthSignUpScreenRu._(_root);
	@override late final TranslationsAuthErrorRu error = TranslationsAuthErrorRu._(_root);
	@override late final TranslationsAuthExitDialogRu exitDialog = TranslationsAuthExitDialogRu._(_root);
}

// Path: email
class TranslationsEmailRu extends TranslationsEmailEn {
	TranslationsEmailRu._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override late final TranslationsEmailConfirmationScreenRu confirmationScreen = TranslationsEmailConfirmationScreenRu._(_root);
	@override late final TranslationsEmailSignUpConfirmationDialogRu signUpConfirmationDialog = TranslationsEmailSignUpConfirmationDialogRu._(_root);
}

// Path: error
class TranslationsErrorRu extends TranslationsErrorEn {
	TranslationsErrorRu._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get requestCancelled => 'Запрос был отменён';
	@override String get requestTimeout => 'Время ожидания запроса истекло';
	@override String get invalidCertificate => 'Недействительный сертификат';
	@override String get connectionError => 'Ошибка соединения';
	@override String get genericError => 'Произошла ошибка';
}

// Path: auth.aggreement
class TranslationsAuthAggreementRu extends TranslationsAuthAggreementEn {
	TranslationsAuthAggreementRu._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override TextSpan signIn({required InlineSpanBuilder onPrivacyPolicy, required InlineSpanBuilder onTermsOfService}) => TextSpan(children: [
		const TextSpan(text: 'Авторизуясь, вы соглашаетесь с нашей '),
		onPrivacyPolicy('Политикой конфиденциальности'),
		const TextSpan(text: ' и '),
		onTermsOfService('Условиями использования'),
		const TextSpan(text: '.'),
	]);
	@override TextSpan signUp({required InlineSpanBuilder onPrivacyPolicy, required InlineSpanBuilder onTermsOfService}) => TextSpan(children: [
		const TextSpan(text: 'Регистрируясь, вы соглашаетесь с нашей '),
		onPrivacyPolicy('Политикой конфиденциальности'),
		const TextSpan(text: ' и '),
		onTermsOfService('Условиями использования'),
		const TextSpan(text: '.'),
	]);
	@override TextSpan subscribing({required InlineSpanBuilder onPrivacyPolicy, required InlineSpanBuilder onTermsOfService}) => TextSpan(children: [
		const TextSpan(text: 'Подписываясь, вы принимаете нашу '),
		onPrivacyPolicy('Политику конфиденциальности'),
		const TextSpan(text: ' и '),
		onTermsOfService('Условия использования'),
		const TextSpan(text: '.'),
	]);
}

// Path: auth.signInScreen
class TranslationsAuthSignInScreenRu extends TranslationsAuthSignInScreenEn {
	TranslationsAuthSignInScreenRu._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Вход';
	@override String get subtitle => 'Введите данные для входа';

	/// Email input field hint
	@override String get email => 'Электронная почта';

	/// Password input field hint
	@override String get password => 'Пароль';

	/// Sign In button text
	@override String get login => 'Войти';

	@override String get forgotPassword => 'Забыли пароль?';
	@override String get dontHaveAccount => 'Нет учетной записи?';
	@override String get signUp => 'Зарегистрироваться';
}

// Path: auth.signUpScreen
class TranslationsAuthSignUpScreenRu extends TranslationsAuthSignUpScreenEn {
	TranslationsAuthSignUpScreenRu._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Регистрация';
	@override String get subtitle => 'Введите данные для регистрации';
	@override String get email => _root.auth.signInScreen.email;
	@override String get password => _root.auth.signInScreen.password;
	@override String get confirmPassword => 'Подтвердите пароль';
	@override String get createAccount => 'Создать аккаунт';
	@override String get alreadyHaveAccount => 'У вас уже есть аккаунт?';
	@override String get signIn => 'Войти';
}

// Path: auth.error
class TranslationsAuthErrorRu extends TranslationsAuthErrorEn {
	TranslationsAuthErrorRu._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override late final TranslationsAuthErrorEmailRu email = TranslationsAuthErrorEmailRu._(_root);
	@override late final TranslationsAuthErrorPasswordRu password = TranslationsAuthErrorPasswordRu._(_root);
	@override late final TranslationsAuthErrorConfirmPasswordRu confirmPassword = TranslationsAuthErrorConfirmPasswordRu._(_root);
}

// Path: auth.exitDialog
class TranslationsAuthExitDialogRu extends TranslationsAuthExitDialogEn {
	TranslationsAuthExitDialogRu._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Выход';
	@override String get body => 'Вы уверены, что хотите выйти?';
	@override String get cancel => 'Отмена';
	@override String get exit => 'Выйти';
}

// Path: email.confirmationScreen
class TranslationsEmailConfirmationScreenRu extends TranslationsEmailConfirmationScreenEn {
	TranslationsEmailConfirmationScreenRu._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Подтверждение Email';
	@override TextSpan body({required InlineSpan email}) => TextSpan(children: [
		const TextSpan(text: 'Мы отправили письмо на указанный адрес '),
		email,
		const TextSpan(text: '. Пожалуйста, проверьте почту и перейдите по ссылке, чтобы подтвердить адрес.\n\nЕсли письмо не появилось во входящих, проверьте папку Спам или Нежелательная почта.'),
	]);
	@override String get resendEmail => 'Отправить ещё раз';
	@override String get wrongEmail => 'Неверный email?';
	@override String get signUp => _root.auth.signInScreen.signUp;
}

// Path: email.signUpConfirmationDialog
class TranslationsEmailSignUpConfirmationDialogRu extends TranslationsEmailSignUpConfirmationDialogEn {
	TranslationsEmailSignUpConfirmationDialogRu._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Подтвердить регистрацию';
	@override String get body => 'Вы будете разлогинены и перенаправлены на экран регистрации.';
}

// Path: auth.error.email
class TranslationsAuthErrorEmailRu extends TranslationsAuthErrorEmailEn {
	TranslationsAuthErrorEmailRu._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get invalid => 'Неверный адрес электронной почты';
	@override String get required => 'Необходимо указать адрес электронной почты';
}

// Path: auth.error.password
class TranslationsAuthErrorPasswordRu extends TranslationsAuthErrorPasswordEn {
	TranslationsAuthErrorPasswordRu._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get required => 'Необходимо ввести пароль';
	@override String get minLength => 'Пароль должен содержать не менее 8 символов';
}

// Path: auth.error.confirmPassword
class TranslationsAuthErrorConfirmPasswordRu extends TranslationsAuthErrorConfirmPasswordEn {
	TranslationsAuthErrorConfirmPasswordRu._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get required => 'Необходимо подтвердить пароль';
	@override String get notMatch => 'Пароли не совпадают';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsRu {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'auth.aggreement.signIn': return ({required InlineSpanBuilder onPrivacyPolicy, required InlineSpanBuilder onTermsOfService}) => TextSpan(children: [
				const TextSpan(text: 'Авторизуясь, вы соглашаетесь с нашей '),
				onPrivacyPolicy('Политикой конфиденциальности'),
				const TextSpan(text: ' и '),
				onTermsOfService('Условиями использования'),
				const TextSpan(text: '.'),
			]);
			case 'auth.aggreement.signUp': return ({required InlineSpanBuilder onPrivacyPolicy, required InlineSpanBuilder onTermsOfService}) => TextSpan(children: [
				const TextSpan(text: 'Регистрируясь, вы соглашаетесь с нашей '),
				onPrivacyPolicy('Политикой конфиденциальности'),
				const TextSpan(text: ' и '),
				onTermsOfService('Условиями использования'),
				const TextSpan(text: '.'),
			]);
			case 'auth.aggreement.subscribing': return ({required InlineSpanBuilder onPrivacyPolicy, required InlineSpanBuilder onTermsOfService}) => TextSpan(children: [
				const TextSpan(text: 'Подписываясь, вы принимаете нашу '),
				onPrivacyPolicy('Политику конфиденциальности'),
				const TextSpan(text: ' и '),
				onTermsOfService('Условия использования'),
				const TextSpan(text: '.'),
			]);
			case 'auth.signInScreen.title': return 'Вход';
			case 'auth.signInScreen.subtitle': return 'Введите данные для входа';
			case 'auth.signInScreen.email': return 'Электронная почта';
			case 'auth.signInScreen.password': return 'Пароль';
			case 'auth.signInScreen.login': return 'Войти';
			case 'auth.signInScreen.forgotPassword': return 'Забыли пароль?';
			case 'auth.signInScreen.dontHaveAccount': return 'Нет учетной записи?';
			case 'auth.signInScreen.signUp': return 'Зарегистрироваться';
			case 'auth.signUpScreen.title': return 'Регистрация';
			case 'auth.signUpScreen.subtitle': return 'Введите данные для регистрации';
			case 'auth.signUpScreen.email': return _root.auth.signInScreen.email;
			case 'auth.signUpScreen.password': return _root.auth.signInScreen.password;
			case 'auth.signUpScreen.confirmPassword': return 'Подтвердите пароль';
			case 'auth.signUpScreen.createAccount': return 'Создать аккаунт';
			case 'auth.signUpScreen.alreadyHaveAccount': return 'У вас уже есть аккаунт?';
			case 'auth.signUpScreen.signIn': return 'Войти';
			case 'auth.error.email.invalid': return 'Неверный адрес электронной почты';
			case 'auth.error.email.required': return 'Необходимо указать адрес электронной почты';
			case 'auth.error.password.required': return 'Необходимо ввести пароль';
			case 'auth.error.password.minLength': return 'Пароль должен содержать не менее 8 символов';
			case 'auth.error.confirmPassword.required': return 'Необходимо подтвердить пароль';
			case 'auth.error.confirmPassword.notMatch': return 'Пароли не совпадают';
			case 'auth.exitDialog.title': return 'Выход';
			case 'auth.exitDialog.body': return 'Вы уверены, что хотите выйти?';
			case 'auth.exitDialog.cancel': return 'Отмена';
			case 'auth.exitDialog.exit': return 'Выйти';
			case 'email.confirmationScreen.title': return 'Подтверждение Email';
			case 'email.confirmationScreen.body': return ({required InlineSpan email}) => TextSpan(children: [
				const TextSpan(text: 'Мы отправили письмо на указанный адрес '),
				email,
				const TextSpan(text: '. Пожалуйста, проверьте почту и перейдите по ссылке, чтобы подтвердить адрес.\n\nЕсли письмо не появилось во входящих, проверьте папку Спам или Нежелательная почта.'),
			]);
			case 'email.confirmationScreen.resendEmail': return 'Отправить ещё раз';
			case 'email.confirmationScreen.wrongEmail': return 'Неверный email?';
			case 'email.confirmationScreen.signUp': return _root.auth.signInScreen.signUp;
			case 'email.signUpConfirmationDialog.title': return 'Подтвердить регистрацию';
			case 'email.signUpConfirmationDialog.body': return 'Вы будете разлогинены и перенаправлены на экран регистрации.';
			case 'error.requestCancelled': return 'Запрос был отменён';
			case 'error.requestTimeout': return 'Время ожидания запроса истекло';
			case 'error.invalidCertificate': return 'Недействительный сертификат';
			case 'error.connectionError': return 'Ошибка соединения';
			case 'error.genericError': return 'Произошла ошибка';
			default: return null;
		}
	}
}

