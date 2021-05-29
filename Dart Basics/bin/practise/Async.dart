main(){
  downloadFile();
  print('Kaisa hai bhai :)');
}
void downloadFile()async{
  String data=await fetchFromServer();
  print('Data = $data');
}
Future<String> fetchFromServer(){
  return Future.delayed(Duration(seconds: 4),()=>'Hello Async World');
}
