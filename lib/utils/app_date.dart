class AppDate {
  static String getRelativeTime(DateTime dateTime) {
    DateTime now = DateTime.now();
    Duration difference = now.difference(dateTime);
    if (difference.inDays > 365) {
      return '${(difference.inDays / 365).round()} years ago';
    } else if (difference.inDays > 30) {
      return '${(difference.inDays / 30).round()} months ago';
    } else if (difference.inDays > 0) {
      return '${difference.inDays} days ago';
    } else if (difference.inHours > 0) {
      return '${difference.inHours} hours ago';
    } else if (difference.inMinutes > 0) {
      return '${difference.inMinutes} minutes ago';
    } else {
      return 'just now';
    }
  }
}
