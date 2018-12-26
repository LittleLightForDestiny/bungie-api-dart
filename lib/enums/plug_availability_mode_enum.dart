class PlugAvailabilityMode {
  PlugAvailabilityMode._();
  static const int normal = 0;
  static const int unavailableIfSocketContainsMatchingPlugCategory = 1;
  static const int availableIfSocketContainsMatchingPlugCategory = 2;
}