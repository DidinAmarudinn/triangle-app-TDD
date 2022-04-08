String detectTriangle(num sideA, num sideB, num sideC){
  final side = [sideA,sideB,sideC];
  side.sort();
  for(var e in side){
    if(e < 1){
      throw Exception();
    }
  }
  if(side[0] + side[1] <= side[2]){
    throw Exception("This is Inequal Triangle");
  }

  if(side[0] == side[1] && side[0] == side[2]){
    return "Segitiga Sama Sisi";
  }

  if(side[0] == side[1] || side[1] == side[2]){
    return "Segitiga Sama Kaki";
  }

  return "Segitiga Sembarang";
}