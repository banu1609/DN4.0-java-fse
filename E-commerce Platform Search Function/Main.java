public class Main {
    public static void main(String[] args) {
        Product[] products = {
            new Product(103, "Laptop", "Electronics"),
            new Product(101, "Phone", "Electronics"),
            new Product(105, "Shoes", "Apparel"),
            new Product(102, "Book", "Education")
        };

        Product result1 = SearchUtils.linearSearch(products, 105);
        System.out.println(result1 != null ? result1 : "Product not found (Linear)");

        SearchUtils.sortProductsById(products);
        Product result2 = SearchUtils.binarySearch(products, 105);
        System.out.println(result2 != null ? result2 : "Product not found (Binary)");
    }
}
