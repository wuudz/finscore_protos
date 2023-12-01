/* eslint-disable */
import { util, configure, Writer, Reader } from "protobufjs/minimal";
import * as Long from "long";
import { Timestamp } from "../google/protobuf/timestamp";

export const protobufPackage = "";

export interface CountStat {
  count: number;
  ratePerSecond: number;
  updatedAt: Date | undefined;
}

export interface StoreRatingStat {
  userRatingCount: number;
  averageUserRating: number;
}

export interface Stats {
  games: CountStat | undefined;
  users: CountStat | undefined;
  appStoreRating: StoreRatingStat | undefined;
}

const baseCountStat: object = { count: 0, ratePerSecond: 0 };

export const CountStat = {
  encode(message: CountStat, writer: Writer = Writer.create()): Writer {
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

  decode(input: Reader | Uint8Array, length?: number): CountStat {
    const reader = input instanceof Reader ? input : new Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = { ...baseCountStat } as CountStat;
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

  fromJSON(object: any): CountStat {
    const message = { ...baseCountStat } as CountStat;
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

  toJSON(message: CountStat): unknown {
    const obj: any = {};
    message.count !== undefined && (obj.count = Math.round(message.count));
    message.ratePerSecond !== undefined &&
      (obj.ratePerSecond = message.ratePerSecond);
    message.updatedAt !== undefined &&
      (obj.updatedAt = message.updatedAt.toISOString());
    return obj;
  },

  fromPartial<I extends Exact<DeepPartial<CountStat>, I>>(
    object: I
  ): CountStat {
    const message = { ...baseCountStat } as CountStat;
    message.count = object.count ?? 0;
    message.ratePerSecond = object.ratePerSecond ?? 0;
    message.updatedAt = object.updatedAt ?? undefined;
    return message;
  },
};

const baseStoreRatingStat: object = {
  userRatingCount: 0,
  averageUserRating: 0,
};

export const StoreRatingStat = {
  encode(message: StoreRatingStat, writer: Writer = Writer.create()): Writer {
    if (message.userRatingCount !== 0) {
      writer.uint32(8).uint32(message.userRatingCount);
    }
    if (message.averageUserRating !== 0) {
      writer.uint32(21).float(message.averageUserRating);
    }
    return writer;
  },

  decode(input: Reader | Uint8Array, length?: number): StoreRatingStat {
    const reader = input instanceof Reader ? input : new Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = { ...baseStoreRatingStat } as StoreRatingStat;
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.userRatingCount = reader.uint32();
          break;
        case 2:
          message.averageUserRating = reader.float();
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): StoreRatingStat {
    const message = { ...baseStoreRatingStat } as StoreRatingStat;
    message.userRatingCount =
      object.userRatingCount !== undefined && object.userRatingCount !== null
        ? Number(object.userRatingCount)
        : 0;
    message.averageUserRating =
      object.averageUserRating !== undefined &&
      object.averageUserRating !== null
        ? Number(object.averageUserRating)
        : 0;
    return message;
  },

  toJSON(message: StoreRatingStat): unknown {
    const obj: any = {};
    message.userRatingCount !== undefined &&
      (obj.userRatingCount = Math.round(message.userRatingCount));
    message.averageUserRating !== undefined &&
      (obj.averageUserRating = message.averageUserRating);
    return obj;
  },

  fromPartial<I extends Exact<DeepPartial<StoreRatingStat>, I>>(
    object: I
  ): StoreRatingStat {
    const message = { ...baseStoreRatingStat } as StoreRatingStat;
    message.userRatingCount = object.userRatingCount ?? 0;
    message.averageUserRating = object.averageUserRating ?? 0;
    return message;
  },
};

const baseStats: object = {};

export const Stats = {
  encode(message: Stats, writer: Writer = Writer.create()): Writer {
    if (message.games !== undefined) {
      CountStat.encode(message.games, writer.uint32(10).fork()).ldelim();
    }
    if (message.users !== undefined) {
      CountStat.encode(message.users, writer.uint32(18).fork()).ldelim();
    }
    if (message.appStoreRating !== undefined) {
      StoreRatingStat.encode(
        message.appStoreRating,
        writer.uint32(26).fork()
      ).ldelim();
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
          message.games = CountStat.decode(reader, reader.uint32());
          break;
        case 2:
          message.users = CountStat.decode(reader, reader.uint32());
          break;
        case 3:
          message.appStoreRating = StoreRatingStat.decode(
            reader,
            reader.uint32()
          );
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
        ? CountStat.fromJSON(object.games)
        : undefined;
    message.users =
      object.users !== undefined && object.users !== null
        ? CountStat.fromJSON(object.users)
        : undefined;
    message.appStoreRating =
      object.appStoreRating !== undefined && object.appStoreRating !== null
        ? StoreRatingStat.fromJSON(object.appStoreRating)
        : undefined;
    return message;
  },

  toJSON(message: Stats): unknown {
    const obj: any = {};
    message.games !== undefined &&
      (obj.games = message.games ? CountStat.toJSON(message.games) : undefined);
    message.users !== undefined &&
      (obj.users = message.users ? CountStat.toJSON(message.users) : undefined);
    message.appStoreRating !== undefined &&
      (obj.appStoreRating = message.appStoreRating
        ? StoreRatingStat.toJSON(message.appStoreRating)
        : undefined);
    return obj;
  },

  fromPartial<I extends Exact<DeepPartial<Stats>, I>>(object: I): Stats {
    const message = { ...baseStats } as Stats;
    message.games =
      object.games !== undefined && object.games !== null
        ? CountStat.fromPartial(object.games)
        : undefined;
    message.users =
      object.users !== undefined && object.users !== null
        ? CountStat.fromPartial(object.users)
        : undefined;
    message.appStoreRating =
      object.appStoreRating !== undefined && object.appStoreRating !== null
        ? StoreRatingStat.fromPartial(object.appStoreRating)
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
