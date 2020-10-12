class FirebaseColumns {
  String englishName;
  String hindiName;

  FirebaseColumns(this.englishName, this.hindiName);

  void setEnglishName(String englishName) {
    this.englishName = englishName;
  }

  void setHindiName(String hindiName) {
    this.hindiName = hindiName;
  }

  String getEnglishName() {
    return this.englishName;
  }

  String getHindiName() {
    return this.hindiName;
  }
}
