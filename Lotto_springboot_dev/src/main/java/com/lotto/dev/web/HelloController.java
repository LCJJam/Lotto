package com.lotto.dev.web;

import com.lotto.dev.web.dto.HelloResponseDto;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController // json 반환 어노테이션 (예전 ResponseBody를 전역에 선언해줌.)
public class HelloController {

    @GetMapping("/hello") // Http Get 요청 ( 예전 RequestMapping(method = RequestMethod.GET )
    public String hello(){
        return "hello";
    }

    @GetMapping("/hello/dto")
    public HelloResponseDto helloDto(@RequestParam("name") String name,
                                     @RequestParam("amount") int amount){
        return new HelloResponseDto(name, amount);
    }
}
