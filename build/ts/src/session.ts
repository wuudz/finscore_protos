/* eslint-disable */
import { util, configure, Writer, Reader } from "protobufjs/minimal";
import * as Long from "long";
import { Viewer } from "../src/viewer";
import { Player } from "../src/player";
import { Game } from "../src/game";

export const protobufPackage = "";

export interface Session {
  owner: string;
  viewers: { [key: string]: Viewer };
  players: { [key: string]: Player };
  games: Game[];
}

export interface Session_ViewersEntry {
  key: string;
  value: Viewer | undefined;
}

export interface Session_PlayersEntry {
  key: string;
  value: Player | undefined;
}

const baseSession: object = { owner: "" };

export const Session = {
  encode(message: Session, writer: Writer = Writer.create()): Writer {
    if (message.owner !== "") {
      writer.uint32(10).string(message.owner);
    }
    Object.entries(message.viewers).forEach(([key, value]) => {
      Session_ViewersEntry.encode(
        { key: key as any, value },
        writer.uint32(18).fork()
      ).ldelim();
    });
    Object.entries(message.players).forEach(([key, value]) => {
      Session_PlayersEntry.encode(
        { key: key as any, value },
        writer.uint32(26).fork()
      ).ldelim();
    });
    for (const v of message.games) {
      Game.encode(v!, writer.uint32(34).fork()).ldelim();
    }
    return writer;
  },

  decode(input: Reader | Uint8Array, length?: number): Session {
    const reader = input instanceof Reader ? input : new Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = { ...baseSession } as Session;
    message.viewers = {};
    message.players = {};
    message.games = [];
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.owner = reader.string();
          break;
        case 2:
          const entry2 = Session_ViewersEntry.decode(reader, reader.uint32());
          if (entry2.value !== undefined) {
            message.viewers[entry2.key] = entry2.value;
          }
          break;
        case 3:
          const entry3 = Session_PlayersEntry.decode(reader, reader.uint32());
          if (entry3.value !== undefined) {
            message.players[entry3.key] = entry3.value;
          }
          break;
        case 4:
          message.games.push(Game.decode(reader, reader.uint32()));
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): Session {
    const message = { ...baseSession } as Session;
    message.owner =
      object.owner !== undefined && object.owner !== null
        ? String(object.owner)
        : "";
    message.viewers = Object.entries(object.viewers ?? {}).reduce<{
      [key: string]: Viewer;
    }>((acc, [key, value]) => {
      acc[key] = Viewer.fromJSON(value);
      return acc;
    }, {});
    message.players = Object.entries(object.players ?? {}).reduce<{
      [key: string]: Player;
    }>((acc, [key, value]) => {
      acc[key] = Player.fromJSON(value);
      return acc;
    }, {});
    message.games = (object.games ?? []).map((e: any) => Game.fromJSON(e));
    return message;
  },

  toJSON(message: Session): unknown {
    const obj: any = {};
    message.owner !== undefined && (obj.owner = message.owner);
    obj.viewers = {};
    if (message.viewers) {
      Object.entries(message.viewers).forEach(([k, v]) => {
        obj.viewers[k] = Viewer.toJSON(v);
      });
    }
    obj.players = {};
    if (message.players) {
      Object.entries(message.players).forEach(([k, v]) => {
        obj.players[k] = Player.toJSON(v);
      });
    }
    if (message.games) {
      obj.games = message.games.map((e) => (e ? Game.toJSON(e) : undefined));
    } else {
      obj.games = [];
    }
    return obj;
  },

  fromPartial<I extends Exact<DeepPartial<Session>, I>>(object: I): Session {
    const message = { ...baseSession } as Session;
    message.owner = object.owner ?? "";
    message.viewers = Object.entries(object.viewers ?? {}).reduce<{
      [key: string]: Viewer;
    }>((acc, [key, value]) => {
      if (value !== undefined) {
        acc[key] = Viewer.fromPartial(value);
      }
      return acc;
    }, {});
    message.players = Object.entries(object.players ?? {}).reduce<{
      [key: string]: Player;
    }>((acc, [key, value]) => {
      if (value !== undefined) {
        acc[key] = Player.fromPartial(value);
      }
      return acc;
    }, {});
    message.games = object.games?.map((e) => Game.fromPartial(e)) || [];
    return message;
  },
};

const baseSession_ViewersEntry: object = { key: "" };

