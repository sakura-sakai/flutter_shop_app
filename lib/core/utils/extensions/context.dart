part of utils;

extension BuildContextExt on BuildContext {

  /// Read the provider without listening to it
  T read<T>(ProviderBase<T> provider) {
    return ProviderScope.containerOf(this, listen: false).read(provider);
  }
}