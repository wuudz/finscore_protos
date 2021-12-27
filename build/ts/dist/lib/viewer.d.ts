import { Writer, Reader } from "protobufjs/minimal";
export declare const protobufPackage = "";
export declare enum ViewerType {
    UNKNOWN = 0,
    APP = 1,
    WEBSITE = 2,
    UNRECOGNIZED = -1
}
export declare function viewerTypeFromJSON(object: any): ViewerType;
export declare function viewerTypeToJSON(object: ViewerType): string;
export interface Viewer {
    type: ViewerType;
}
export declare const Viewer: {
    encode(message: Viewer, writer?: Writer): Writer;
    decode(input: Reader | Uint8Array, length?: number | undefined): Viewer;
    fromJSON(object: any): Viewer;
    toJSON(message: Viewer): unknown;
    fromPartial<I extends {
        type?: ViewerType | undefined;
    } & {
        type?: ViewerType | undefined;
    } & Record<Exclude<keyof I, "type">, never>>(object: I): Viewer;
};
declare type Builtin = Date | Function | Uint8Array | string | number | boolean | undefined;
export declare type DeepPartial<T> = T extends Builtin ? T : T extends Array<infer U> ? Array<DeepPartial<U>> : T extends ReadonlyArray<infer U> ? ReadonlyArray<DeepPartial<U>> : T extends {} ? {
    [K in keyof T]?: DeepPartial<T[K]>;
} : Partial<T>;
declare type KeysOfUnion<T> = T extends T ? keyof T : never;
export declare type Exact<P, I extends P> = P extends Builtin ? P : P & {
    [K in keyof P]: Exact<P[K], I[K]>;
} & Record<Exclude<keyof I, KeysOfUnion<P>>, never>;
export {};