export const Session_ViewersEntry = {
  encode(
    message: Session_ViewersEntry,
    writer: Writer = Writer.create()
  ): Writer {
    if (message.key !== "") {
      writer.uint32(10).string(message.key);
    }
    if (message.value !== undefined) {
      Viewer.encode(message.value, writer.uint32(18).fork()).ldelim();
    }
    return writer;
  },

  decode(input: Reader | Uint8Array, length?: number): Session_ViewersEntry {
    const reader = input instanceof Reader ? input : new Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = { ...baseSession_ViewersEntry } as Session_ViewersEntry;
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.key = reader.string();
          break;
        case 2:
          message.value = Viewer.decode(reader, reader.uint32());
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): Session_ViewersEntry {
    const message = { ...baseSession_ViewersEntry } as Session_ViewersEntry;
    message.key =
      object.key !== undefined && object.key !== null ? String(object.key) : "";
    message.value =
      object.value !== undefined && object.value !== null
        ? Viewer.fromJSON(object.value)
        : undefined;
    return message;
  },

  toJSON(message: Session_ViewersEntry): unknown {
    const obj: any = {};
    message.key !== undefined && (obj.key = message.key);
    message.value !== undefined &&
      (obj.value = message.value ? Viewer.toJSON(message.value) : undefined);
    return obj;
  },

  fromPartial<I extends Exact<DeepPartial<Session_ViewersEntry>, I>>(
    object: I
  ): Session_ViewersEntry {
    const message = { ...baseSession_ViewersEntry } as Session_ViewersEntry;
    message.key = object.key ?? "";
    message.value =
      object.value !== undefined && object.value !== null
        ? Viewer.fromPartial(object.value)
        : undefined;
    return message;
  },
};

const baseSession_PlayersEntry: object = { key: "" };

export const Session_PlayersEntry = {
  encode(
    message: Session_PlayersEntry,
    writer: Writer = Writer.create()
  ): Writer {
    if (message.key !== "") {
      writer.uint32(10).string(message.key);
    }
    if (message.value !== undefined) {
      Player.encode(message.value, writer.uint32(18).fork()).ldelim();
    }
    return writer;
  },

  decode(input: Reader | Uint8Array, length?: number): Session_PlayersEntry {
    const reader = input instanceof Reader ? input : new Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = { ...baseSession_PlayersEntry } as Session_PlayersEntry;
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.key = reader.string();
          break;
        case 2:
          message.value = Player.decode(reader, reader.uint32());
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): Session_PlayersEntry {
    const message = { ...baseSession_PlayersEntry } as Session_PlayersEntry;
    message.key =
      object.key !== undefined && object.key !== null ? String(object.key) : "";
    message.value =
      object.value !== undefined && object.value !== null
        ? Player.fromJSON(object.value)
        : undefined;
    return message;
  },

  toJSON(message: Session_PlayersEntry): unknown {
    const obj: any = {};
    message.key !== undefined && (obj.key = message.key);
    message.value !== undefined &&
      (obj.value = message.value ? Player.toJSON(message.value) : undefined);
    return obj;
  },

  fromPartial<I extends Exact<DeepPartial<Session_PlayersEntry>, I>>(
    object: I
  ): Session_PlayersEntry {
    const message = { ...baseSession_PlayersEntry } as Session_PlayersEntry;
    message.key = object.key ?? "";
    message.value =
      object.value !== undefined && object.value !== null
        ? Player.fromPartial(object.value)
        : undefined;
    return message;
  },
};

type Builtin =
  | Date
  | Function
  | Uint8Array
  | string
  | number
  | boolean
  | undefined;

export type DeepPartial<T> = T extends Builtin
  ? T
  : T extends Array<infer U>
  ? Array<DeepPartial<U>>
  : T extends ReadonlyArray<infer U>
  ? ReadonlyArray<DeepPartial<U>>
  : T extends {}
  ? { [K in keyof T]?: DeepPartial<T[K]> }
  : Partial<T>;

type KeysOfUnion<T> = T extends T ? keyof T : never;
export type Exact<P, I extends P> = P extends Builtin
  ? P
  : P & { [K in keyof P]: Exact<P[K], I[K]> } & Record<
        Exclude<keyof I, KeysOfUnion<P>>,
        never
      >;

// If you get a compile-error about 'Constructor<Long> and ... have no overlap',
// add '--ts_proto_opt=esModuleInterop=true' as a flag when calling 'protoc'.
if (util.Long !== Long) {
  util.Long = Long as any;
  configure();
}
