class Lotto {
  String? returnValue;
  int? drwtNo1;
  int? drwtNo2;
  int? drwtNo3;
  int? drwtNo4;
  int? drwtNo5;
  int? drwtNo6;
  int? bnusNo;
  int? drwNo;
  String? drwNoDate;

  Lotto({
    this.returnValue = "fail",
    this.drwtNo1 = 0,
    this.drwtNo2 = 0,
    this.drwtNo3 = 0,
    this.drwtNo4 = 0,
    this.drwtNo5 = 0,
    this.drwtNo6 = 0,
    this.bnusNo = 0,
    this.drwNo = 0,
    this.drwNoDate = '',
  });

  factory Lotto.fromJson(Map<String, dynamic> json) {
    return Lotto(
      returnValue: json['returnValue'],
      drwtNo1: json['drwtNo1'],
      drwtNo2: json['drwtNo2'],
      drwtNo3: json['drwtNo3'],
      drwtNo4: json['drwtNo4'],
      drwtNo5: json['drwtNo5'],
      drwtNo6: json['drwtNo6'],
      bnusNo: json['bnusNo'],
      drwNo: json['drwNo'],
      drwNoDate: json['drwNoDate'],
    );
  }
}
