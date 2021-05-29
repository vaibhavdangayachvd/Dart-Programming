main(){
  var addTwoTo=makeAdder(2);
  var addThreeTo=makeAdder(3);
  assert(addTwoTo(3)==5);
  assert(addThreeTo(3)==6);
}
Function makeAdder(int toWhat)=>(int i)=>toWhat+i;