/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package firstnoel;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.JButton;
import javax.swing.JLabel;

/**
 *
 * @author JulianFabic
 */
public class Clients extends JButton{
 
    
    public Clients(){
        
        
    }
    
    public void setName(String name)
    {
        this.setText(name);
        this.setFont(new java.awt.Font("Goudy Old Style", 1, 14));
        System.out.println("changing text");
    }
}
