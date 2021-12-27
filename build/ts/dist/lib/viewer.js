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
exports.Viewer = exports.viewerTypeToJSON = exports.viewerTypeFromJSON = exports.ViewerType = exports.protobufPackage = void 0;
/* eslint-disable */
var minimal_1 = require("protobufjs/minimal");
var Long = require("long");
exports.protobufPackage = "";
var ViewerType;
(function (ViewerType) {
    ViewerType[ViewerType["UNKNOWN"] = 0] = "UNKNOWN";
    ViewerType[ViewerType["APP"] = 1] = "APP";
    ViewerType[ViewerType["WEBSITE"] = 2] = "WEBSITE";
    ViewerType[ViewerType["UNRECOGNIZED"] = -1] = "UNRECOGNIZED";
})(ViewerType = exports.ViewerType || (exports.ViewerType = {}));
function viewerTypeFromJSON(object) {
    switch (object) {
        case 0:
        case "UNKNOWN":
            return ViewerType.UNKNOWN;
        case 1:
        case "APP":
            return ViewerType.APP;
        case 2:
        case "WEBSITE":
            return ViewerType.WEBSITE;
        case -1:
        case "UNRECOGNIZED":
        default:
            return ViewerType.UNRECOGNIZED;
    }
}
exports.viewerTypeFromJSON = viewerTypeFromJSON;
function viewerTypeToJSON(object) {
    switch (object) {
        case ViewerType.UNKNOWN:
            return "UNKNOWN";
        case ViewerType.APP:
            return "APP";
        case ViewerType.WEBSITE:
            return "WEBSITE";
        default:
            return "UNKNOWN";
    }
}
exports.viewerTypeToJSON = viewerTypeToJSON;
var baseViewer = { type: 0 };
exports.Viewer = {
    encode: function (message, writer) {
        if (writer === void 0) { writer = minimal_1.Writer.create(); }
        if (message.type !== 0) {
            writer.uint32(8).int32(message.type);
        }
        return writer;
    },
    decode: function (input, length) {
        var reader = input instanceof minimal_1.Reader ? input : new minimal_1.Reader(input);
        var end = length === undefined ? reader.len : reader.pos + length;
        var message = __assign({}, baseViewer);
        while (reader.pos < end) {
            var tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    message.type = reader.int32();
                    break;
                default:
                    reader.skipType(tag & 7);
                    break;
            }
        }
        return message;
    },
    fromJSON: function (object) {
        var message = __assign({}, baseViewer);
        message.type =
            object.type !== undefined && object.type !== null
                ? viewerTypeFromJSON(object.type)
                : 0;
        return message;
    },
    toJSON: function (message) {
        var obj = {};
        message.type !== undefined && (obj.type = viewerTypeToJSON(message.type));
        return obj;
    },
    fromPartial: function (object) {
        var _a;
        var message = __assign({}, baseViewer);
        message.type = (_a = object.type) !== null && _a !== void 0 ? _a : 0;
        return message;
    },
};
// If you get a compile-error about 'Constructor<Long> and ... have no overlap',
// add '--ts_proto_opt=esModuleInterop=true' as a flag when calling 'protoc'.
if (minimal_1.util.Long !== Long) {
    minimal_1.util.Long = Long;
    (0, minimal_1.configure)();
}
