package com.ispan.eeit69.utils;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.ispan.eeit69.model.member;

@Component
public class MemberValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		return member.class.equals(clazz);	
	}

	@Override
	public void validate(Object target, Errors errors) {
		member member = (member) target;
		// 檢查帳號是否為空
        if (member.getAccount() == null || member.getAccount().trim().isEmpty()) {
            errors.rejectValue("account", "account.empty", "帳號不能為空白");
        }

        // 檢查密碼是否為空
        if (member.getPassword() == null || member.getPassword().trim().isEmpty()) {
            errors.rejectValue("password", "password.empty", "密碼不能為空白");
        }
//		// 新增的信箱驗證規則
//	    String emailPattern = "^[A-Za-z0-9+_.-]+@(.+)$";
//	    if (!Pattern.matches(emailPattern, member.getAccount())) {
//	        errors.rejectValue("email", "email.invalid", "不正確的信箱格式");
//	    }
////        if (member.getUsername().length() < 5) {
////            errors.rejectValue("username", "username.short");
////        }
//        if (member.getPassword().length() < 8) {
//            errors.rejectValue("password", "password.short");
//        }

	}

}
