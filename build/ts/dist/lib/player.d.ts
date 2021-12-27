import { Writer, Reader } from "protobufjs/minimal";
export declare const protobufPackage = "";
export interface Player {
    handicap: boolean;
}
export declare const Player: {
    encode(message: Player, writer?: Writer): Writer;
    decode(input: Reader | Uint8Array, length?: number | undefined): Player;
    fromJSON(object: any): Player;
    toJSON(message: Player): unknown;
    fromPartial<I extends {
        handicap?: boolean | undefined;
    } & {
        handicap?: boolean | undefined;
    } & Record<Exclude<keyof I, "handicap">, never>>(object: I): Player;
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
