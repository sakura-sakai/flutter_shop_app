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

class L10n {
  L10n();

  static L10n? _current;

  static L10n get current {
    assert(_current != null,
        'No instance of L10n was loaded. Try to initialize the L10n delegate before accessing L10n.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<L10n> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = L10n();
      L10n._current = instance;

      return instance;
    });
  }

  static L10n of(BuildContext context) {
    final instance = L10n.maybeOf(context);
    assert(instance != null,
        'No instance of L10n present in the widget tree. Did you add L10n.delegate in localizationsDelegates?');
    return instance!;
  }

  static L10n? maybeOf(BuildContext context) {
    return Localizations.of<L10n>(context, L10n);
  }

  /// `Required`
  String get required {
    return Intl.message(
      'Required',
      name: 'required',
      desc: '',
      args: [],
    );
  }

  /// `Please enter within 255 characters`
  String get errorMaxLengthInput {
    return Intl.message(
      'Please enter within 255 characters',
      name: 'errorMaxLengthInput',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid password`
  String get errorFormatInputPassword {
    return Intl.message(
      'Please enter a valid password',
      name: 'errorFormatInputPassword',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid email`
  String get errorFormatInputEmail {
    return Intl.message(
      'Please enter a valid email',
      name: 'errorFormatInputEmail',
      desc: '',
      args: [],
    );
  }

  /// `Shop App`
  String get title {
    return Intl.message(
      'Shop App',
      name: 'title',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Brand`
  String get brand {
    return Intl.message(
      'Brand',
      name: 'brand',
      desc: '',
      args: [],
    );
  }

  /// `Cart`
  String get cart {
    return Intl.message(
      'Cart',
      name: 'cart',
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

  /// `Menu`
  String get menu {
    return Intl.message(
      'Menu',
      name: 'menu',
      desc: '',
      args: [],
    );
  }

  /// `Camera`
  String get camera {
    return Intl.message(
      'Camera',
      name: 'camera',
      desc: '',
      args: [],
    );
  }

  /// `Food`
  String get food {
    return Intl.message(
      'Food',
      name: 'food',
      desc: '',
      args: [],
    );
  }

  /// `Handphone`
  String get handphone {
    return Intl.message(
      'Handphone',
      name: 'handphone',
      desc: '',
      args: [],
    );
  }

  /// `Gamming`
  String get gamming {
    return Intl.message(
      'Gamming',
      name: 'gamming',
      desc: '',
      args: [],
    );
  }

  /// `Fashion`
  String get fashion {
    return Intl.message(
      'Fashion',
      name: 'fashion',
      desc: '',
      args: [],
    );
  }

  /// `Health Care`
  String get healthCare {
    return Intl.message(
      'Health Care',
      name: 'healthCare',
      desc: '',
      args: [],
    );
  }

  /// `Computer`
  String get computer {
    return Intl.message(
      'Computer',
      name: 'computer',
      desc: '',
      args: [],
    );
  }

  /// `Equipment`
  String get equipment {
    return Intl.message(
      'Equipment',
      name: 'equipment',
      desc: '',
      args: [],
    );
  }

  /// `Otomotif`
  String get otomotif {
    return Intl.message(
      'Otomotif',
      name: 'otomotif',
      desc: '',
      args: [],
    );
  }

  /// `Sport`
  String get sport {
    return Intl.message(
      'Sport',
      name: 'sport',
      desc: '',
      args: [],
    );
  }

  /// `Ticket Cinema`
  String get ticketCinema {
    return Intl.message(
      'Ticket Cinema',
      name: 'ticketCinema',
      desc: '',
      args: [],
    );
  }

  /// `Books`
  String get books {
    return Intl.message(
      'Books',
      name: 'books',
      desc: '',
      args: [],
    );
  }

  /// `Week Promotion`
  String get weekPromotion {
    return Intl.message(
      'Week Promotion',
      name: 'weekPromotion',
      desc: '',
      args: [],
    );
  }

  /// `Flash`
  String get flash {
    return Intl.message(
      'Flash',
      name: 'flash',
      desc: '',
      args: [],
    );
  }

  /// `Sale`
  String get sale {
    return Intl.message(
      'Sale',
      name: 'sale',
      desc: '',
      args: [],
    );
  }

  /// `End Sale In :`
  String get endSaleIn {
    return Intl.message(
      'End Sale In :',
      name: 'endSaleIn',
      desc: '',
      args: [],
    );
  }

  /// `Category`
  String get category {
    return Intl.message(
      'Category',
      name: 'category',
      desc: '',
      args: [],
    );
  }

  /// `Fashion Man`
  String get fashionMan {
    return Intl.message(
      'Fashion Man',
      name: 'fashionMan',
      desc: '',
      args: [],
    );
  }

  /// `Fashion Girl`
  String get fashionGirl {
    return Intl.message(
      'Fashion Girl',
      name: 'fashionGirl',
      desc: '',
      args: [],
    );
  }

  /// `Smartphone`
  String get smartphone {
    return Intl.message(
      'Smartphone',
      name: 'smartphone',
      desc: '',
      args: [],
    );
  }

  /// `Fashion Kids`
  String get fashionKids {
    return Intl.message(
      'Fashion Kids',
      name: 'fashionKids',
      desc: '',
      args: [],
    );
  }

  /// `Health`
  String get health {
    return Intl.message(
      'Health',
      name: 'health',
      desc: '',
      args: [],
    );
  }

  /// `Makeup`
  String get makeup {
    return Intl.message(
      'Makeup',
      name: 'makeup',
      desc: '',
      args: [],
    );
  }

  /// `Recomended`
  String get recomended {
    return Intl.message(
      'Recomended',
      name: 'recomended',
      desc: '',
      args: [],
    );
  }

  /// `Apple Macbook Pro 13 with Touch Bar`
  String get fTitle1 {
    return Intl.message(
      'Apple Macbook Pro 13 with Touch Bar',
      name: 'fTitle1',
      desc: '',
      args: [],
    );
  }

  /// `United Kingdom`
  String get fPlace1 {
    return Intl.message(
      'United Kingdom',
      name: 'fPlace1',
      desc: '',
      args: [],
    );
  }

  /// `9 Available`
  String get fAvailable1 {
    return Intl.message(
      '9 Available',
      name: 'fAvailable1',
      desc: '',
      args: [],
    );
  }

  /// `7 Level Karina Dress Sweet Pesta`
  String get fTitle2 {
    return Intl.message(
      '7 Level Karina Dress Sweet Pesta',
      name: 'fTitle2',
      desc: '',
      args: [],
    );
  }

  /// `United Kingdom`
  String get fPlace2 {
    return Intl.message(
      'United Kingdom',
      name: 'fPlace2',
      desc: '',
      args: [],
    );
  }

  /// `24 Available`
  String get fAvailable2 {
    return Intl.message(
      '24 Available',
      name: 'fAvailable2',
      desc: '',
      args: [],
    );
  }

  /// `Samsung Galaxy Note 9 8GB - 512GB`
  String get fTitle3 {
    return Intl.message(
      'Samsung Galaxy Note 9 8GB - 512GB',
      name: 'fTitle3',
      desc: '',
      args: [],
    );
  }

  /// `United Kingdom`
  String get fPlace3 {
    return Intl.message(
      'United Kingdom',
      name: 'fPlace3',
      desc: '',
      args: [],
    );
  }

  /// `14 Available`
  String get fAvailable3 {
    return Intl.message(
      '14 Available',
      name: 'fAvailable3',
      desc: '',
      args: [],
    );
  }

  /// `Harry Potter Spesial Edition `
  String get fTitle4 {
    return Intl.message(
      'Harry Potter Spesial Edition ',
      name: 'fTitle4',
      desc: '',
      args: [],
    );
  }

  /// `United Kingdom`
  String get fPlace4 {
    return Intl.message(
      'United Kingdom',
      name: 'fPlace4',
      desc: '',
      args: [],
    );
  }

  /// `5 Available`
  String get fAvailable4 {
    return Intl.message(
      '5 Available',
      name: 'fAvailable4',
      desc: '',
      args: [],
    );
  }

  /// `Pro Evolution Soccer 2019 Steam Original PC Games`
  String get fTitle5 {
    return Intl.message(
      'Pro Evolution Soccer 2019 Steam Original PC Games',
      name: 'fTitle5',
      desc: '',
      args: [],
    );
  }

  /// `United Kingdom`
  String get fPlace5 {
    return Intl.message(
      'United Kingdom',
      name: 'fPlace5',
      desc: '',
      args: [],
    );
  }

  /// `30 Available`
  String get fAvailable5 {
    return Intl.message(
      '30 Available',
      name: 'fAvailable5',
      desc: '',
      args: [],
    );
  }

  /// `Category Brand`
  String get categoryBrand {
    return Intl.message(
      'Category Brand',
      name: 'categoryBrand',
      desc: '',
      args: [],
    );
  }

  /// `Nike Sport`
  String get nikeSport {
    return Intl.message(
      'Nike Sport',
      name: 'nikeSport',
      desc: '',
      args: [],
    );
  }

  /// `Apple Tech`
  String get appleTech {
    return Intl.message(
      'Apple Tech',
      name: 'appleTech',
      desc: '',
      args: [],
    );
  }

  /// `Fendi Fashion`
  String get fendiFashion {
    return Intl.message(
      'Fendi Fashion',
      name: 'fendiFashion',
      desc: '',
      args: [],
    );
  }

  /// `Gucci Fashion`
  String get gucciFashion {
    return Intl.message(
      'Gucci Fashion',
      name: 'gucciFashion',
      desc: '',
      args: [],
    );
  }

  /// `Samsung Tech`
  String get samsungTech {
    return Intl.message(
      'Samsung Tech',
      name: 'samsungTech',
      desc: '',
      args: [],
    );
  }

  /// `Sony Tech`
  String get sonyTech {
    return Intl.message(
      'Sony Tech',
      name: 'sonyTech',
      desc: '',
      args: [],
    );
  }

  /// `Samsung Galaxy Note 9 8GB RAM`
  String get cartTitle {
    return Intl.message(
      'Samsung Galaxy Note 9 8GB RAM',
      name: 'cartTitle',
      desc: '',
      args: [],
    );
  }

  /// `Internal 1 TB`
  String get cartDesc {
    return Intl.message(
      'Internal 1 TB',
      name: 'cartDesc',
      desc: '',
      args: [],
    );
  }

  /// `Items Cart Archive`
  String get cartArchice {
    return Intl.message(
      'Items Cart Archive',
      name: 'cartArchice',
      desc: '',
      args: [],
    );
  }

  /// `Items Cart Deleted`
  String get cartDeleted {
    return Intl.message(
      'Items Cart Deleted',
      name: 'cartDeleted',
      desc: '',
      args: [],
    );
  }

  /// `Total : `
  String get cartTotal {
    return Intl.message(
      'Total : ',
      name: 'cartTotal',
      desc: '',
      args: [],
    );
  }

  /// `Pay`
  String get cartPay {
    return Intl.message(
      'Pay',
      name: 'cartPay',
      desc: '',
      args: [],
    );
  }

  /// `Not Have Item`
  String get cartNoItem {
    return Intl.message(
      'Not Have Item',
      name: 'cartNoItem',
      desc: '',
      args: [],
    );
  }

  /// `Archive`
  String get cartArchiveText {
    return Intl.message(
      'Archive',
      name: 'cartArchiveText',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get cartDelete {
    return Intl.message(
      'Delete',
      name: 'cartDelete',
      desc: '',
      args: [],
    );
  }

  /// `Alisa Hearth`
  String get name {
    return Intl.message(
      'Alisa Hearth',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Edit Profile`
  String get editProfile {
    return Intl.message(
      'Edit Profile',
      name: 'editProfile',
      desc: '',
      args: [],
    );
  }

  /// `Notification`
  String get notification {
    return Intl.message(
      'Notification',
      name: 'notification',
      desc: '',
      args: [],
    );
  }

  /// `Payments`
  String get payments {
    return Intl.message(
      'Payments',
      name: 'payments',
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

  /// `Not Message Yet`
  String get noMessage {
    return Intl.message(
      'Not Message Yet',
      name: 'noMessage',
      desc: '',
      args: [],
    );
  }

  /// `My Orders`
  String get myOrders {
    return Intl.message(
      'My Orders',
      name: 'myOrders',
      desc: '',
      args: [],
    );
  }

  /// `Setting Account`
  String get settingAccount {
    return Intl.message(
      'Setting Account',
      name: 'settingAccount',
      desc: '',
      args: [],
    );
  }

  /// `Call Center`
  String get callCenter {
    return Intl.message(
      'Call Center',
      name: 'callCenter',
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

  /// `About Apps`
  String get aboutApps {
    return Intl.message(
      'About Apps',
      name: 'aboutApps',
      desc: '',
      args: [],
    );
  }

  /// `Not Have Notification`
  String get notHaveNotification {
    return Intl.message(
      'Not Have Notification',
      name: 'notHaveNotification',
      desc: '',
      args: [],
    );
  }

  /// `UI KIT E-Commerce`
  String get uiKit {
    return Intl.message(
      'UI KIT E-Commerce',
      name: 'uiKit',
      desc: '',
      args: [],
    );
  }

  /// `We're Happy to Help You!`
  String get callCenter1 {
    return Intl.message(
      'We\'re Happy to Help You!',
      name: 'callCenter1',
      desc: '',
      args: [],
    );
  }

  /// `If you have complain about \nthe product chat me `
  String get callCenter2 {
    return Intl.message(
      'If you have complain about \nthe product chat me ',
      name: 'callCenter2',
      desc: '',
      args: [],
    );
  }

  /// `Chat Me`
  String get callCenter3 {
    return Intl.message(
      'Chat Me',
      name: 'callCenter3',
      desc: '',
      args: [],
    );
  }

  /// `Track My Order`
  String get trackMyOrder {
    return Intl.message(
      'Track My Order',
      name: 'trackMyOrder',
      desc: '',
      args: [],
    );
  }

  /// `Wed, 12 September`
  String get dateOrder {
    return Intl.message(
      'Wed, 12 September',
      name: 'dateOrder',
      desc: '',
      args: [],
    );
  }

  /// `Order ID: 5t36 - 9iu2 - 12i92`
  String get orderID {
    return Intl.message(
      'Order ID: 5t36 - 9iu2 - 12i92',
      name: 'orderID',
      desc: '',
      args: [],
    );
  }

  /// `Orders`
  String get order {
    return Intl.message(
      'Orders',
      name: 'order',
      desc: '',
      args: [],
    );
  }

  /// `Ready to Pickup`
  String get txtHeader1 {
    return Intl.message(
      'Ready to Pickup',
      name: 'txtHeader1',
      desc: '',
      args: [],
    );
  }

  /// `Order from ShopApp`
  String get txtInfo1 {
    return Intl.message(
      'Order from ShopApp',
      name: 'txtInfo1',
      desc: '',
      args: [],
    );
  }

  /// `Order Processed`
  String get txtHeader2 {
    return Intl.message(
      'Order Processed',
      name: 'txtHeader2',
      desc: '',
      args: [],
    );
  }

  /// `We are preparing your order`
  String get txtInfo2 {
    return Intl.message(
      'We are preparing your order',
      name: 'txtInfo2',
      desc: '',
      args: [],
    );
  }

  /// `Payment Confirmed`
  String get txtHeader3 {
    return Intl.message(
      'Payment Confirmed',
      name: 'txtHeader3',
      desc: '',
      args: [],
    );
  }

  /// `Awaiting Confirmation`
  String get txtInfo3 {
    return Intl.message(
      'Awaiting Confirmation',
      name: 'txtInfo3',
      desc: '',
      args: [],
    );
  }

  /// `Order Placed`
  String get txtHeader4 {
    return Intl.message(
      'Order Placed',
      name: 'txtHeader4',
      desc: '',
      args: [],
    );
  }

  /// `We have received your order`
  String get txtInfo4 {
    return Intl.message(
      'We have received your order',
      name: 'txtInfo4',
      desc: '',
      args: [],
    );
  }

  /// `Delivery Address`
  String get delivery {
    return Intl.message(
      'Delivery Address',
      name: 'delivery',
      desc: '',
      args: [],
    );
  }

  /// `Home, Work & Other Address`
  String get homeWork {
    return Intl.message(
      'Home, Work & Other Address',
      name: 'homeWork',
      desc: '',
      args: [],
    );
  }

  /// `House No: 1234, 2nd Floor Sector 18, \nSilicon Valey Amerika Serikat`
  String get houseNo {
    return Intl.message(
      'House No: 1234, 2nd Floor Sector 18, \nSilicon Valey Amerika Serikat',
      name: 'houseNo',
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

  /// `Telephone`
  String get telephone {
    return Intl.message(
      'Telephone',
      name: 'telephone',
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

  /// `Setting`
  String get setting {
    return Intl.message(
      'Setting',
      name: 'setting',
      desc: '',
      args: [],
    );
  }

  /// `Order Notifications`
  String get orderNotification {
    return Intl.message(
      'Order Notifications',
      name: 'orderNotification',
      desc: '',
      args: [],
    );
  }

  /// `Discount Notifications`
  String get discountNotification {
    return Intl.message(
      'Discount Notifications',
      name: 'discountNotification',
      desc: '',
      args: [],
    );
  }

  /// `Credit Card`
  String get creditCard {
    return Intl.message(
      'Credit Card',
      name: 'creditCard',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logout {
    return Intl.message(
      'Logout',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `SORT BY`
  String get sortBy {
    return Intl.message(
      'SORT BY',
      name: 'sortBy',
      desc: '',
      args: [],
    );
  }

  /// `Popularity`
  String get popularity {
    return Intl.message(
      'Popularity',
      name: 'popularity',
      desc: '',
      args: [],
    );
  }

  /// `New`
  String get news {
    return Intl.message(
      'New',
      name: 'news',
      desc: '',
      args: [],
    );
  }

  /// `Discount`
  String get discount {
    return Intl.message(
      'Discount',
      name: 'discount',
      desc: '',
      args: [],
    );
  }

  /// `Price: Low-Hight`
  String get priceLow {
    return Intl.message(
      'Price: Low-Hight',
      name: 'priceLow',
      desc: '',
      args: [],
    );
  }

  /// `Price: High-Low`
  String get priceHight {
    return Intl.message(
      'Price: High-Low',
      name: 'priceHight',
      desc: '',
      args: [],
    );
  }

  /// `REFINE BY`
  String get refineBy {
    return Intl.message(
      'REFINE BY',
      name: 'refineBy',
      desc: '',
      args: [],
    );
  }

  /// `Undo`
  String get undo {
    return Intl.message(
      'Undo',
      name: 'undo',
      desc: '',
      args: [],
    );
  }

  /// `Sort`
  String get sort {
    return Intl.message(
      'Sort',
      name: 'sort',
      desc: '',
      args: [],
    );
  }

  /// `Refine`
  String get refine {
    return Intl.message(
      'Refine',
      name: 'refine',
      desc: '',
      args: [],
    );
  }

  /// `Notificated`
  String get notificated {
    return Intl.message(
      'Notificated',
      name: 'notificated',
      desc: '',
      args: [],
    );
  }

  /// `Enter some text to send a message`
  String get hintMessage {
    return Intl.message(
      'Enter some text to send a message',
      name: 'hintMessage',
      desc: '',
      args: [],
    );
  }

  /// `Submit`
  String get submit {
    return Intl.message(
      'Submit',
      name: 'submit',
      desc: '',
      args: [],
    );
  }

  /// `Not Have Message`
  String get notHaveMessage {
    return Intl.message(
      'Not Have Message',
      name: 'notHaveMessage',
      desc: '',
      args: [],
    );
  }

  /// `Delivery`
  String get deliveryAppBar {
    return Intl.message(
      'Delivery',
      name: 'deliveryAppBar',
      desc: '',
      args: [],
    );
  }

  /// `Where are your ordered items shipped ?`
  String get deliveryLocation {
    return Intl.message(
      'Where are your ordered items shipped ?',
      name: 'deliveryLocation',
      desc: '',
      args: [],
    );
  }

  /// `Pin Code`
  String get pinCode {
    return Intl.message(
      'Pin Code',
      name: 'pinCode',
      desc: '',
      args: [],
    );
  }

  /// `Locality`
  String get locality {
    return Intl.message(
      'Locality',
      name: 'locality',
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

  /// `State`
  String get state {
    return Intl.message(
      'State',
      name: 'state',
      desc: '',
      args: [],
    );
  }

  /// `Go to payment`
  String get goPayment {
    return Intl.message(
      'Go to payment',
      name: 'goPayment',
      desc: '',
      args: [],
    );
  }

  /// `Payment`
  String get payment {
    return Intl.message(
      'Payment',
      name: 'payment',
      desc: '',
      args: [],
    );
  }

  /// `Choose your payment method`
  String get chosePaymnet {
    return Intl.message(
      'Choose your payment method',
      name: 'chosePaymnet',
      desc: '',
      args: [],
    );
  }

  /// `Credit / Debit Card`
  String get credit {
    return Intl.message(
      'Credit / Debit Card',
      name: 'credit',
      desc: '',
      args: [],
    );
  }

  /// `Cash On Delivery`
  String get cashOn {
    return Intl.message(
      'Cash On Delivery',
      name: 'cashOn',
      desc: '',
      args: [],
    );
  }

  /// `Paypal`
  String get paypal {
    return Intl.message(
      'Paypal',
      name: 'paypal',
      desc: '',
      args: [],
    );
  }

  /// `Google Wallet`
  String get googleWallet {
    return Intl.message(
      'Google Wallet',
      name: 'googleWallet',
      desc: '',
      args: [],
    );
  }

  /// `Pay`
  String get pay {
    return Intl.message(
      'Pay',
      name: 'pay',
      desc: '',
      args: [],
    );
  }

  /// `Yuppy !!`
  String get yuppy {
    return Intl.message(
      'Yuppy !!',
      name: 'yuppy',
      desc: '',
      args: [],
    );
  }

  /// `Your Payment Receive to Seller`
  String get paymentReceive {
    return Intl.message(
      'Your Payment Receive to Seller',
      name: 'paymentReceive',
      desc: '',
      args: [],
    );
  }

  /// `Man`
  String get man {
    return Intl.message(
      'Man',
      name: 'man',
      desc: '',
      args: [],
    );
  }

  /// `Sub Category`
  String get subCategory {
    return Intl.message(
      'Sub Category',
      name: 'subCategory',
      desc: '',
      args: [],
    );
  }

  /// `See More`
  String get seeMore {
    return Intl.message(
      'See More',
      name: 'seeMore',
      desc: '',
      args: [],
    );
  }

  /// `Polo Shirt`
  String get categoryTitle1 {
    return Intl.message(
      'Polo Shirt',
      name: 'categoryTitle1',
      desc: '',
      args: [],
    );
  }

  /// `Shirt`
  String get categoryTitle2 {
    return Intl.message(
      'Shirt',
      name: 'categoryTitle2',
      desc: '',
      args: [],
    );
  }

  /// `Suit`
  String get categoryTitle3 {
    return Intl.message(
      'Suit',
      name: 'categoryTitle3',
      desc: '',
      args: [],
    );
  }

  /// `Jacket`
  String get categoryTitle4 {
    return Intl.message(
      'Jacket',
      name: 'categoryTitle4',
      desc: '',
      args: [],
    );
  }

  /// `Jeans`
  String get categoryTitle5 {
    return Intl.message(
      'Jeans',
      name: 'categoryTitle5',
      desc: '',
      args: [],
    );
  }

  /// `Bag`
  String get categoryTitle6 {
    return Intl.message(
      'Bag',
      name: 'categoryTitle6',
      desc: '',
      args: [],
    );
  }

  /// `Watch`
  String get categoryTitle7 {
    return Intl.message(
      'Watch',
      name: 'categoryTitle7',
      desc: '',
      args: [],
    );
  }

  /// `Shoes`
  String get categoryTitle8 {
    return Intl.message(
      'Shoes',
      name: 'categoryTitle8',
      desc: '',
      args: [],
    );
  }

  /// `Item Discount`
  String get itemDiscount {
    return Intl.message(
      'Item Discount',
      name: 'itemDiscount',
      desc: '',
      args: [],
    );
  }

  /// `Item Popular`
  String get itemPopular {
    return Intl.message(
      'Item Popular',
      name: 'itemPopular',
      desc: '',
      args: [],
    );
  }

  /// `New Item`
  String get newItem {
    return Intl.message(
      'New Item',
      name: 'newItem',
      desc: '',
      args: [],
    );
  }

  /// `Chatting`
  String get chatting {
    return Intl.message(
      'Chatting',
      name: 'chatting',
      desc: '',
      args: [],
    );
  }

  /// `Enter some text to send a message`
  String get hintChat {
    return Intl.message(
      'Enter some text to send a message',
      name: 'hintChat',
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

  /// `Spesifications :`
  String get spesifications {
    return Intl.message(
      'Spesifications :',
      name: 'spesifications',
      desc: '',
      args: [],
    );
  }

  /// `- Lorem ipsum is simply dummy `
  String get loremIpsum {
    return Intl.message(
      '- Lorem ipsum is simply dummy ',
      name: 'loremIpsum',
      desc: '',
      args: [],
    );
  }

  /// `Top Rated Products`
  String get topRated {
    return Intl.message(
      'Top Rated Products',
      name: 'topRated',
      desc: '',
      args: [],
    );
  }

  /// `See All`
  String get seeAll {
    return Intl.message(
      'See All',
      name: 'seeAll',
      desc: '',
      args: [],
    );
  }

  /// `Firrona Skirt!`
  String get productTitle1 {
    return Intl.message(
      'Firrona Skirt!',
      name: 'productTitle1',
      desc: '',
      args: [],
    );
  }

  /// `923 Sale`
  String get productSale1 {
    return Intl.message(
      '923 Sale',
      name: 'productSale1',
      desc: '',
      args: [],
    );
  }

  /// `Arpenaz 4`
  String get productTitle2 {
    return Intl.message(
      'Arpenaz 4',
      name: 'productTitle2',
      desc: '',
      args: [],
    );
  }

  /// `892 Sale`
  String get productSale2 {
    return Intl.message(
      '892 Sale',
      name: 'productSale2',
      desc: '',
      args: [],
    );
  }

  /// `Polo T Shirt`
  String get productTitle3 {
    return Intl.message(
      'Polo T Shirt',
      name: 'productTitle3',
      desc: '',
      args: [],
    );
  }

  /// `210 Sale`
  String get productSale3 {
    return Intl.message(
      '210 Sale',
      name: 'productSale3',
      desc: '',
      args: [],
    );
  }

  /// `Product Detail`
  String get productDetail {
    return Intl.message(
      'Product Detail',
      name: 'productDetail',
      desc: '',
      args: [],
    );
  }

  /// `Size`
  String get size {
    return Intl.message(
      'Size',
      name: 'size',
      desc: '',
      args: [],
    );
  }

  /// `S`
  String get s {
    return Intl.message(
      'S',
      name: 's',
      desc: '',
      args: [],
    );
  }

  /// `M`
  String get m {
    return Intl.message(
      'M',
      name: 'm',
      desc: '',
      args: [],
    );
  }

  /// `L`
  String get l {
    return Intl.message(
      'L',
      name: 'l',
      desc: '',
      args: [],
    );
  }

  /// `XL`
  String get xl {
    return Intl.message(
      'XL',
      name: 'xl',
      desc: '',
      args: [],
    );
  }

  /// `Color`
  String get color {
    return Intl.message(
      'Color',
      name: 'color',
      desc: '',
      args: [],
    );
  }

  /// `View More`
  String get viewMore {
    return Intl.message(
      'View More',
      name: 'viewMore',
      desc: '',
      args: [],
    );
  }

  /// `Review`
  String get review {
    return Intl.message(
      'Review',
      name: 'review',
      desc: '',
      args: [],
    );
  }

  /// `View All`
  String get viewAll {
    return Intl.message(
      'View All',
      name: 'viewAll',
      desc: '',
      args: [],
    );
  }

  /// `8 Reviews`
  String get reviews {
    return Intl.message(
      '8 Reviews',
      name: 'reviews',
      desc: '',
      args: [],
    );
  }

  /// `18 Nov 2018`
  String get date {
    return Intl.message(
      '18 Nov 2018',
      name: 'date',
      desc: '',
      args: [],
    );
  }

  /// `Item delivered in good condition. I will recommend to other buyer.`
  String get ratingReview {
    return Intl.message(
      'Item delivered in good condition. I will recommend to other buyer.',
      name: 'ratingReview',
      desc: '',
      args: [],
    );
  }

  /// `Very Recommended item i love it very love it`
  String get ratingReview2 {
    return Intl.message(
      'Very Recommended item i love it very love it',
      name: 'ratingReview2',
      desc: '',
      args: [],
    );
  }

  /// `Item Added`
  String get itemAdded {
    return Intl.message(
      'Item Added',
      name: 'itemAdded',
      desc: '',
      args: [],
    );
  }

  /// `Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen.`
  String get longLorem {
    return Intl.message(
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen.',
      name: 'longLorem',
      desc: '',
      args: [],
    );
  }

  /// `Flash Sale`
  String get flashSale {
    return Intl.message(
      'Flash Sale',
      name: 'flashSale',
      desc: '',
      args: [],
    );
  }

  /// `End in`
  String get endIn {
    return Intl.message(
      'End in',
      name: 'endIn',
      desc: '',
      args: [],
    );
  }

  /// `Detail Product`
  String get detailProduct {
    return Intl.message(
      'Detail Product',
      name: 'detailProduct',
      desc: '',
      args: [],
    );
  }

  /// `Camera \n Digital`
  String get cameraDigital {
    return Intl.message(
      'Camera \n Digital',
      name: 'cameraDigital',
      desc: '',
      args: [],
    );
  }

  /// `Compact \n Camera`
  String get compacCamera {
    return Intl.message(
      'Compact \n Camera',
      name: 'compacCamera',
      desc: '',
      args: [],
    );
  }

  /// `Action \n Camera`
  String get actionCamera {
    return Intl.message(
      'Action \n Camera',
      name: 'actionCamera',
      desc: '',
      args: [],
    );
  }

  /// `Action`
  String get action {
    return Intl.message(
      'Action',
      name: 'action',
      desc: '',
      args: [],
    );
  }

  /// `Drone`
  String get drone {
    return Intl.message(
      'Drone',
      name: 'drone',
      desc: '',
      args: [],
    );
  }

  /// `Digital`
  String get digital {
    return Intl.message(
      'Digital',
      name: 'digital',
      desc: '',
      args: [],
    );
  }

  /// `Handycam`
  String get handyCam {
    return Intl.message(
      'Handycam',
      name: 'handyCam',
      desc: '',
      args: [],
    );
  }

  /// `Analog`
  String get analog {
    return Intl.message(
      'Analog',
      name: 'analog',
      desc: '',
      args: [],
    );
  }

  /// `CCTV`
  String get cctv {
    return Intl.message(
      'CCTV',
      name: 'cctv',
      desc: '',
      args: [],
    );
  }

  /// `Spy Cam`
  String get spyCam {
    return Intl.message(
      'Spy Cam',
      name: 'spyCam',
      desc: '',
      args: [],
    );
  }

  /// `Accesoris`
  String get accesoris {
    return Intl.message(
      'Accesoris',
      name: 'accesoris',
      desc: '',
      args: [],
    );
  }

  /// `Search  Items Promotion`
  String get hintPromotion {
    return Intl.message(
      'Search  Items Promotion',
      name: 'hintPromotion',
      desc: '',
      args: [],
    );
  }

  /// `Reviews`
  String get reviewsAppBar {
    return Intl.message(
      'Reviews',
      name: 'reviewsAppBar',
      desc: '',
      args: [],
    );
  }

  /// `Hello, i am Shop App. What would you like to search ?`
  String get searchHello {
    return Intl.message(
      'Hello, i am Shop App. What would you like to search ?',
      name: 'searchHello',
      desc: '',
      args: [],
    );
  }

  /// `Find you want`
  String get findYouWant {
    return Intl.message(
      'Find you want',
      name: 'findYouWant',
      desc: '',
      args: [],
    );
  }

  /// `Favorite`
  String get favorite {
    return Intl.message(
      'Favorite',
      name: 'favorite',
      desc: '',
      args: [],
    );
  }

  /// `Iphone X`
  String get searchTitle1 {
    return Intl.message(
      'Iphone X',
      name: 'searchTitle1',
      desc: '',
      args: [],
    );
  }

  /// `Macbook`
  String get searchTitle2 {
    return Intl.message(
      'Macbook',
      name: 'searchTitle2',
      desc: '',
      args: [],
    );
  }

  /// `Samsung`
  String get searchTitle3 {
    return Intl.message(
      'Samsung',
      name: 'searchTitle3',
      desc: '',
      args: [],
    );
  }

  /// `Apple`
  String get searchTitle4 {
    return Intl.message(
      'Apple',
      name: 'searchTitle4',
      desc: '',
      args: [],
    );
  }

  /// `Note 9`
  String get searchTitle5 {
    return Intl.message(
      'Note 9',
      name: 'searchTitle5',
      desc: '',
      args: [],
    );
  }

  /// `Nevada`
  String get searchTitle6 {
    return Intl.message(
      'Nevada',
      name: 'searchTitle6',
      desc: '',
      args: [],
    );
  }

  /// `Watch`
  String get searchTitle7 {
    return Intl.message(
      'Watch',
      name: 'searchTitle7',
      desc: '',
      args: [],
    );
  }

  /// `PC`
  String get searchTitle8 {
    return Intl.message(
      'PC',
      name: 'searchTitle8',
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

  /// `Get best product in shop app`
  String get hintChoseLogin {
    return Intl.message(
      'Get best product in shop app',
      name: 'hintChoseLogin',
      desc: '',
      args: [],
    );
  }

  /// `Signup`
  String get signUp {
    return Intl.message(
      'Signup',
      name: 'signUp',
      desc: '',
      args: [],
    );
  }

  /// `OR SKIP`
  String get orSkip {
    return Intl.message(
      'OR SKIP',
      name: 'orSkip',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `OR`
  String get or {
    return Intl.message(
      'OR',
      name: 'or',
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

  /// `Not Have Account? Sign Up`
  String get notHave {
    return Intl.message(
      'Not Have Account? Sign Up',
      name: 'notHave',
      desc: '',
      args: [],
    );
  }

  /// `Login With Facebook`
  String get loginFacebook {
    return Intl.message(
      'Login With Facebook',
      name: 'loginFacebook',
      desc: '',
      args: [],
    );
  }

  /// `Login With Google`
  String get loginGoogle {
    return Intl.message(
      'Login With Google',
      name: 'loginGoogle',
      desc: '',
      args: [],
    );
  }

  /// `Have Account? Sign In`
  String get notHaveLogin {
    return Intl.message(
      'Have Account? Sign In',
      name: 'notHaveLogin',
      desc: '',
      args: [],
    );
  }

  /// `Welcome To`
  String get welcomeTo {
    return Intl.message(
      'Welcome To',
      name: 'welcomeTo',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get languageSetting {
    return Intl.message(
      'Language',
      name: 'languageSetting',
      desc: '',
      args: [],
    );
  }

  /// `Change Language?`
  String get titleCard {
    return Intl.message(
      'Change Language?',
      name: 'titleCard',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to change this language setting?`
  String get descCard {
    return Intl.message(
      'Are you sure you want to change this language setting?',
      name: 'descCard',
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

  /// `Arabic`
  String get arabic {
    return Intl.message(
      'Arabic',
      name: 'arabic',
      desc: '',
      args: [],
    );
  }

  /// `Chinese`
  String get chinese {
    return Intl.message(
      'Chinese',
      name: 'chinese',
      desc: '',
      args: [],
    );
  }

  /// `Hindi`
  String get hindi {
    return Intl.message(
      'Hindi',
      name: 'hindi',
      desc: '',
      args: [],
    );
  }

  /// `Indonesia`
  String get indonesia {
    return Intl.message(
      'Indonesia',
      name: 'indonesia',
      desc: '',
      args: [],
    );
  }

  /// `Card Name`
  String get cardName {
    return Intl.message(
      'Card Name',
      name: 'cardName',
      desc: '',
      args: [],
    );
  }

  /// `CVV / CVC`
  String get cvv {
    return Intl.message(
      'CVV / CVC',
      name: 'cvv',
      desc: '',
      args: [],
    );
  }

  /// `Card Information`
  String get cardInformation {
    return Intl.message(
      'Card Information',
      name: 'cardInformation',
      desc: '',
      args: [],
    );
  }

  /// `Transactions Details`
  String get transactionDetail {
    return Intl.message(
      'Transactions Details',
      name: 'transactionDetail',
      desc: '',
      args: [],
    );
  }

  /// `My Personal Card`
  String get myPersonal {
    return Intl.message(
      'My Personal Card',
      name: 'myPersonal',
      desc: '',
      args: [],
    );
  }

  /// `Card Number`
  String get cardNumber {
    return Intl.message(
      'Card Number',
      name: 'cardNumber',
      desc: '',
      args: [],
    );
  }

  /// `Exp.`
  String get exp {
    return Intl.message(
      'Exp.',
      name: 'exp',
      desc: '',
      args: [],
    );
  }

  /// `Jan 01`
  String get datePayment1 {
    return Intl.message(
      'Jan 01',
      name: 'datePayment1',
      desc: '',
      args: [],
    );
  }

  /// `Buy Dress Red Valvet`
  String get itemPayment1 {
    return Intl.message(
      'Buy Dress Red Valvet',
      name: 'itemPayment1',
      desc: '',
      args: [],
    );
  }

  /// `Feb 12`
  String get datePayment2 {
    return Intl.message(
      'Feb 12',
      name: 'datePayment2',
      desc: '',
      args: [],
    );
  }

  /// `Buy Iphone X`
  String get itemPayment2 {
    return Intl.message(
      'Buy Iphone X',
      name: 'itemPayment2',
      desc: '',
      args: [],
    );
  }

  /// `Mar 21`
  String get datePayment3 {
    return Intl.message(
      'Mar 21',
      name: 'datePayment3',
      desc: '',
      args: [],
    );
  }

  /// `Buy Macbook Pro`
  String get itemPayment3 {
    return Intl.message(
      'Buy Macbook Pro',
      name: 'itemPayment3',
      desc: '',
      args: [],
    );
  }

  /// `Oct 16`
  String get datePayment4 {
    return Intl.message(
      'Oct 16',
      name: 'datePayment4',
      desc: '',
      args: [],
    );
  }

  /// `Buy Handphone`
  String get itemPayment4 {
    return Intl.message(
      'Buy Handphone',
      name: 'itemPayment4',
      desc: '',
      args: [],
    );
  }

  /// `Dec 01`
  String get datePayment5 {
    return Intl.message(
      'Dec 01',
      name: 'datePayment5',
      desc: '',
      args: [],
    );
  }

  /// `Buy Dress Blue`
  String get itemPayment5 {
    return Intl.message(
      'Buy Dress Blue',
      name: 'itemPayment5',
      desc: '',
      args: [],
    );
  }

  /// `9867 - 2312 - 3212 - 4213`
  String get numberCC {
    return Intl.message(
      '9867 - 2312 - 3212 - 4213',
      name: 'numberCC',
      desc: '',
      args: [],
    );
  }

  /// `Alissa Hearth`
  String get nameCC {
    return Intl.message(
      'Alissa Hearth',
      name: 'nameCC',
      desc: '',
      args: [],
    );
  }

  /// `765`
  String get cvCC {
    return Intl.message(
      '765',
      name: 'cvCC',
      desc: '',
      args: [],
    );
  }

  /// `Edit Detail`
  String get editDetail {
    return Intl.message(
      'Edit Detail',
      name: 'editDetail',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<L10n> {
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
  Future<L10n> load(Locale locale) => L10n.load(locale);
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
