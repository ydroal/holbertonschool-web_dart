int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int point_a = 0;
  int point_b = 0;

  teamA.forEach((index, value) {
    if (index == 'Free throws') {
      point_a += (value * 1);
    } else if (index == '2 pointers') {
      point_a += (value * 2);
    } else if (index == '3 pointers') {
      point_a += (value * 3);
    }
  });

  teamB.forEach((index, value) {
    if (index == 'Free throws') {
      point_b += (value * 1);
    } else if (index == '2 pointers') {
       point_b += (value * 2);
    } else if (index == '3 pointers') {
       point_b += (value * 3);
    }
  });

  if (point_a > point_b) return 1;
  else if (point_a < point_b) return 2;
  else return 0;
}
