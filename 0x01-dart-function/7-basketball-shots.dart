int whoWins(Map<String, int> team1, Map<String, int> team2){
  int sum1 = 0;
  int sum2 = 0;
  team1.forEach((key, score) =>{
      if (key == '2 pointers'){
        score *= 2
      },
      if (key == '3 pointers'){
        score *= 3
      },
      sum1 += score
  });

team2.forEach((key, score) =>{
      if (key == '2 pointers'){
        score *= 2
      },
      if (key == '3 pointers'){
        score *= 3
      },
      sum2 += score
  });

  if (sum1 > sum2){
    return 1;
  } else if (sum1 < sum2){
    return 2;
  } else{
    return 0;
  }
}