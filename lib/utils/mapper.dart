abstract class Mapper<I, O> {
  const Mapper();

  O map(I item);

  List<O> mapList(List<I> items) {
    return items.map(map).toList();
  }
}
