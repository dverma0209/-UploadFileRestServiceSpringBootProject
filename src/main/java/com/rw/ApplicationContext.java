package com.rw;
/*package com.classifieds;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.ImportResource;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

import com.classifieds.dao.impl.UserDaoImpl;
import com.classifieds.delegate.LoginDelegate;
import com.classifieds.service.impl.UserServiceImpl;

@ImportResource("springBeanConfiguration.xml")
@Configuration
public class ApplicationContext {
    @Bean
    public LoginDelegate loginDelegate() {
        return new LoginDelegate(userService());
    }
    
    @Bean
    public UserServiceImpl userService() {
        return new UserServiceImpl(userDao());
    }
    
    @Bean
    public UserDaoImpl userDao() {
        return new UserDaoImpl(dataSource());
    }
    
    @Bean
    public DriverManagerDataSource dataSource() {
        return new DriverManagerDataSource(userService());
    }

    @Bean
    public XMLConverter XMLConverter() {
        XMLConverter convertor = new XMLConverter();
        CastorMarshaller marshaller = castorMarshaller();
        convertor.setMarshaller(marshaller);
        convertor.setUnmarshaller(marshaller);
    }
}*/