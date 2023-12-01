/* eslint-disable */
import { util, configure, Writer, Reader } from "protobufjs/minimal";
import * as Long from "long";
import { Timestamp } from "../google/protobuf/timestamp";

export const protobufPackage = "";

export interface Stat {
  count: number;
  ratePerSecond: number;
  updatedAt: Date | undefined;
}

export interface Stats {
  games: Stat | undefined;
}

const baseStat: object = { count: 0, ratePerSecond: 0 };

export const Stat = {
  encode(message: Stat, writer: Writer = Writer.create()): Writer {
    if (message.count !== 0) {
      writer.uint32(8).uint32(message.count);
    }
    if (message.ratePerSecond !== 0) {
      writer.uint32(21).float(message.ratePerSecond);
    }
    if (message.updatedAt !== undefined) {
      Timestamp.encode(
        toTimestamp(message.updatedAt),
        writer.uint32(26).fork()
      ).ldelim();
    }
    return writer;
  },

  decode(input: Reader | Uint8Array, length?: number): Stat {
    const reader = input instanceof Reader ? input : new Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = { ...baseStat } as Stat;
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.count = reader.uint32();
          break;
        case 2:
          message.ratePerSecond = reader.float();
          break;
        case 3:
          message.updatedAt = fromTimestamp(
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

  fromJSON(object: any): Stat {
    const message = { ...baseStat } as Stat;
    message.count =
      object.count !== undefined && object.count !== null
        ? Number(object.count)
        : 0;
    message.ratePerSecond =
      object.ratePerSecond !== undefined && object.ratePerSecond !== null
        ? Number(object.ratePerSecond)
        : 0;
    message.updatedAt =
      object.updatedAt !== undefined && object.updatedAt !== null
        ? fromJsonTimestamp(object.updatedAt)
        : undefined;
    return message;
  },

  toJSON(message: Stat): unknown {
    const obj: any = {};
    message.count !== undefined && (obj.count = Math.round(message.count));
    message.ratePerSecond !== undefined &&
      (obj.ratePerSecond = message.ratePerSecond);
    message.updatedAt !== undefined &&
      (obj.updatedAt = message.updatedAt.toISOString());
    return obj;
  },

  fromPartial<I extends Exact<DeepPartial<Stat>, I>>(object: I): Stat {
    const message = { ...baseStat } as Stat;
    message.count = object.count ?? 0;
    message.ratePerSecond = object.ratePerSecond ?? 0;
    message.updatedAt = object.updatedAt ?? undefined;
    return message;
  },
};

const baseStats: object = {};

export const Stats = {
  encode(message: Stats, writer: Writer = Writer.create()): Writer {
    if (message.games !== undefined) {
      Stat.encode(message.games, writer.uint32(10).fork()).ldelim();
    }
    return writer;
  },

  decode(input: Reader | Uint8Array, length?: number): Stats {
    const reader = input instanceof Reader ? input : new Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = { ...baseStats } as Stats;
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.games = Stat.decode(reader, reader.uint32());
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): Stats {
    const message = { ...baseStats } as Stats;
    message.games =
      object.games !== undefined && object.games !== null
        ? Stat.fromJSON(object.games)
        : undefined;
    return message;
  },

  toJSON(message: Stats): unknown {
    const obj: any = {};
    message.games !== undefined &&
      (obj.games = message.games ? Stat.toJSON(message.games) : undefined);
    return obj;
  },

  fromPartial<I extends Exact<DeepPartial<Stats>, I>>(object: I): Stats {
    const message = { ...baseStats } as Stats;
    message.games =
      object.games !== undefined && object.games !== null
        ? Stat.fromPartial(object.games)
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
