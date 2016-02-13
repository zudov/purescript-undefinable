/* global exports */
"use strict";

// module Data.Undefinable

exports["undefined"] = undefined;

exports.undefinable = function(a, r, f) {
    return a === undefined ? r : f(a);
};
