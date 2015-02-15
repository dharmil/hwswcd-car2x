/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package car2xstation;

/**
 *
 * @author HS
 */
public class NewClass {
    
    public static void main(String args[]) {
        byte[] content=new byte[2];
        
        content[0]=127;
        content[1]=(byte)129;
        
        System.out.println(content[0]+" "+content[1]);
        
    }
    
}
