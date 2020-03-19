package ru.javawebinar.topjava.service.jdbc;

import org.junit.Test;
import org.springframework.test.context.ActiveProfiles;
import ru.javawebinar.topjava.service.AbstractUserServiceTest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;

import static ru.javawebinar.topjava.Profiles.JDBC;

@ActiveProfiles(JDBC)
public class JdbcUserServiceTest extends AbstractUserServiceTest {

    @Autowired private Environment environment;

    @Test
    public void test(){
        for(String profile : environment.getActiveProfiles()){
            System.out.println(">>>>>>"+profile);
        }
    }
}