/* eslint-disable */
import { util, configure, Writer, Reader } from "protobufjs/minimal";
import * as Long from "long";
import { Timestamp } from "../google/protobuf/timestamp";

export const protobufPackage = "";

export interface UserData {
  sessions: string[];
  players: Player[];
  createdAt: Date | undefined;
}

export interface Player {
  name: string;
}

const baseUserData: object = { sessions: "" };

export const UserData = {
  encode(message: UserData, writer: Writer = Writer.create()): Writer {
    for (const v of message.sessions) {
      writer.uint32(10).string(v!);
    }
    for (const v of message.players) {
      Player.encode(v!, writer.uint32(18).fork()).ldelim();
    }
    if (message.createdAt !== undefined) {
      Timestamp.encode(
        toTimestamp(message.createdAt),
        writer.uint32(26).fork()
      ).ldelim();
    }
    return writer;
  },

  decode(input: Reader | Uint8Array, length?: number): UserData {
    const reader = input instanceof Reader ? input : new Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = { ...baseUserData } as UserData;
    message.sessions = [];
    message.players = [];
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.sessions.push(reader.string());
          break;
        case 2:
          message.players.push(Player.decode(reader, reader.uint32()));
          break;
        case 3:
          message.createdAt = fromTimestamp(
            Timestamp.decode(reader, reader.uint32())
          );
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): UserData {
    const message = { ...baseUserData } as UserData;
    message.sessions = (object.sessions ?? []).map((e: any) => String(e));
    message.players = (object.players ?? []).map((e: any) =>
      Player.fromJSON(e)
    );
    message.createdAt =
      object.createdAt !== undefined && object.createdAt !== null
        ? fromJsonTimestamp(object.createdAt)
        : undefined;
    return message;
  },

  toJSON(message: UserData): unknown {
    const obj: any = {};
    if (message.sessions) {
      obj.sessions = message.sessions.map((e) => e);
    } else {
      obj.sessions = [];
    }
    if (message.players) {
      obj.players = message.players.map((e) =>
        e ? Player.toJSON(e) : undefined
      );
    } else {
      obj.players = [];
    }
    message.createdAt !== undefined &&
      (obj.createdAt = message.createdAt.toISOString());
    return obj;
  },

  fromPartial<I extends Exact<DeepPartial<UserData>, I>>(object: I): UserData {
    const message = { ...baseUserData } as UserData;
    message.sessions = object.sessions?.map((e) => e) || [];
    message.players = object.players?.map((e) => Player.fromPartial(e)) || [];
    message.createdAt = object.createdAt ?? undefined;
    return message;
  },
};

const basePlayer: object = { name: "" };

export const Player = {
  encode(message: Player, writer: Writer = Writer.create()): Writer {
    if (message.name !== "") {
      writer.uint32(10).string(message.name);
    }
    return writer;
  },

  decode(input: Reader | Uint8Array, length?: number): Player {
    const reader = input instanceof Reader ? input : new Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = { ...basePlayer } as Player;
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.name = reader.string();
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): Player {
    const message = { ...basePlayer } as Player;
    message.name =
      object.name !== undefined && object.name !== null
        ? String(object.name)
        : "";
    return message;
  },

  toJSON(message: Player): unknown {
    const obj: any = {};
    message.name !== undefined && (obj.name = message.name);
    return obj;
  },

  fromPartial<I extends Exact<DeepPartial<Player>, I>>(object: I): Player {
    const message = { ...basePlayer } as Player;
    message.name = object.name ?? "";
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

function toTimestamp(date: Date): Timestamp {
  const seconds = date.getTime() / 1_000;
  const nanos = (date.getTime() % 1_000) * 1_000_000;
  return { seconds, nanos };
}

function fromTimestamp(t: Timestamp): Date {
  let millis = t.seconds * 1_000;
  millis += t.nanos / 1_000_000;
  return new Date(millis);
}

function fromJsonTimestamp(o: any): Date {
  if (o instanceof Date) {
    return o;
  } else if (typeof o === "string") {
    return new Date(o);
  } else {
    return fromTimestamp(Timestamp.fromJSON(o));
  }
}

// If you get a compile-error about 'Constructor<Long> and ... have no overlap',
// add '--ts_proto_opt=esModuleInterop=true' as a flag when calling 'protoc'.
if (util.Long !== Long) {
  util.Long = Long as any;
  configure();
}
