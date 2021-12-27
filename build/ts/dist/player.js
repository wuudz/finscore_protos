"use strict";
var __assign = (this && this.__assign) || function () {
    __assign = Object.assign || function(t) {
        for (var s, i = 1, n = arguments.length; i < n; i++) {
            s = arguments[i];
            for (var p in s) if (Object.prototype.hasOwnProperty.call(s, p))
                t[p] = s[p];
        }
        return t;
    };
    return __assign.apply(this, arguments);
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.Player = exports.protobufPackage = void 0;
/* eslint-disable */
var minimal_1 = require("protobufjs/minimal");
var Long = require("long");
exports.protobufPackage = "";
var basePlayer = { handicap: false };
exports.Player = {
    encode: function (message, writer) {
        if (writer === void 0) { writer = minimal_1.Writer.create(); }
        if (message.handicap === true) {
            writer.uint32(8).bool(message.handicap);
        }
        return writer;
    },
    decode: function (input, length) {
        var reader = input instanceof minimal_1.Reader ? input : new minimal_1.Reader(input);
        var end = length === undefined ? reader.len : reader.pos + length;
        var message = __assign({}, basePlayer);
        while (reader.pos < end) {
            var tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    message.handicap = reader.bool();
                    break;
                default:
                    reader.skipType(tag & 7);
                    break;
            }
        }
        return message;
    },
    fromJSON: function (object) {
        var message = __assign({}, basePlayer);
        message.handicap =
            object.handicap !== undefined && object.handicap !== null
                ? Boolean(object.handicap)
                : false;
        return message;
    },
    toJSON: function (message) {
        var obj = {};
        message.handicap !== undefined && (obj.handicap = message.handicap);
        return obj;
    },
    fromPartial: function (object) {
        var _a;
        var message = __assign({}, basePlayer);
        message.handicap = (_a = object.handicap) !== null && _a !== void 0 ? _a : false;
        return message;
    },
};
// If you get a compile-error about 'Constructor<Long> and ... have no overlap',
// add '--ts_proto_opt=esModuleInterop=true' as a flag when calling 'protoc'.
if (minimal_1.util.Long !== Long) {
    minimal_1.util.Long = Long;
    (0, minimal_1.configure)();
}
