class BankNotes {
  Map<String, int> bankNotes = {
    '100': 50,
    '200': 100,
    '2000': 100,
    '500': 5,
    '1000': 10,
    '5000': 10,
  };
  BankNotes();
  BankNotes.given() {
    bankNotes.updateAll((key, value) => 0);
  }
}
