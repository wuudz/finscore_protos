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
exports.Game_PlayersEntry = exports.Game = exports.GamePlayer = exports.GameConfig = exports.playerOrderToJSON = exports.playerOrderFromJSON = exports.PlayerOrder = exports.protobufPackage = void 0;
/* eslint-disable */
var minimal_1 = require("protobufjs/minimal");
var Long = require("long");
exports.protobufPackage = "";
var PlayerOrder;
(function (PlayerOrder) {
    PlayerOrder[PlayerOrder["USER_DEFINED"] = 0] = "USER_DEFINED";
    PlayerOrder[PlayerOrder["RANDOM"] = 1] = "RANDOM";
    PlayerOrder[PlayerOrder["UNRECOGNIZED"] = -1] = "UNRECOGNIZED";
})(PlayerOrder = exports.PlayerOrder || (exports.PlayerOrder = {}));
function playerOrderFromJSON(object) {
    switch (object) {
        case 0:
        case "USER_DEFINED":
            return PlayerOrder.USER_DEFINED;
        case 1:
        case "RANDOM":
            return PlayerOrder.RANDOM;
        case -1:
        case "UNRECOGNIZED":
        default:
            return PlayerOrder.UNRECOGNIZED;
    }
}
exports.playerOrderFromJSON = playerOrderFromJSON;
function playerOrderToJSON(object) {
    switch (object) {
        case PlayerOrder.USER_DEFINED:
            return "USER_DEFINED";
        case PlayerOrder.RANDOM:
            return "RANDOM";
        default:
            return "UNKNOWN";
    }
}
exports.playerOrderToJSON = playerOrderToJSON;
var baseGameConfig = {
    zeros: 0,
    resetScore: 0,
    winningScore: 0,
    playerOrder: 0,
};
exports.GameConfig = {
    encode: function (message, writer) {
        if (writer === void 0) { writer = minimal_1.Writer.create(); }
        if (message.zeros !== 0) {
            writer.uint32(8).uint32(message.zeros);
        }
        if (message.resetScore !== 0) {
            writer.uint32(16).uint32(message.resetScore);
        }
        if (message.winningScore !== 0) {
            writer.uint32(24).uint32(message.winningScore);
        }
        if (message.playerOrder !== 0) {
            writer.uint32(32).int32(message.playerOrder);
        }
        return writer;
    },
    decode: function (input, length) {
        var reader = input instanceof minimal_1.Reader ? input : new minimal_1.Reader(input);
        var end = length === undefined ? reader.len : reader.pos + length;
        var message = __assign({}, baseGameConfig);
        while (reader.pos < end) {
            var tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    message.zeros = reader.uint32();
                    break;
                case 2:
                    message.resetScore = reader.uint32();
                    break;
                case 3:
                    message.winningScore = reader.uint32();
                    break;
                case 4:
                    message.playerOrder = reader.int32();
                    break;
                default:
                    reader.skipType(tag & 7);
                    break;
            }
        }
        return message;
    },
    fromJSON: function (object) {
        var message = __assign({}, baseGameConfig);
        message.zeros =
            object.zeros !== undefined && object.zeros !== null
                ? Number(object.zeros)
                : 0;
        message.resetScore =
            object.resetScore !== undefined && object.resetScore !== null
                ? Number(object.resetScore)
                : 0;
        message.winningScore =
            object.winningScore !== undefined && object.winningScore !== null
                ? Number(object.winningScore)
                : 0;
        message.playerOrder =
            object.playerOrder !== undefined && object.playerOrder !== null
                ? playerOrderFromJSON(object.playerOrder)
                : 0;
        return message;
    },
    toJSON: function (message) {
        var obj = {};
        message.zeros !== undefined && (obj.zeros = Math.round(message.zeros));
        message.resetScore !== undefined &&
            (obj.resetScore = Math.round(message.resetScore));
        message.winningScore !== undefined &&
            (obj.winningScore = Math.round(message.winningScore));
        message.playerOrder !== undefined &&
            (obj.playerOrder = playerOrderToJSON(message.playerOrder));
        return obj;
    },
    fromPartial: function (object) {
        var _a, _b, _c, _d;
        var message = __assign({}, baseGameConfig);
        message.zeros = (_a = object.zeros) !== null && _a !== void 0 ? _a : 0;
        message.resetScore = (_b = object.resetScore) !== null && _b !== void 0 ? _b : 0;
        message.winningScore = (_c = object.winningScore) !== null && _c !== void 0 ? _c : 0;
        message.playerOrder = (_d = object.playerOrder) !== null && _d !== void 0 ? _d : 0;
        return message;
    },
};
var baseGamePlayer = { scores: 0, kicked: false };
exports.GamePlayer = {
    encode: function (message, writer) {
        if (writer === void 0) { writer = minimal_1.Writer.create(); }
        writer.uint32(10).fork();
        for (var _i = 0, _a = message.scores; _i < _a.length; _i++) {
            var v = _a[_i];
            writer.uint32(v);
        }
        writer.ldelim();
        if (message.kicked === true) {
            writer.uint32(16).bool(message.kicked);
        }
        return writer;
    },
    decode: function (input, length) {
        var reader = input instanceof minimal_1.Reader ? input : new minimal_1.Reader(input);
        var end = length === undefined ? reader.len : reader.pos + length;
        var message = __assign({}, baseGamePlayer);
        message.scores = [];
        while (reader.pos < end) {
            var tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    if ((tag & 7) === 2) {
                        var end2 = reader.uint32() + reader.pos;
                        while (reader.pos < end2) {
                            message.scores.push(reader.uint32());
                        }
                    }
                    else {
                        message.scores.push(reader.uint32());
                    }
                    break;
                case 2:
                    message.kicked = reader.bool();
                    break;
                default:
                    reader.skipType(tag & 7);
                    break;
            }
        }
        return message;
    },
    fromJSON: function (object) {
        var _a;
        var message = __assign({}, baseGamePlayer);
        message.scores = ((_a = object.scores) !== null && _a !== void 0 ? _a : []).map(function (e) { return Number(e); });
        message.kicked =
            object.kicked !== undefined && object.kicked !== null
                ? Boolean(object.kicked)
                : false;
        return message;
    },
    toJSON: function (message) {
        var obj = {};
        if (message.scores) {
            obj.scores = message.scores.map(function (e) { return Math.round(e); });
        }
        else {
            obj.scores = [];
        }
        message.kicked !== undefined && (obj.kicked = message.kicked);
        return obj;
    },
    fromPartial: function (object) {
        var _a, _b;
        var message = __assign({}, baseGamePlayer);
        message.scores = ((_a = object.scores) === null || _a === void 0 ? void 0 : _a.map(function (e) { return e; })) || [];
        message.kicked = (_b = object.kicked) !== null && _b !== void 0 ? _b : false;
        return message;
    },
};
var baseGame = {};
exports.Game = {
    encode: function (message, writer) {
        if (writer === void 0) { writer = minimal_1.Writer.create(); }
        if (message.config !== undefined) {
            exports.GameConfig.encode(message.config, writer.uint32(10).fork()).ldelim();
        }
        Object.entries(message.players).forEach(function (_a) {
            var key = _a[0], value = _a[1];
            exports.Game_PlayersEntry.encode({ key: key, value: value }, writer.uint32(18).fork()).ldelim();
        });
        return writer;
    },
    decode: function (input, length) {
        var reader = input instanceof minimal_1.Reader ? input : new minimal_1.Reader(input);
        var end = length === undefined ? reader.len : reader.pos + length;
        var message = __assign({}, baseGame);
        message.players = {};
        while (reader.pos < end) {
            var tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    message.config = exports.GameConfig.decode(reader, reader.uint32());
                    break;
                case 2:
                    var entry2 = exports.Game_PlayersEntry.decode(reader, reader.uint32());
                    if (entry2.value !== undefined) {
                        message.players[entry2.key] = entry2.value;
                    }
                    break;
                default:
                    reader.skipType(tag & 7);
                    break;
            }
        }
        return message;
    },
    fromJSON: function (object) {
        var _a;
        var message = __assign({}, baseGame);
        message.config =
            object.config !== undefined && object.config !== null
                ? exports.GameConfig.fromJSON(object.config)
                : undefined;
        message.players = Object.entries((_a = object.players) !== null && _a !== void 0 ? _a : {}).reduce(function (acc, _a) {
            var key = _a[0], value = _a[1];
            acc[key] = exports.GamePlayer.fromJSON(value);
            return acc;
        }, {});
        return message;
    },
    toJSON: function (message) {
        var obj = {};
        message.config !== undefined &&
            (obj.config = message.config
                ? exports.GameConfig.toJSON(message.config)
                : undefined);
        obj.players = {};
        if (message.players) {
            Object.entries(message.players).forEach(function (_a) {
                var k = _a[0], v = _a[1];
                obj.players[k] = exports.GamePlayer.toJSON(v);
            });
        }
        return obj;
    },
    fromPartial: function (object) {
        var _a;
        var message = __assign({}, baseGame);
        message.config =
            object.config !== undefined && object.config !== null
                ? exports.GameConfig.fromPartial(object.config)
                : undefined;
        message.players = Object.entries((_a = object.players) !== null && _a !== void 0 ? _a : {}).reduce(function (acc, _a) {
            var key = _a[0], value = _a[1];
            if (value !== undefined) {
                acc[key] = exports.GamePlayer.fromPartial(value);
            }
            return acc;
        }, {});
        return message;
    },
};
var baseGame_PlayersEntry = { key: "" };
exports.Game_PlayersEntry = {
    encode: function (message, writer) {
        if (writer === void 0) { writer = minimal_1.Writer.create(); }
        if (message.key !== "") {
            writer.uint32(10).string(message.key);
        }
        if (message.value !== undefined) {
            exports.GamePlayer.encode(message.value, writer.uint32(18).fork()).ldelim();
        }
        return writer;
    },
    decode: function (input, length) {
        var reader = input instanceof minimal_1.Reader ? input : new minimal_1.Reader(input);
        var end = length === undefined ? reader.len : reader.pos + length;
        var message = __assign({}, baseGame_PlayersEntry);
        while (reader.pos < end) {
            var tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    message.key = reader.string();
                    break;
                case 2:
                    message.value = exports.GamePlayer.decode(reader, reader.uint32());
                    break;
                default:
                    reader.skipType(tag & 7);
                    break;
            }
        }
        return message;
    },
    fromJSON: function (object) {
        var message = __assign({}, baseGame_PlayersEntry);
        message.key =
            object.key !== undefined && object.key !== null ? String(object.key) : "";
        message.value =
            object.value !== undefined && object.value !== null
                ? exports.GamePlayer.fromJSON(object.value)
                : undefined;
        return message;
    },
    toJSON: function (message) {
        var obj = {};
        message.key !== undefined && (obj.key = message.key);
        message.value !== undefined &&
            (obj.value = message.value
                ? exports.GamePlayer.toJSON(message.value)
                : undefined);
        return obj;
    },
    fromPartial: function (object) {
        var _a;
        var message = __assign({}, baseGame_PlayersEntry);
        message.key = (_a = object.key) !== null && _a !== void 0 ? _a : "";
        message.value =
            object.value !== undefined && object.value !== null
                ? exports.GamePlayer.fromPartial(object.value)
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
