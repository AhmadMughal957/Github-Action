import 'package:test/test.dart';
import 'package:untitled2/counter.dart';
void main(){
   late Count count;
  setUp(() => {
    count=Count()
  });
  group('Counter class test', () {
    test('Testing for the count value zero when initializing the object', () {

      final val=count.count;
      expect(val, 0);
    });
    test('Testing for the count get increment', () {

      count.increment();
      final val=count.count;
      expect(val, 1);
    });
  });

  test('Reseting the count value to zero', ()  {
    count.reset();
    final val=count.count;
    expect(val, 0);
  });
}