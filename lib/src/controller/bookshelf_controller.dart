import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../model/book_shelf_model.dart';

class BookShelfController extends GetxController {
  RxList<Book> books = <Book>[].obs;

  Future<void> fetchBooks(String? id) async {
    final Uri url = Uri.parse("http://10.101.86.210:3000");
    
    try {
      final Map<String, dynamic> requestData = {
        'id': id,
      };

      final response = await http.post(
        Uri.parse("$url/shelfbooks"),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode(requestData),
      );

      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);

        // 가공된 도서 목록을 저장할 리스트
        List<Book> processedBooks = [];

        // 데이터를 가공
        for (var item in data) {
          if (item is Map<String, dynamic>) {
            // 필요한 정보 추출
            String bookTitle = item['book_title'] ?? '';
            String bookCover = item['book_cover'] ?? '';
            String bookReport = item['book_report'] ?? '';

            // Book 객체로 변환 후 리스트에 추가
            processedBooks.add(Book(book_cover: bookCover, book_title: bookTitle, book_report: bookReport));
          } 
        }
        // 가공된 도서 목록을 Observable 리스트에 할당
        books.assignAll(processedBooks);
        print('서버 응답: ${response.body}');
        print('가공된 도서 목록: $processedBooks');
        print('책정보받음: ${books.length} 권');

      } else {
        throw Exception('서버 응답이 200이 아닙니다. 상태 코드: ${response.statusCode}');
      }
    } catch (error) {
      print('데이터 가져오기 실패: $error');
    }
  }
}