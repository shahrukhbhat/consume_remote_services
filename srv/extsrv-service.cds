using {sap.ui.extsrv as my} from '../db/schema';

@path : 'service/extsrv'
service ExternalService {
    @readonly
    entity Suppliers as projection on my.Suppliers;
    @readonly
    entity Es5bp as projection on my.Es5bp;
}
