const cds = require('@sap/cds')

module.exports = cds.service.impl(async function () {
    const bupa = await cds.connect.to('API_BUSINESS_PARTNER');
    const es5bp = await cds.connect.to('ZGWSAMPLE_BASIC');

    this.on('READ', 'Suppliers', async req => {
        return bupa.run(req.query);
    });

    this.on('READ', 'Es5bp', async req => {
        return es5bp.run(req.query);
    });
})