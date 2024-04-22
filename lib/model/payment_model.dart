class PaymentModel {
  String transactionId;
  String customerName;
  String customerId;
  String customerPhone;
  String customerPreviousBalance;
  String totalCost;
  String currentBalance;
  String date;
  String paymentMethod;
  String? paymentStatus;
  String? notes;
  String collectionAgent;

  PaymentModel({
    required this.transactionId,
    required this.customerName,
    required this.customerId,
    required this.customerPhone,
    required this.customerPreviousBalance,
    required this.totalCost,
    required this.currentBalance,
    required this.date,
    required this.paymentMethod,
    this.paymentStatus,
    this.notes,
    required this.collectionAgent,
  });
}
