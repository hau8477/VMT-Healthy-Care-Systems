import {Customer} from './customer';
import {Services} from './services';

export interface Cart {
  id?: number;
  customer?: Customer;
  services?: Services;
  quantity?: number;
  flagDelete?: boolean;
}
