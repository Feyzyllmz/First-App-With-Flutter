// ignore_for_file: unused_field

class Sign {
  final String _signName;
  final String _signDate;
  final String _signDetails;
  final String _signSmallImage;
  final String _signBigImage;

  String get signName => _signName;
  String get signDetails => _signDetails;
  String get signDate => _signDate;
  String get signSmallImage => _signSmallImage;
  String get signBigImage => _signBigImage;

  Sign(this._signName, this._signDate, this._signDetails, this._signSmallImage, this._signBigImage);
}
