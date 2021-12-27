/* eslint-disable */
import { util, configure, Writer, Reader } from "protobufjs/minimal";
import * as Long from "long";

export const protobufPackage = "";

export interface Player {
  handicap: boolean;
}

const basePlayer: object = { handicap: false };

export const Player = {
  encode(message: Player, writer: Writer = Writer.create()): Writer {
    if (message.handicap === true) {
      writer.uint32(8).bool(message.handicap);
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
          message.handicap = reader.bool();
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
    message.handicap =
      object.handicap !== undefined && object.handicap !== null
        ? Boolean(object.handicap)
        : false;
    return message;
  },

  toJSON(message: Player): unknown {
    const obj: any = {};
    message.handicap !== undefined && (obj.handicap = message.handicap);
    return obj;
  },

  fromPartial<I extends Exact<DeepPartial<Player>, I>>(object: I): Player {
    const message = { ...basePlayer } as Player;
    message.handicap = object.handicap ?? false;
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
