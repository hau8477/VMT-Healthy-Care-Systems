import {Component, OnInit} from '@angular/core';
import {Cart} from '../../model/cart';
import {TokenStorageService} from '../../service/token-storage.service';
import {ShareService} from '../../service/share.service';
import {CustomerService} from '../../service/customer.service';
import {CartService} from '../../service/cart.service';
import {Router} from '@angular/router';
import Swal from 'sweetalert2';
import {ServicePurchased} from '../../model/service-purchased';
import {ServicePurchasedService} from '../../service/service-purchased.service';

@Component({
  selector: 'app-service-purchased',
  templateUrl: './service-purchased.component.html',
  styleUrls: ['./service-purchased.component.css']
})
export class ServicePurchasedComponent implements OnInit {
  name = '';
  role?: string;
  username?: string;
  id?: number;
  page = 0;
  size = 3;
  servicePurchases?: ServicePurchased[] = [];
  totalPages?: number;

  constructor(private tokenStorageService: TokenStorageService,
              private shareService: ShareService,
              private customerService: CustomerService,
              private route: Router,
              private servicePurchasedService: ServicePurchasedService) {
    if (this.tokenStorageService.getToken() === null) {
      this.route.navigateByUrl('/login');
      console.log('.');
      Swal.fire({
        title: 'Bạn cần phải đăng nhập!',
        icon: 'warning',
        confirmButtonText: 'OK',
        confirmButtonColor: '#1977cc',
      });
    }
    this.role = this.tokenStorageService.getUser().roles[0];
    this.username = this.tokenStorageService.getUser().username;
    this.findNameUser();
  }

  ngOnInit(): void {
    this.findAllServicePurchased();
  }

  onSearch() {
    this.page = 0;
    this.servicePurchases = [];
    this.findAllServicePurchased();
  }

  findNameUser(): void {
    this.customerService.findTCustomerByEmail(this.username).subscribe(customer => {
      console.log(customer);
      this.id = customer.id;
      this.findAllServicePurchased();
    }, error => {
      this.route.navigateByUrl('/info-customer');
    });
  }

  findAllServicePurchased() {
    this.servicePurchasedService.findAll(this.id, this.name, this.page, this.size).subscribe(data => {
      this.servicePurchases = data.content;
      this.totalPages = data.totalPages;
    });
  }

  view(): void {
    window.scrollTo(0, 0);
  }

  nextSlide() {
    if (this.page < this.totalPages) {
      this.page++;
    }
    this.findAllServicePurchased();
    this.view();
  }

  prevSlide() {
    if (this.page > 0) {
      this.page--;
    }
    this.findAllServicePurchased();
    this.view();
  }
}
