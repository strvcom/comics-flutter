import 'package:flutter/widgets.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class ShimmeringPagingController<PageKeyType, ItemType> extends PagingController<PageKeyType, ItemType> {
  final PageKeyType firstPageKey;
  final int pageSize;
  var emptyList = [];

  ShimmeringPagingController({@required this.firstPageKey, @required this.pageSize})
      : super(firstPageKey: firstPageKey) {
    emptyList = List.filled(pageSize, null);
  }

  addLoadingShimmers() {
    appendPage(List.filled(pageSize, null), value.nextPageKey);
  }

  appendPageRemovingShimmers(List<ItemType> newItems, PageKeyType newNextPageKey) {
    final previousItems = value.itemList ?? [];
    previousItems.removeWhere((ItemType p) => p == null);
    var itemList = previousItems + newItems;
    if (firstPageKey == nextPageKey) {
      itemList = newItems;
    }

    value = PagingState<PageKeyType, ItemType>(
      itemList: itemList,
      error: null,
      nextPageKey: newNextPageKey,
    );
  }

  appendLastPageRemovingShimmers(List<ItemType> newItems) {
    appendPageRemovingShimmers(newItems, null);
  }
}
