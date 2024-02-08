class Company {
  int? empcount;
  String compName;

  Company({this.empcount, this.compName = "Deloitte"});

  void compInfo() {
    print(empcount);
    print(compName);
  }
}

void main() {
  Company obj1 = new Company(empcount: 100, compName: "Veritas");
  Company obj2 = new Company(compName: "Pumatic", empcount: 200);

  obj1.compInfo();
  obj2.compInfo();
}
