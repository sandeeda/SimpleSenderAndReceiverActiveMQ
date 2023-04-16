package org.sandeep.receiver.receiver;

import java.util.ArrayList;

import org.springframework.jms.annotation.JmsListener;
import org.springframework.stereotype.Component;

@Component
public class MessageReceiver{

	static ArrayList<Message> receivedMessages = new ArrayList<>();

	 @JmsListener(destination = "jms.message.mq.dev")
	 public void receiveMessage(Message msg){
	    	System.out.println("Received " + msg );
	    	receivedMessages.add(msg);

	    }	
}
