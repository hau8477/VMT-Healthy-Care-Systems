import { Pipe, PipeTransform } from '@angular/core';

@Pipe({
  name: 'vndCurrency'
})
export class VndCurrencyPipe implements PipeTransform {

  transform(value: number): string {
    return value.toLocaleString('vi-VN', { style: 'currency', currency: 'VND' });
  }

}
