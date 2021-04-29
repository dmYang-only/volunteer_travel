package com.example.dm.volunteer_travel.service;

import com.example.dm.volunteer_travel.core.Result;
import com.example.dm.volunteer_travel.core.ResultGenerator;
import com.example.dm.volunteer_travel.model.User;
import com.example.dm.volunteer_travel.repository.UserRepository;
import com.example.dm.volunteer_travel.util.CookieUitl;
import com.example.dm.volunteer_travel.util.IdGenerator;
import com.example.dm.volunteer_travel.util.Md5Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @Author
 * @Date 2019/4/19
 */
@Service
public class LoginService {

    @Autowired
    private UserRepository userRepository;

    public Result login(User user, HttpServletResponse response) {
        //根据用户名找出user
        User userByUsername = userRepository.findUserByUsername(user.getUsername());
        if (userByUsername == null) {
            return ResultGenerator.genFailResult("用户名错误!");
        } else {
            //再验证密码
            if (user.getPassword().equals(userByUsername.getPassword())) {
//if (new Md5Utils().getMD5(user.getPassword()))
                Cookie cookie = new Cookie("username", user.getUsername());
                cookie.setPath("/");
                cookie.setMaxAge(3600);
                response.addCookie(cookie);
                return ResultGenerator.genSuccessResult();
            } else {
                return ResultGenerator.genFailResult("密码错误!");
            }
        }

    }

    /**
     * 登出
     * @param request
     * @param response
     */
    public void logout(HttpServletRequest request, HttpServletResponse response) {
        //找出用户cookie
        Cookie cookie = CookieUitl.get(request, "username");
        if(cookie != null){
            //清除cookie
            CookieUitl.set(response,"username",null,0);
        }


//        String value = null;
//
//        Cookie[] cookies = request.getCookies();
//        if (cookies == null){
//            System.out.println("error");
//        }else{
//            for (int i = 0;i<cookies.length;i++){
//                if(cookies[i].getName().equals("root")){
//                    value = cookies[i].getValue();
//                }
//            }
//        }
//
//        Cookie cookie = new Cookie("username",value);
//        cookie.setMaxAge(-1);
    }

    /**
     * 注册
     * @param user
     * @return
     */
    public Result register(User user) {
        User userByUsername = userRepository.findUserByUsername(user.getUsername());
        //验证用户名重复
        if(userByUsername != null){
            return ResultGenerator.genFailResult("用户名重复!");
        }
        //Todo 这里有一个事务操作
        user.setId(IdGenerator.id());
        user.setPassword(new Md5Utils().getMD5(user.getPassword()));
        userRepository.save(user);
        return ResultGenerator.genSuccessResult();
    }

    public User findUserByUsername(String username){
        return userRepository.findUserByUsername(username);
    }
}
