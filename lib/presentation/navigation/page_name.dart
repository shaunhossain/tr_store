enum PagesName{
  ///splash_page
  splashPage(title: "Splash Page",path: "/"),
  productPage(title: "Product Page",path: "/product-page"),
  productDetailsPage(title: "Product Details Page",path: "/product-details-page"),
  cartPage(title: "Cart Page",path: "/cart-page");

  const PagesName({required this.title, required this.path});
  final String title;
  final String path;
}