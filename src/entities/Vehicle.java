package entities;

/**
 * Created by prajapas on 7/13/2017.
 */
public class Vehicle {
    public Vehicle(){}
    private String reg_num;

    public String getReg_num() {
        return reg_num;
    }

    public void setReg_num(String reg_num) {
        this.reg_num = reg_num;
    }

    public String getOwner_name() {
        return owner_name;
    }

    public void setOwner_name(String owner_name) {
        this.owner_name = owner_name;
    }



    public int getNumbers() {
        return numbers;
    }

    public void setNumbers(int numbers) {
        this.numbers = numbers;
    }

    private String owner_name;
    private String date;

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    private int numbers;
    private String vehicle_model;
    private double price;
    private double tax;

    public Vehicle(String reg_num,String owner_name,String vehicle_model,String date, double price, double tax, int numbers) {
        this.reg_num=reg_num;
        this.owner_name=owner_name;
        this.vehicle_model = vehicle_model;
        this.date=date;
        this.numbers =numbers;
        this.price = price;
        this.tax = tax;
    }

    @Override
    public String toString() {
        return "Vehicle{" +
                "vehicle_model='" + vehicle_model + '\'' +
                ", Reg num =" + reg_num +
                ", Owner name =" + owner_name +
                ", date =" + date +
                ", Numbers=" + numbers +
                ", price=" + price +
                ", tax=" + tax +
                "}\n";
    }

    public String getVehicle_model() {
        return vehicle_model;
    }

    public void setVehicle_model(String vehicle_model) {
        this.vehicle_model = vehicle_model;
    }


    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public double getTax() {
        return tax;
    }

    public void setTax(double tax) {
        this.tax = tax;
    }
}
