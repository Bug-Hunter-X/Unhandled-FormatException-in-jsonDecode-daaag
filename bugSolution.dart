```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        final jsonResponse = jsonDecode(response.body);
        // ... further processing ...
      } on FormatException catch (e) {
        print('Invalid JSON format: $e');
        // Handle the error appropriately (e.g., show error message, retry)
      }
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error fetching data: $e');
    // Implement proper error handling for production applications
  }
}
```