package com.works.vetrestapi.services;


import com.works.vetrestapi.entities.Log;
import com.works.vetrestapi.entities.Role;
import com.works.vetrestapi.entities.User;
import com.works.vetrestapi.repositories.LogRepository;
import com.works.vetrestapi.repositories.UserRepository;
import org.springframework.security.authentication.AuthenticationServiceException;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.logout.LogoutSuccessHandler;
import org.springframework.security.web.authentication.logout.SimpleUrlLogoutSuccessHandler;
import org.springframework.stereotype.Service;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.transaction.Transactional;
import java.io.IOException;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;


@Service
@Transactional
public class UserService extends SimpleUrlLogoutSuccessHandler implements UserDetailsService, LogoutSuccessHandler {
    final UserRepository uRepo;
    final LogRepository lRepo;

    public UserService(UserRepository uRepo, LogRepository lRepo) {
        this.uRepo = uRepo;

        this.lRepo = lRepo;
    }
    //security login
    public UserDetails loadUserByUsername(String email){
        UserDetails userDetails=null;
        Optional<User> oUser= uRepo.findByEmailEqualsAllIgnoreCase(email);
        if(oUser.isPresent()){
            User us=oUser.get();
            userDetails =new org.springframework.security.core.userdetails.User(
                    us.getEmail(),
                    us.getPassword(),
                    us.isEnabled(),
                    us.isTokenExpired(),
                    true,
                    true,
                    getAuthorities(us.getRoles()));
        }else{
            throw new UsernameNotFoundException("Kullanıcı adı ya da şifre hatalı");
        }
        return userDetails;
    }



    private List<GrantedAuthority> getAuthorities (List<Role> roles) {
        List<GrantedAuthority> authorities = new ArrayList<>();
        for (Role role : roles) {
            authorities.add(new SimpleGrantedAuthority( role.getName() ));
        }
        return authorities;
    }




    public User register(User us) throws AuthenticationServiceException {

        Optional<User> uOpt= uRepo.findByEmailEqualsAllIgnoreCase(us.getEmail());
        if(uOpt.isPresent()){
            throw new AuthenticationServiceException("Bu kullanıcı daha önce kayıtlı");
        }

        us.setPassword(encoder().encode(us.getPassword()));


        return uRepo.save(us);
    }


    public PasswordEncoder encoder() {
        return new BCryptPasswordEncoder();
    }

    @Override
    public void onLogoutSuccess(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Authentication authentication) throws IOException, ServletException {
        // final String refererUrl=httpServletRequest.getHeader("Referer");
        // super.onLogoutSuccess(httpServletRequest,httpServletResponse,authentication);
        System.out.println("on logout call");
        httpServletResponse.sendRedirect(httpServletRequest.getContextPath()+"/login");
    }



    //user info
    public void info(HttpServletRequest req, HttpServletResponse res, Log log) throws IOException{
        Authentication aut= SecurityContextHolder.getContext().getAuthentication();
        String email="";
        try {
            email=aut.getName(); //username
        }catch (Exception e){

        }
        if(email != null){
            System.out.println(email);
        }

        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder
                .getRequestAttributes()).getRequest();
        String ip = request.getRemoteAddr();
        System.out.println("ip " + ip);

        String session = req.getSession().getId();
        System.out.println("session :" + session);

        Optional<User> user = uRepo.findByEmailEqualsAllIgnoreCase(email);
        if (user.isPresent()) {
            log.setLname(user.get().getFirstName());
            log.setLsurname(user.get().getLastName());
            String roles = "";
            for (Role item : user.get().getRoles()) {
                roles += item.getName() + ", ";
            }
            if (roles.length() > 0) {
                roles = roles.substring(0, roles.length() - 2);
            }
            log.setLroles(roles);
        }
        log.setLemail(email);
        log.setLsessionId(session);
        log.setLIp(ip);

        log.setLUrl(req.getRequestURI());
        log.setLDate(LocalDateTime.now());

        lRepo.save(log);

        System.out.println(log);

    }
}
