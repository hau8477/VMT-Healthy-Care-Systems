import {Component, OnInit} from '@angular/core';
import {TokenStorageService} from '../service/token-storage.service';
import {ShareService} from '../service/share.service';
import {DoctorService} from '../service/doctor.service';
import Swal from 'sweetalert2';
import {Router} from '@angular/router';
import {CustomerService} from '../service/customer.service';
import {Subscription} from 'rxjs';

@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.css']
})
export class HeaderComponent implements OnInit {
  role?: string;
  username?: string;
  isLoggedIn = false;
  img?: string;
  name?: string;
  customerChangedSubscription?: Subscription;

  constructor(private tokenStorageService: TokenStorageService,
              private shareService: ShareService,
              private doctorService: DoctorService,
              private customerService: CustomerService,
              private route: Router) {
    this.shareService.getClickEvent().subscribe(() => {
      this.loadHeader();
    });
    this.findNameUser();
    this.customerChangedSubscription = this.customerService.customerChanged$.subscribe(() => {
      this.loadHeader();
    });
  }

  ngOnInit(): void {
    this.loadHeader();
  }

  view(): void {
    window.scrollTo(0, 0);
  }

  loadHeader(): void {
    if (this.tokenStorageService.getToken()) {
      this.role = this.tokenStorageService.getUser().roles[0];
      this.username = this.tokenStorageService.getUser().username;
    }
    this.isLoggedIn = this.username != null;
    this.findNameUser();
  }

  findNameUser(): void {
    if (this.role === 'ROLE_ADMIN') {
      this.doctorService.findTDoctorByEmail(this.username).subscribe(doctor => {
        console.log(doctor);
        this.name = doctor.name;
        this.img = doctor.img;
      });
    } else if (this.role === 'ROLE_USER') {
      this.customerService.findTCustomerByEmail(this.username).subscribe(customer => {
        console.log(customer);
        this.name = customer.name;
      });
    }
  }

  logOut() {
    this.role = null;
    this.tokenStorageService.signOut();
    Swal.fire({
      title: 'Thông báo',
      text: 'Đăng xuất thành công!',
      icon: 'success'
    });
    this.username = null;
    this.isLoggedIn = false;
    this.name = null;
    this.view();
    this.route.navigateByUrl('/login');
    this.ngOnInit();
  }
}
