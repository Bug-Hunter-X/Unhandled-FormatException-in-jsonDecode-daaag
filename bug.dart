```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // This will throw an error if the JSON is malformed.
      final jsonResponse = jsonDecode(response.body);
      // ... further processing ...
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // This handles both JSON decoding errors and network errors.
    print('Error fetching data: $e');
    // Consider more robust error handling like showing UI feedback
    // to the user instead of just printing to the console
  }
}
```