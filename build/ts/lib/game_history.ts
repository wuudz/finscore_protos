/* eslint-disable */
import { util, configure, Writer, Reader } from "protobufjs/minimal";
import * as Long from "long";
import { Timestamp } from "../google/protobuf/timestamp";

export const protobufPackage = "";

export enum GameHistoryEvent {
  SCORE = 0,
  START = 1,
  UNDO = 2,
  END = 3,
  UNRECOGNIZED = -1,
}

export function gameHistoryEventFromJSON(object: any): GameHistoryEvent {
  switch (object) {
    case 0:
    case "SCORE":
      return GameHistoryEvent.SCORE;
    case 1:
    case "START":
      return GameHistoryEvent.START;
    case 2:
    case "UNDO":
      return GameHistoryEvent.UNDO;
    case 3:
    case "END":
      return GameHistoryEvent.END;
    case -1:
    case "UNRECOGNIZED":
    default:
      return GameHistoryEvent.UNRECOGNIZED;
  }
}

export function gameHistoryEventToJSON(object: GameHistoryEvent): string {
  switch (object) {
    case GameHistoryEvent.SCORE:
      return "SCORE";
    case GameHistoryEvent.START:
      return "START";
    case GameHistoryEvent.UNDO:
      return "UNDO";
    case GameHistoryEvent.END:
      return "END";
    default:
      return "UNKNOWN";
  }
}

export interface GameHistory {
  timestamp: Date | undefined;
  uid: string;
  event: GameHistoryEvent;
}

const baseGameHistory: object = { uid: "", event: 0 };

export const GameHistory = {
  encode(message: GameHistory, writer: Writer = Writer.create()): Writer {
    if (message.timestamp !== undefined) {
      Timestamp.encode(
        toTimestamp(message.timestamp),
        writer.uint32(10).fork()
      ).ldelim();
    }
    if (message.uid !== "") {
      writer.uint32(18).string(message.uid);
    }
    if (message.event !== 0) {
      writer.uint32(24).int32(message.event);
    }
    return writer;
  },

  decode(input: Reader | Uint8Array, length?: number): GameHistory {
    const reader = input instanceof Reader ? input : new Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = { ...baseGameHistory } as GameHistory;
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.timestamp = fromTimestamp(
            Timestamp.decode(reader, reader.uint32())
          );
          break;
        case 2:
          message.uid = reader.string();
          break;
        case 3:
          message.event = reader.int32() as any;
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): GameHistory {
    const message = { ...baseGameHistory } as GameHistory;
    message.timestamp =
      object.timestamp !== undefined && object.timestamp !== null
        ? fromJsonTimestamp(object.timestamp)
        : undefined;
    message.uid =
      object.uid !== undefined && object.uid !== null ? String(object.uid) : "";
    message.event =
      object.event !== undefined && object.event !== null
        ? gameHistoryEventFromJSON(object.event)
        : 0;
    return message;
  },

  toJSON(message: GameHistory): unknown {
    const obj: any = {};
    message.timestamp !== undefined &&
      (obj.timestamp = message.timestamp.toISOString());
    message.uid !== undefined && (obj.uid = message.uid);
    message.event !== undefined &&
      (obj.event = gameHistoryEventToJSON(message.event));
    return obj;
  },

  fromPartial<I extends Exact<DeepPartial<GameHistory>, I>>(
    object: I
  ): GameHistory {
    const message = { ...baseGameHistory } as GameHistory;
    message.timestamp = object.timestamp ?? undefined;
    message.uid = object.uid ?? "";
    message.event = object.event ?? 0;
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
