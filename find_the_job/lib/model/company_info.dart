class CompanyInfo {
  String logoUrl;
  String company;
  String title;
  String location;
  String fullTime;
  List<String> req;

  CompanyInfo(this.logoUrl, this.company, this.title, this.location,
      this.fullTime, this.req);

  static List<CompanyInfo> generatedCompanyList() {
    return [
      CompanyInfo('images/g.png', 'Google', 'Product Design', 'Texax, US',
          'Fulltime', ['aaa,bbb,ccc,ddd']),
      CompanyInfo('images/l.png', 'LinkedIn', 'Software Engineer', 'Australia',
          'Fulltime', ['aaa,bbb,ccc,ddd']),
      CompanyInfo('images/i.png', 'Instagram', 'Manager', '', 'Fulltime',
          ['aaa,bbb,ccc,ddd']),
      CompanyInfo('images/t.png', 'Twitter', 'Product Sales', 'Japan',
          'Fulltime', ['aaa,bbb,ccc,ddd']),
    ];
  }
}
