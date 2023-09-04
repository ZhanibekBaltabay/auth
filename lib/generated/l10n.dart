// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Wrong email or password. Try again`
  String get wrongEmailOrPasswordTryAgain {
    return Intl.message(
      'Wrong email or password. Try again',
      name: 'wrongEmailOrPasswordTryAgain',
      desc: '',
      args: [],
    );
  }

  /// `Unknown error! Please try again or contact support.`
  String get unknownErrorPleaseTryAgainOrContactSupport {
    return Intl.message(
      'Unknown error! Please try again or contact support.',
      name: 'unknownErrorPleaseTryAgainOrContactSupport',
      desc: '',
      args: [],
    );
  }

  /// `Enter correct Email`
  String get enterCorrectEmail {
    return Intl.message(
      'Enter correct Email',
      name: 'enterCorrectEmail',
      desc: '',
      args: [],
    );
  }

  /// `Minimum 6 characters`
  String get minimum6Characters {
    return Intl.message(
      'Minimum 6 characters',
      name: 'minimum6Characters',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get signIn {
    return Intl.message(
      'Sign In',
      name: 'signIn',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get signUp {
    return Intl.message(
      'Sign Up',
      name: 'signUp',
      desc: '',
      args: [],
    );
  }

  /// `Passwords must match`
  String get passwordsMustMatch {
    return Intl.message(
      'Passwords must match',
      name: 'passwordsMustMatch',
      desc: '',
      args: [],
    );
  }

  /// `This Email is already in use, please try again using another Email`
  String get thisEmailIsAlreadyInUsePleaseTryAgainUsing {
    return Intl.message(
      'This Email is already in use, please try again using another Email',
      name: 'thisEmailIsAlreadyInUsePleaseTryAgainUsing',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid Email`
  String get pleaseEnterAValidEmail {
    return Intl.message(
      'Please enter a valid Email',
      name: 'pleaseEnterAValidEmail',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Re-enter password`
  String get reenterPassword {
    return Intl.message(
      'Re-enter password',
      name: 'reenterPassword',
      desc: '',
      args: [],
    );
  }

  /// `Email Address Verification`
  String get emailAddressVerification {
    return Intl.message(
      'Email Address Verification',
      name: 'emailAddressVerification',
      desc: '',
      args: [],
    );
  }

  /// `A confirmation email has been sent to your email.`
  String get aConfirmationEmailHasBeenSentToYourEmail {
    return Intl.message(
      'A confirmation email has been sent to your email.',
      name: 'aConfirmationEmailHasBeenSentToYourEmail',
      desc: '',
      args: [],
    );
  }

  /// `Resend`
  String get resend {
    return Intl.message(
      'Resend',
      name: 'resend',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `This is {name}`
  String thisIsNameShopstar(Object name) {
    return Intl.message(
      'This is $name',
      name: 'thisIsNameShopstar',
      desc: '',
      args: [name],
    );
  }

  /// `This is an online store, find what you need here`
  String get Options {
    return Intl.message(
      'This is an online store, find what you need here',
      name: 'Options',
      desc: '',
      args: [],
    );
  }

  /// `Get Started`
  String get getStarted {
    return Intl.message(
      'Get Started',
      name: 'getStarted',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong!`
  String get somethingWentWrong {
    return Intl.message(
      'Something went wrong!',
      name: 'somethingWentWrong',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message(
      'Name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Phone`
  String get phone {
    return Intl.message(
      'Phone',
      name: 'phone',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get search {
    return Intl.message(
      'Search',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Search in the market`
  String get searchInTheMarket {
    return Intl.message(
      'Search in the market',
      name: 'searchInTheMarket',
      desc: '',
      args: [],
    );
  }

  /// `Stats`
  String get stats {
    return Intl.message(
      'Stats',
      name: 'stats',
      desc: '',
      args: [],
    );
  }

  /// `Share`
  String get share {
    return Intl.message(
      'Share',
      name: 'share',
      desc: '',
      args: [],
    );
  }

  /// `Notifications`
  String get notifications {
    return Intl.message(
      'Notifications',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `SignOut`
  String get signout {
    return Intl.message(
      'SignOut',
      name: 'signout',
      desc: '',
      args: [],
    );
  }

  /// `Version {version}`
  String versionVersion(Object version) {
    return Intl.message(
      'Version $version',
      name: 'versionVersion',
      desc: '',
      args: [version],
    );
  }

  /// `Edit profile`
  String get editProfile {
    return Intl.message(
      'Edit profile',
      name: 'editProfile',
      desc: '',
      args: [],
    );
  }

  /// `Name, phone`
  String get namePhone {
    return Intl.message(
      'Name, phone',
      name: 'namePhone',
      desc: '',
      args: [],
    );
  }

  /// `Edit language`
  String get editLanguage {
    return Intl.message(
      'Edit language',
      name: 'editLanguage',
      desc: '',
      args: [],
    );
  }

  /// `kaz, ru, en`
  String get language {
    return Intl.message(
      'kaz, ru, en',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Save account`
  String get saveAccount {
    return Intl.message(
      'Save account',
      name: 'saveAccount',
      desc: '',
      args: [],
    );
  }

  /// `login, password`
  String get accountLog {
    return Intl.message(
      'login, password',
      name: 'accountLog',
      desc: '',
      args: [],
    );
  }

  /// `liked {SHOPSTAr}`
  String likedShopstar(Object SHOPSTAr) {
    return Intl.message(
      'liked $SHOPSTAr',
      name: 'likedShopstar',
      desc: '',
      args: [SHOPSTAr],
    );
  }

  /// `Send a  comment`
  String get Comments {
    return Intl.message(
      'Send a  comment',
      name: 'Comments',
      desc: '',
      args: [],
    );
  }

  /// `The number of goods purchased`
  String get purchased {
    return Intl.message(
      'The number of goods purchased',
      name: 'purchased',
      desc: '',
      args: [],
    );
  }

  /// `Money spent on goods`
  String get statsMoney {
    return Intl.message(
      'Money spent on goods',
      name: 'statsMoney',
      desc: '',
      args: [],
    );
  }

  /// `Shop`
  String get shop {
    return Intl.message(
      'Shop',
      name: 'shop',
      desc: '',
      args: [],
    );
  }

  /// `Directory`
  String get directory {
    return Intl.message(
      'Directory',
      name: 'directory',
      desc: '',
      args: [],
    );
  }

  /// `Favorites`
  String get favorites {
    return Intl.message(
      'Favorites',
      name: 'favorites',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Аты`
  String get userName {
    return Intl.message(
      'Аты',
      name: 'userName',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ka'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
