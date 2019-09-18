package Entity;


public class Persons {
    int id;
    String name;
    int mobile;
    int country_id;
    int city_id;
    
    public Persons(){
        
    }

    public Persons(int id, String name, int mobile, int country_id, int city_id) {
        this.id = id;
        this.name = name;
        this.mobile = mobile;
        this.country_id = country_id;
        this.city_id = city_id;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public int getMobile() {
        return mobile;
    }

    public int getCountry_id() {
        return country_id;
    }

    public int getCity_id() {
        return city_id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setMobile(int mobile) {
        this.mobile = mobile;
    }

    public void setCountry_id(int country_id) {
        this.country_id = country_id;
    }

    public void setCity_id(int city_id) {
        this.city_id = city_id;
    }
    
}
