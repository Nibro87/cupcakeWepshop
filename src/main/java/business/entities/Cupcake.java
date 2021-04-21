package business.entities;

public class Cupcake {

private String bottom;
private String topping;
private int price;


public Cupcake(){

}

    public Cupcake(String bottom, String topping, int price) {
        this.bottom = bottom;
        this.topping = topping;
        this.price = price;
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
}
