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
exports.Session_PlayersEntry = exports.Session_ViewersEntry = exports.Session = exports.protobufPackage = void 0;
/* eslint-disable */
var minimal_1 = require("protobufjs/minimal");
var Long = require("long");
var viewer_1 = require("../lib/viewer");
var player_1 = require("../lib/player");
var game_1 = require("../lib/game");
exports.protobufPackage = "";
var baseSession = { owner: "" };
exports.Session = {
    encode: function (message, writer) {
        if (writer === void 0) { writer = minimal_1.Writer.create(); }
        if (message.owner !== "") {
            writer.uint32(10).string(message.owner);
        }
        Object.entries(message.viewers).forEach(function (_a) {
            var key = _a[0], value = _a[1];
            exports.Session_ViewersEntry.encode({ key: key, value: value }, writer.uint32(18).fork()).ldelim();
        });
        Object.entries(message.players).forEach(function (_a) {
            var key = _a[0], value = _a[1];
            exports.Session_PlayersEntry.encode({ key: key, value: value }, writer.uint32(26).fork()).ldelim();
        });
        for (var _i = 0, _a = message.games; _i < _a.length; _i++) {
            var v = _a[_i];
            game_1.Game.encode(v, writer.uint32(34).fork()).ldelim();
        }
        return writer;
    },
    decode: function (input, length) {
        var reader = input instanceof minimal_1.Reader ? input : new minimal_1.Reader(input);
        var end = length === undefined ? reader.len : reader.pos + length;
        var message = __assign({}, baseSession);
        message.viewers = {};
        message.players = {};
        message.games = [];
        while (reader.pos < end) {
            var tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    message.owner = reader.string();
                    break;
                case 2:
                    var entry2 = exports.Session_ViewersEntry.decode(reader, reader.uint32());
                    if (entry2.value !== undefined) {
                        message.viewers[entry2.key] = entry2.value;
                    }
                    break;
                case 3:
                    var entry3 = exports.Session_PlayersEntry.decode(reader, reader.uint32());
                    if (entry3.value !== undefined) {
                        message.players[entry3.key] = entry3.value;
                    }
                    break;
                case 4:
                    message.games.push(game_1.Game.decode(reader, reader.uint32()));
                    break;
                default:
                    reader.skipType(tag & 7);
                    break;
            }
        }
        return message;
    },
    fromJSON: function (object) {
        var _a, _b, _c;
        var message = __assign({}, baseSession);
        message.owner =
            object.owner !== undefined && object.owner !== null
                ? String(object.owner)
                : "";
        message.viewers = Object.entries((_a = object.viewers) !== null && _a !== void 0 ? _a : {}).reduce(function (acc, _a) {
            var key = _a[0], value = _a[1];
            acc[key] = viewer_1.Viewer.fromJSON(value);
            return acc;
        }, {});
        message.players = Object.entries((_b = object.players) !== null && _b !== void 0 ? _b : {}).reduce(function (acc, _a) {
            var key = _a[0], value = _a[1];
            acc[key] = player_1.Player.fromJSON(value);
            return acc;
        }, {});
        message.games = ((_c = object.games) !== null && _c !== void 0 ? _c : []).map(function (e) { return game_1.Game.fromJSON(e); });
        return message;
    },
    toJSON: function (message) {
        var obj = {};
        message.owner !== undefined && (obj.owner = message.owner);
        obj.viewers = {};
        if (message.viewers) {
            Object.entries(message.viewers).forEach(function (_a) {
                var k = _a[0], v = _a[1];
                obj.viewers[k] = viewer_1.Viewer.toJSON(v);
            });
        }
        obj.players = {};
        if (message.players) {
            Object.entries(message.players).forEach(function (_a) {
                var k = _a[0], v = _a[1];
                obj.players[k] = player_1.Player.toJSON(v);
            });
        }
        if (message.games) {
            obj.games = message.games.map(function (e) { return (e ? game_1.Game.toJSON(e) : undefined); });
        }
        else {
            obj.games = [];
        }
        return obj;
    },
    fromPartial: function (object) {
        var _a, _b, _c, _d;
        var message = __assign({}, baseSession);
        message.owner = (_a = object.owner) !== null && _a !== void 0 ? _a : "";
        message.viewers = Object.entries((_b = object.viewers) !== null && _b !== void 0 ? _b : {}).reduce(function (acc, _a) {
            var key = _a[0], value = _a[1];
            if (value !== undefined) {
                acc[key] = viewer_1.Viewer.fromPartial(value);
            }
            return acc;
        }, {});
        message.players = Object.entries((_c = object.players) !== null && _c !== void 0 ? _c : {}).reduce(function (acc, _a) {
            var key = _a[0], value = _a[1];
            if (value !== undefined) {
                acc[key] = player_1.Player.fromPartial(value);
            }
            return acc;
        }, {});
        message.games = ((_d = object.games) === null || _d === void 0 ? void 0 : _d.map(function (e) { return game_1.Game.fromPartial(e); })) || [];
        return message;
    },
};
var baseSession_ViewersEntry = { key: "" };
exports.Session_ViewersEntry = {
    encode: function (message, writer) {
        if (writer === void 0) { writer = minimal_1.Writer.create(); }
        if (message.key !== "") {
            writer.uint32(10).string(message.key);
        }
        if (message.value !== undefined) {
            viewer_1.Viewer.encode(message.value, writer.uint32(18).fork()).ldelim();
        }
        return writer;
    },
    decode: function (input, length) {
        var reader = input instanceof minimal_1.Reader ? input : new minimal_1.Reader(input);
        var end = length === undefined ? reader.len : reader.pos + length;
        var message = __assign({}, baseSession_ViewersEntry);
        while (reader.pos < end) {
            var tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    message.key = reader.string();
                    break;
                case 2:
                    message.value = viewer_1.Viewer.decode(reader, reader.uint32());
                    break;
                default:
                    reader.skipType(tag & 7);
                    break;
            }
        }
        return message;
    },
    fromJSON: function (object) {
        var message = __assign({}, baseSession_ViewersEntry);
        message.key =
            object.key !== undefined && object.key !== null ? String(object.key) : "";
        message.value =
            object.value !== undefined && object.value !== null
                ? viewer_1.Viewer.fromJSON(object.value)
                : undefined;
        return message;
    },
    toJSON: function (message) {
        var obj = {};
        message.key !== undefined && (obj.key = message.key);
        message.value !== undefined &&
            (obj.value = message.value ? viewer_1.Viewer.toJSON(message.value) : undefined);
        return obj;
    },
    fromPartial: function (object) {
        var _a;
        var message = __assign({}, baseSession_ViewersEntry);
        message.key = (_a = object.key) !== null && _a !== void 0 ? _a : "";
        message.value =
            object.value !== undefined && object.value !== null
                ? viewer_1.Viewer.fromPartial(object.value)
                : undefined;
        return message;
    },
};
var baseSession_PlayersEntry = { key: "" };
exports.Session_PlayersEntry = {
    encode: function (message, writer) {
        if (writer === void 0) { writer = minimal_1.Writer.create(); }
        if (message.key !== "") {
            writer.uint32(10).string(message.key);
        }
        if (message.value !== undefined) {
            player_1.Player.encode(message.value, writer.uint32(18).fork()).ldelim();
        }
        return writer;
    },
    decode: function (input, length) {
        var reader = input instanceof minimal_1.Reader ? input : new minimal_1.Reader(input);
        var end = length === undefined ? reader.len : reader.pos + length;
        var message = __assign({}, baseSession_PlayersEntry);
        while (reader.pos < end) {
            var tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    message.key = reader.string();
                    break;
                case 2:
                    message.value = player_1.Player.decode(reader, reader.uint32());
                    break;
                default:
                    reader.skipType(tag & 7);
                    break;
            }
        }
        return message;
    },
    fromJSON: function (object) {
        var message = __assign({}, baseSession_PlayersEntry);
        message.key =
            object.key !== undefined && object.key !== null ? String(object.key) : "";
        message.value =
            object.value !== undefined && object.value !== null
                ? player_1.Player.fromJSON(object.value)
                : undefined;
        return message;
    },
    toJSON: function (message) {
        var obj = {};
        message.key !== undefined && (obj.key = message.key);
        message.value !== undefined &&
            (obj.value = message.value ? player_1.Player.toJSON(message.value) : undefined);
        return obj;
    },
    fromPartial: function (object) {
        var _a;
        var message = __assign({}, baseSession_PlayersEntry);
        message.key = (_a = object.key) !== null && _a !== void 0 ? _a : "";
        message.value =
            object.value !== undefined && object.value !== null
                ? player_1.Player.fromPartial(object.value)
                : undefined;
        return message;
    },
};
// If you get a compile-error about 'Constructor<Long> and ... have no overlap',
// add '--ts_proto_opt=esModuleInterop=true' as a flag when calling 'protoc'.
if (minimal_1.util.Long !== Long) {
    minimal_1.util.Long = Long;
    (0, minimal_1.configure)();
}
