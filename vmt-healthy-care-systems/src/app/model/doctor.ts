import {Departments} from './departments';

export interface Doctor {
  id?: number;
  name?: string;
  gender?: boolean;
  idCard?: string;
  phone?: string;
  email?: string;
  address?: string;
  dateOfBirth?: string;
  img?: string;
  flagDelete?: boolean;
  departments?: Departments;
  account?: Account;
}
