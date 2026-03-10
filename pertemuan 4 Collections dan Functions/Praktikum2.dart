// void main() {
//   var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
//   print(halogens);
// }

void main() {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

  var names1 = <String>{};
  Set<String> names2 = {};
  var names3 = {}; 

  names1.add("Daffa Putra Prasetya");
  names1.addAll({"244107060088"});

  names2.add("Daffa Putra Prasetya");
  names2.addAll({"244107060088"});

  names3["nama"] = "Daffa Putra Prasetya";
  names3["nim"] = "244107060088";

  print(names1);
  print(names2);
  print(names3);
}