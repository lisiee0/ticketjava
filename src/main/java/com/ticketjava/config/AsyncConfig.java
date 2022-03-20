package com.ticketjava.config;

import java.util.concurrent.Executor;

import org.springframework.context.annotation.Configuration;
import org.springframework.scheduling.annotation.AsyncConfigurerSupport;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;


@Configuration
@EnableAsync
public class AsyncConfig extends AsyncConfigurerSupport {

    @Override
    public Executor getAsyncExecutor() {	
    	
        ThreadPoolTaskExecutor executor = new ThreadPoolTaskExecutor(); // 비동기 스레드 설정
        executor.setCorePoolSize(2);	//  실행 대기 스레드 수
        executor.setMaxPoolSize(10);	// 최대 동시 동작 스레드 수
        executor.setQueueCapacity(500);	// 최대를 넘어서는 스레드의 대기열
        executor.setThreadNamePrefix("email-async-");
        executor.initialize();
        return executor;
    }
}