
class TPricingCalculator {

  // Calculate Price based on tax and shipping
  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  // Calculate shipping cost
  static String calculateShippingCost(double productPrice, String location){
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  // Calculate tax
  static String calculateTax(double productPrice, String location){
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation(String location){
    switch(location) {
      case 'USA':
        return 0.08; // 8% tax rate for USA
      case 'Canada':
        return 0.13; // 13% tax rate for Canada
      default:
        return 0.0; // default tax rate
    }
  }

  static double getShippingCost(String location){
    switch(location) {
      case 'USA':
        return 10.0; // $10 shipping cost for USA
      case 'Canada':
        return 15.0; // $15 shipping cost for Canada
      default:
        return 0.0; // default shipping cost
    }
  }
  //Sum all cart values and return total amount
  // static double calculateCartTotal(CartModel cart) {
  //    return cart.items.map((e) => e.price).fold(0, (previousPrice, currentPrice) => previousPrice + (currentPrice ?? 0));
  // }
}