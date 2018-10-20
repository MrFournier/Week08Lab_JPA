/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

/**
 *
 * @author 766375
 */
public class Note {
    
    // Attributes
    public int noteid;
    public java.util.Date dateCreated;
    public String content;
    
    public Note() {
        
    }
    
    public Note(int noteid, String content, java.util.Date dateCreated) {
        this.noteid = noteid;
        this.content = content;
        this.dateCreated = dateCreated;
    }

    public String getContent() {
        return content;
    }
    
    public void setContent(String content) {
        this.content = content;
    }
    
    public java.util.Date getDateCreated() {
        return dateCreated;
    }
    
    public int getNoteId() {
        return noteid;
    }
}
