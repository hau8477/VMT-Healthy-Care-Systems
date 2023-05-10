import {Departments} from './departments';
import {Category} from './category';

export interface Services {
  id?: number;
  name?: string;
  prices?: number;
  time?: string;
  details?: string;
  flagDelete?: boolean;
  timeUse?: string;
  applicableObject?: string;
  subTitle?: string;
  date?: string;
  quantity?: number;
  img?: string;
  departments?: Departments;
  category?: Category;
}
