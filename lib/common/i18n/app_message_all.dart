// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that looks up messages for specific locales by
// delegating to the appropriate library.

import 'dart:async';

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';
import 'package:intl/src/intl_helpers.dart';

import 'app_message_en.dart' as message_en;
import 'app_message_ja.dart' as message_ja;
import 'language_code.dart';

// ignore: prefer_generic_function_type_aliases
typedef Future<dynamic> MessageLibraryLoader();

Map<String, MessageLibraryLoader> _deferredLibraries = {
  LanguageCode.en: () => Future.value(null),
  LanguageCode.ja: () => Future.value(null),
};

MessageLookupByLibrary _findExact(String localeName) {
  switch (localeName) {
    case LanguageCode.en:
      return message_en.messages;
    case LanguageCode.ja:
      return message_ja.messages;
    default:
      return null;
  }
}

/// User programs should call this before using [localeName] for messages.
Future<bool> initializeMessages(String localeName) async {
  final availableLocale =
      Intl.verifiedLocale(localeName, (locale) => _deferredLibraries[locale] != null, onFailure: (_) => null);
  if (availableLocale == null) {
    return Future.value(false);
  }
  final lib = _deferredLibraries[availableLocale];
  await (lib == null ? Future.value(false) : lib());
  initializeInternalMessageLookup(() => CompositeMessageLookup());
  messageLookup.addLocale(availableLocale, _findGeneratedMessagesFor);
  return Future.value(true);
}

bool _messagesExistFor(String locale) {
  try {
    return _findExact(locale) != null;
  } catch (e) {
    return false;
  }
}

MessageLookupByLibrary _findGeneratedMessagesFor(String locale) {
  final actualLocale = Intl.verifiedLocale(locale, _messagesExistFor, onFailure: (_) => null);
  if (actualLocale == null) {
    return null;
  }
  return _findExact(actualLocale);
}
