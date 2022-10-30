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
      CompanyInfo(
          'images/g.png', 'Google', 'Product Design', 'Texax, US', 'Fulltime', [
        'Creative with an Eye for shape and color',
        'Understand Different Material and Production',
        'Creative with an Eye for shape and color',
        'Understand Different Material and Production',
      ]),
      CompanyInfo('images/l.png', 'LinkedIn', 'Software Engineer', 'Australia',
          'Fulltime', [
        'Creative with an Eye for shape and color',
        'Understand Different Material and Production',
        'Creative with an Eye for shape and color',
        'Understand Different Material and Production',
      ]),
      CompanyInfo(
          'images/i.png', 'Instagram', 'Manager', 'Swiden', 'Fulltime', [
        'Creative with an Eye for shape and color',
        'Understand Different Material and Production',
        'Creative with an Eye for shape and color',
        'Understand Different Material and Production',
      ]),
      CompanyInfo(
          'images/t.png', 'Twitter', 'Product Sales', 'Japan', 'Fulltime', [
        'Creative with an Eye for shape and color',
        'Understand Different Material and Production',
        'Creative with an Eye for shape and color',
        'Understand Different Material and Production',
      ]),
    ];
  }
}
