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
      CompanyInfo('images/5.png', 'Google', 'Product Design',
          '417, Marian plaza, Texax, US', 'Fulltime', ['aaa'])
    ];
  }
}
