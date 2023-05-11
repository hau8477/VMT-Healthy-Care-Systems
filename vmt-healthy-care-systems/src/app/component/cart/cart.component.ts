import {Component, OnInit} from '@angular/core';
import {TokenStorageService} from '../../service/token-storage.service';
import {ShareService} from '../../service/share.service';
import {CustomerService} from '../../service/customer.service';
import {Router} from '@angular/router';
import {CartService} from '../../service/cart.service';
import {Cart} from '../../model/cart';
import Swal from 'sweetalert2';
import {render} from 'creditcardpayments/creditCardPayments';

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
  showPayment1 = false;

  constructor(private tokenStorageService: TokenStorageService,
              private shareService: ShareService,
              private customerService: CustomerService,
              private cartService: CartService,
              private route: Router) {
    if (this.tokenStorageService.getToken() === null) {
      this.route.navigateByUrl('/login');
      Swal.fire({
        title: 'Bạn đã cần phải đăng nhập!',
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
    this.view();
    render(
      {
        id: '#payments',
        currency: 'USD',
        value: '1000000',
        onApprove: (details) => {
          console.log(details);

          const listIdCart = this.carts.map(item => item.id);

          this.cartService.payment(listIdCart).subscribe(() => {
            Swal.fire({
              title: 'Thanh toán thành công!',
              icon: 'success',
              confirmButtonText: 'OK',
              confirmButtonColor: '#1977cc',
            });
            this.carts = [];
            this.findAllCart();
            this.findTotalPrices();
            this.view();
            this.customerService.customerChanged();
          }, error => {
            Swal.fire({
              title: 'Thanh toán thất bại!',
              icon: 'error',
              confirmButtonText: 'OK',
              confirmButtonColor: '#1977cc',
            });
          });
        }
      }
    );
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

  showPayment() {
    this.showPayment1 = true;
    this.view();
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
          if (this.carts.length === 1) {
            this.carts = [];
            this.customerService.customerChanged();
          }
          Swal.fire({
            title: 'Xóa thành công!',
            icon: 'success',
            confirmButtonText: 'OK',
            confirmButtonColor: '#1977cc',
          });
          this.customerService.customerChanged();
          this.findAllCart();
          this.findTotalPrices();
          this.view();
        }, error => {
          console.log(error);
          Swal.fire({
            title: 'Xóa không thành công!',
            icon: 'error',
            confirmButtonText: 'OK',
            confirmButtonColor: '#1977cc',
          });
        });
      }
    });
  }

  increaseQuantity(cartId: number) {
    this.cartService.increaseQuantity(cartId).subscribe(success => {
      console.log(success);
      this.findAllCart();
    }, error => {
      Swal.fire({
        title: 'Không thể vượt quá số lượng còn lại',
        icon: 'warning',
        confirmButtonText: 'OK',
        confirmButtonColor: '#1977cc',
      });
    });
  }

  decreaseQuantity(cartId: number) {
    this.cartService.decreaseQuantity(cartId).subscribe(success => {
      console.log(success);
      this.findAllCart();
    }, error => {
      Swal.fire({
        title: 'Số lượng không được nhỏ hơn 1',
        icon: 'warning',
        confirmButtonText: 'OK',
        confirmButtonColor: '#1977cc',
      });
    });
  }

}
