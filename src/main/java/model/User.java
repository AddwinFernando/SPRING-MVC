package model;

public class User {
    private String name;
    private String password;
    private String gender;

//    public User(String name, String password, String gender, String language, String country) {
//        this.name = name;
//        this.password = password;
//        this.gender = gender;
//        this.language = language;
//        this.country = country;
//    }

    private String language;

    private String country;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }
}
