import {Component, OnInit} from '@angular/core';
import {FormControl, FormGroup} from '@angular/forms';
import {TokenStorageService} from '../../service/token-storage.service';
import {LoginService} from '../../service/login.service';
import {ActivatedRoute, Router} from '@angular/router';
import {ShareService} from '../../service/share.service';
import Swal from 'sweetalert2';
import {DoctorService} from '../../service/doctor.service';
import {CustomerService} from '../../service/customer.service';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {
  formLogin: FormGroup;
  username = String;
  roles: string[] = [];
  returnUrl: string;
  rememberMe: boolean;
  username1: string;
  role?: string;

  constructor(private tokenStorageService: TokenStorageService,
              private authService: LoginService,
              private router: Router,
              private route: ActivatedRoute,
              private shareService: ShareService,
              private doctorService: DoctorService,
              private customerService: CustomerService) {
    if (this.tokenStorageService.getToken() !== null) {
      Swal.fire({
        title: 'Bạn đã đăng nhập!',
        icon: 'warning',
        confirmButtonText: 'OK',
        confirmButtonColor: '#1977cc',
      });
      this.router.navigateByUrl('/');
    }
  }

  isSignUpActive = false;

  signUp(): void {
    this.isSignUpActive = true;
  }

  signIn(): void {
    this.isSignUpActive = false;
  }

  ngOnInit(): void {
    this.view();
    this.formLogin = new FormGroup({
      username: new FormControl(),
      password: new FormControl(),
      rememberMe: new FormControl(false)
    });

    if (this.tokenStorageService.getToken()) {
      const user = this.tokenStorageService.getUser();
      this.authService.isLoggedIn = true;
      this.roles = this.tokenStorageService.getUser().roles;
      this.username = this.tokenStorageService.getUser().username;
    }
    // this.returnUrl = this.route.snapshot.queryParams[' returnUrl'] || '/login';
  }

  view(): void {
    window.scrollTo(0, 0);
  }

  onSubmit() {
    this.authService.login(this.formLogin.value).subscribe(
      data => {
        if (this.formLogin.value.rememberMe) {
          this.tokenStorageService.saveTokenLocal(data.accessToken);
          this.tokenStorageService.saveUserLocal(data);
        } else {
          this.tokenStorageService.saveTokenSession(data.accessToken);
          this.tokenStorageService.saveUserLocal(data);
        }

        this.authService.isLoggedIn = true;
        this.username = this.tokenStorageService.getUser().username;
        this.roles = this.tokenStorageService.getUser().roles;
        this.formLogin.reset();
        this.router.navigateByUrl(this.returnUrl);
        this.shareService.sendClickEvent();
        Swal.fire({
          title: 'Thông báo',
          text: 'Đăng nhập thành công!',
          icon: 'success',
          confirmButtonColor: '#1977cc',
        });
        this.role = this.tokenStorageService.getUser().roles[0];
        this.username1 = this.tokenStorageService.getUser().username;
        if (this.role === 'ROLE_USER') {
          this.customerService.findTCustomerByEmail(this.username1).subscribe(customer => {
            this.router.navigateByUrl('');
          }, error => {
            this.router.navigateByUrl('/info-customer');
          });
        } else {
          this.router.navigateByUrl('');
        }
      },
      err => {
        this.authService.isLoggedIn = false;
        Swal.fire({
          title: 'Thông báo',
          text: 'Thông tin đăng nhập không chính xác!',
          icon: 'error'
        });
      }
    );
  }
}
