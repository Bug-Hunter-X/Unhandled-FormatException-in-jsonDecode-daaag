# Unhandled FormatException in Dart's jsonDecode

This repository demonstrates a common error in Dart applications:  unhandled `FormatException` exceptions thrown by `jsonDecode`.  The `bug.dart` file shows the problem, while `bugSolution.dart` provides a corrected version.

The issue arises when attempting to parse an invalid JSON string from an API response or other source.  The `jsonDecode` function throws a `FormatException` if the JSON is malformed, and if not properly handled, it can crash the application.

The solution involves using a `try-catch` block to catch the `FormatException` and handle the error gracefully, preventing app crashes.  The corrected code includes logging for debugging purposes but ideally should provide more user-friendly feedback in a production application.