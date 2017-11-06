package com.niit.GameComBackEnd;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.Config.HiberConfig;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
        ApplicationContext con = new AnnotationConfigApplicationContext(HiberConfig.class);
    }
}
