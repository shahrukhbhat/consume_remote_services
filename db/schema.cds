namespace sap.ui.extsrv;
using {API_BUSINESS_PARTNER as bupa} from '../srv/external/API_BUSINESS_PARTNER.csn';
using {ZGWSAMPLE_BASIC as es5_bp} from '../srv/external/ZGWSAMPLE_BASIC';

entity Suppliers as projection on bupa.A_BusinessPartner {
    key BusinessPartner          as ID,
        BusinessPartnerFullName  as fullName,
        BusinessPartnerIsBlocked as isBlocked,
}

entity Es5bp as projection on es5_bp.BusinessPartnerSet {
    key BusinessPartnerID as ID,
        CompanyName as companyName,
        EmailAddress as emailAddr,
}
