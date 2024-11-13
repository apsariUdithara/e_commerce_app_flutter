class EPricingCalculator{
  //// --calculate price based on ta and shipping
  static double calculateTotalPrice(double productPrice,String location){
    double taxRate=getTaxRateForLocation(location);
    double taxAmount=productPrice*taxRate;

    double shippingCost=getShippingCost(location);

    double totalPrice=productPrice+taxAmount+shippingCost;
    return totalPrice;
  }


  //// --calculate shipping cost
static String calculateShippingCost(double productPrice,String location){
    double shippingCost=getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  //// -- calculate tax amount
  static String calculateTaxAmount(double productPrice,String location){
    double taxRate=getTaxRateForLocation(location);
    double taxAmount=productPrice*taxRate;
    return taxAmount.toStringAsFixed(2);
  }


  static double getTaxRateForLocation(String location) {
    //lookup tax rate for location from a tax rate database or api
    //return the appropriate tax rate
    return 0.10;
  }

  static double getShippingCost(String location) {
    //lookup shipping cost for location from a shipping cost database or api
    //return the appropriate shipping cost
    return 5.0;
  }

  //// -- Sum all cart values and return total amount
// static double calculateTotalCartPrice(CartModel cart){
// return cart.items.map((e) => e.price).fold(0,(previosPrice,currentPrice)=>previosPrice+(currentPrice??0);
}