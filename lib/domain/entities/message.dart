enum FromWho { mine, hers }

class Message {
  final String text;
  final FromWho who;
  final String? imageURL;

  const Message({
    this.imageURL,
    required this.text,
    required this.who,
  });
}
