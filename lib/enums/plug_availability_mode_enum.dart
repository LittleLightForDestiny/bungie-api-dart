class PlugAvailabilityMode {
  PlugAvailabilityMode._();
  static const int Normal = 0;
  static const int UnavailableIfSocketContainsMatchingPlugCategory = 1;
  static const int AvailableIfSocketContainsMatchingPlugCategory = 2;
}
