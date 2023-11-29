const timeago = require ('timeago.js');
const timeagoinstance = timeago();

const helpers = {};

helpers.timeago = (savedTimestamp) => {
    return timeagoinstance.format(savedTimestamp);
}

module.exports = helpers;