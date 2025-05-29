///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	Translations $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => Translations(meta: meta ?? this.$meta);

	// Translations

	/// Authentication flow related translations
	late final TranslationsAuthEn auth = TranslationsAuthEn.internal(_root);

	/// Email confirmation flow related translations
	late final TranslationsEmailEn email = TranslationsEmailEn.internal(_root);

	/// Error messages
	late final TranslationsErrorEn error = TranslationsErrorEn.internal(_root);
}

// Path: auth
class TranslationsAuthEn {
	TranslationsAuthEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsAuthAggreementEn aggreement = TranslationsAuthAggreementEn.internal(_root);
	late final TranslationsAuthSignInScreenEn signInScreen = TranslationsAuthSignInScreenEn.internal(_root);
	late final TranslationsAuthSignUpScreenEn signUpScreen = TranslationsAuthSignUpScreenEn.internal(_root);

	/// Auth error messages
	late final TranslationsAuthErrorEn error = TranslationsAuthErrorEn.internal(_root);

	late final TranslationsAuthExitDialogEn exitDialog = TranslationsAuthExitDialogEn.internal(_root);
}

// Path: email
class TranslationsEmailEn {
	TranslationsEmailEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsEmailConfirmationScreenEn confirmationScreen = TranslationsEmailConfirmationScreenEn.internal(_root);
	late final TranslationsEmailSignUpConfirmationDialogEn signUpConfirmationDialog = TranslationsEmailSignUpConfirmationDialogEn.internal(_root);
}

// Path: error
class TranslationsErrorEn {
	TranslationsErrorEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get requestCancelled => 'Request was cancelled';
	String get requestTimeout => 'Request timeout';
	String get invalidCertificate => 'Invalid certificate';
	String get connectionError => 'Connection error';
	String get genericError => 'An error occurred';
}

// Path: auth.aggreement
class TranslationsAuthAggreementEn {
	TranslationsAuthAggreementEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	TextSpan signIn({required InlineSpanBuilder onPrivacyPolicy, required InlineSpanBuilder onTermsOfService}) => TextSpan(children: [
		const TextSpan(text: 'By signing in, you agree to our '),
		onPrivacyPolicy('Privacy Statement'),
		const TextSpan(text: ' and '),
		onTermsOfService('Terms of Use'),
		const TextSpan(text: '.'),
	]);
	TextSpan signUp({required InlineSpanBuilder onPrivacyPolicy, required InlineSpanBuilder onTermsOfService}) => TextSpan(children: [
		const TextSpan(text: 'By signing up, you agree to our '),
		onPrivacyPolicy('Privacy Statement'),
		const TextSpan(text: ' and '),
		onTermsOfService('Terms of Use'),
		const TextSpan(text: '.'),
	]);
	TextSpan subscribing({required InlineSpanBuilder onPrivacyPolicy, required InlineSpanBuilder onTermsOfService}) => TextSpan(children: [
		const TextSpan(text: 'By subscribing, you accept our '),
		onPrivacyPolicy('Privacy Statement'),
		const TextSpan(text: ' and '),
		onTermsOfService('Terms of Use'),
		const TextSpan(text: '.'),
	]);
}

// Path: auth.signInScreen
class TranslationsAuthSignInScreenEn {
	TranslationsAuthSignInScreenEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Login';
	String get subtitle => 'Please sign in to continue';

	/// Email input field hint
	String get email => 'Email';

	/// Password input field hint
	String get password => 'Password';

	/// Sign In button text
	String get login => 'Login';

	String get forgotPassword => 'Forgot Password?';
	String get dontHaveAccount => 'Don\'t have an account?';
	String get signUp => 'Sign Up';
}

// Path: auth.signUpScreen
class TranslationsAuthSignUpScreenEn {
	TranslationsAuthSignUpScreenEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Sign Up';
	String get subtitle => 'Please sign up to continue';
	String get email => _root.auth.signInScreen.email;
	String get password => _root.auth.signInScreen.password;
	String get confirmPassword => 'Confirm Password';
	String get createAccount => 'Create Account';
	String get alreadyHaveAccount => 'Already have an account?';
	String get signIn => 'Sign In';
}

// Path: auth.error
class TranslationsAuthErrorEn {
	TranslationsAuthErrorEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsAuthErrorEmailEn email = TranslationsAuthErrorEmailEn.internal(_root);
	late final TranslationsAuthErrorPasswordEn password = TranslationsAuthErrorPasswordEn.internal(_root);
	late final TranslationsAuthErrorConfirmPasswordEn confirmPassword = TranslationsAuthErrorConfirmPasswordEn.internal(_root);
}

// Path: auth.exitDialog
class TranslationsAuthExitDialogEn {
	TranslationsAuthExitDialogEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Logout';
	String get body => 'Are you sure you want to exit?';
	String get cancel => 'Cancel';
	String get exit => 'Logout';
}

// Path: email.confirmationScreen
class TranslationsEmailConfirmationScreenEn {
	TranslationsEmailConfirmationScreenEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Email confirmation';
	TextSpan body({required InlineSpan email}) => TextSpan(children: [
		const TextSpan(text: 'We have sent an email to the specified address '),
		email,
		const TextSpan(text: '. Please check your inbox and click the link to confirm your email address.\n\nIf you do not see the email in your inbox, check your Spam or Junk folder.'),
	]);
	String get resendEmail => 'Resend Email';
	String get wrongEmail => 'Wrong email?';
	String get signUp => _root.auth.signInScreen.signUp;
}

