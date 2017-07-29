package entities;

/**
 * Created by donuric on 7/27/2017.
 */
public class Service {
    private String reg_num;
    public Service(){}
    public Service(String reg_num, double kms_reading, int service_num, String service_type) {
        this.reg_num = reg_num;
        this.kms_reading = kms_reading;
        this.service_num = service_num;
        this.service_type = service_type;
    }
    public String toString(){
        return reg_num+kms_reading+service_num+service_type;
    }

    private double kms_reading;
    private int service_num;
    private String service_type;

    public String getReg_num() {
        return reg_num;
    }

    public void setReg_num(String reg_num) {
        this.reg_num = reg_num;
    }

    public double getKms_reading() {
        return kms_reading;
    }

    public void setKms_reading(double kms_reading) {
        this.kms_reading = kms_reading;
    }

    public int getService_num() {
        return service_num;
    }

    public void setService_num(int service_num) {
        this.service_num = service_num;
    }

    public String getService_type() {
        return service_type;
    }

    public void setService_type(String service_type) {
        this.service_type = service_type;
    }


}
