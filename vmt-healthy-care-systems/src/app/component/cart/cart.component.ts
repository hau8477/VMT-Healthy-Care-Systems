import {Component, OnInit} from '@angular/core';
import {TokenStorageService} from '../../service/token-storage.service';
import {ShareService} from '../../service/share.service';
import {DoctorService} from '../../service/doctor.service';
import {CustomerService} from '../../service/customer.service';
import {Router} from '@angular/router';
import {CartService} from '../../service/cart.service';
import {Cart} from '../../model/cart';
import Swal from 'sweetalert2';

@Component({
  selector: 'app-cart',
  templateUrl: './cart.component.html',
  styleUrls: ['./cart.component.css']
})
export class CartComponent implements OnInit {
  role?: string;
  username?: string;
  id?: number;
  page = 0;
  size = 100;
  carts?: Cart[] = [];
  totalPrices = 0;

  constructor(private tokenStorageService: TokenStorageService,
              private shareService: ShareService,
              private customerService: CustomerService,
              private cartService: CartService,
              private route: Router) {
    this.role = this.tokenStorageService.getUser().roles[0];
    this.username = this.tokenStorageService.getUser().username;
    this.findNameUser();
  }

  ngOnInit(): void {
    this.view();
  }

  findNameUser(): void {
    this.customerService.findTCustomerByEmail(this.username).subscribe(customer => {
      console.log(customer);
      this.id = customer.id;
      this.findAllCart();
    }, error => {
      this.route.navigateByUrl('/info-customer');
    });
  }

  view(): void {
    window.scrollTo(0, 0);
  }

  findAllCart() {
    this.cartService.findAllByCustomerId(this.id, this.size, this.page).subscribe(data => {
      this.carts = data.content;
      this.findTotalPrices();
    }, error => {
      console.log('Chưa có gì nha', error);
    });
  }

  findTotalPrices() {
    this.totalPrices = this.carts.reduce((total, cart) => total + cart.services.prices * cart.quantity, 0);
  }

  deleteCart(nameService: string, cartId: number) {
    const nameServiceSpan = `<span class="text-danger">${nameService}</span>`;
    Swal.fire({
      title: `Bạn có chắc chắn muốn xóa ${nameServiceSpan}`,
      icon: 'warning',
      showDenyButton: true,
      confirmButtonText: 'Có',
      confirmButtonColor: '#1977cc',
      denyButtonText: `Không`,
    }).then((result) => {
      if (result.isConfirmed) {
        this.cartService.updateCart(cartId).subscribe(() => {
          Swal.fire('Xóa thành công', '', 'success');
          this.findAllCart();
          this.findTotalPrices();
          this.view();
        }, error => {
          console.log(error);
          Swal.fire('Xóa không thành công', '', 'error');
        });
      }
    });
  }

}
