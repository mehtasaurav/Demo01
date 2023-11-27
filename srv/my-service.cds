using {sap.sm.stationery as my} from '../db/schema';
service MyService {
    entity Employees as projection on my.Employees;
    entity Stationery as projection on my.Stationery;
}