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

  /// `English`
  String get en {
    return Intl.message(
      'English',
      name: 'en',
      desc: '',
      args: [],
    );
  }

  /// `Vietnamese`
  String get vi {
    return Intl.message(
      'Vietnamese',
      name: 'vi',
      desc: '',
      args: [],
    );
  }

  /// `App Name`
  String get appName {
    return Intl.message(
      'App Name',
      name: 'appName',
      desc: '',
      args: [],
    );
  }

  /// `Phone number is incorrect`
  String get errorPhone {
    return Intl.message(
      'Phone number is incorrect',
      name: 'errorPhone',
      desc: '',
      args: [],
    );
  }

  /// `dd/MM/yyyy`
  String get formatDate {
    return Intl.message(
      'dd/MM/yyyy',
      name: 'formatDate',
      desc: '',
      args: [],
    );
  }

  /// `Close`
  String get close {
    return Intl.message(
      'Close',
      name: 'close',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get ok {
    return Intl.message(
      'Yes',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `Done`
  String get done {
    return Intl.message(
      'Done',
      name: 'done',
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

  /// `No data`
  String get noData {
    return Intl.message(
      'No data',
      name: 'noData',
      desc: '',
      args: [],
    );
  }

  /// `Retry`
  String get retry {
    return Intl.message(
      'Retry',
      name: 'retry',
      desc: '',
      args: [],
    );
  }

  /// `Both`
  String get both {
    return Intl.message(
      'Both',
      name: 'both',
      desc: '',
      args: [],
    );
  }

  /// `Male`
  String get male {
    return Intl.message(
      'Male',
      name: 'male',
      desc: '',
      args: [],
    );
  }

  /// `Female`
  String get female {
    return Intl.message(
      'Female',
      name: 'female',
      desc: '',
      args: [],
    );
  }

  /// `Other`
  String get other {
    return Intl.message(
      'Other',
      name: 'other',
      desc: '',
      args: [],
    );
  }

  /// `Gender`
  String get gender {
    return Intl.message(
      'Gender',
      name: 'gender',
      desc: '',
      args: [],
    );
  }

  /// `Please enter password`
  String get enterPassword {
    return Intl.message(
      'Please enter password',
      name: 'enterPassword',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password?`
  String get forgotYourPassword {
    return Intl.message(
      'Forgot Password?',
      name: 'forgotYourPassword',
      desc: '',
      args: [],
    );
  }

  /// `Or login with`
  String get loginWith {
    return Intl.message(
      'Or login with',
      name: 'loginWith',
      desc: '',
      args: [],
    );
  }

  /// `The email is invalid`
  String get invalidEmail {
    return Intl.message(
      'The email is invalid',
      name: 'invalidEmail',
      desc: '',
      args: [],
    );
  }

  /// `The password needs at least 6 characters`
  String get invalidMinLengthPassword {
    return Intl.message(
      'The password needs at least 6 characters',
      name: 'invalidMinLengthPassword',
      desc: '',
      args: [],
    );
  }

  /// `Error, please try again`
  String get unknownErrorMessage {
    return Intl.message(
      'Error, please try again',
      name: 'unknownErrorMessage',
      desc: '',
      args: [],
    );
  }

  /// `The OTP is incorrect, please try again`
  String get otpError {
    return Intl.message(
      'The OTP is incorrect, please try again',
      name: 'otpError',
      desc: '',
      args: [],
    );
  }

  /// `Find out & make friends`
  String get makeFriend {
    return Intl.message(
      'Find out & make friends',
      name: 'makeFriend',
      desc: '',
      args: [],
    );
  }

  /// `Find your own soulmate`
  String get findOut {
    return Intl.message(
      'Find your own soulmate',
      name: 'findOut',
      desc: '',
      args: [],
    );
  }

  /// `Ignore`
  String get ignore {
    return Intl.message(
      'Ignore',
      name: 'ignore',
      desc: '',
      args: [],
    );
  }

  /// `Choose your images`
  String get chooseImage {
    return Intl.message(
      'Choose your images',
      name: 'chooseImage',
      desc: '',
      args: [],
    );
  }

  /// `All images`
  String get allImage {
    return Intl.message(
      'All images',
      name: 'allImage',
      desc: '',
      args: [],
    );
  }

  /// `Choose max images`
  String get chooseMaxImage {
    return Intl.message(
      'Choose max images',
      name: 'chooseMaxImage',
      desc: '',
      args: [],
    );
  }

  /// `Images`
  String get images {
    return Intl.message(
      'Images',
      name: 'images',
      desc: '',
      args: [],
    );
  }

  /// `Click again to exit`
  String get exitWarning {
    return Intl.message(
      'Click again to exit',
      name: 'exitWarning',
      desc: '',
      args: [],
    );
  }

  /// `Log out`
  String get exit {
    return Intl.message(
      'Log out',
      name: 'exit',
      desc: '',
      args: [],
    );
  }

  /// `Outstanding`
  String get highlight {
    return Intl.message(
      'Outstanding',
      name: 'highlight',
      desc: '',
      args: [],
    );
  }

  /// `Discovery`
  String get discovery {
    return Intl.message(
      'Discovery',
      name: 'discovery',
      desc: '',
      args: [],
    );
  }

  /// `Conversation`
  String get conversation {
    return Intl.message(
      'Conversation',
      name: 'conversation',
      desc: '',
      args: [],
    );
  }

  /// `Personal`
  String get personal {
    return Intl.message(
      'Personal',
      name: 'personal',
      desc: '',
      args: [],
    );
  }

  /// `Province`
  String get province {
    return Intl.message(
      'Province',
      name: 'province',
      desc: '',
      args: [],
    );
  }

  /// `Choose`
  String get choose {
    return Intl.message(
      'Choose',
      name: 'choose',
      desc: '',
      args: [],
    );
  }

  /// `City`
  String get city {
    return Intl.message(
      'City',
      name: 'city',
      desc: '',
      args: [],
    );
  }

  /// `Not chosen`
  String get notChoose {
    return Intl.message(
      'Not chosen',
      name: 'notChoose',
      desc: '',
      args: [],
    );
  }

  /// `(Optional)`
  String get optional {
    return Intl.message(
      '(Optional)',
      name: 'optional',
      desc: '',
      args: [],
    );
  }

  /// `Search for location`
  String get searchCity {
    return Intl.message(
      'Search for location',
      name: 'searchCity',
      desc: '',
      args: [],
    );
  }

  /// `Login to explore`
  String get loginAndSpend {
    return Intl.message(
      'Login to explore',
      name: 'loginAndSpend',
      desc: '',
      args: [],
    );
  }

  /// `Phone number`
  String get phoneNumber {
    return Intl.message(
      'Phone number',
      name: 'phoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Enter your phone number`
  String get enterPhoneNumber {
    return Intl.message(
      'Enter your phone number',
      name: 'enterPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get confirm {
    return Intl.message(
      'Confirm',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `Finish this step meaning that you agree with`
  String get confirmPolicy {
    return Intl.message(
      'Finish this step meaning that you agree with',
      name: 'confirmPolicy',
      desc: '',
      args: [],
    );
  }

  /// ` Policy`
  String get policy {
    return Intl.message(
      ' Policy',
      name: 'policy',
      desc: '',
      args: [],
    );
  }

  /// ` Using by`
  String get useTo {
    return Intl.message(
      ' Using by',
      name: 'useTo',
      desc: '',
      args: [],
    );
  }

  /// ` Lomo`
  String get lomo {
    return Intl.message(
      ' Lomo',
      name: 'lomo',
      desc: '',
      args: [],
    );
  }

  /// `Confirm phone number`
  String get confirmOtp {
    return Intl.message(
      'Confirm phone number',
      name: 'confirmOtp',
      desc: '',
      args: [],
    );
  }

  /// `Enter the OTP verification code sent to the phone number `
  String get otpSentToPhone {
    return Intl.message(
      'Enter the OTP verification code sent to the phone number ',
      name: 'otpSentToPhone',
      desc: '',
      args: [],
    );
  }

  /// `Resend code`
  String get reSentOtp {
    return Intl.message(
      'Resend code',
      name: 'reSentOtp',
      desc: '',
      args: [],
    );
  }

  /// ` Change your phone number`
  String get changePhone {
    return Intl.message(
      ' Change your phone number',
      name: 'changePhone',
      desc: '',
      args: [],
    );
  }

  /// `Follows`
  String get forFan {
    return Intl.message(
      'Follows',
      name: 'forFan',
      desc: '',
      args: [],
    );
  }

  /// `Just for you`
  String get forYou {
    return Intl.message(
      'Just for you',
      name: 'forYou',
      desc: '',
      args: [],
    );
  }

  /// `You have not followed any person`
  String get notHaveIdol {
    return Intl.message(
      'You have not followed any person',
      name: 'notHaveIdol',
      desc: '',
      args: [],
    );
  }

  /// `this is your suggestion`
  String get suggestForYou {
    return Intl.message(
      'this is your suggestion',
      name: 'suggestForYou',
      desc: '',
      args: [],
    );
  }

  /// `Personal Information`
  String get personalInformation {
    return Intl.message(
      'Personal Information',
      name: 'personalInformation',
      desc: '',
      args: [],
    );
  }

  /// `Username`
  String get visibleName {
    return Intl.message(
      'Username',
      name: 'visibleName',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get find {
    return Intl.message(
      'Search',
      name: 'find',
      desc: '',
      args: [],
    );
  }

  /// `Date of birth`
  String get dateOfBirth {
    return Intl.message(
      'Date of birth',
      name: 'dateOfBirth',
      desc: '',
      args: [],
    );
  }

  /// `Height and Weight`
  String get heightAndWeight {
    return Intl.message(
      'Height and Weight',
      name: 'heightAndWeight',
      desc: '',
      args: [],
    );
  }

  /// `I am over 18 years old`
  String get larger18 {
    return Intl.message(
      'I am over 18 years old',
      name: 'larger18',
      desc: '',
      args: [],
    );
  }

  /// `Complete`
  String get complete {
    return Intl.message(
      'Complete',
      name: 'complete',
      desc: '',
      args: [],
    );
  }

  /// `Open Camera`
  String get openCamera {
    return Intl.message(
      'Open Camera',
      name: 'openCamera',
      desc: '',
      args: [],
    );
  }

  /// `Open Gallery`
  String get openGallery {
    return Intl.message(
      'Open Gallery',
      name: 'openGallery',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your username`
  String get enterUserName {
    return Intl.message(
      'Please enter your username',
      name: 'enterUserName',
      desc: '',
      args: [],
    );
  }

  /// `Height, Weight`
  String get heightWeight {
    return Intl.message(
      'Height, Weight',
      name: 'heightWeight',
      desc: '',
      args: [],
    );
  }

  /// `Story`
  String get story {
    return Intl.message(
      'Story',
      name: 'story',
      desc: '',
      args: [],
    );
  }

  /// `Thanks for register Lomo`
  String get thanksForRegisterLomo {
    return Intl.message(
      'Thanks for register Lomo',
      name: 'thanksForRegisterLomo',
      desc: '',
      args: [],
    );
  }

  /// `Connect friends and find your soulmates`
  String get connectFriendAndFindOther {
    return Intl.message(
      'Connect friends and find your soulmates',
      name: 'connectFriendAndFindOther',
      desc: '',
      args: [],
    );
  }

  /// `Account Management`
  String get accountManagement {
    return Intl.message(
      'Account Management',
      name: 'accountManagement',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Right`
  String get privacy {
    return Intl.message(
      'Privacy Right',
      name: 'privacy',
      desc: '',
      args: [],
    );
  }

  /// `Security`
  String get security {
    return Intl.message(
      'Security',
      name: 'security',
      desc: '',
      args: [],
    );
  }

  /// `Push notification`
  String get notification {
    return Intl.message(
      'Push notification',
      name: 'notification',
      desc: '',
      args: [],
    );
  }

  /// `Theme`
  String get theme {
    return Intl.message(
      'Theme',
      name: 'theme',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Defaults`
  String get defaults {
    return Intl.message(
      'Defaults',
      name: 'defaults',
      desc: '',
      args: [],
    );
  }

  /// `Vietnamese`
  String get vietnamese {
    return Intl.message(
      'Vietnamese',
      name: 'vietnamese',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get english {
    return Intl.message(
      'English',
      name: 'english',
      desc: '',
      args: [],
    );
  }

  /// `Questions`
  String get frequentlyAskedQuestions {
    return Intl.message(
      'Questions',
      name: 'frequentlyAskedQuestions',
      desc: '',
      args: [],
    );
  }

  /// `Terms of Policies`
  String get rules {
    return Intl.message(
      'Terms of Policies',
      name: 'rules',
      desc: '',
      args: [],
    );
  }

  /// `Help and Support`
  String get support {
    return Intl.message(
      'Help and Support',
      name: 'support',
      desc: '',
      args: [],
    );
  }

  /// `support@lomosocial.com`
  String get info {
    return Intl.message(
      'support@lomosocial.com',
      name: 'info',
      desc: '',
      args: [],
    );
  }

  /// `Log out`
  String get logOut {
    return Intl.message(
      'Log out',
      name: 'logOut',
      desc: '',
      args: [],
    );
  }

  /// `Version `
  String get version {
    return Intl.message(
      'Version ',
      name: 'version',
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

  /// `Install apps`
  String get install_apps {
    return Intl.message(
      'Install apps',
      name: 'install_apps',
      desc: '',
      args: [],
    );
  }

  /// `Follow LOMO on Facebook`
  String get follow_lomo {
    return Intl.message(
      'Follow LOMO on Facebook',
      name: 'follow_lomo',
      desc: '',
      args: [],
    );
  }

  /// `Share LOMO with your friends`
  String get shareLomo {
    return Intl.message(
      'Share LOMO with your friends',
      name: 'shareLomo',
      desc: '',
      args: [],
    );
  }

  /// `Block`
  String get block {
    return Intl.message(
      'Block',
      name: 'block',
      desc: '',
      args: [],
    );
  }

  /// `Report`
  String get report {
    return Intl.message(
      'Report',
      name: 'report',
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

  /// `Send message`
  String get sendMessage {
    return Intl.message(
      'Send message',
      name: 'sendMessage',
      desc: '',
      args: [],
    );
  }

  /// `Please choose your avatar`
  String get pleaseChooseAvatar {
    return Intl.message(
      'Please choose your avatar',
      name: 'pleaseChooseAvatar',
      desc: '',
      args: [],
    );
  }

  /// `Follow`
  String get follow {
    return Intl.message(
      'Follow',
      name: 'follow',
      desc: '',
      args: [],
    );
  }

  /// `Like`
  String get like {
    return Intl.message(
      'Like',
      name: 'like',
      desc: '',
      args: [],
    );
  }

  /// `Likes`
  String get likes {
    return Intl.message(
      'Likes',
      name: 'likes',
      desc: '',
      args: [],
    );
  }

  /// `Bears are given`
  String get gift {
    return Intl.message(
      'Bears are given',
      name: 'gift',
      desc: '',
      args: [],
    );
  }

  /// `Diary`
  String get diary {
    return Intl.message(
      'Diary',
      name: 'diary',
      desc: '',
      args: [],
    );
  }

  /// `Image`
  String get image {
    return Intl.message(
      'Image',
      name: 'image',
      desc: '',
      args: [],
    );
  }

  /// `Video`
  String get video {
    return Intl.message(
      'Video',
      name: 'video',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get file {
    return Intl.message(
      'Profile',
      name: 'file',
      desc: '',
      args: [],
    );
  }

  /// `Height, Weight`
  String get height {
    return Intl.message(
      'Height, Weight',
      name: 'height',
      desc: '',
      args: [],
    );
  }

  /// `Education`
  String get education {
    return Intl.message(
      'Education',
      name: 'education',
      desc: '',
      args: [],
    );
  }

  /// `Interests`
  String get interests {
    return Intl.message(
      'Interests',
      name: 'interests',
      desc: '',
      args: [],
    );
  }

  /// `Work at`
  String get workAt {
    return Intl.message(
      'Work at',
      name: 'workAt',
      desc: '',
      args: [],
    );
  }

  /// `Give a teddy bear`
  String get giveABear {
    return Intl.message(
      'Give a teddy bear',
      name: 'giveABear',
      desc: '',
      args: [],
    );
  }

  /// `Bears`
  String get bear {
    return Intl.message(
      'Bears',
      name: 'bear',
      desc: '',
      args: [],
    );
  }

  /// `Friends also liked`
  String get friendlike {
    return Intl.message(
      'Friends also liked',
      name: 'friendlike',
      desc: '',
      args: [],
    );
  }

  /// `Following`
  String get watching {
    return Intl.message(
      'Following',
      name: 'watching',
      desc: '',
      args: [],
    );
  }

  /// `Follow`
  String get btn_follow {
    return Intl.message(
      'Follow',
      name: 'btn_follow',
      desc: '',
      args: [],
    );
  }

  /// `Unfollow`
  String get btn_unfollow {
    return Intl.message(
      'Unfollow',
      name: 'btn_unfollow',
      desc: '',
      args: [],
    );
  }

  /// `Please enter username`
  String get pleaseEnterName {
    return Intl.message(
      'Please enter username',
      name: 'pleaseEnterName',
      desc: '',
      args: [],
    );
  }

  /// `Comments`
  String get comments {
    return Intl.message(
      'Comments',
      name: 'comments',
      desc: '',
      args: [],
    );
  }

  /// `Write a comment...`
  String get addComment {
    return Intl.message(
      'Write a comment...',
      name: 'addComment',
      desc: '',
      args: [],
    );
  }

  /// `Already gave a teddy bear today`
  String get sentBearToday {
    return Intl.message(
      'Already gave a teddy bear today',
      name: 'sentBearToday',
      desc: '',
      args: [],
    );
  }

  /// `Give a teddy bear succesfully`
  String get sentBearSuccess {
    return Intl.message(
      'Give a teddy bear succesfully',
      name: 'sentBearSuccess',
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

  /// `Search Friend`
  String get searchFriend {
    return Intl.message(
      'Search Friend',
      name: 'searchFriend',
      desc: '',
      args: [],
    );
  }

  /// `Unfollow`
  String get unFollow {
    return Intl.message(
      'Unfollow',
      name: 'unFollow',
      desc: '',
      args: [],
    );
  }

  /// `Content`
  String get content {
    return Intl.message(
      'Content',
      name: 'content',
      desc: '',
      args: [],
    );
  }

  /// `Enter Content`
  String get enterContent {
    return Intl.message(
      'Enter Content',
      name: 'enterContent',
      desc: '',
      args: [],
    );
  }

  /// `Create post`
  String get createPost {
    return Intl.message(
      'Create post',
      name: 'createPost',
      desc: '',
      args: [],
    );
  }

  /// `Uploaded`
  String get createPostSuccess {
    return Intl.message(
      'Uploaded',
      name: 'createPostSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Update post successfully`
  String get updatePostSuccess {
    return Intl.message(
      'Update post successfully',
      name: 'updatePostSuccess',
      desc: '',
      args: [],
    );
  }

  /// `What's on your mind?`
  String get whatAreYouThinking {
    return Intl.message(
      'What\'s on your mind?',
      name: 'whatAreYouThinking',
      desc: '',
      args: [],
    );
  }

  /// `feeling`
  String get feeling {
    return Intl.message(
      'feeling',
      name: 'feeling',
      desc: '',
      args: [],
    );
  }

  /// `Post`
  String get posting {
    return Intl.message(
      'Post',
      name: 'posting',
      desc: '',
      args: [],
    );
  }

  /// `Discard post`
  String get cancelPost {
    return Intl.message(
      'Discard post',
      name: 'cancelPost',
      desc: '',
      args: [],
    );
  }

  /// `Continue Editing`
  String get continueEdit {
    return Intl.message(
      'Continue Editing',
      name: 'continueEdit',
      desc: '',
      args: [],
    );
  }

  /// `Friends also like`
  String get friendLiked {
    return Intl.message(
      'Friends also like',
      name: 'friendLiked',
      desc: '',
      args: [],
    );
  }

  /// `Update Profile Success`
  String get updateProfileSuccess {
    return Intl.message(
      'Update Profile Success',
      name: 'updateProfileSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Send failed`
  String get sendFailed {
    return Intl.message(
      'Send failed',
      name: 'sendFailed',
      desc: '',
      args: [],
    );
  }

  /// `Follow Success`
  String get followSuccess {
    return Intl.message(
      'Follow Success',
      name: 'followSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Unfollow Success`
  String get unFollowSuccess {
    return Intl.message(
      'Unfollow Success',
      name: 'unFollowSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Block this user?`
  String get blockThisUser {
    return Intl.message(
      'Block this user?',
      name: 'blockThisUser',
      desc: '',
      args: [],
    );
  }

  /// `They will not be able to view your profile or content on LOMO`
  String get blockedUserContent {
    return Intl.message(
      'They will not be able to view your profile or content on LOMO',
      name: 'blockedUserContent',
      desc: '',
      args: [],
    );
  }

  /// `Stop following user`
  String get stopFollowUser {
    return Intl.message(
      'Stop following user',
      name: 'stopFollowUser',
      desc: '',
      args: [],
    );
  }

  /// `You will no longer be able to send messages or call to this person`
  String get stopFollowUserContent {
    return Intl.message(
      'You will no longer be able to send messages or call to this person',
      name: 'stopFollowUserContent',
      desc: '',
      args: [],
    );
  }

  /// `Please grant permission for LOMO to access photos to implement this function`
  String get pleaseGrandPhotoPermission {
    return Intl.message(
      'Please grant permission for LOMO to access photos to implement this function',
      name: 'pleaseGrandPhotoPermission',
      desc: '',
      args: [],
    );
  }

  /// `Agree with `
  String get confirmLomoPolicy {
    return Intl.message(
      'Agree with ',
      name: 'confirmLomoPolicy',
      desc: '',
      args: [],
    );
  }

  /// `rules `
  String get lomoPolicy {
    return Intl.message(
      'rules ',
      name: 'lomoPolicy',
      desc: '',
      args: [],
    );
  }

  /// `use of Lomo`
  String get LOMO {
    return Intl.message(
      'use of Lomo',
      name: 'LOMO',
      desc: '',
      args: [],
    );
  }

  /// `Please agree to the LOMO terms of use`
  String get pleaseConfirmPolicy {
    return Intl.message(
      'Please agree to the LOMO terms of use',
      name: 'pleaseConfirmPolicy',
      desc: '',
      args: [],
    );
  }

  /// `Candy`
  String get candy {
    return Intl.message(
      'Candy',
      name: 'candy',
      desc: '',
      args: [],
    );
  }

  /// `Angry`
  String get angry {
    return Intl.message(
      'Angry',
      name: 'angry',
      desc: '',
      args: [],
    );
  }

  /// `Cold`
  String get cold {
    return Intl.message(
      'Cold',
      name: 'cold',
      desc: '',
      args: [],
    );
  }

  /// `Comfortable`
  String get comfortable {
    return Intl.message(
      'Comfortable',
      name: 'comfortable',
      desc: '',
      args: [],
    );
  }

  /// `Confident`
  String get confident {
    return Intl.message(
      'Confident',
      name: 'confident',
      desc: '',
      args: [],
    );
  }

  /// `Confused`
  String get confused {
    return Intl.message(
      'Confused',
      name: 'confused',
      desc: '',
      args: [],
    );
  }

  /// `Disappointed`
  String get disappointed {
    return Intl.message(
      'Disappointed',
      name: 'disappointed',
      desc: '',
      args: [],
    );
  }

  /// `Great`
  String get great {
    return Intl.message(
      'Great',
      name: 'great',
      desc: '',
      args: [],
    );
  }

  /// `Happiness`
  String get happy {
    return Intl.message(
      'Happiness',
      name: 'happy',
      desc: '',
      args: [],
    );
  }

  /// `Happy`
  String get happyFun {
    return Intl.message(
      'Happy',
      name: 'happyFun',
      desc: '',
      args: [],
    );
  }

  /// `Hot`
  String get hot {
    return Intl.message(
      'Hot',
      name: 'hot',
      desc: '',
      args: [],
    );
  }

  /// `Inferiority Complex`
  String get inferiority {
    return Intl.message(
      'Inferiority Complex',
      name: 'inferiority',
      desc: '',
      args: [],
    );
  }

  /// `Lonely`
  String get lonely {
    return Intl.message(
      'Lonely',
      name: 'lonely',
      desc: '',
      args: [],
    );
  }

  /// `Love`
  String get love {
    return Intl.message(
      'Love',
      name: 'love',
      desc: '',
      args: [],
    );
  }

  /// `Lack of motivation`
  String get motivation {
    return Intl.message(
      'Lack of motivation',
      name: 'motivation',
      desc: '',
      args: [],
    );
  }

  /// `Protection`
  String get protection {
    return Intl.message(
      'Protection',
      name: 'protection',
      desc: '',
      args: [],
    );
  }

  /// `Sad`
  String get sad {
    return Intl.message(
      'Sad',
      name: 'sad',
      desc: '',
      args: [],
    );
  }

  /// `Strong`
  String get strong {
    return Intl.message(
      'Strong',
      name: 'strong',
      desc: '',
      args: [],
    );
  }

  /// `Sulk`
  String get sulk {
    return Intl.message(
      'Sulk',
      name: 'sulk',
      desc: '',
      args: [],
    );
  }

  /// `Surprise`
  String get suprise {
    return Intl.message(
      'Surprise',
      name: 'suprise',
      desc: '',
      args: [],
    );
  }

  /// `Tired`
  String get tired {
    return Intl.message(
      'Tired',
      name: 'tired',
      desc: '',
      args: [],
    );
  }

  /// `Your touch?`
  String get myFeel {
    return Intl.message(
      'Your touch?',
      name: 'myFeel',
      desc: '',
      args: [],
    );
  }

  /// `Answering: `
  String get replying {
    return Intl.message(
      'Answering: ',
      name: 'replying',
      desc: '',
      args: [],
    );
  }

  /// `Details`
  String get detail {
    return Intl.message(
      'Details',
      name: 'detail',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get delete {
    return Intl.message(
      'Delete',
      name: 'delete',
      desc: '',
      args: [],
    );
  }

  /// `Reply`
  String get reply {
    return Intl.message(
      'Reply',
      name: 'reply',
      desc: '',
      args: [],
    );
  }

  /// `Collapse`
  String get collapse {
    return Intl.message(
      'Collapse',
      name: 'collapse',
      desc: '',
      args: [],
    );
  }

  /// `Display reply to comment`
  String get extendThisComment {
    return Intl.message(
      'Display reply to comment',
      name: 'extendThisComment',
      desc: '',
      args: [],
    );
  }

  /// `Notice`
  String get notice {
    return Intl.message(
      'Notice',
      name: 'notice',
      desc: '',
      args: [],
    );
  }

  /// `You haven't opened GPS yet! Turn on the GPS feature to find friends recently?`
  String get openGpsToFindFriends {
    return Intl.message(
      'You haven\'t opened GPS yet! Turn on the GPS feature to find friends recently?',
      name: 'openGpsToFindFriends',
      desc: '',
      args: [],
    );
  }

  /// `Nearest to you`
  String get closestToYou {
    return Intl.message(
      'Nearest to you',
      name: 'closestToYou',
      desc: '',
      args: [],
    );
  }

  /// `Emotional Stream`
  String get emotionalFlow {
    return Intl.message(
      'Emotional Stream',
      name: 'emotionalFlow',
      desc: '',
      args: [],
    );
  }

  /// `Hot face`
  String get hotFace {
    return Intl.message(
      'Hot face',
      name: 'hotFace',
      desc: '',
      args: [],
    );
  }

  /// ` is feeling `
  String get isFeeling {
    return Intl.message(
      ' is feeling ',
      name: 'isFeeling',
      desc: '',
      args: [],
    );
  }

  /// `Discover Now`
  String get discoveryNow {
    return Intl.message(
      'Discover Now',
      name: 'discoveryNow',
      desc: '',
      args: [],
    );
  }

  /// `https://lomosocial.com/en/term`
  String get termLink {
    return Intl.message(
      'https://lomosocial.com/en/term',
      name: 'termLink',
      desc: '',
      args: [],
    );
  }

  /// `https://lomosocial.com/en/FAQs`
  String get faqLink {
    return Intl.message(
      'https://lomosocial.com/en/FAQs',
      name: 'faqLink',
      desc: '',
      args: [],
    );
  }

  /// `Please choose your birthdate`
  String get pleaseChooseBirthDate {
    return Intl.message(
      'Please choose your birthdate',
      name: 'pleaseChooseBirthDate',
      desc: '',
      args: [],
    );
  }

  /// `Please choose province`
  String get pleaseChooseProvince {
    return Intl.message(
      'Please choose province',
      name: 'pleaseChooseProvince',
      desc: '',
      args: [],
    );
  }

  /// `Edit`
  String get edit {
    return Intl.message(
      'Edit',
      name: 'edit',
      desc: '',
      args: [],
    );
  }

  /// `Hot Events`
  String get hotEvent {
    return Intl.message(
      'Hot Events',
      name: 'hotEvent',
      desc: '',
      args: [],
    );
  }

  /// `View more`
  String get viewMore {
    return Intl.message(
      'View more',
      name: 'viewMore',
      desc: '',
      args: [],
    );
  }

  /// `finish`
  String get to {
    return Intl.message(
      'finish',
      name: 'to',
      desc: '',
      args: [],
    );
  }

  /// `Zodiac`
  String get zodiac {
    return Intl.message(
      'Zodiac',
      name: 'zodiac',
      desc: '',
      args: [],
    );
  }

  /// `SOGIESC`
  String get sogiesc {
    return Intl.message(
      'SOGIESC',
      name: 'sogiesc',
      desc: '',
      args: [],
    );
  }

  /// `Relationship`
  String get relationship {
    return Intl.message(
      'Relationship',
      name: 'relationship',
      desc: '',
      args: [],
    );
  }

  /// `Career`
  String get career {
    return Intl.message(
      'Career',
      name: 'career',
      desc: '',
      args: [],
    );
  }

  /// `Literacy`
  String get literacy {
    return Intl.message(
      'Literacy',
      name: 'literacy',
      desc: '',
      args: [],
    );
  }

  /// `Status`
  String get status {
    return Intl.message(
      'Status',
      name: 'status',
      desc: '',
      args: [],
    );
  }

  /// `Introduce yourself to friends`
  String get introduceYourself {
    return Intl.message(
      'Introduce yourself to friends',
      name: 'introduceYourself',
      desc: '',
      args: [],
    );
  }

  /// `Gifts`
  String get giftTitle {
    return Intl.message(
      'Gifts',
      name: 'giftTitle',
      desc: '',
      args: [],
    );
  }

  /// `LOMO style thermos flask`
  String get averageThermostats {
    return Intl.message(
      'LOMO style thermos flask',
      name: 'averageThermostats',
      desc: '',
      args: [],
    );
  }

  /// `Description`
  String get description {
    return Intl.message(
      'Description',
      name: 'description',
      desc: '',
      args: [],
    );
  }

  /// `Every day go to attendance application to receive candy rewards from LOMO. Reward candies will be used to redeem them for favorite candy or other gifts.`
  String get receiveCandy {
    return Intl.message(
      'Every day go to attendance application to receive candy rewards from LOMO. Reward candies will be used to redeem them for favorite candy or other gifts.',
      name: 'receiveCandy',
      desc: '',
      args: [],
    );
  }

  /// `Notice`
  String get note {
    return Intl.message(
      'Notice',
      name: 'note',
      desc: '',
      args: [],
    );
  }

  /// `1- If there is a day when you do not open the app for attendance, the candies will return to the first day.`
  String get noteOne {
    return Intl.message(
      '1- If there is a day when you do not open the app for attendance, the candies will return to the first day.',
      name: 'noteOne',
      desc: '',
      args: [],
    );
  }

  /// `2- Candies cannot be exchanged for money`
  String get noteTwo {
    return Intl.message(
      '2- Candies cannot be exchanged for money',
      name: 'noteTwo',
      desc: '',
      args: [],
    );
  }

  /// `3- The candy exchange point-and-change program will accompany the LOMO application until there is a new change`
  String get noteThree {
    return Intl.message(
      '3- The candy exchange point-and-change program will accompany the LOMO application until there is a new change',
      name: 'noteThree',
      desc: '',
      args: [],
    );
  }

  /// `Bonus`
  String get bonusRedemption {
    return Intl.message(
      'Bonus',
      name: 'bonusRedemption',
      desc: '',
      args: [],
    );
  }

  /// `Check'in every day`
  String get attendanceEveryDay {
    return Intl.message(
      'Check\'in every day',
      name: 'attendanceEveryDay',
      desc: '',
      args: [],
    );
  }

  /// `My bag`
  String get mybag {
    return Intl.message(
      'My bag',
      name: 'mybag',
      desc: '',
      args: [],
    );
  }

  /// `My candy`
  String get mycandy {
    return Intl.message(
      'My candy',
      name: 'mycandy',
      desc: '',
      args: [],
    );
  }

  /// `Add candy`
  String get addCandy {
    return Intl.message(
      'Add candy',
      name: 'addCandy',
      desc: '',
      args: [],
    );
  }

  /// `Attendance every day`
  String get checkin {
    return Intl.message(
      'Attendance every day',
      name: 'checkin',
      desc: '',
      args: [],
    );
  }

  /// `Attendance`
  String get btncheckin {
    return Intl.message(
      'Attendance',
      name: 'btncheckin',
      desc: '',
      args: [],
    );
  }

  /// `Checkin successful`
  String get checkinSuccess {
    return Intl.message(
      'Checkin successful',
      name: 'checkinSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Exchange gifts`
  String get exchangeGifts {
    return Intl.message(
      'Exchange gifts',
      name: 'exchangeGifts',
      desc: '',
      args: [],
    );
  }

  /// `Day`
  String get day {
    return Intl.message(
      'Day',
      name: 'day',
      desc: '',
      args: [],
    );
  }

  /// `All`
  String get all {
    return Intl.message(
      'All',
      name: 'all',
      desc: '',
      args: [],
    );
  }

  /// `My Bear`
  String get bearGifts {
    return Intl.message(
      'My Bear',
      name: 'bearGifts',
      desc: '',
      args: [],
    );
  }

  /// `Exchange gift`
  String get exchangeGift {
    return Intl.message(
      'Exchange gift',
      name: 'exchangeGift',
      desc: '',
      args: [],
    );
  }

  /// `Name of recipient`
  String get nameRecipient {
    return Intl.message(
      'Name of recipient',
      name: 'nameRecipient',
      desc: '',
      args: [],
    );
  }

  /// `Enter name of recipient`
  String get enterNameRecipient {
    return Intl.message(
      'Enter name of recipient',
      name: 'enterNameRecipient',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get address {
    return Intl.message(
      'Address',
      name: 'address',
      desc: '',
      args: [],
    );
  }

  /// `Enter address`
  String get enterAddress {
    return Intl.message(
      'Enter address',
      name: 'enterAddress',
      desc: '',
      args: [],
    );
  }

  /// `Please enter phone number`
  String get pleaseEnterPhone {
    return Intl.message(
      'Please enter phone number',
      name: 'pleaseEnterPhone',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your address`
  String get pleaseEnterAddress {
    return Intl.message(
      'Please enter your address',
      name: 'pleaseEnterAddress',
      desc: '',
      args: [],
    );
  }

  /// `Not enough candy`
  String get notEnoughCandy {
    return Intl.message(
      'Not enough candy',
      name: 'notEnoughCandy',
      desc: '',
      args: [],
    );
  }

  /// `Successful`
  String get exchangeGiftSuccess {
    return Intl.message(
      'Successful',
      name: 'exchangeGiftSuccess',
      desc: '',
      args: [],
    );
  }

  /// `You will receive a gift confirming email within 24 business hours. Please check your email for more details`
  String get giftSendAfter {
    return Intl.message(
      'You will receive a gift confirming email within 24 business hours. Please check your email for more details',
      name: 'giftSendAfter',
      desc: '',
      args: [],
    );
  }

  /// `Please get more candy by check'in`
  String get pleaseGetMoreCandy {
    return Intl.message(
      'Please get more candy by check\'in',
      name: 'pleaseGetMoreCandy',
      desc: '',
      args: [],
    );
  }

  /// `Feeling`
  String get feelingProfile {
    return Intl.message(
      'Feeling',
      name: 'feelingProfile',
      desc: '',
      args: [],
    );
  }

  /// `District`
  String get district {
    return Intl.message(
      'District',
      name: 'district',
      desc: '',
      args: [],
    );
  }

  /// `Ward`
  String get ward {
    return Intl.message(
      'Ward',
      name: 'ward',
      desc: '',
      args: [],
    );
  }

  /// `Please enter province`
  String get pleaseEnterProvince {
    return Intl.message(
      'Please enter province',
      name: 'pleaseEnterProvince',
      desc: '',
      args: [],
    );
  }

  /// `Please enter district`
  String get pleaseEnterDistrict {
    return Intl.message(
      'Please enter district',
      name: 'pleaseEnterDistrict',
      desc: '',
      args: [],
    );
  }

  /// `Please enter ward`
  String get pleaseEnterWard {
    return Intl.message(
      'Please enter ward',
      name: 'pleaseEnterWard',
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

  /// `Enter email`
  String get enterEmail {
    return Intl.message(
      'Enter email',
      name: 'enterEmail',
      desc: '',
      args: [],
    );
  }

  /// `Please enter email`
  String get pleaseEnterEmail {
    return Intl.message(
      'Please enter email',
      name: 'pleaseEnterEmail',
      desc: '',
      args: [],
    );
  }

  /// `Allow "LOMO" to access your storage`
  String get needPermissionStorage {
    return Intl.message(
      'Allow "LOMO" to access your storage',
      name: 'needPermissionStorage',
      desc: '',
      args: [],
    );
  }

  /// `This allow to load photos in your library`
  String get contentOfPermissionStorage {
    return Intl.message(
      'This allow to load photos in your library',
      name: 'contentOfPermissionStorage',
      desc: '',
      args: [],
    );
  }

  /// `Allow "LOMO" to access your camera`
  String get needPermissionCamera {
    return Intl.message(
      'Allow "LOMO" to access your camera',
      name: 'needPermissionCamera',
      desc: '',
      args: [],
    );
  }

  /// `This allow to take picture and video`
  String get contentOfPermissionCamera {
    return Intl.message(
      'This allow to take picture and video',
      name: 'contentOfPermissionCamera',
      desc: '',
      args: [],
    );
  }

  /// `Allow "LOMO" to access your camera and storage`
  String get needPermissionBothStorageAndCamera {
    return Intl.message(
      'Allow "LOMO" to access your camera and storage',
      name: 'needPermissionBothStorageAndCamera',
      desc: '',
      args: [],
    );
  }

  /// `This allow to take picture and video, load photos in your library`
  String get contentOfPermissionBothStorageAndCamera {
    return Intl.message(
      'This allow to take picture and video, load photos in your library',
      name: 'contentOfPermissionBothStorageAndCamera',
      desc: '',
      args: [],
    );
  }

  /// `Allow "LOMO" to access your location`
  String get needPermissionLocation {
    return Intl.message(
      'Allow "LOMO" to access your location',
      name: 'needPermissionLocation',
      desc: '',
      args: [],
    );
  }

  /// `Allow "LOMO" to access track your data`
  String get needPermissionTracking {
    return Intl.message(
      'Allow "LOMO" to access track your data',
      name: 'needPermissionTracking',
      desc: '',
      args: [],
    );
  }

  /// `Allow tracking permission on this app to improve product features, support and deliver appropriate content for users.`
  String get contentTrackingPermission {
    return Intl.message(
      'Allow tracking permission on this app to improve product features, support and deliver appropriate content for users.',
      name: 'contentTrackingPermission',
      desc: '',
      args: [],
    );
  }

  /// `Activities`
  String get activity {
    return Intl.message(
      'Activities',
      name: 'activity',
      desc: '',
      args: [],
    );
  }

  /// `Notification`
  String get tabNotification {
    return Intl.message(
      'Notification',
      name: 'tabNotification',
      desc: '',
      args: [],
    );
  }

  /// `This allow us to use your location to find nearly people used this app`
  String get contentOfPermissionLocation {
    return Intl.message(
      'This allow us to use your location to find nearly people used this app',
      name: 'contentOfPermissionLocation',
      desc: '',
      args: [],
    );
  }

  /// `System`
  String get system {
    return Intl.message(
      'System',
      name: 'system',
      desc: '',
      args: [],
    );
  }

  /// `User support`
  String get userSupport {
    return Intl.message(
      'User support',
      name: 'userSupport',
      desc: '',
      args: [],
    );
  }

  /// `Account`
  String get account {
    return Intl.message(
      'Account',
      name: 'account',
      desc: '',
      args: [],
    );
  }

  /// `Post activity`
  String get postActivity {
    return Intl.message(
      'Post activity',
      name: 'postActivity',
      desc: '',
      args: [],
    );
  }

  /// `Get bears, candies & gifts`
  String get getBearCandiesGifts {
    return Intl.message(
      'Get bears, candies & gifts',
      name: 'getBearCandiesGifts',
      desc: '',
      args: [],
    );
  }

  /// `All activities`
  String get allActivities {
    return Intl.message(
      'All activities',
      name: 'allActivities',
      desc: '',
      args: [],
    );
  }

  /// `hours`
  String get hour {
    return Intl.message(
      'hours',
      name: 'hour',
      desc: '',
      args: [],
    );
  }

  /// `minutes`
  String get minute {
    return Intl.message(
      'minutes',
      name: 'minute',
      desc: '',
      args: [],
    );
  }

  /// `seconds`
  String get second {
    return Intl.message(
      'seconds',
      name: 'second',
      desc: '',
      args: [],
    );
  }

  /// `Message`
  String get message {
    return Intl.message(
      'Message',
      name: 'message',
      desc: '',
      args: [],
    );
  }

  /// `Unblock`
  String get unBlock {
    return Intl.message(
      'Unblock',
      name: 'unBlock',
      desc: '',
      args: [],
    );
  }

  /// `Notification type`
  String get filterNotification {
    return Intl.message(
      'Notification type',
      name: 'filterNotification',
      desc: '',
      args: [],
    );
  }

  /// `You received `
  String get youReceived {
    return Intl.message(
      'You received ',
      name: 'youReceived',
      desc: '',
      args: [],
    );
  }

  /// `candy`
  String get candyLower {
    return Intl.message(
      'candy',
      name: 'candyLower',
      desc: '',
      args: [],
    );
  }

  /// ` for your check in today. Come back tomorrow for more candies.`
  String get forThisCheckIn {
    return Intl.message(
      ' for your check in today. Come back tomorrow for more candies.',
      name: 'forThisCheckIn',
      desc: '',
      args: [],
    );
  }

  /// `Contact`
  String get contact {
    return Intl.message(
      'Contact',
      name: 'contact',
      desc: '',
      args: [],
    );
  }

  /// `Unblock Successful`
  String get unBlockSuccess {
    return Intl.message(
      'Unblock Successful',
      name: 'unBlockSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Week`
  String get week {
    return Intl.message(
      'Week',
      name: 'week',
      desc: '',
      args: [],
    );
  }

  /// `Just now`
  String get justNow {
    return Intl.message(
      'Just now',
      name: 'justNow',
      desc: '',
      args: [],
    );
  }

  /// `(Required)`
  String get required {
    return Intl.message(
      '(Required)',
      name: 'required',
      desc: '',
      args: [],
    );
  }

  /// `User manual`
  String get guide {
    return Intl.message(
      'User manual',
      name: 'guide',
      desc: '',
      args: [],
    );
  }

  /// `https://lomosocial.com/en/guide`
  String get guideLink {
    return Intl.message(
      'https://lomosocial.com/en/guide',
      name: 'guideLink',
      desc: '',
      args: [],
    );
  }

  /// `From`
  String get from {
    return Intl.message(
      'From',
      name: 'from',
      desc: '',
      args: [],
    );
  }

  /// `Post`
  String get post {
    return Intl.message(
      'Post',
      name: 'post',
      desc: '',
      args: [],
    );
  }

  /// `Age`
  String get age {
    return Intl.message(
      'Age',
      name: 'age',
      desc: '',
      args: [],
    );
  }

  /// `Month`
  String get month {
    return Intl.message(
      'Month',
      name: 'month',
      desc: '',
      args: [],
    );
  }

  /// `https://lomosocial.com/en/report`
  String get reportLink {
    return Intl.message(
      'https://lomosocial.com/en/report',
      name: 'reportLink',
      desc: '',
      args: [],
    );
  }

  /// `Blocked this user`
  String get blockSuccess {
    return Intl.message(
      'Blocked this user',
      name: 'blockSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Do you want to delete this post?`
  String get confirmDeletePost {
    return Intl.message(
      'Do you want to delete this post?',
      name: 'confirmDeletePost',
      desc: '',
      args: [],
    );
  }

  /// `Delete post`
  String get deletePost {
    return Intl.message(
      'Delete post',
      name: 'deletePost',
      desc: '',
      args: [],
    );
  }

  /// `Feature is developing`
  String get featureDeveloping {
    return Intl.message(
      'Feature is developing',
      name: 'featureDeveloping',
      desc: '',
      args: [],
    );
  }

  /// `https://lomosocial.com/events/en/sogies-test`
  String get sogiesTestLink {
    return Intl.message(
      'https://lomosocial.com/events/en/sogies-test',
      name: 'sogiesTestLink',
      desc: '',
      args: [],
    );
  }

  /// `Result of your SOGIESC test `
  String get resultOfSogiesTest {
    return Intl.message(
      'Result of your SOGIESC test ',
      name: 'resultOfSogiesTest',
      desc: '',
      args: [],
    );
  }

  /// `Add now`
  String get addNow {
    return Intl.message(
      'Add now',
      name: 'addNow',
      desc: '',
      args: [],
    );
  }

  /// `Success`
  String get success {
    return Intl.message(
      'Success',
      name: 'success',
      desc: '',
      args: [],
    );
  }

  /// `Already exist`
  String get alreadyExist {
    return Intl.message(
      'Already exist',
      name: 'alreadyExist',
      desc: '',
      args: [],
    );
  }

  /// `Know exactly who you are?`
  String get knowYou {
    return Intl.message(
      'Know exactly who you are?',
      name: 'knowYou',
      desc: '',
      args: [],
    );
  }

  /// ` (Sexual orientation, gender identity, gender expression and sex characteristics)`
  String get sogiescTestFeature {
    return Intl.message(
      ' (Sexual orientation, gender identity, gender expression and sex characteristics)',
      name: 'sogiescTestFeature',
      desc: '',
      args: [],
    );
  }

  /// ` is the most comprehensive description of a person's sexuality. Have you found `
  String get sogiescTestDescription {
    return Intl.message(
      ' is the most comprehensive description of a person\'s sexuality. Have you found ',
      name: 'sogiescTestDescription',
      desc: '',
      args: [],
    );
  }

  /// ` of you?`
  String get ofYouYet {
    return Intl.message(
      ' of you?',
      name: 'ofYouYet',
      desc: '',
      args: [],
    );
  }

  /// `SOGIESC`
  String get sogiescCap {
    return Intl.message(
      'SOGIESC',
      name: 'sogiescCap',
      desc: '',
      args: [],
    );
  }

  /// `Start`
  String get start {
    return Intl.message(
      'Start',
      name: 'start',
      desc: '',
      args: [],
    );
  }

  /// `Later`
  String get viewLater {
    return Intl.message(
      'Later',
      name: 'viewLater',
      desc: '',
      args: [],
    );
  }

  /// `Input`
  String get input {
    return Intl.message(
      'Input',
      name: 'input',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Back`
  String get back {
    return Intl.message(
      'Back',
      name: 'back',
      desc: '',
      args: [],
    );
  }

  /// `Hobby`
  String get hobby {
    return Intl.message(
      'Hobby',
      name: 'hobby',
      desc: '',
      args: [],
    );
  }

  /// `Account information`
  String get accountInformation {
    return Intl.message(
      'Account information',
      name: 'accountInformation',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the information below`
  String get pleaseEnterInfoBelow {
    return Intl.message(
      'Please enter the information below',
      name: 'pleaseEnterInfoBelow',
      desc: '',
      args: [],
    );
  }

  /// `Lomo ID`
  String get lomoId {
    return Intl.message(
      'Lomo ID',
      name: 'lomoId',
      desc: '',
      args: [],
    );
  }

  /// `Please use 6-30 characters, only lowercase letters and numbers, not include spaces and special characters.`
  String get errorContentLomoId {
    return Intl.message(
      'Please use 6-30 characters, only lowercase letters and numbers, not include spaces and special characters.',
      name: 'errorContentLomoId',
      desc: '',
      args: [],
    );
  }

  /// `Invalid Lomo ID`
  String get errorTitleLomoId {
    return Intl.message(
      'Invalid Lomo ID',
      name: 'errorTitleLomoId',
      desc: '',
      args: [],
    );
  }

  /// `Update`
  String get update {
    return Intl.message(
      'Update',
      name: 'update',
      desc: '',
      args: [],
    );
  }

  /// `New update available`
  String get hasNewVersion {
    return Intl.message(
      'New update available',
      name: 'hasNewVersion',
      desc: '',
      args: [],
    );
  }

  /// `Please update to experience new feature`
  String get pleaseUpdateVersion {
    return Intl.message(
      'Please update to experience new feature',
      name: 'pleaseUpdateVersion',
      desc: '',
      args: [],
    );
  }

  /// `Invalid name`
  String get invalidName {
    return Intl.message(
      'Invalid name',
      name: 'invalidName',
      desc: '',
      args: [],
    );
  }

  /// `Would you like to update your profile?`
  String get wantUpdateProfile {
    return Intl.message(
      'Would you like to update your profile?',
      name: 'wantUpdateProfile',
      desc: '',
      args: [],
    );
  }

  /// `Do you want to update account information?`
  String get wantUpdateAccount {
    return Intl.message(
      'Do you want to update account information?',
      name: 'wantUpdateAccount',
      desc: '',
      args: [],
    );
  }

  /// `Display information`
  String get displayInformation {
    return Intl.message(
      'Display information',
      name: 'displayInformation',
      desc: '',
      args: [],
    );
  }

  /// `The information you choose will be publicly displayed to your friends on LOMO`
  String get showPublicChosenInformation {
    return Intl.message(
      'The information you choose will be publicly displayed to your friends on LOMO',
      name: 'showPublicChosenInformation',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get saveImage {
    return Intl.message(
      'Save',
      name: 'saveImage',
      desc: '',
      args: [],
    );
  }

  /// `Save success`
  String get saveImageSuccess {
    return Intl.message(
      'Save success',
      name: 'saveImageSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Attendance for receive candy`
  String get checkInGetCandy {
    return Intl.message(
      'Attendance for receive candy',
      name: 'checkInGetCandy',
      desc: '',
      args: [],
    );
  }

  /// `Get candy every day to exchange for hot gifts`
  String get receiveCandyForGift {
    return Intl.message(
      'Get candy every day to exchange for hot gifts',
      name: 'receiveCandyForGift',
      desc: '',
      args: [],
    );
  }

  /// `Check in`
  String get checkIn {
    return Intl.message(
      'Check in',
      name: 'checkIn',
      desc: '',
      args: [],
    );
  }

  /// `Please use 6-30 characters, include only lower case letters, upper case letters, numbers and spaces, not special characters.`
  String get invalidUserName {
    return Intl.message(
      'Please use 6-30 characters, include only lower case letters, upper case letters, numbers and spaces, not special characters.',
      name: 'invalidUserName',
      desc: '',
      args: [],
    );
  }

  /// `Lowercase letters, capital letters, numbers, spaces`
  String get hintUserName {
    return Intl.message(
      'Lowercase letters, capital letters, numbers, spaces',
      name: 'hintUserName',
      desc: '',
      args: [],
    );
  }

  /// `Enter Lomo ID`
  String get enterLOMOId {
    return Intl.message(
      'Enter Lomo ID',
      name: 'enterLOMOId',
      desc: '',
      args: [],
    );
  }

  /// `Blocklist`
  String get blocklist {
    return Intl.message(
      'Blocklist',
      name: 'blocklist',
      desc: '',
      args: [],
    );
  }

  /// `News feed`
  String get postTimeline {
    return Intl.message(
      'News feed',
      name: 'postTimeline',
      desc: '',
      args: [],
    );
  }

  /// `Dating`
  String get dating {
    return Intl.message(
      'Dating',
      name: 'dating',
      desc: '',
      args: [],
    );
  }

  /// `I'm so lonely today!!`
  String get todayAlone {
    return Intl.message(
      'I\'m so lonely today!!',
      name: 'todayAlone',
      desc: '',
      args: [],
    );
  }

  /// `You are ready to look for\nyour partner?`
  String get youAlreadyFindAHalf {
    return Intl.message(
      'You are ready to look for\nyour partner?',
      name: 'youAlreadyFindAHalf',
      desc: '',
      args: [],
    );
  }

  /// `Create a dating profile`
  String get createProfileDating {
    return Intl.message(
      'Create a dating profile',
      name: 'createProfileDating',
      desc: '',
      args: [],
    );
  }

  /// `Say hi`
  String get sayHi {
    return Intl.message(
      'Say hi',
      name: 'sayHi',
      desc: '',
      args: [],
    );
  }

  /// `Who likes me?`
  String get whoSuitableMe {
    return Intl.message(
      'Who likes me?',
      name: 'whoSuitableMe',
      desc: '',
      args: [],
    );
  }

  /// `Add Information`
  String get addInformation {
    return Intl.message(
      'Add Information',
      name: 'addInformation',
      desc: '',
      args: [],
    );
  }

  /// `This information help people find you`
  String get addInformationHint {
    return Intl.message(
      'This information help people find you',
      name: 'addInformationHint',
      desc: '',
      args: [],
    );
  }

  /// `Quote dating`
  String get quoteDating {
    return Intl.message(
      'Quote dating',
      name: 'quoteDating',
      desc: '',
      args: [],
    );
  }

  /// `Face`
  String get face {
    return Intl.message(
      'Face',
      name: 'face',
      desc: '',
      args: [],
    );
  }

  /// `Input introduce yourself`
  String get enterPersonalIntroduce {
    return Intl.message(
      'Input introduce yourself',
      name: 'enterPersonalIntroduce',
      desc: '',
      args: [],
    );
  }

  /// `Your Gender`
  String get yourGender {
    return Intl.message(
      'Your Gender',
      name: 'yourGender',
      desc: '',
      args: [],
    );
  }

  /// `Sogiesc label`
  String get sogiescLabel {
    return Intl.message(
      'Sogiesc label',
      name: 'sogiescLabel',
      desc: '',
      args: [],
    );
  }

  /// `Show`
  String get show {
    return Intl.message(
      'Show',
      name: 'show',
      desc: '',
      args: [],
    );
  }

  /// `Choose maximum 3 label`
  String get max3Label {
    return Intl.message(
      'Choose maximum 3 label',
      name: 'max3Label',
      desc: '',
      args: [],
    );
  }

  /// `Review information`
  String get reviewInformation {
    return Intl.message(
      'Review information',
      name: 'reviewInformation',
      desc: '',
      args: [],
    );
  }

  /// `Your dating profile will show this information`
  String get reviewInformationHint {
    return Intl.message(
      'Your dating profile will show this information',
      name: 'reviewInformationHint',
      desc: '',
      args: [],
    );
  }

  /// `Create a display name`
  String get display_name {
    return Intl.message(
      'Create a display name',
      name: 'display_name',
      desc: '',
      args: [],
    );
  }

  /// `Using your real name makes it easier for your friends to recognize you`
  String get real_name {
    return Intl.message(
      'Using your real name makes it easier for your friends to recognize you',
      name: 'real_name',
      desc: '',
      args: [],
    );
  }

  /// `The display name is not in the correct format`
  String get correct_format {
    return Intl.message(
      'The display name is not in the correct format',
      name: 'correct_format',
      desc: '',
      args: [],
    );
  }

  /// `The before display name here was used`
  String get correct_old_format {
    return Intl.message(
      'The before display name here was used',
      name: 'correct_old_format',
      desc: '',
      args: [],
    );
  }

  /// `You can only change your name after 14 days`
  String get correct_name_after14days {
    return Intl.message(
      'You can only change your name after 14 days',
      name: 'correct_name_after14days',
      desc: '',
      args: [],
    );
  }

  /// `Lomo ID name is not in the correct format`
  String get lomo_id_format {
    return Intl.message(
      'Lomo ID name is not in the correct format',
      name: 'lomo_id_format',
      desc: '',
      args: [],
    );
  }

  /// `Lomo ID here was used`
  String get lomo_old_format {
    return Intl.message(
      'Lomo ID here was used',
      name: 'lomo_old_format',
      desc: '',
      args: [],
    );
  }

  /// `You can only change your Lomo ID after 14 days`
  String get correct_lomoid_after14days {
    return Intl.message(
      'You can only change your Lomo ID after 14 days',
      name: 'correct_lomoid_after14days',
      desc: '',
      args: [],
    );
  }

  /// `Your birthday,`
  String get your_birthday {
    return Intl.message(
      'Your birthday,',
      name: 'your_birthday',
      desc: '',
      args: [],
    );
  }

  /// `Make sure you are over 18 years old/n(day / month / Year)`
  String get make_sure_old {
    return Intl.message(
      'Make sure you are over 18 years old/n(day / month / Year)',
      name: 'make_sure_old',
      desc: '',
      args: [],
    );
  }

  /// `Sorry, you are not 18 years old yet`
  String get not_yet_old {
    return Intl.message(
      'Sorry, you are not 18 years old yet',
      name: 'not_yet_old',
      desc: '',
      args: [],
    );
  }

  /// `(day / month / Year)`
  String get date_month_year {
    return Intl.message(
      '(day / month / Year)',
      name: 'date_month_year',
      desc: '',
      args: [],
    );
  }

  /// `Hello!`
  String get hello {
    return Intl.message(
      'Hello!',
      name: 'hello',
      desc: '',
      args: [],
    );
  }

  /// `Enter the phone number to register or login`
  String get number_to_register {
    return Intl.message(
      'Enter the phone number to register or login',
      name: 'number_to_register',
      desc: '',
      args: [],
    );
  }

  /// `Authentication code is incorrect`
  String get authentication_code_incorrect {
    return Intl.message(
      'Authentication code is incorrect',
      name: 'authentication_code_incorrect',
      desc: '',
      args: [],
    );
  }

  /// `Not yet`
  String get notYet {
    return Intl.message(
      'Not yet',
      name: 'notYet',
      desc: '',
      args: [],
    );
  }

  /// `Role`
  String get role {
    return Intl.message(
      'Role',
      name: 'role',
      desc: '',
      args: [],
    );
  }

  /// `Who you find`
  String get whoYouFind {
    return Intl.message(
      'Who you find',
      name: 'whoYouFind',
      desc: '',
      args: [],
    );
  }

  /// `Select the audience you want to get acquainted with`
  String get selectAudiance {
    return Intl.message(
      'Select the audience you want to get acquainted with',
      name: 'selectAudiance',
      desc: '',
      args: [],
    );
  }

  /// `Age`
  String get ageFull {
    return Intl.message(
      'Age',
      name: 'ageFull',
      desc: '',
      args: [],
    );
  }

  /// `Range`
  String get range {
    return Intl.message(
      'Range',
      name: 'range',
      desc: '',
      args: [],
    );
  }

  /// `maximum 3 career`
  String get limitPerson {
    return Intl.message(
      'maximum 3 career',
      name: 'limitPerson',
      desc: '',
      args: [],
    );
  }

  /// `Filter`
  String get filter {
    return Intl.message(
      'Filter',
      name: 'filter',
      desc: '',
      args: [],
    );
  }

  /// `Reset`
  String get reset {
    return Intl.message(
      'Reset',
      name: 'reset',
      desc: '',
      args: [],
    );
  }

  /// `Filter`
  String get filterNow {
    return Intl.message(
      'Filter',
      name: 'filterNow',
      desc: '',
      args: [],
    );
  }

  /// `18 - 70 age`
  String get ageLimit {
    return Intl.message(
      '18 - 70 age',
      name: 'ageLimit',
      desc: '',
      args: [],
    );
  }

  /// `500 km`
  String get rangeLimit {
    return Intl.message(
      '500 km',
      name: 'rangeLimit',
      desc: '',
      args: [],
    );
  }

  /// `Literacy`
  String get literacyFull {
    return Intl.message(
      'Literacy',
      name: 'literacyFull',
      desc: '',
      args: [],
    );
  }

  /// `Choose maximum`
  String get chooseMax {
    return Intl.message(
      'Choose maximum',
      name: 'chooseMax',
      desc: '',
      args: [],
    );
  }

  /// `label`
  String get label {
    return Intl.message(
      'label',
      name: 'label',
      desc: '',
      args: [],
    );
  }

  /// `My profile`
  String get myProfile {
    return Intl.message(
      'My profile',
      name: 'myProfile',
      desc: '',
      args: [],
    );
  }

  /// `Start now`
  String get startNow {
    return Intl.message(
      'Start now',
      name: 'startNow',
      desc: '',
      args: [],
    );
  }

  /// `Your dating profile has been created, you can start searching for your dating partner.`
  String get datingProfileComplete {
    return Intl.message(
      'Your dating profile has been created, you can start searching for your dating partner.',
      name: 'datingProfileComplete',
      desc: '',
      args: [],
    );
  }

  /// `Profile photo`
  String get profile_photo {
    return Intl.message(
      'Profile photo',
      name: 'profile_photo',
      desc: '',
      args: [],
    );
  }

  /// `Upload a profile photo to complete`
  String get upload_profile {
    return Intl.message(
      'Upload a profile photo to complete',
      name: 'upload_profile',
      desc: '',
      args: [],
    );
  }

  /// `Agree to Lomo's terms of use`
  String get agree_lomo {
    return Intl.message(
      'Agree to Lomo\'s terms of use',
      name: 'agree_lomo',
      desc: '',
      args: [],
    );
  }

  /// `Your gender`
  String get your_gender {
    return Intl.message(
      'Your gender',
      name: 'your_gender',
      desc: '',
      args: [],
    );
  }

  /// `People will find you based on the world you show off`
  String get find_you_based {
    return Intl.message(
      'People will find you based on the world you show off',
      name: 'find_you_based',
      desc: '',
      args: [],
    );
  }

  /// `Choose the right rainbow label for you`
  String get choose_the_right {
    return Intl.message(
      'Choose the right rainbow label for you',
      name: 'choose_the_right',
      desc: '',
      args: [],
    );
  }

  /// `Choose 1-3 rainbow label tags`
  String get choose_rainbow {
    return Intl.message(
      'Choose 1-3 rainbow label tags',
      name: 'choose_rainbow',
      desc: '',
      args: [],
    );
  }

  /// `Verify dating profile`
  String get verifyDatingProfile {
    return Intl.message(
      'Verify dating profile',
      name: 'verifyDatingProfile',
      desc: '',
      args: [],
    );
  }

  /// `Dating profile`
  String get datingProfile {
    return Intl.message(
      'Dating profile',
      name: 'datingProfile',
      desc: '',
      args: [],
    );
  }

  /// `My dating profile`
  String get myDatingProfile {
    return Intl.message(
      'My dating profile',
      name: 'myDatingProfile',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get download {
    return Intl.message(
      'Save',
      name: 'download',
      desc: '',
      args: [],
    );
  }

  /// `Save success`
  String get downloadSuccess {
    return Intl.message(
      'Save success',
      name: 'downloadSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Save Failed`
  String get downloadFailed {
    return Intl.message(
      'Save Failed',
      name: 'downloadFailed',
      desc: '',
      args: [],
    );
  }

  /// `Enter the phone number to register or login`
  String get enterSDT {
    return Intl.message(
      'Enter the phone number to register or login',
      name: 'enterSDT',
      desc: '',
      args: [],
    );
  }

  /// `Connect with friends`
  String get connect_friend {
    return Intl.message(
      'Connect with friends',
      name: 'connect_friend',
      desc: '',
      args: [],
    );
  }

  /// `Not limited to geography`
  String get limited_geography {
    return Intl.message(
      'Not limited to geography',
      name: 'limited_geography',
      desc: '',
      args: [],
    );
  }

  /// `Storing memories`
  String get storing_memories {
    return Intl.message(
      'Storing memories',
      name: 'storing_memories',
      desc: '',
      args: [],
    );
  }

  /// `Portrait\nphoto`
  String get portraitImage {
    return Intl.message(
      'Portrait\nphoto',
      name: 'portraitImage',
      desc: '',
      args: [],
    );
  }

  /// `Choose minimum 2 portrait photos`
  String get min2PortraiImage {
    return Intl.message(
      'Choose minimum 2 portrait photos',
      name: 'min2PortraiImage',
      desc: '',
      args: [],
    );
  }

  /// `Change image`
  String get changeImage {
    return Intl.message(
      'Change image',
      name: 'changeImage',
      desc: '',
      args: [],
    );
  }

  /// `You must require verify again after delete this image`
  String get youMustSendVerifyAgain {
    return Intl.message(
      'You must require verify again after delete this image',
      name: 'youMustSendVerifyAgain',
      desc: '',
      args: [],
    );
  }

  /// `Upload 2 photos with 2 patterns to verify the account`
  String get verifyImageDatingHint {
    return Intl.message(
      'Upload 2 photos with 2 patterns to verify the account',
      name: 'verifyImageDatingHint',
      desc: '',
      args: [],
    );
  }

  /// `Photo selfie`
  String get selfiePhoto {
    return Intl.message(
      'Photo selfie',
      name: 'selfiePhoto',
      desc: '',
      args: [],
    );
  }

  /// `Send authentication request`
  String get sendRequestVerify {
    return Intl.message(
      'Send authentication request',
      name: 'sendRequestVerify',
      desc: '',
      args: [],
    );
  }

  /// `Sent request success`
  String get sendRequestSuccess {
    return Intl.message(
      'Sent request success',
      name: 'sendRequestSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Your profile has been received and is in the process of being reviewed. Please wait 30 - 45 days to complete the profile verification`
  String get pleaseWaitVerifyDatingImage {
    return Intl.message(
      'Your profile has been received and is in the process of being reviewed. Please wait 30 - 45 days to complete the profile verification',
      name: 'pleaseWaitVerifyDatingImage',
      desc: '',
      args: [],
    );
  }

  /// `Dating now`
  String get datingNow {
    return Intl.message(
      'Dating now',
      name: 'datingNow',
      desc: '',
      args: [],
    );
  }

  /// `Filter search`
  String get filterSearch {
    return Intl.message(
      'Filter search',
      name: 'filterSearch',
      desc: '',
      args: [],
    );
  }

  /// `About me`
  String get aboutGender {
    return Intl.message(
      'About me',
      name: 'aboutGender',
      desc: '',
      args: [],
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

  /// `Detail profile`
  String get detailProfileFull {
    return Intl.message(
      'Detail profile',
      name: 'detailProfileFull',
      desc: '',
      args: [],
    );
  }

  /// `Display settings`
  String get displaySetting {
    return Intl.message(
      'Display settings',
      name: 'displaySetting',
      desc: '',
      args: [],
    );
  }

  /// `On my profile`
  String get onMyProfile {
    return Intl.message(
      'On my profile',
      name: 'onMyProfile',
      desc: '',
      args: [],
    );
  }

  /// `Gender search`
  String get findGender {
    return Intl.message(
      'Gender search',
      name: 'findGender',
      desc: '',
      args: [],
    );
  }

  /// `Friends app for LGBT community`
  String get friends_app {
    return Intl.message(
      'Friends app for LGBT community',
      name: 'friends_app',
      desc: '',
      args: [],
    );
  }

  /// `Quick Connect - Right choice`
  String get quick_connect {
    return Intl.message(
      'Quick Connect - Right choice',
      name: 'quick_connect',
      desc: '',
      args: [],
    );
  }

  /// `Exchange virtual candies - Get real gifts`
  String get exchange_virtual {
    return Intl.message(
      'Exchange virtual candies - Get real gifts',
      name: 'exchange_virtual',
      desc: '',
      args: [],
    );
  }

  /// `Exciting events every week`
  String get exciting_events {
    return Intl.message(
      'Exciting events every week',
      name: 'exciting_events',
      desc: '',
      args: [],
    );
  }

  /// `Approved`
  String get approved {
    return Intl.message(
      'Approved',
      name: 'approved',
      desc: '',
      args: [],
    );
  }

  /// `Rejected`
  String get reject {
    return Intl.message(
      'Rejected',
      name: 'reject',
      desc: '',
      args: [],
    );
  }

  /// `Waiting`
  String get waiting {
    return Intl.message(
      'Waiting',
      name: 'waiting',
      desc: '',
      args: [],
    );
  }

  /// `None verify`
  String get notVerify {
    return Intl.message(
      'None verify',
      name: 'notVerify',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message(
      'Save',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Profile detail`
  String get profileDetail {
    return Intl.message(
      'Profile detail',
      name: 'profileDetail',
      desc: '',
      args: [],
    );
  }

  /// `Personal introduce`
  String get personalIntroduce {
    return Intl.message(
      'Personal introduce',
      name: 'personalIntroduce',
      desc: '',
      args: [],
    );
  }

  /// `(Maximum 3)`
  String get max3 {
    return Intl.message(
      '(Maximum 3)',
      name: 'max3',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get titleName {
    return Intl.message(
      'Name',
      name: 'titleName',
      desc: '',
      args: [],
    );
  }

  /// `Profile display settings`
  String get settingProfileDisplay {
    return Intl.message(
      'Profile display settings',
      name: 'settingProfileDisplay',
      desc: '',
      args: [],
    );
  }

  /// `Queer Event`
  String get eventQueer {
    return Intl.message(
      'Queer Event',
      name: 'eventQueer',
      desc: '',
      args: [],
    );
  }

  /// `Place`
  String get place {
    return Intl.message(
      'Place',
      name: 'place',
      desc: '',
      args: [],
    );
  }

  /// `Allow LOMO to use location to search for places`
  String get allow_places {
    return Intl.message(
      'Allow LOMO to use location to search for places',
      name: 'allow_places',
      desc: '',
      args: [],
    );
  }

  /// `Install now`
  String get install_now {
    return Intl.message(
      'Install now',
      name: 'install_now',
      desc: '',
      args: [],
    );
  }

  /// `Search topics`
  String get search_topics {
    return Intl.message(
      'Search topics',
      name: 'search_topics',
      desc: '',
      args: [],
    );
  }

  /// `Hot subject`
  String get hotSubject {
    return Intl.message(
      'Hot subject',
      name: 'hotSubject',
      desc: '',
      args: [],
    );
  }

  /// `Typical parent`
  String get typicalParent {
    return Intl.message(
      'Typical parent',
      name: 'typicalParent',
      desc: '',
      args: [],
    );
  }

  /// `Knowledge`
  String get knowledge {
    return Intl.message(
      'Knowledge',
      name: 'knowledge',
      desc: '',
      args: [],
    );
  }

  /// `Hot member of the week`
  String get hot_member {
    return Intl.message(
      'Hot member of the week',
      name: 'hot_member',
      desc: '',
      args: [],
    );
  }

  /// `Post hot`
  String get post_hot {
    return Intl.message(
      'Post hot',
      name: 'post_hot',
      desc: '',
      args: [],
    );
  }

  /// `Lomo's Choice`
  String get lomo_choice {
    return Intl.message(
      'Lomo\'s Choice',
      name: 'lomo_choice',
      desc: '',
      args: [],
    );
  }

  /// `LOMO Official`
  String get knowledgeOfficial {
    return Intl.message(
      'LOMO Official',
      name: 'knowledgeOfficial',
      desc: '',
      args: [],
    );
  }

  /// `Community`
  String get knowledgePublic {
    return Intl.message(
      'Community',
      name: 'knowledgePublic',
      desc: '',
      args: [],
    );
  }

  /// `Account setting`
  String get accountSetting {
    return Intl.message(
      'Account setting',
      name: 'accountSetting',
      desc: '',
      args: [],
    );
  }

  /// `Secure & privacy`
  String get secureAndPrivacy {
    return Intl.message(
      'Secure & privacy',
      name: 'secureAndPrivacy',
      desc: '',
      args: [],
    );
  }

  /// `Topics`
  String get topics {
    return Intl.message(
      'Topics',
      name: 'topics',
      desc: '',
      args: [],
    );
  }

  /// `Topic`
  String get topic {
    return Intl.message(
      'Topic',
      name: 'topic',
      desc: '',
      args: [],
    );
  }

  /// `Search on LOMO`
  String get search_on_lomo {
    return Intl.message(
      'Search on LOMO',
      name: 'search_on_lomo',
      desc: '',
      args: [],
    );
  }

  /// `About LOMO`
  String get aboutLomo {
    return Intl.message(
      'About LOMO',
      name: 'aboutLomo',
      desc: '',
      args: [],
    );
  }

  /// `Sort by`
  String get sortBy {
    return Intl.message(
      'Sort by',
      name: 'sortBy',
      desc: '',
      args: [],
    );
  }

  /// `Latest`
  String get latest {
    return Intl.message(
      'Latest',
      name: 'latest',
      desc: '',
      args: [],
    );
  }

  /// `Post type`
  String get postType {
    return Intl.message(
      'Post type',
      name: 'postType',
      desc: '',
      args: [],
    );
  }

  /// `Hot`
  String get hotTop {
    return Intl.message(
      'Hot',
      name: 'hotTop',
      desc: '',
      args: [],
    );
  }

  /// `https://lomosocial.com`
  String get aboutLomoLink {
    return Intl.message(
      'https://lomosocial.com',
      name: 'aboutLomoLink',
      desc: '',
      args: [],
    );
  }

  /// `Send`
  String get send {
    return Intl.message(
      'Send',
      name: 'send',
      desc: '',
      args: [],
    );
  }

  /// `Write a few words to get acquainted`
  String get get_acquainted {
    return Intl.message(
      'Write a few words to get acquainted',
      name: 'get_acquainted',
      desc: '',
      args: [],
    );
  }

  /// `Suggested acquaintance form`
  String get suggested_acquaintance {
    return Intl.message(
      'Suggested acquaintance form',
      name: 'suggested_acquaintance',
      desc: '',
      args: [],
    );
  }

  /// `Sent message success`
  String get sendMessageSuccess {
    return Intl.message(
      'Sent message success',
      name: 'sendMessageSuccess',
      desc: '',
      args: [],
    );
  }

  /// `View profile`
  String get view_profile {
    return Intl.message(
      'View profile',
      name: 'view_profile',
      desc: '',
      args: [],
    );
  }

  /// `Private Content`
  String get privateContent {
    return Intl.message(
      'Private Content',
      name: 'privateContent',
      desc: '',
      args: [],
    );
  }

  /// `When you change information in your dating profile, it will be updated to your personal profile`
  String get change_information {
    return Intl.message(
      'When you change information in your dating profile, it will be updated to your personal profile',
      name: 'change_information',
      desc: '',
      args: [],
    );
  }

  /// `Items`
  String get item {
    return Intl.message(
      'Items',
      name: 'item',
      desc: '',
      args: [],
    );
  }

  /// `View as grid`
  String get viewAsGrid {
    return Intl.message(
      'View as grid',
      name: 'viewAsGrid',
      desc: '',
      args: [],
    );
  }

  /// `View as list`
  String get viewAsList {
    return Intl.message(
      'View as list',
      name: 'viewAsList',
      desc: '',
      args: [],
    );
  }

  /// `Personal information`
  String get personalInfo {
    return Intl.message(
      'Personal information',
      name: 'personalInfo',
      desc: '',
      args: [],
    );
  }

  /// `Setting View`
  String get datingViewSetting {
    return Intl.message(
      'Setting View',
      name: 'datingViewSetting',
      desc: '',
      args: [],
    );
  }

  /// `Waiting for review`
  String get waitingVerifyProfileDating {
    return Intl.message(
      'Waiting for review',
      name: 'waitingVerifyProfileDating',
      desc: '',
      args: [],
    );
  }

  /// `No posts yet`
  String get newfeed_empty {
    return Intl.message(
      'No posts yet',
      name: 'newfeed_empty',
      desc: '',
      args: [],
    );
  }

  /// `Share your thoughts`
  String get create_newfeed {
    return Intl.message(
      'Share your thoughts',
      name: 'create_newfeed',
      desc: '',
      args: [],
    );
  }

  /// `Dating profile settings`
  String get settingProfileDating {
    return Intl.message(
      'Dating profile settings',
      name: 'settingProfileDating',
      desc: '',
      args: [],
    );
  }

  /// `Maximum three choices`
  String get chooseMax3Item {
    return Intl.message(
      'Maximum three choices',
      name: 'chooseMax3Item',
      desc: '',
      args: [],
    );
  }

  /// `Selected`
  String get selected {
    return Intl.message(
      'Selected',
      name: 'selected',
      desc: '',
      args: [],
    );
  }

  /// `You are post maximum 5 images`
  String get postMaxImage {
    return Intl.message(
      'You are post maximum 5 images',
      name: 'postMaxImage',
      desc: '',
      args: [],
    );
  }

  /// `bear of the week`
  String get bearGiftsInWeek {
    return Intl.message(
      'bear of the week',
      name: 'bearGiftsInWeek',
      desc: '',
      args: [],
    );
  }

  /// `Retake`
  String get retake {
    return Intl.message(
      'Retake',
      name: 'retake',
      desc: '',
      args: [],
    );
  }

  /// `Use photo`
  String get usePhoto {
    return Intl.message(
      'Use photo',
      name: 'usePhoto',
      desc: '',
      args: [],
    );
  }

  /// `Deleted post`
  String get deletePostSuccess {
    return Intl.message(
      'Deleted post',
      name: 'deletePostSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Question`
  String get myQuestion {
    return Intl.message(
      'Question',
      name: 'myQuestion',
      desc: '',
      args: [],
    );
  }

  /// `Result`
  String get result {
    return Intl.message(
      'Result',
      name: 'result',
      desc: '',
      args: [],
    );
  }

  /// `History`
  String get history {
    return Intl.message(
      'History',
      name: 'history',
      desc: '',
      args: [],
    );
  }

  /// `You matching with`
  String get youMatchWith {
    return Intl.message(
      'You matching with',
      name: 'youMatchWith',
      desc: '',
      args: [],
    );
  }

  /// `Seems like you know `
  String get resultQuizLargeStatus1 {
    return Intl.message(
      'Seems like you know ',
      name: 'resultQuizLargeStatus1',
      desc: '',
      args: [],
    );
  }

  /// ` very well. Tell `
  String get resultQuizLargeStatus2 {
    return Intl.message(
      ' very well. Tell ',
      name: 'resultQuizLargeStatus2',
      desc: '',
      args: [],
    );
  }

  /// ` now!`
  String get resultQuizLargeStatus3 {
    return Intl.message(
      ' now!',
      name: 'resultQuizLargeStatus3',
      desc: '',
      args: [],
    );
  }

  /// `It's almost like you can read `
  String get resultQuizMediumStatus1 {
    return Intl.message(
      'It\'s almost like you can read ',
      name: 'resultQuizMediumStatus1',
      desc: '',
      args: [],
    );
  }

  /// `'s mind. Talk to `
  String get resultQuizMediumStatus2 {
    return Intl.message(
      '\'s mind. Talk to ',
      name: 'resultQuizMediumStatus2',
      desc: '',
      args: [],
    );
  }

  /// ` now!`
  String get resultQuizMediumStatus3 {
    return Intl.message(
      ' now!',
      name: 'resultQuizMediumStatus3',
      desc: '',
      args: [],
    );
  }

  /// `Seems like `
  String get resultQuizLessStatus1 {
    return Intl.message(
      'Seems like ',
      name: 'resultQuizLessStatus1',
      desc: '',
      args: [],
    );
  }

  /// ` is still a mystery to you. Why don't you send a text to get to know `
  String get resultQuizLessStatus2 {
    return Intl.message(
      ' is still a mystery to you. Why don\'t you send a text to get to know ',
      name: 'resultQuizLessStatus2',
      desc: '',
      args: [],
    );
  }

  /// ` better?`
  String get resultQuizLessStatus3 {
    return Intl.message(
      ' better?',
      name: 'resultQuizLessStatus3',
      desc: '',
      args: [],
    );
  }

  /// `Search on Lomo`
  String get lomo_search {
    return Intl.message(
      'Search on Lomo',
      name: 'lomo_search',
      desc: '',
      args: [],
    );
  }

  /// `Post`
  String get newFeed {
    return Intl.message(
      'Post',
      name: 'newFeed',
      desc: '',
      args: [],
    );
  }

  /// `User`
  String get user {
    return Intl.message(
      'User',
      name: 'user',
      desc: '',
      args: [],
    );
  }

  /// `Hashtag`
  String get hashtag {
    return Intl.message(
      'Hashtag',
      name: 'hashtag',
      desc: '',
      args: [],
    );
  }

  /// `posts`
  String get posts {
    return Intl.message(
      'posts',
      name: 'posts',
      desc: '',
      args: [],
    );
  }

  /// `Say hi now`
  String get sayHiNow {
    return Intl.message(
      'Say hi now',
      name: 'sayHiNow',
      desc: '',
      args: [],
    );
  }

  /// `Create my quiz`
  String get createMyQuiz {
    return Intl.message(
      'Create my quiz',
      name: 'createMyQuiz',
      desc: '',
      args: [],
    );
  }

  /// `No challenge yet`
  String get noQuizYet {
    return Intl.message(
      'No challenge yet',
      name: 'noQuizYet',
      desc: '',
      args: [],
    );
  }

  /// `This user hasn't created a challenge yet "Who suits me". Come back again!`
  String get noQuizYetStatus {
    return Intl.message(
      'This user hasn\'t created a challenge yet "Who suits me". Come back again!',
      name: 'noQuizYetStatus',
      desc: '',
      args: [],
    );
  }

  /// `Understood`
  String get understood {
    return Intl.message(
      'Understood',
      name: 'understood',
      desc: '',
      args: [],
    );
  }

  /// `List of participants to learn about you`
  String get list_participants {
    return Intl.message(
      'List of participants to learn about you',
      name: 'list_participants',
      desc: '',
      args: [],
    );
  }

  /// `List of people you join to learn`
  String get history_participation {
    return Intl.message(
      'List of people you join to learn',
      name: 'history_participation',
      desc: '',
      args: [],
    );
  }

  /// `Question number`
  String get questionNumber {
    return Intl.message(
      'Question number',
      name: 'questionNumber',
      desc: '',
      args: [],
    );
  }

  /// `Answer number`
  String get answerNumber {
    return Intl.message(
      'Answer number',
      name: 'answerNumber',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your answer`
  String get answerError {
    return Intl.message(
      'Please enter your answer',
      name: 'answerError',
      desc: '',
      args: [],
    );
  }

  /// `Sample questions`
  String get sampleQuestion {
    return Intl.message(
      'Sample questions',
      name: 'sampleQuestion',
      desc: '',
      args: [],
    );
  }

  /// `You have selected a sufficient number of questions`
  String get notiMaxQuestion {
    return Intl.message(
      'You have selected a sufficient number of questions',
      name: 'notiMaxQuestion',
      desc: '',
      args: [],
    );
  }

  /// `Added successfully`
  String get addQuestionSuccess {
    return Intl.message(
      'Added successfully',
      name: 'addQuestionSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Create successfully`
  String get createQuestionSuccess {
    return Intl.message(
      'Create successfully',
      name: 'createQuestionSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Deleted successfully`
  String get removeQuestionSuccess {
    return Intl.message(
      'Deleted successfully',
      name: 'removeQuestionSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Create question failed`
  String get createQuestionError {
    return Intl.message(
      'Create question failed',
      name: 'createQuestionError',
      desc: '',
      args: [],
    );
  }

  /// `Result details`
  String get result_details {
    return Intl.message(
      'Result details',
      name: 'result_details',
      desc: '',
      args: [],
    );
  }

  /// `Post details`
  String get newsFeedDetail {
    return Intl.message(
      'Post details',
      name: 'newsFeedDetail',
      desc: '',
      args: [],
    );
  }

  /// `Create Who suits me?`
  String get setupQuiz {
    return Intl.message(
      'Create Who suits me?',
      name: 'setupQuiz',
      desc: '',
      args: [],
    );
  }

  /// `Recently`
  String get recently {
    return Intl.message(
      'Recently',
      name: 'recently',
      desc: '',
      args: [],
    );
  }

  /// `Share profile`
  String get shareProfile {
    return Intl.message(
      'Share profile',
      name: 'shareProfile',
      desc: '',
      args: [],
    );
  }

  /// `Last joined:`
  String get lastJoint {
    return Intl.message(
      'Last joined:',
      name: 'lastJoint',
      desc: '',
      args: [],
    );
  }

  /// `New - created:`
  String get newCreated {
    return Intl.message(
      'New - created:',
      name: 'newCreated',
      desc: '',
      args: [],
    );
  }

  /// `Trend`
  String get trend {
    return Intl.message(
      'Trend',
      name: 'trend',
      desc: '',
      args: [],
    );
  }

  /// `Load image error`
  String get loadImageError {
    return Intl.message(
      'Load image error',
      name: 'loadImageError',
      desc: '',
      args: [],
    );
  }

  /// `Your name must not include:\n- Special Icons`
  String get your_name {
    return Intl.message(
      'Your name must not include:\n- Special Icons',
      name: 'your_name',
      desc: '',
      args: [],
    );
  }

  /// `It seems no one matching your criteria. Let's expand your interest!`
  String get emptyDatingText {
    return Intl.message(
      'It seems no one matching your criteria. Let\'s expand your interest!',
      name: 'emptyDatingText',
      desc: '',
      args: [],
    );
  }

  /// `Edit Dating Filter`
  String get textBtnEmptyDating {
    return Intl.message(
      'Edit Dating Filter',
      name: 'textBtnEmptyDating',
      desc: '',
      args: [],
    );
  }

  /// `Ask at least 3 questions to find out "`
  String get createQuestionHeader {
    return Intl.message(
      'Ask at least 3 questions to find out "',
      name: 'createQuestionHeader',
      desc: '',
      args: [],
    );
  }

  /// `Who suits you`
  String get createQuestionHeader2 {
    return Intl.message(
      'Who suits you',
      name: 'createQuestionHeader2',
      desc: '',
      args: [],
    );
  }

  /// `"!`
  String get createQuestionHeader3 {
    return Intl.message(
      '"!',
      name: 'createQuestionHeader3',
      desc: '',
      args: [],
    );
  }

  /// `Press`
  String get use1 {
    return Intl.message(
      'Press',
      name: 'use1',
      desc: '',
      args: [],
    );
  }

  /// `to use Sample questions! You can custom the content.`
  String get use2 {
    return Intl.message(
      'to use Sample questions! You can custom the content.',
      name: 'use2',
      desc: '',
      args: [],
    );
  }

  /// `New`
  String get newQuiz {
    return Intl.message(
      'New',
      name: 'newQuiz',
      desc: '',
      args: [],
    );
  }

  /// `Account Verification`
  String get accountVerification {
    return Intl.message(
      'Account Verification',
      name: 'accountVerification',
      desc: '',
      args: [],
    );
  }

  /// `Edit Post filter`
  String get emptyPostText {
    return Intl.message(
      'Edit Post filter',
      name: 'emptyPostText',
      desc: '',
      args: [],
    );
  }

  /// `Your "You Know Me?" challenge is created.`
  String get createQuestionContent1 {
    return Intl.message(
      'Your "You Know Me?" challenge is created.',
      name: 'createQuestionContent1',
      desc: '',
      args: [],
    );
  }

  /// `Share it to challenge others!`
  String get createQuestionContent2 {
    return Intl.message(
      'Share it to challenge others!',
      name: 'createQuestionContent2',
      desc: '',
      args: [],
    );
  }

  /// `Share Link`
  String get shareLink {
    return Intl.message(
      'Share Link',
      name: 'shareLink',
      desc: '',
      args: [],
    );
  }

  /// `Post`
  String get shareTimeline {
    return Intl.message(
      'Post',
      name: 'shareTimeline',
      desc: '',
      args: [],
    );
  }

  /// `You can only change your username or Lomo ID again after 14 days.`
  String get warningUpdateProfile {
    return Intl.message(
      'You can only change your username or Lomo ID again after 14 days.',
      name: 'warningUpdateProfile',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get btnContinue {
    return Intl.message(
      'Continue',
      name: 'btnContinue',
      desc: '',
      args: [],
    );
  }

  /// `Copy`
  String get copy {
    return Intl.message(
      'Copy',
      name: 'copy',
      desc: '',
      args: [],
    );
  }

  /// `Copied`
  String get copySuccess {
    return Intl.message(
      'Copied',
      name: 'copySuccess',
      desc: '',
      args: [],
    );
  }

  /// `Deleted successfully`
  String get deleteSuccess {
    return Intl.message(
      'Deleted successfully',
      name: 'deleteSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Edit Success`
  String get editSuccess {
    return Intl.message(
      'Edit Success',
      name: 'editSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Search name`
  String get search_name {
    return Intl.message(
      'Search name',
      name: 'search_name',
      desc: '',
      args: [],
    );
  }

  /// `Post Unavailable\n`
  String get postDeleted {
    return Intl.message(
      'Post Unavailable\n',
      name: 'postDeleted',
      desc: '',
      args: [],
    );
  }

  /// `This post was deleted by its owner or violated LOMO's Terms and Policies`
  String get postDeletedContent {
    return Intl.message(
      'This post was deleted by its owner or violated LOMO\'s Terms and Policies',
      name: 'postDeletedContent',
      desc: '',
      args: [],
    );
  }

  /// `No comment`
  String get noComment {
    return Intl.message(
      'No comment',
      name: 'noComment',
      desc: '',
      args: [],
    );
  }

  /// `Don't show again`
  String get dontShowAgian {
    return Intl.message(
      'Don\'t show again',
      name: 'dontShowAgian',
      desc: '',
      args: [],
    );
  }

  /// `Uploading...`
  String get dataUploading {
    return Intl.message(
      'Uploading...',
      name: 'dataUploading',
      desc: '',
      args: [],
    );
  }

  /// `Edit`
  String get editVideo {
    return Intl.message(
      'Edit',
      name: 'editVideo',
      desc: '',
      args: [],
    );
  }

  /// `Companion`
  String get companion {
    return Intl.message(
      'Companion',
      name: 'companion',
      desc: '',
      args: [],
    );
  }

  /// `Closest to you`
  String get closeYou {
    return Intl.message(
      'Closest to you',
      name: 'closeYou',
      desc: '',
      args: [],
    );
  }

  /// `Voucher`
  String get voucher {
    return Intl.message(
      'Voucher',
      name: 'voucher',
      desc: '',
      args: [],
    );
  }

  /// `Your voucher has been redeemed!`
  String get exchange_voucher_success {
    return Intl.message(
      'Your voucher has been redeemed!',
      name: 'exchange_voucher_success',
      desc: '',
      args: [],
    );
  }

  /// `Your voucher has been redeemed!`
  String get voucher_success {
    return Intl.message(
      'Your voucher has been redeemed!',
      name: 'voucher_success',
      desc: '',
      args: [],
    );
  }

  /// `Please check your voucher detail and it’s expiry date`
  String get voucher_check_info_please {
    return Intl.message(
      'Please check your voucher detail and it’s expiry date',
      name: 'voucher_check_info_please',
      desc: '',
      args: [],
    );
  }

  /// `Enter referral code`
  String get enterReferralCode {
    return Intl.message(
      'Enter referral code',
      name: 'enterReferralCode',
      desc: '',
      args: [],
    );
  }

  /// `Your voucher code`
  String get voucher_your_code {
    return Intl.message(
      'Your voucher code',
      name: 'voucher_your_code',
      desc: '',
      args: [],
    );
  }

  /// `Enter the referral code to \nreceive attractive gifts`
  String get enterReferralCodeDescription {
    return Intl.message(
      'Enter the referral code to \nreceive attractive gifts',
      name: 'enterReferralCodeDescription',
      desc: '',
      args: [],
    );
  }

  /// `Collect Referral Rewards`
  String get collectReferralReward {
    return Intl.message(
      'Collect Referral Rewards',
      name: 'collectReferralReward',
      desc: '',
      args: [],
    );
  }

  /// `Invite friends to receive rewards`
  String get inviteFrendUseLomo {
    return Intl.message(
      'Invite friends to receive rewards',
      name: 'inviteFrendUseLomo',
      desc: '',
      args: [],
    );
  }

  /// `Invite friends to use LOMO`
  String get inviteFrendUseLomoDescription {
    return Intl.message(
      'Invite friends to use LOMO',
      name: 'inviteFrendUseLomoDescription',
      desc: '',
      args: [],
    );
  }

  /// `Invite friends`
  String get btnInviteFrend {
    return Intl.message(
      'Invite friends',
      name: 'btnInviteFrend',
      desc: '',
      args: [],
    );
  }

  /// `Referrer's LOMO ID (if any)`
  String get hintReferral {
    return Intl.message(
      'Referrer\'s LOMO ID (if any)',
      name: 'hintReferral',
      desc: '',
      args: [],
    );
  }

  /// `Invite friends`
  String get invite_friends {
    return Intl.message(
      'Invite friends',
      name: 'invite_friends',
      desc: '',
      args: [],
    );
  }

  /// `Get 20 free candies`
  String get get_20_free_candies {
    return Intl.message(
      'Get 20 free candies',
      name: 'get_20_free_candies',
      desc: '',
      args: [],
    );
  }

  /// `get 20 Free Candy When Your Friends Sign Up For LOMO`
  String get when_friend_sign_in_lomo {
    return Intl.message(
      'get 20 Free Candy When Your Friends Sign Up For LOMO',
      name: 'when_friend_sign_in_lomo',
      desc: '',
      args: [],
    );
  }

  /// `Invite friends to use LOMO. When your friends successfully register, you will get`
  String get when_friend_sign_in_1 {
    return Intl.message(
      'Invite friends to use LOMO. When your friends successfully register, you will get',
      name: 'when_friend_sign_in_1',
      desc: '',
      args: [],
    );
  }

  /// ` 20 free candies`
  String get when_friend_sign_in_2 {
    return Intl.message(
      ' 20 free candies',
      name: 'when_friend_sign_in_2',
      desc: '',
      args: [],
    );
  }

  /// `. The registered account must never been created on LOMO`
  String get when_friend_sign_in_3 {
    return Intl.message(
      '. The registered account must never been created on LOMO',
      name: 'when_friend_sign_in_3',
      desc: '',
      args: [],
    );
  }

  /// `Please enable geolocation to view this list`
  String get pleaseEnableGps {
    return Intl.message(
      'Please enable geolocation to view this list',
      name: 'pleaseEnableGps',
      desc: '',
      args: [],
    );
  }

  /// `Enable`
  String get enable {
    return Intl.message(
      'Enable',
      name: 'enable',
      desc: '',
      args: [],
    );
  }

  /// `System notification`
  String get systemNotification {
    return Intl.message(
      'System notification',
      name: 'systemNotification',
      desc: '',
      args: [],
    );
  }

  /// `Server is currently under maintenance, please come back later. LOMO is very sorry for this inconvenience.`
  String get serverMaintenance {
    return Intl.message(
      'Server is currently under maintenance, please come back later. LOMO is very sorry for this inconvenience.',
      name: 'serverMaintenance',
      desc: '',
      args: [],
    );
  }

  /// `Voucher details`
  String get title_detail_voucher {
    return Intl.message(
      'Voucher details',
      name: 'title_detail_voucher',
      desc: '',
      args: [],
    );
  }

  /// `Delete account`
  String get deleteAccount {
    return Intl.message(
      'Delete account',
      name: 'deleteAccount',
      desc: '',
      args: [],
    );
  }

  /// `Do you want to delete your account?\nYour request will be completed within 7 days`
  String get youConfirmDeleteAccount {
    return Intl.message(
      'Do you want to delete your account?\nYour request will be completed within 7 days',
      name: 'youConfirmDeleteAccount',
      desc: '',
      args: [],
    );
  }

  /// `Delete now`
  String get deleteNow {
    return Intl.message(
      'Delete now',
      name: 'deleteNow',
      desc: '',
      args: [],
    );
  }

  /// `Your account has been disabled`
  String get accountHasBeenDisable {
    return Intl.message(
      'Your account has been disabled',
      name: 'accountHasBeenDisable',
      desc: '',
      args: [],
    );
  }

  /// `Account is being requested to be deleted. Do you want to reactivate your account?`
  String get accountDisableDescription {
    return Intl.message(
      'Account is being requested to be deleted. Do you want to reactivate your account?',
      name: 'accountDisableDescription',
      desc: '',
      args: [],
    );
  }

  /// `Account deleted`
  String get accountHasBeenDeleted {
    return Intl.message(
      'Account deleted',
      name: 'accountHasBeenDeleted',
      desc: '',
      args: [],
    );
  }

  /// `Your account has been permanently deleted. You cannot use this number to register new account. Contact LOMO for support`
  String get accountDeletedDescription {
    return Intl.message(
      'Your account has been permanently deleted. You cannot use this number to register new account. Contact LOMO for support',
      name: 'accountDeletedDescription',
      desc: '',
      args: [],
    );
  }

  /// `Delete your account will:`
  String get deleteAccountWillBe {
    return Intl.message(
      'Delete your account will:',
      name: 'deleteAccountWillBe',
      desc: '',
      args: [],
    );
  }

  /// `Delete account information, name, profile picture.`
  String get deleteAccountRule1 {
    return Intl.message(
      'Delete account information, name, profile picture.',
      name: 'deleteAccountRule1',
      desc: '',
      args: [],
    );
  }

  /// `Delete personal information, contacts and messages.`
  String get deleteAccountRule2 {
    return Intl.message(
      'Delete personal information, contacts and messages.',
      name: 'deleteAccountRule2',
      desc: '',
      args: [],
    );
  }

  /// `Deleted account’s data cannot be recovered.`
  String get deleteAccountRule3 {
    return Intl.message(
      'Deleted account’s data cannot be recovered.',
      name: 'deleteAccountRule3',
      desc: '',
      args: [],
    );
  }

  /// `Once we’ve received your account deletion request, our system will temporarily disable your account within 7 days.`
  String get deleteAccountNote1 {
    return Intl.message(
      'Once we’ve received your account deletion request, our system will temporarily disable your account within 7 days.',
      name: 'deleteAccountNote1',
      desc: '',
      args: [],
    );
  }

  /// `Disable Account period: If you proceed to login within 7 days, your account will remain active, deletion request will be canceled.`
  String get deleteAccountNote2 {
    return Intl.message(
      'Disable Account period: If you proceed to login within 7 days, your account will remain active, deletion request will be canceled.',
      name: 'deleteAccountNote2',
      desc: '',
      args: [],
    );
  }

  /// `After 7 days, your account and all your information will be permanently deleted.`
  String get deleteAccountNote3 {
    return Intl.message(
      'After 7 days, your account and all your information will be permanently deleted.',
      name: 'deleteAccountNote3',
      desc: '',
      args: [],
    );
  }

  /// `Your reason`
  String get yourReason {
    return Intl.message(
      'Your reason',
      name: 'yourReason',
      desc: '',
      args: [],
    );
  }

  /// `Account deleted`
  String get accountDeleted {
    return Intl.message(
      'Account deleted',
      name: 'accountDeleted',
      desc: '',
      args: [],
    );
  }

  /// `To help us improve our service, please select a reason for your request:`
  String get reasonDeleteAccountStatus {
    return Intl.message(
      'To help us improve our service, please select a reason for your request:',
      name: 'reasonDeleteAccountStatus',
      desc: '',
      args: [],
    );
  }

  /// `System under maintenance`
  String get chatMaintenance {
    return Intl.message(
      'System under maintenance',
      name: 'chatMaintenance',
      desc: '',
      args: [],
    );
  }

  /// `Offensive`
  String get offensive {
    return Intl.message(
      'Offensive',
      name: 'offensive',
      desc: '',
      args: [],
    );
  }

  /// `Violence`
  String get violence {
    return Intl.message(
      'Violence',
      name: 'violence',
      desc: '',
      args: [],
    );
  }

  /// `Harassment`
  String get harassment {
    return Intl.message(
      'Harassment',
      name: 'harassment',
      desc: '',
      args: [],
    );
  }

  /// `Nudity`
  String get nudity {
    return Intl.message(
      'Nudity',
      name: 'nudity',
      desc: '',
      args: [],
    );
  }

  /// `False Information`
  String get falseInformation {
    return Intl.message(
      'False Information',
      name: 'falseInformation',
      desc: '',
      args: [],
    );
  }

  /// `Falsity`
  String get falsity {
    return Intl.message(
      'Falsity',
      name: 'falsity',
      desc: '',
      args: [],
    );
  }

  /// `Spam`
  String get spam {
    return Intl.message(
      'Spam',
      name: 'spam',
      desc: '',
      args: [],
    );
  }

  /// `Terrorism`
  String get terrorism {
    return Intl.message(
      'Terrorism',
      name: 'terrorism',
      desc: '',
      args: [],
    );
  }

  /// `Hate Speech`
  String get hateSpeech {
    return Intl.message(
      'Hate Speech',
      name: 'hateSpeech',
      desc: '',
      args: [],
    );
  }

  /// `Unauthorized Sales`
  String get unauthorizedSales {
    return Intl.message(
      'Unauthorized Sales',
      name: 'unauthorizedSales',
      desc: '',
      args: [],
    );
  }

  /// `Reported account`
  String get accountReported {
    return Intl.message(
      'Reported account',
      name: 'accountReported',
      desc: '',
      args: [],
    );
  }

  /// `Please select the issue to continue`
  String get issueReport {
    return Intl.message(
      'Please select the issue to continue',
      name: 'issueReport',
      desc: '',
      args: [],
    );
  }

  /// `More description of the matter to report`
  String get describeReport {
    return Intl.message(
      'More description of the matter to report',
      name: 'describeReport',
      desc: '',
      args: [],
    );
  }

  /// `Attach photo`
  String get attachImage {
    return Intl.message(
      'Attach photo',
      name: 'attachImage',
      desc: '',
      args: [],
    );
  }

  /// `Report now`
  String get reportNow {
    return Intl.message(
      'Report now',
      name: 'reportNow',
      desc: '',
      args: [],
    );
  }

  /// `Report success`
  String get reportSuccess {
    return Intl.message(
      'Report success',
      name: 'reportSuccess',
      desc: '',
      args: [],
    );
  }

  /// `There is no friend around.\nPlease try later`
  String get noDataNearYou {
    return Intl.message(
      'There is no friend around.\nPlease try later',
      name: 'noDataNearYou',
      desc: '',
      args: [],
    );
  }

  /// `Newsfeed setting`
  String get newFeedSetting {
    return Intl.message(
      'Newsfeed setting',
      name: 'newFeedSetting',
      desc: '',
      args: [],
    );
  }

  /// `Video auto play`
  String get videoAutoplay {
    return Intl.message(
      'Video auto play',
      name: 'videoAutoplay',
      desc: '',
      args: [],
    );
  }

  /// `Customized`
  String get customized {
    return Intl.message(
      'Customized',
      name: 'customized',
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
      Locale.fromSubtags(languageCode: 'vi'),
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
