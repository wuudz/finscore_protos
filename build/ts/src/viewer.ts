/* eslint-disable */
import { util, configure, Writer, Reader } from "protobufjs/minimal";
import * as Long from "long";

export const protobufPackage = "";

export enum ViewerType {
  WEBSITE = "WEBSITE",
  APP = "APP",
  UNRECOGNIZED = "UNRECOGNIZED",
}

export function viewerTypeFromJSON(object: any): ViewerType {
  switch (object) {
    case 0:
    case "WEBSITE":
      return ViewerType.WEBSITE;
    case 1:
    case "APP":
      return ViewerType.APP;
    case -1:
    case "UNRECOGNIZED":
    default:
      return ViewerType.UNRECOGNIZED;
  }
}

export function viewerTypeToJSON(object: ViewerType): string {
  switch (object) {
    case ViewerType.WEBSITE:
      return "WEBSITE";
    case ViewerType.APP:
      return "APP";
    default:
      return "UNKNOWN";
  }
}

export function viewerTypeToNumber(object: ViewerType): number {
  switch (object) {
    case ViewerType.WEBSITE:
      return 0;
    case ViewerType.APP:
      return 1;
    default:
      return 0;
  }
}

export interface Viewer {
  type: ViewerType;
}

const baseViewer: object = { type: ViewerType.WEBSITE };

export const Viewer = {
  encode(message: Viewer, writer: Writer = Writer.create()): Writer {
    if (message.type !== ViewerType.WEBSITE) {
      writer.uint32(8).int32(viewerTypeToNumber(message.type));
    }
    return writer;
  },

  decode(input: Reader | Uint8Array, length?: number): Viewer {
    const reader = input instanceof Reader ? input : new Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = { ...baseViewer } as Viewer;
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.type = viewerTypeFromJSON(reader.int32());
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): Viewer {
    const message = { ...baseViewer } as Viewer;
    message.type =
      object.type !== undefined && object.type !== null
        ? viewerTypeFromJSON(object.type)
        : ViewerType.WEBSITE;
    return message;
  },

  toJSON(message: Viewer): unknown {
    const obj: any = {};
    message.type !== undefined && (obj.type = viewerTypeToJSON(message.type));
    return obj;
  },

  fromPartial<I extends Exact<DeepPartial<Viewer>, I>>(object: I): Viewer {
    const message = { ...baseViewer } as Viewer;
    message.type = object.type ?? ViewerType.WEBSITE;
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
