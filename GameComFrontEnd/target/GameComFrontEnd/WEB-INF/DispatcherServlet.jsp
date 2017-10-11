<beans xmlns="http://www.springframework.org/schema/beans"
		xmlns:context="http://www.springframework.org/schema/context"
		xmlns:mvc="http://www.springframework.org/schema/mvc" 
		xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
		xsi:schemaLocation="http://www.springframework.org/schema/beans
 							http://www.springframework.org/schema/beans/spring-beans-4.0.xsd
 							http://www.springframework.org/schema/mvc 
        					http://www.springframework.org/schema/mvc/spring-mvc-4.0.xsd					
							http://www.springframework.org/schema/context
							http://www.springframework.org/schema/context/spring-context-4.0.xsd">
  	
		<mvc:annotation-driven></mvc:annotation-driven>
		<context:annotation-config></context:annotation-config> 
		<context:component-scan base-package="com.*"></context:component-scan>  
		
		<context:component-scan base-package="com.controller.*"></context:component-scan> 
 	 	<mvc:resources location="resources" mapping="/resources/*"></mvc:resources>
	    <bean id="viewResolver" class="org.springframework.web.servlet.view.InternalResourceViewResolver">
	 	<property name="prefix">
		<value>/WEB-INF/views/</value>
		</property>
		<property name="suffix"> 
		<value>.jsp</value>
		</property>
		</bean> 
	  	<mvc:default-servlet-handler/>
  		</beans>