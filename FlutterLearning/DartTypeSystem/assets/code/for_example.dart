// void main() {
//   /// vòng for cơ bản, theo index
//   for (int i = 0; i < 10; i = i + 1) {
//     print('i= $i');
//     // sẽ in ra giá trị của i từ 0 -> 9
//     /*
//       i= 0
//       i= 1
//       i= 2
//       i= 3
//       i= 4
//       i= 5
//       i= 6
//       i= 7
//       i= 8
//       i= 9
//     */
//   }
// }

// void main(List<String> args) {
//   List ints = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
//   /// cũng là vòng lặp nhưng lặp qua từng giá trị trong 1 mảng
//   for (int i in ints) {
//     print("i = $i"); 
//     // sẽ in ra giá trị của i 0 -> 9
//     /*
//       i = 0
//       i = 1
//       i = 2
//       i = 3
//       i = 4
//       i = 5
//       i = 6
//       i = 7
//       i = 8
//       i = 9
//     */
//   }
// }


// void main(List<String> args) {
//   int x = 0;
//   // trong khi 1 điều kiện đúng, thực thi 1 khối lệnh
//   while (x < 10){
//     x++;
//     print("x -> $x");
//     // sẽ in ra các giá trị từ 1 -> 10,
//     // khi x = 10, while sẽ dừng, vì điều kiện để chạy while là x < 10
//   }
// }

void main(List<String> args) {
  int x = 0;
  /// thực thi khối lệnh trước khi kiểm tra điều kiện trong while
  do {
    x++;
    print("x -> $x"); // sẽ in ra giá trị của x từ 1 -> 10
  } while (x > 0 && x < 10);  
}