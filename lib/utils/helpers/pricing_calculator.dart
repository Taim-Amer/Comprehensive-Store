class TPricingCalculator {

  // Calculate Price based on tax and shipping
  static double calculateTotalPrice(double productPrice, String location){
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippedCost = getShippedCost(location);
    double totalPrice = productPrice + taxAmount + shippedCost;
    return totalPrice;
  }

  static String calculateShippingCost(double productPrice, String location){
    double shippingCost = getShippedCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  static String calculateTax(double productPrice, String location){
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation(String location){
    // Lookup the shipping cost for the given location form a text rate database or API.
    // Return the appropriate tax rate
    return 0.10; // Example tax rate of 10%
  }

  static double getShippedCost(String location){
    // Lookup the shipping cost for the given location using a shipping rate API.
    // Calculate the shipping cost based on various factors like distance, weight, etc ...
    return 5.00; // Example shipping cost of $5
  }

  /// -- Sum all cart values and return total amount
  // static double calculateCartTotal (CartModel cart){
  //    return cart.items.map((e) => e.price).fold(0, (previousPrice, currentPrice) => previousPrice + (currentPrice ?? 0));
  // }
}