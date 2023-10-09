class TransactionModel {
  String? TransactionCategory;
  String? date;
  int? amount;
  String? symbol;

  TransactionModel(
      {this.TransactionCategory, this.date, this.amount, this.symbol});

  List<TransactionModel> getDummyData() {
    return [
      TransactionModel(
        TransactionCategory: "Top Up",
        date: "02/10/2023",
        amount: 1000000,
        symbol: "+",
      ),
      TransactionModel(
        TransactionCategory: "Makanan",
        date: "05/10/2023",
        amount: 100000,
        symbol: "-",
      ),
      TransactionModel(
        TransactionCategory: "Games",
        date: "07/10/2023",
        amount: 200000,
        symbol: "-",
      ),
      TransactionModel(
        TransactionCategory: "Sent Money",
        date: "08/10/2023",
        amount: 500000,
        symbol: "-",
      ),
    ];
  }
}
