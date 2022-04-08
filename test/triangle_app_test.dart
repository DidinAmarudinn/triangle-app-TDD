import 'package:flutter_test/flutter_test.dart';
import 'package:triangle_app_tdd/tirangle_app.dart';

void main() {
  group("Detect the triangle", () {
    test(
      'should throw error when there is side less then 1',
      (){
        expect(() => detectTriangle(-1, 2, 2), throwsA(isA<Exception>()));
        expect(() => detectTriangle(2, -2, 2), throwsA(isA<Exception>()));
        expect(() => detectTriangle(1, 2, -2), throwsA(isA<Exception>()));
      },
    );

    test("Should throw error when side a+b <= c", (){
        expect(()=>detectTriangle(1, 2, 4), throwsA(isA<Exception>()));
    });

    test("Should return 'Segitiga sama sisi' when all sides are equal", () {
      expect(detectTriangle(2, 2, 2), "Segitiga Sama Sisi");
      expect(detectTriangle(1, 2, 2), isNot("Segitiga Sama Sisi"));
    });

    test("Should return 'Segitiga Sama Kaki' when only two sides are equal", (){
      expect(detectTriangle(2, 2, 3), "Segitiga Sama Kaki");
      expect(detectTriangle(3, 2, 2), "Segitiga Sama Kaki");
      expect(detectTriangle(2, 3, 2), "Segitiga Sama Kaki");
      expect(detectTriangle(4, 1, 4), "Segitiga Sama Kaki");
    });

    test("Should return 'Segitiga Sembarang' when no sides are equal" , (){
      expect(detectTriangle(2, 3, 4), "Segitiga Sembarang");
    });

  });
}
