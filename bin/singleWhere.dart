String singleWhere(Iterable<String> items, String startWith, String contains) {
  return items.singleWhere((element) =>
      element.startsWith(startWith) ? element.contains(contains) : false);
}
