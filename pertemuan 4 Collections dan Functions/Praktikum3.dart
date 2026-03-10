// void main() {
//   var gifts = {
//     'first': 'partridge',
//     'second': 'turtledoves',
//     'fifth': 1,
//   };

//   var nobleGases = {
//     2: 'helium',
//     10: 'neon',
//     18: 2,
//   };

//   print(gifts);
//   print(nobleGases);
// }

void main() {
  var gifts = {
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1,
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
  };

  print(gifts);
  print(nobleGases);

  var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  var mhs2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  gifts['nama'] = 'Daffa Putra Prasetya';
  gifts['nim'] = '244107060088';
  nobleGases[244107060088] = 'Daffa Putra Prasetya';
  mhs1['nama'] = 'Daffa Putra Prasetya';
  mhs1['nim'] = '244107060088';
  mhs2[244107060088] = 'Daffa Putra Prasetya';

  print(gifts);
  print(nobleGases);
  print(mhs1);
  print(mhs2);
}