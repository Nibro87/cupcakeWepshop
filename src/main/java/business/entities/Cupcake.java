package business.entities;

public class Cupcake {

private String bottom;
private String topping;
private int price;
private int amount;


    public Cupcake(String bottom, String topping, int price, int amount) {
        this.bottom = bottom;
        this.topping = topping;
        this.price = price;
        this.amount = amount;
    }

    public String getBottom() {
        return bottom;
    }

    public void setBottom(String bottom) {
        this.bottom = bottom;
    }

    public String getTopping() {
        return topping;
    }

    public void setTopping(String topping) {
        this.topping = topping;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getAmount() {
        return amount;
    }

    public void seAmount(int amount) {
        this.amount = amount;
    }
}

