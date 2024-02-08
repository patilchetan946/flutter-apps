class Company {
  int empcount;
  String compName;

  Company(this.empcount, [this.compName = "Biencaps"]);

  void compInfo() {
    print(empcount);
    print(compName);
  }
}

void main() {
  Company obj1 = new Company(100);
  Company obj2 = new Company(200, "Pubmatic");

  obj1.compInfo();
  obj2.compInfo();
}
