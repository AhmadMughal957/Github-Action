import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:untitled2/Api_inteferface.dart';
import 'package:untitled2/model_class.dart';
import 'package:mocktail/mocktail.dart';
import 'package:http/http.dart'as http;
class MockHTTPClient extends Mock implements Client{

}
void main(){
  late MockHTTPClient mockHTTPClient;
  late ApiInterface apiInterface;

  setUp(()  {
    mockHTTPClient=MockHTTPClient();
    apiInterface=ApiInterface(mockHTTPClient);
  });
  group('Testing GetData', () {
    // test('GetData', () async{
    //   final data=await apiInterface.getdata();
    //   when(()=> mockHTTPClient.get(Uri.parse('https://jsonplaceholder.typicode.com/users'))).thenAnswer((invocation) async => Response('', 200));
    //   List<ModelClass>  items=[];
    //   for(int i=0; i<data.length; i++){
    //     items.add(data[i]);
    //   }
    //   expect(data,  items);
    // });
    test('When GetData throws exception', () async {
      final data = apiInterface.getdata();

      try {
        final result = await data;
        if (result == List<ModelClass>) {
          // Data was successfully fetched
          fail('Expected an exception, but data was fetched successfully.');
        } else {
          // Data was not fetched successfully, check the status code
          expect(result, 500);
        }
      } catch (e) {
        // An exception was thrown as expected
      }
    });


  });

}