package com.example.vmthealthycaresystemsbe.controller;

import com.example.vmthealthycaresystemsbe.jwt.JwtUtility;
import com.example.vmthealthycaresystemsbe.payload.request.LoginRequest;
import com.example.vmthealthycaresystemsbe.payload.response.JwtResponse;
import com.example.vmthealthycaresystemsbe.service.IAccountService;
import com.example.vmthealthycaresystemsbe.service.impl.AccountDetails;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequestMapping("api/public")
@CrossOrigin("*")
public class SecurityController {

    @Autowired
    private JwtUtility jwtUtility;
    @Autowired
    private AuthenticationManager authenticationManager;
    @Autowired
    private IAccountService accountService;

    @PostMapping("/login")
    public ResponseEntity<?> authenticateUser(@RequestBody @Valid LoginRequest loginRequest) {
        // Tạo một đối tượng UsernamePasswordAuthenticationToken với username
        // và password được truyền vào từ yêu cầu đăng nhập.
        UsernamePasswordAuthenticationToken usernamePasswordAuthenticationToken = new
                UsernamePasswordAuthenticationToken(loginRequest.getUsername(), loginRequest.getPassword());

        // Gọi phương thức authenticate của đối tượng authenticationManager với
        // usernamePasswordAuthenticationToken làm tham số để xác thực đăng nhập.
        Authentication authentication = authenticationManager.authenticate(usernamePasswordAuthenticationToken);

        // Lưu trữ kết quả xác thực vào SecurityContextHolder để giữ thông tin xác thực của người dùng.
        SecurityContextHolder.getContext().setAuthentication(authentication);

        // Tạo một chuỗi JWT để trả về cho người dùng sau khi xác thực thành công.
        String jwt = jwtUtility.generateJwtToken(loginRequest.getUsername());

        // Lấy thông tin chi tiết về tài khoản người dùng từ SecurityContextHolder, ở đây lấy username
        // và lấy danh sách quyền truy cập (roles) từ đối tượng userDetails.
        AccountDetails userDetails = (AccountDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();

        // Trả về một đối tượng JwtResponse chứa chuỗi JWT, thông tin tài khoản người dùng và danh sách quyền truy cập.
        List<String> roles = userDetails.getAuthorities().stream()
                .map(GrantedAuthority::getAuthority)
                .collect(Collectors.toList());
        return ResponseEntity.ok(
                new JwtResponse(
                        jwt,
                        userDetails.getUsername(),
                        roles)
        );

        //trạng thái HTTP 403 FORBIBDDEN, để cho người dùng biết rằng đăng nhập thất bại và không có token nào được trả về.
    }

//    @PatchMapping("/change-password")
//    public ResponseEntity<List<FieldError>> changePassword(@RequestBody @Valid PasswordDto passwordDto,
//                                                           BindingResult bindingResult) {
//        new PasswordDto().validate(passwordDto, bindingResult);
//        Account account = accountService.findAccountByEmail(passwordDto.getUsername());
//        if (account == null) {
//            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
//        }
//        String password = account.getPassword();
//        String oldPassWord = passwordDto.getOldPassword();
//        Boolean checkOldPassword = accountService.checkOldPassword(oldPassWord, password);
//        if (!checkOldPassword) {
//            bindingResult.rejectValue("oldPassword", "passwordError2", "Mật khẩu cũ sai");
//        }
//        if (bindingResult.hasErrors()) {
//            return new ResponseEntity<>(bindingResult.getFieldErrors(), HttpStatus.BAD_REQUEST);
//        }
//        String hashPassword = BCrypt.hashpw(passwordDto.getPasswordConfirm(), BCrypt.gensalt(12));
//        account.setPassword(hashPassword);
//        accountService.updateAccount(account);
//        return new ResponseEntity<>(HttpStatus.OK);
//    }
}
