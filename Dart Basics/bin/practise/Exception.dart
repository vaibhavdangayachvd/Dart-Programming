main(){
   try{
    throw Exception();
    //throw Error();
  }
  on Error catch(e){
    print('Error $e');
  }
  on Exception catch(e){
    print('Exception $e');
  }
  finally{
    print('Finally');
  }
}