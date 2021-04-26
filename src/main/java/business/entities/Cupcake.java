package business.entities;

public class Cupcake {

private Bottom bottom;
private Topping topping;
private int amount;


    public Cupcake(Topping topping, Bottom bottom,int amount) {
        this.bottom = bottom;
        this.topping = topping;
        this.amount = amount;
    }

<<<<<<< HEAD
    public double getPrice(){
        return (topping.getPrice() + bottom.getPrice()) * amount;
    }
=======
    public int getPrice()
    {
        return (topping.getPrice()+bottom.getPrice())*amount;
    }

>>>>>>> a357f7ff71f3393199b87a76eb987466c54707d1
    public Bottom getBottom() {
        return bottom;
    }

    public void setBottom(Bottom bottom) {
        this.bottom = bottom;
    }

    public Topping getTopping() {
        return topping;
    }

    public void setTopping(Topping topping) {
        this.topping = topping;
    }

    public int getAmount() {
        return amount;
    }

    public void seAmount(int amount) {
        this.amount = amount;
    }
}

