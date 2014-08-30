/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author duong_000
 */
public class NewClass {
    Person a;

    public Person getA() {
        return a;
    }

    public void setA(Person a) {
        this.a = a;
    }
    
    
    
}


class Person{
    String name;
    int old;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getOld() {
        return old;
    }

    public void setOld(int old) {
        this.old = old;
    }
    
}