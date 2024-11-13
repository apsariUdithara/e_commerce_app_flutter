import 'package:intl/intl.dart';
import 'package:flutter_libphonenumber_platform_interface/flutter_libphonenumber_platform_interface.dart';

class EFormatter {
  // Initialize the phone formatter once during app startup
  static Future<void> initPhoneFormatter() async {
    // Corrected to use the platform interface's instance
    await FlutterLibphonenumberPlatform.instance.init();
  }

  // Formats a DateTime object to a string with the format "dd-MM-yyyy"
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat("dd-MM-yyyy").format(date);
  }

  // Formats a double amount to a currency string with the specified locale and symbol
  static String formatCurrency(double amount, {String locale = 'en_US', String symbol = '\$'}) {
    return NumberFormat.currency(locale: locale, symbol: symbol).format(amount);
  }

  // Formats a phone number using flutter_libphonenumber for international support
  static String formatPhoneNumberSync(String phoneNumber, {String isoCode = 'US'}) {
    // Get the country configuration from CountryManager (corrected)
    final countries = CountryManager().countries;
    final country = countries.firstWhere(
          (country) => country.countryCode == isoCode,
      orElse: () => CountryWithPhoneCode(
        phoneCode: '1',
        countryCode: 'US',
        exampleNumberMobileNational: '(123) 456-7890',
        exampleNumberFixedLineNational: '(123) 456-7890',
        phoneMaskMobileNational: '000-000-0000',
        phoneMaskFixedLineNational: '000-000-0000',
        exampleNumberMobileInternational: '+1 123-456-7890',
        exampleNumberFixedLineInternational: '+1 123-456-7890',
        phoneMaskMobileInternational: '+0 000-000-0000',
        phoneMaskFixedLineInternational: '+0 000-000-0000',
        countryName: 'United States',
      ),
    );

    return FlutterLibphonenumberPlatform.instance.formatNumberSync(
      phoneNumber,
      country: country,
      phoneNumberType: PhoneNumberType.mobile,
      phoneNumberFormat: PhoneNumberFormat.international,
      inputContainsCountryCode: phoneNumber.startsWith('+'),
    );
  }

  // Asynchronously formats a phone number and checks if it's valid
  static Future<String> formatPhoneNumber(String phoneNumber, {String isoCode = 'US'}) async {
    final countries = CountryManager().countries;
    final country = countries.firstWhere(
          (country) => country.countryCode == isoCode,
      orElse: () => CountryWithPhoneCode(
        phoneCode: '1',
        countryCode: 'US',
        exampleNumberMobileNational: '(123) 456-7890',
        exampleNumberFixedLineNational: '(123) 456-7890',
        phoneMaskMobileNational: '000-000-0000',
        phoneMaskFixedLineNational: '000-000-0000',
        exampleNumberMobileInternational: '+1 123-456-7890',
        exampleNumberFixedLineInternational: '+1 123-456-7890',
        phoneMaskMobileInternational: '+0 000-000-0000',
        phoneMaskFixedLineInternational: '+0 000-000-0000',
        countryName: 'United States',
      ),
    );

    try {
      final result = await FlutterLibphonenumberPlatform.instance.getFormattedParseResult(
        phoneNumber,
        country,
        phoneNumberType: PhoneNumberType.mobile,
        phoneNumberFormat: PhoneNumberFormat.international,
      );
      return result?.formattedNumber ?? "Invalid number";
    } catch (e) {
      return "Error formatting number";
    }
  }
}
