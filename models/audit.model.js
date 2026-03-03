const mongoose = require ('mongoose')

const auditSchema = new mongoose.Schema({
    entity: String,
    entityId: String,
    action: String,
    oldData: Object,
    timestamp: Date
});

module.exports = mongoose.model('Audit', auditSchema)

