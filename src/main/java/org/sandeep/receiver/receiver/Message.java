package org.sandeep.receiver.receiver;

import java.util.Date;
import java.util.concurrent.ThreadLocalRandom;

public class Message {

	
   private Long id;
   
   private String content;
   
   private Date date;
	  
	public Message() {
	super();
    }
	
	public Message(Long id, String content, Date date) {
	super();
    this.id = ThreadLocalRandom.current().nextLong(Long.MAX_VALUE);
	this.content = content;
	this.date = date;
    }
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	  
	@Override
    public String toString() {
        return "Message [id=" + id + ", content=" + content + ", date=" + date + "]";
    }
	    
	
}
