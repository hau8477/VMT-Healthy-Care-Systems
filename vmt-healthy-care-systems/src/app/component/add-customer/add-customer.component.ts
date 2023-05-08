import {Component, OnInit} from '@angular/core';
import {TokenStorageService} from '../../service/token-storage.service';
import {FormControl, FormGroup, Validators} from '@angular/forms';
import {CustomerService} from '../../service/customer.service';

@Component({
  selector: 'app-add-customer',
  templateUrl: './add-customer.component.html',
  styleUrls: ['./add-customer.component.css']
})
export class AddCustomerComponent implements OnInit {
  role?: string;
  username?: string;
  formCreateCustomer: FormGroup;
  selectedGender = 4;

  constructor(private tokenStorageService: TokenStorageService,
              private customerService: CustomerService) {
  }

  ngOnInit(): void {
    this.role = this.tokenStorageService.getUser().roles[0];
    this.username = this.tokenStorageService.getUser().username;
    window.scrollTo(0, 0);
    this.initForm();
  }

  initForm() {
    this.formCreateCustomer = new FormGroup({
      name: new FormControl('', [Validators.required]),
      dateOfBirth: new FormControl('', [Validators.required]),
      address: new FormControl('', [Validators.required]),
      phone: new FormControl('', [Validators.required]),
      idCard: new FormControl('', [Validators.required]),
      email: new FormControl(this.username, [Validators.required]),
      gender: new FormControl('', [Validators.required]),
      flagDelete: new FormControl(false)
    });
  }

  logGender() {
    console.log(this.formCreateCustomer.value);
  }

  onSubmit() {
    console.log(this.formCreateCustomer.value);
    this.customerService.saveCustomer(this.formCreateCustomer.value).subscribe(data => {
      console.log(data);
    }, error => {
      for (const err of error.error) {
        if (err) {
          const field = err.field;
          const errorMessage = err.defaultMessage;
          const control = this.formCreateCustomer.controls[field];
          const errors = control.errors ? control.errors.errorBE : [];
          errors.push(errorMessage);
          control.setErrors({errorBE: errors});
        }
      }
    });
  }
}