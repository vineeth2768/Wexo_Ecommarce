import 'package:equatable/equatable.dart';

class Carousel extends Equatable {
  final String imageUrl;

  const Carousel({
    required this.imageUrl,
  });

  @override
  List<Object?> get props => [imageUrl];

  static List<Carousel> carousels = [
    const Carousel(
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxnnRVEtR5zQ6KBYI_wp1CRJJo5qpgFKoYEQ&usqp=CAU",
    ),
    const Carousel(
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTPVjD3RXjzBi7_ngd-mNJnafW3tUtOQL2Cg&usqp=CAU",
    ),
    const Carousel(
      imageUrl:
          "https://t4.ftcdn.net/jpg/02/27/05/53/360_F_227055357_j6swBYfQd15cO9VXeVF5PzWRxsvZb2DB.jpg",
    ),
  ];
}
