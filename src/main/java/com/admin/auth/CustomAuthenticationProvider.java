package com.admin.auth;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jmx.export.annotation.ManagedAttribute;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.web.authentication.switchuser.SwitchUserGrantedAuthority;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;

@Component
public class CustomAuthenticationProvider implements AuthenticationProvider{
	@Autowired
    private AdminService adminService;
	@Override
	
    public Authentication authenticate(Authentication authentication ) {
        String name = authentication.getName();
        //System.out.println("Auth name from textfield... "+name);
        String password = authentication.getCredentials().toString();
       
        Admin admin=adminService.getAdminDetails(name);
      
        String school_id=admin.getSchool_id();
        String passwordDB=admin.getPassword();
        String school_name=admin.getSchool_name();
       
        if (name.equals(school_id) && password.equals(passwordDB)) {
        	//System.out.println(school_name);
        
            List<GrantedAuthority> grantedAuths = new ArrayList<GrantedAuthority>();
            grantedAuths.add(new SwitchUserGrantedAuthority("ROLE_USER", authentication));
            Authentication auth = new UsernamePasswordAuthenticationToken(name, password, grantedAuths);
            
            return auth;
        } else {
            return null;
        }
    }
 
    @Override
    public boolean supports(Class<?> authentication) {
        return authentication.equals(UsernamePasswordAuthenticationToken.class);
    }
    
}
