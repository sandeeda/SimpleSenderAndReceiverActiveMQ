package org.sandeep.receiver.receiver;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.jms.core.JmsTemplate;
import org.springframework.jms.support.converter.MessageConverter;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class MessageController {
  
	
	@Autowired
	private JmsTemplate jmsTemplate;

	@Autowired
	private MessageConverter messageConverter;
	
    @RequestMapping("/")
    public String home(Model model) {
         return "landing";
    }
    
    @GetMapping("/send")
    public String sendMessage(Model model) {
    	return "index";
    }
    
    @PostMapping("/send")
    public String sendMessage(@RequestParam String message) {
        try {
            Message myMessage = new Message(1990L, message, new Date());
            jmsTemplate.setMessageConverter(messageConverter);
            jmsTemplate.convertAndSend("jms.message.mq.dev", myMessage);
            return "landing";
        } catch (Exception e) {
            return "error";
        }
    }

    @GetMapping("/rcvdMessages")
    public String getMessages(Model model) {
        try {
            List<Message> messages = MessageReceiver.receivedMessages;
            model.addAttribute("messages", messages);
            return "rcvdMessages";
        } catch (Exception e) {
            List<Message> messages = new ArrayList<>();
            Message myMessage = new Message(1990L, "Could not fetch", new Date());
            messages.add(myMessage);
            model.addAttribute("messages", messages);
            return "errorPage";
        }
    }


}