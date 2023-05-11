import {Component, OnInit} from '@angular/core';
import {TokenStorageService} from '../../service/token-storage.service';
import {CustomerService} from '../../service/customer.service';
import {Router} from '@angular/router';
import Swal from 'sweetalert2';

@Component({
  selector: 'app-detail-customer',
  templateUrl: './detail-customer.component.html',
  styleUrls: ['./detail-customer.component.css']
})
export class DetailCustomerComponent implements OnInit {
  role?: string;
  username = '';

  constructor(private tokenStorageService: TokenStorageService,
              private customerService: CustomerService,
              private route: Router) {
    if (this.tokenStorageService.getToken() === null) {
      this.route.navigateByUrl('/login');
      Swal.fire({
        title: 'Bạn cần phải đăng nhập!',
        icon: 'warning',
        confirmButtonText: 'OK',
        confirmButtonColor: '#1977cc',
      });
    } else {
      this.username = this.tokenStorageService.getUser().username;
      this.customerService.findTCustomerByEmail(this.username).subscribe(customer => {
      }, error => {
        this.route.navigateByUrl('/info-customer');
      });
    }
  }

  ngOnInit(): void {
  }

}
