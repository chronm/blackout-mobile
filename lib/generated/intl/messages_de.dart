// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a de locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'de';

  static m0(creationDate) => "${creationDate} erstellt";

  static m1(date) => "haltbar bis ${date}";

  static m2(amount, date) => "${date} ${amount} hinzugefügt";

  static m3(amount, date) => "${date} ${amount} entnommen";

  static m4(amount) => "Verfügbar: ${amount}";

  static m5(days) => "${Intl.plural(days, zero: '', one: '1 Tag', other: '${days} Tage')}";

  static m6(months) => "${Intl.plural(months, zero: '', one: 'in 1 Monat', other: 'in ${months} Monaten')}";

  static m7(weeks) => "${Intl.plural(weeks, zero: '', one: 'in 1 Woche', other: 'in ${weeks} Wochen')}";

  static m8(expirationDate) => "lief ${expirationDate} ab";

  static m9(expirationDate) => "läuft ${expirationDate} ab";

  static m10(interval) => "läuft ${interval} ab";

  static m11(hours) => "${Intl.plural(hours, zero: '', one: '1 Stunde', other: '${hours} Stunden')}";

  static m12(amount) => "Weniger als ${amount} verfügbar";

  static m13(minutes) => "${Intl.plural(minutes, zero: '', one: '1 Minute', other: '${minutes} Minuten')}";

  static m14(months) => "${Intl.plural(months, zero: '', one: '1 Monat', other: '${months} Monate')}";

  static m15(notificationDate) => "Benachrichtige ${notificationDate}";

  static m16(seconds) => "${Intl.plural(seconds, zero: '', one: '1 Sekunde', other: '${seconds} Sekunden')}";

  static m17(weeks) => "${Intl.plural(weeks, zero: '', one: '1 Woche', other: '${weeks} Wochen')}";

  static m18(years) => "${Intl.plural(years, zero: '', one: '1 Jahr', other: '${years} Jahre')}";

  static m19(field, from) => "${field} (${from}) deaktiviert";

  static m20(field, to) => "${field} (${to}) aktiviert";

  static m21(field, from, to) => "Änderung von ${field} von ${from} zu ${to}";

  static m22(amount) => "${amount} ist kein gültiger Wert";

  static m23(expirationDate) => "${expirationDate} ist kein gültiges Datum";

  static m24(notificationDate) => "${notificationDate} ist kein gültiger Wert";

  static m25(period) => "${period} ist kein gültiger Zeitraum";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "BATCHES" : MessageLookupByLibrary.simpleMessage("Chargen"),
    "BATCH_CREATED_AT" : m0,
    "BATCH_EXPIRATION_DATE" : MessageLookupByLibrary.simpleMessage("Mindesthaltbarkeitsdatum"),
    "BATCH_GOOD_UNTIL" : m1,
    "BATCH_NOTIFICATION_DATE" : MessageLookupByLibrary.simpleMessage("Benachrichtigungsdatum"),
    "CHANGELOG" : MessageLookupByLibrary.simpleMessage("Changelog"),
    "CHANGELOG_OKAY" : MessageLookupByLibrary.simpleMessage("Okay"),
    "CHANGES" : MessageLookupByLibrary.simpleMessage("Änderungen"),
    "CHANGE_ADDED" : m2,
    "CHANGE_TOOK" : m3,
    "DIALOG_ACCEPT_BUTTON" : MessageLookupByLibrary.simpleMessage("Annehmen"),
    "DIALOG_ADD_TO_BATCH" : MessageLookupByLibrary.simpleMessage("Zur Charge hinzufügen"),
    "DIALOG_CANCEL_BUTTON" : MessageLookupByLibrary.simpleMessage("Abbrechen"),
    "DIALOG_TAKE_FROM_BATCH" : MessageLookupByLibrary.simpleMessage("Von Charge entnehmen"),
    "GENERAL_AMOUNT_AVAILABLE" : m4,
    "GENERAL_DAYS" : m5,
    "GENERAL_DELETE" : MessageLookupByLibrary.simpleMessage("Löschen"),
    "GENERAL_DELETE_CONFIRMATION" : MessageLookupByLibrary.simpleMessage("Wirklich löschen?"),
    "GENERAL_DELETE_CONFIRMATION_NO" : MessageLookupByLibrary.simpleMessage("Nein"),
    "GENERAL_DELETE_CONFIRMATION_YES" : MessageLookupByLibrary.simpleMessage("Ja"),
    "GENERAL_EVENT_IN_MONTHS" : m6,
    "GENERAL_EVENT_IN_OVER_A_YEAR" : MessageLookupByLibrary.simpleMessage("in über einem Jahr"),
    "GENERAL_EVENT_IN_WEEKS" : m7,
    "GENERAL_EVENT_OVER_A_YEAR_AGO" : MessageLookupByLibrary.simpleMessage("vor über einem Jahr"),
    "GENERAL_EVENT_TODAY" : MessageLookupByLibrary.simpleMessage("heute"),
    "GENERAL_EVENT_TOMORROW" : MessageLookupByLibrary.simpleMessage("morgen"),
    "GENERAL_EVENT_YESTERDAY" : MessageLookupByLibrary.simpleMessage("gestern"),
    "GENERAL_EXPIRED_AGO" : m8,
    "GENERAL_EXPIRES_AT" : m9,
    "GENERAL_EXPIRES_IN" : m10,
    "GENERAL_HOURS" : m11,
    "GENERAL_LESS_THAN_AVAILABLE" : m12,
    "GENERAL_MINUTES" : m13,
    "GENERAL_MONTHS" : m14,
    "GENERAL_NOTHING_HERE" : MessageLookupByLibrary.simpleMessage("Hier gibt\'s noch nichts"),
    "GENERAL_NOTIFY_AT" : m15,
    "GENERAL_SAVE" : MessageLookupByLibrary.simpleMessage("Speichern"),
    "GENERAL_SEARCH" : MessageLookupByLibrary.simpleMessage("Suche ..."),
    "GENERAL_SECONDS" : m16,
    "GENERAL_UNIT" : MessageLookupByLibrary.simpleMessage("Einheit"),
    "GENERAL_WARN_INTERVAL" : MessageLookupByLibrary.simpleMessage("Warnzeitraum"),
    "GENERAL_WARN_INTERVAL_HELP" : MessageLookupByLibrary.simpleMessage("Wenn eine Charge ein Mindesthaltbarkeitsdatum besitzt wird Blackout dich diesen Zeitraum vorher benachrichtigen.\nBeispiel: \"P1Y2M3W4D\" entspricht 1 Jahr, 2 Monaten, 3 Wochen und 4 Tagen"),
    "GENERAL_WEEKS" : m17,
    "GENERAL_YEARS" : m18,
    "GROUP_MINIMUM_AMOUNT" : MessageLookupByLibrary.simpleMessage("Mindestmenge"),
    "GROUP_NAME" : MessageLookupByLibrary.simpleMessage("Name der Kategorie"),
    "GROUP_PLURAL_NAME" : MessageLookupByLibrary.simpleMessage("Pluralform des Names"),
    "GROUP_PLURAL_NAME_INFO" : MessageLookupByLibrary.simpleMessage("Wird verwendet, wenn die Menge 0 oder größer als 1 ist."),
    "HOME_ASK_FOR_UPDATES_BODY" : MessageLookupByLibrary.simpleMessage("Es gibt ein Update, möchtest du es installieren?"),
    "HOME_ASK_FOR_UPDATES_DENY" : MessageLookupByLibrary.simpleMessage("Nein"),
    "HOME_ASK_FOR_UPDATES_OKAY" : MessageLookupByLibrary.simpleMessage("Okay"),
    "HOME_ASK_FOR_UPDATES_TITLE" : MessageLookupByLibrary.simpleMessage("Update verfügbar"),
    "HOME_PRODUCTS_AND_GROUPS" : MessageLookupByLibrary.simpleMessage("Produkte und Gruppen"),
    "MAIN_IMPORT_DATABASE" : MessageLookupByLibrary.simpleMessage("Ich hab ein Backup gefunden. Soll ich es importieren oder möchtest du es ignorieren? Wenn du es ignorierst wird es jedoch gelöscht."),
    "MAIN_IMPORT_DATABASE_DESCRIPTION" : MessageLookupByLibrary.simpleMessage("Wenn ich es importieren soll, gib bitte das Passwort für die Datenbank ein.\nDu kannst das Backup auch ignorieren, dann wird es jedoch endgültig gelöscht."),
    "MAIN_IMPORT_DATABASE_ERROR" : MessageLookupByLibrary.simpleMessage("Das Passwort war falsch."),
    "MAIN_IMPORT_DATABASE_IGNORE" : MessageLookupByLibrary.simpleMessage("Ignorieren"),
    "MAIN_IMPORT_DATABASE_IMPORT" : MessageLookupByLibrary.simpleMessage("Importieren"),
    "MAIN_IMPORT_DATABASE_TITLE" : MessageLookupByLibrary.simpleMessage("Ich hab ein Backup gefunden."),
    "MODEL_CHANGE_CREATED" : MessageLookupByLibrary.simpleMessage("Erstellt"),
    "MODEL_CHANGE_FIELD_DISABLED" : m19,
    "MODEL_CHANGE_FIELD_ENABLED" : m20,
    "MODEL_CHANGE_FIELD_MODIFIED" : m21,
    "NO_PRODUCTS" : MessageLookupByLibrary.simpleMessage("Keine Produkte"),
    "PERMISSIONS_STORAGE_PERMANENTLY_BODY" : MessageLookupByLibrary.simpleMessage("Leider hast du mir dauerhaft den Zugriff auf den Speicher entzogen, den brauche ich jedoch für die Datenbank. Ich kann dich aber zu den Einstellungen weiterleiten, wo mir den Zugriff wieder erlauben kannst."),
    "PERMISSIONS_STORAGE_PERMANENTLY_NOPE" : MessageLookupByLibrary.simpleMessage("Nein!"),
    "PERMISSIONS_STORAGE_PERMANENTLY_OKAY" : MessageLookupByLibrary.simpleMessage("Okay"),
    "PERMISSIONS_STORAGE_PERMANENTLY_TITLE" : MessageLookupByLibrary.simpleMessage("Zugriff auf Speicher"),
    "PERMISSIONS_STORAGE_RATIONALE_BODY" : MessageLookupByLibrary.simpleMessage("Ich brauche den Zugriff auf den Speicher für die Datenbank, ohne kann Blackout leider nicht funktionieren"),
    "PERMISSIONS_STORAGE_RATIONALE_OKAY" : MessageLookupByLibrary.simpleMessage("Okay!"),
    "PERMISSIONS_STORAGE_RATIONALE_TITLE" : MessageLookupByLibrary.simpleMessage("Zugriff auf Speicher"),
    "PRODUCTS" : MessageLookupByLibrary.simpleMessage("Produkte"),
    "PRODUCT_DESCRIPTION" : MessageLookupByLibrary.simpleMessage("Beschreibung"),
    "PRODUCT_EAN" : MessageLookupByLibrary.simpleMessage("Produktcode"),
    "SETTINGS_TITLE" : MessageLookupByLibrary.simpleMessage("Einstellungen"),
    "SETTINGS_USERNAME" : MessageLookupByLibrary.simpleMessage("Benutzername"),
    "SETUP_CREATE_HOME" : MessageLookupByLibrary.simpleMessage("Erstellen"),
    "SETUP_CREATE_HOME_CARD_TITLE" : MessageLookupByLibrary.simpleMessage("Wie möchten du deinen Haushalt nennen? Wähle weise, du kannst ihn nicht ändern."),
    "SETUP_FINISH" : MessageLookupByLibrary.simpleMessage("Fertig"),
    "SETUP_HOME_CARD_TITLE" : MessageLookupByLibrary.simpleMessage("Willst du einem bestehenden Haushalt beitreten, oder einen neuen gründen?"),
    "SETUP_HOME_NAME" : MessageLookupByLibrary.simpleMessage("Name deines Haushaltes"),
    "SETUP_JOIN_HOME" : MessageLookupByLibrary.simpleMessage("Beitreten"),
    "SETUP_JOIN_HOME_CARD_TITLE" : MessageLookupByLibrary.simpleMessage("Scanne einfach den QR Code auf einem anderen Gerät um dem Haushalt beizutreten."),
    "SETUP_STEP_CREATE_HOME_DESCRIPTION" : MessageLookupByLibrary.simpleMessage("Wie möchten du deinen Haushalt nennen? Wähle weise, du kannst ihn nicht ändern."),
    "SETUP_STEP_CREATE_HOME_ERROR" : MessageLookupByLibrary.simpleMessage(""),
    "SETUP_STEP_CREATE_HOME_TITLE" : MessageLookupByLibrary.simpleMessage("Haushalt"),
    "SETUP_STEP_CREATE_PASSWORD_DESCRIPTION" : MessageLookupByLibrary.simpleMessage("Bitte gib ein Passwort an, welches für die Verschlüsselung der Datanbank genutzt wird."),
    "SETUP_STEP_CREATE_PASSWORD_ERROR" : MessageLookupByLibrary.simpleMessage("Passwort darf nicht leer sein."),
    "SETUP_STEP_CREATE_PASSWORD_HELP" : MessageLookupByLibrary.simpleMessage("Passwort ist unsicher."),
    "SETUP_STEP_CREATE_PASSWORD_HINT_DESCRIPTION" : MessageLookupByLibrary.simpleMessage("Dein Passwort sollte mindestens 16 Stellen besitzen und die folgenden Zeichen enthalten:\n - Groß- und Kleinbuchstaben\n - Ziffern\n - Sonderzeichen"),
    "SETUP_STEP_CREATE_PASSWORD_HINT_TITLE" : MessageLookupByLibrary.simpleMessage("Passwortrichtlinien"),
    "SETUP_STEP_CREATE_PASSWORD_TITLE" : MessageLookupByLibrary.simpleMessage("Passwort"),
    "SETUP_STEP_CREATE_USERNAME_DESCRIPTION" : MessageLookupByLibrary.simpleMessage("Um deine Aktionen nachzuverfolgen, brauche einen Benutzernamen von dir. Wenn er dir später nicht gefällt, kannst du ihn auch noch ändern."),
    "SETUP_STEP_CREATE_USERNAME_ERROR" : MessageLookupByLibrary.simpleMessage(""),
    "SETUP_STEP_CREATE_USERNAME_TITLE" : MessageLookupByLibrary.simpleMessage("Benutzername"),
    "SETUP_STEP_FINISH_DESCRIPTION" : MessageLookupByLibrary.simpleMessage("Wenn du zufrieden bist, kannst du die Einrichtung jetzt abschließen."),
    "SETUP_STEP_FINISH_DESCRIPTION_ERROR" : MessageLookupByLibrary.simpleMessage("Bitte schau dir nochmal die vorherigen Schritte an."),
    "SETUP_STEP_FINISH_SEND" : MessageLookupByLibrary.simpleMessage("Abschicken"),
    "SETUP_STEP_FINISH_TITLE" : MessageLookupByLibrary.simpleMessage("Fertig"),
    "SETUP_STEP_INTRODUCTION_DESCRIPTION" : MessageLookupByLibrary.simpleMessage("Willkommen bei Blackout.\nWir richten eben die App ein, dann kann es auch schon losgehen."),
    "SETUP_STEP_INTRODUCTION_TITLE" : MessageLookupByLibrary.simpleMessage("Einleitung"),
    "SETUP_USERNAME" : MessageLookupByLibrary.simpleMessage("Benutzername"),
    "SETUP_USERNAME_CARD_TITLE" : MessageLookupByLibrary.simpleMessage("Um deine Aktionen nachzuverfolgen, brauche einen Benutzernamen von dir. Wenn er dir später nicht gefällt, kannst du ihn auch noch ändern."),
    "SETUP_WELCOME_CARD_TITLE" : MessageLookupByLibrary.simpleMessage("Willkommen bei Blackout.\nWir richten eben die App ein, dann kann es auch schon losgehen."),
    "SPEEDDIAL_ADD_TO_BATCH" : MessageLookupByLibrary.simpleMessage("Hinzufügen"),
    "SPEEDDIAL_CREATE_BATCH" : MessageLookupByLibrary.simpleMessage("Charge erstellen"),
    "SPEEDDIAL_CREATE_GROUP" : MessageLookupByLibrary.simpleMessage("Gruppe erstellen"),
    "SPEEDDIAL_CREATE_PRODUCT" : MessageLookupByLibrary.simpleMessage("Produkt erstellen"),
    "SPEEDDIAL_GOTO_HOME" : MessageLookupByLibrary.simpleMessage("Start"),
    "SPEEDDIAL_SCAN" : MessageLookupByLibrary.simpleMessage("Barcode scannen"),
    "SPEEDDIAL_TAKE_FROM_BATCH" : MessageLookupByLibrary.simpleMessage("Entnehmen"),
    "UNITENUM_VOLUME" : MessageLookupByLibrary.simpleMessage("Volumen"),
    "UNITENUM_WEIGHT" : MessageLookupByLibrary.simpleMessage("Gewicht"),
    "WARN_AMOUNT_COULD_NOT_BE_PARSED" : m22,
    "WARN_BATCH_TOO_MUCH" : MessageLookupByLibrary.simpleMessage("Das ist zu viel"),
    "WARN_DESCRIPTION_MUST_NOT_BE_EMPTY" : MessageLookupByLibrary.simpleMessage("Beschreibung darf nicht leer sein"),
    "WARN_EAN_MUST_NOT_BE_EMPTY" : MessageLookupByLibrary.simpleMessage("Produktcode darf nicht leer sein"),
    "WARN_EXPIRATION_DATE_COULD_NOT_BE_PARSED" : m23,
    "WARN_NAME_MUST_NOT_BE_EMPTY" : MessageLookupByLibrary.simpleMessage("Name darf nicht leer sein"),
    "WARN_NOTIFICATION_DATE_COULD_NOT_BE_PARSED" : m24,
    "WARN_PERIOD_COULD_NOT_BE_PARSED" : m25,
    "WARN_PERIOD_MUST_NOT_BE_EMPTY" : MessageLookupByLibrary.simpleMessage("Zeitraum darf nicht leer sein"),
    "WARN_PLURAL_NAME_MUST_NOT_BE_EMPTY" : MessageLookupByLibrary.simpleMessage("Pluralform darf nicht leer sein"),
    "WARN_REFILL_LIMIT_MUST_NOT_BE_EMPTY" : MessageLookupByLibrary.simpleMessage("Mindestmenge darf nicht leer sein"),
    "WARN_SETUP_STEP_CREATE_HOME_ERROR" : MessageLookupByLibrary.simpleMessage("Bitte gib einen Namen an."),
    "WARN_SETUP_STEP_CREATE_USERNAME_ERROR" : MessageLookupByLibrary.simpleMessage("Bitte gib einen Benutzernamen an."),
    "WARN_USERNAME_MUST_NOT_BE_EMPTY" : MessageLookupByLibrary.simpleMessage("Benutzername darf nicht leer sein")
  };
}
