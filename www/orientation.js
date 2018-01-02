var exec = require('cordova/exec');

exports.lock = function(arg0, success, error) {
    exec(success, error, "Orientation", "lock", [arg0]);
};

exports.unlock = function(arg0, success, error) {
    exec(success, error, "Orientation", "unlock", [arg0]);
};
