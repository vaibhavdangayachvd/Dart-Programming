main(){
  print('Main Start');
  printFile();
  printFileThen();
  print('Main end');
}
printFileThen(){
  Future<String> data= downloadFile();
  data.then((value)=>print('File then content is $value'));
}
printFile() async{
  print('File then content is '+await downloadFile());
}
Future<String> downloadFile() =>
    Future.delayed(Duration(seconds: 5), () => 'Dart is amazing');