// Path: email.signUpConfirmationDialog
class TranslationsEmailSignUpConfirmationDialogEn {
	TranslationsEmailSignUpConfirmationDialogEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Confirm Sign Up';
	String get body => 'You will be logged out and redirected to the sign up screen.';
}

// Path: auth.error.email
class TranslationsAuthErrorEmailEn {
	TranslationsAuthErrorEmailEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get invalid => 'Invalid email address';
	String get required => 'Email is required';
}

// Path: auth.error.password
class TranslationsAuthErrorPasswordEn {
	TranslationsAuthErrorPasswordEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get required => 'Password is required';
	String get minLength => 'Password must be at least 8 characters long';
}

// Path: auth.error.confirmPassword
class TranslationsAuthErrorConfirmPasswordEn {
	TranslationsAuthErrorConfirmPasswordEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get required => 'Confirm password is required';
	String get notMatch => 'Passwords do not match';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'auth.aggreement.signIn': return ({required InlineSpanBuilder onPrivacyPolicy, required InlineSpanBuilder onTermsOfService}) => TextSpan(children: [
				const TextSpan(text: 'By signing in, you agree to our '),
				onPrivacyPolicy('Privacy Statement'),
				const TextSpan(text: ' and '),
				onTermsOfService('Terms of Use'),
				const TextSpan(text: '.'),
			]);
			case 'auth.aggreement.signUp': return ({required InlineSpanBuilder onPrivacyPolicy, required InlineSpanBuilder onTermsOfService}) => TextSpan(children: [
				const TextSpan(text: 'By signing up, you agree to our '),
				onPrivacyPolicy('Privacy Statement'),
				const TextSpan(text: ' and '),
				onTermsOfService('Terms of Use'),
				const TextSpan(text: '.'),
			]);
			case 'auth.aggreement.subscribing': return ({required InlineSpanBuilder onPrivacyPolicy, required InlineSpanBuilder onTermsOfService}) => TextSpan(children: [
				const TextSpan(text: 'By subscribing, you accept our '),
				onPrivacyPolicy('Privacy Statement'),
				const TextSpan(text: ' and '),
				onTermsOfService('Terms of Use'),
				const TextSpan(text: '.'),
			]);
			case 'auth.signInScreen.title': return 'Login';
			case 'auth.signInScreen.subtitle': return 'Please sign in to continue';
			case 'auth.signInScreen.email': return 'Email';
			case 'auth.signInScreen.password': return 'Password';
			case 'auth.signInScreen.login': return 'Login';
			case 'auth.signInScreen.forgotPassword': return 'Forgot Password?';
			case 'auth.signInScreen.dontHaveAccount': return 'Don\'t have an account?';
			case 'auth.signInScreen.signUp': return 'Sign Up';
			case 'auth.signUpScreen.title': return 'Sign Up';
			case 'auth.signUpScreen.subtitle': return 'Please sign up to continue';
			case 'auth.signUpScreen.email': return _root.auth.signInScreen.email;
			case 'auth.signUpScreen.password': return _root.auth.signInScreen.password;
			case 'auth.signUpScreen.confirmPassword': return 'Confirm Password';
			case 'auth.signUpScreen.createAccount': return 'Create Account';
			case 'auth.signUpScreen.alreadyHaveAccount': return 'Already have an account?';
			case 'auth.signUpScreen.signIn': return 'Sign In';
			case 'auth.error.email.invalid': return 'Invalid email address';
			case 'auth.error.email.required': return 'Email is required';
			case 'auth.error.password.required': return 'Password is required';
			case 'auth.error.password.minLength': return 'Password must be at least 8 characters long';
			case 'auth.error.confirmPassword.required': return 'Confirm password is required';
			case 'auth.error.confirmPassword.notMatch': return 'Passwords do not match';
			case 'auth.exitDialog.title': return 'Logout';
			case 'auth.exitDialog.body': return 'Are you sure you want to exit?';
			case 'auth.exitDialog.cancel': return 'Cancel';
			case 'auth.exitDialog.exit': return 'Logout';
			case 'email.confirmationScreen.title': return 'Email confirmation';
			case 'email.confirmationScreen.body': return ({required InlineSpan email}) => TextSpan(children: [
				const TextSpan(text: 'We have sent an email to the specified address '),
				email,
				const TextSpan(text: '. Please check your inbox and click the link to confirm your email address.\n\nIf you do not see the email in your inbox, check your Spam or Junk folder.'),
			]);
			case 'email.confirmationScreen.resendEmail': return 'Resend Email';
			case 'email.confirmationScreen.wrongEmail': return 'Wrong email?';
			case 'email.confirmationScreen.signUp': return _root.auth.signInScreen.signUp;
			case 'email.signUpConfirmationDialog.title': return 'Confirm Sign Up';
			case 'email.signUpConfirmationDialog.body': return 'You will be logged out and redirected to the sign up screen.';
			case 'error.requestCancelled': return 'Request was cancelled';
			case 'error.requestTimeout': return 'Request timeout';
			case 'error.invalidCertificate': return 'Invalid certificate';
			case 'error.connectionError': return 'Connection error';
			case 'error.genericError': return 'An error occurred';
			default: return null;
		}
	}
}

