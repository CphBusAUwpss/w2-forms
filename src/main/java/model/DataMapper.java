/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author tha
 */
public class DataMapper {
    public String getData(String data){
        if(data.equals("Hans")){
            return "Hello Hans";
        }
        return "Unknown";
    }
}
