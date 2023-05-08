package com.example.vmthealthycaresystemsbe.dto;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

public class CustomerDTO {
    private Long id;
    @NotBlank(message = "Vui lòng nhập họ và tên. ")
    @NotNull(message = "Phải nhập họ và tên. ")
    @Pattern(regexp = "^[AÁÀẢÃẠĂẮẰẲẴẶÂẤẦẨẪẬBCDĐEÉÈẺẼẸÊẾỀỂỄỆFGHIÍÌỈĨỊJKLMNOÓÒỎÕỌÔỐỒỔỖỘƠỚỜỞỠỢPQRSTUÚÙỦŨỤƯỨỪỬỮỰVWXYÝỲỶỸỴZ][a-zA-Z_ÀÁÂÃÈÉÊÌÍÒÓÔÕÙÚĂĐĨŨƠàáâãèéêìíòóôõùúăđĩũơƯĂẠẢẤẦẨẪẬẮẰẲẴẶẸẺẼỀỀỂưăạảấầẩẫậắằẳẵặẹẻẽềềểỄỆỈỊỌỎỐỒỔỖỘỚỜỞỠỢỤỦỨỪễệỉịọỏốồổỗộớờởỡợụủứừỬỮỰỲỴÝỶỸửữựỳỵỷỹ\\s]+$",
            message =
                    "Họ và tên không được chứa kí tự đặc biệt, " +
                            "chữ cái đầu tiên phải viết hoa. ")
    private String name;

    @NotBlank(message = "Vui lòng nhập ngày sinh. ")
    @NotNull(message = "Phải nhập ngày sinh. ")
    @Pattern(regexp = "^(\\d{4})-(0[1-9]|1[0-2])-(0[1-9]|[12]\\d|3[01])$", message = "Ngày sinh không đúng định dạng. ")
    private String dateOfBirth;

    private boolean gender;

    @NotBlank(message = "Vui lòng nhập CMND/CCCD. ")
    @NotNull(message = "Phải nhập CMND/CCCD. ")
    @Pattern(regexp = "^[0-9]{9}|[0-9]{12}$", message = "CMND/CCCD không đúng định dạng. ")
    private String idCard;

    @NotBlank(message = "Vui lòng nhập số điện thoại. ")
    @NotNull(message = "Phải nhập số điện thoại. ")
    @Pattern(regexp = "^(0|\\+84)[1-9]\\d{8}$", message = "Số điện thoại không đúng định dạng. ")
    private String phone;

    @Size(max = 45, message = "Địa chỉ email quá dài. ")
    @NotBlank(message = "Vui lòng nhập địa chỉ email. ")
    @NotNull(message = "Phải nhập địa chỉ email. ")
    @Pattern(regexp = "^\\p{Lu}\\p{Ll}+(\\s\\p{Lu}\\p{Ll}+)*|(?=.{1,64}@)[A-Za-z0-9_-]+(\\.[A-Za-z0-9_-]+)*@[^-][A-Za-z0-9-]+(\\.[A-Za-z0-9-]+)*(\\.[A-Za-z]{2,})$",
    message = "Địa chỉ email không đúng định dạng. ")
    private String email;

    @Size(max = 60, message = "Địa chỉ quá dài. ")
    @NotBlank(message = "Vui lòng nhập địa chỉ. ")
    @NotNull(message = "Phải nhập địa chỉ. ")
    private String address;
    private boolean flagDelete;

    public CustomerDTO() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(String dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public boolean isGender() {
        return gender;
    }

    public void setGender(boolean gender) {
        this.gender = gender;
    }

    public String getIdCard() {
        return idCard;
    }

    public void setIdCard(String idCard) {
        this.idCard = idCard;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public boolean isFlagDelete() {
        return flagDelete;
    }

    public void setFlagDelete(boolean flagDelete) {
        this.flagDelete = flagDelete;
    }
}
