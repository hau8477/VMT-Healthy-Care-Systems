import {Customer} from './customer';
import {Services} from './services';

export interface ServicePurchased {
  id?: number;
  customer?: Customer;
  services?: Services;
  quantity?: number;
  flagUse?: boolean;
  qr?: string;
  datePurchase?: string;
  totalsPrice?: number;
}
