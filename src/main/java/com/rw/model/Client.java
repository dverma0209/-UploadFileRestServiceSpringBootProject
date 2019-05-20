package com.rw.model;

public class Client {

    private int clientNo;
    private String name;
    private String ssn;

    public Client() {

    }

    public Client(int clientNo, String name, String ssn) {
        this.clientNo = clientNo;
        this.name = name;
        this.ssn = ssn;
    }

    public int getClientNo() {
        return clientNo;
    }

    public void setClientNo(int clientNo) {
        this.clientNo = clientNo;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSsn() {
        return ssn;
    }

    public void setSsn(String ssn) {
        this.ssn = ssn;
    }

}