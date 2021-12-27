import { Writer, Reader } from "protobufjs/minimal";
import { Viewer } from "../lib/viewer";
import { Player } from "../lib/player";
import { Game } from "../lib/game";
export declare const protobufPackage = "";
export interface Session {
    owner: string;
    viewers: {
        [key: string]: Viewer;
    };
    players: {
        [key: string]: Player;
    };
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
export declare const Session: {
    encode(message: Session, writer?: Writer): Writer;
    decode(input: Reader | Uint8Array, length?: number | undefined): Session;
    fromJSON(object: any): Session;
    toJSON(message: Session): unknown;
    fromPartial<I extends {
        owner?: string | undefined;
        viewers?: {
            [x: string]: {
                type?: import("../lib/viewer").ViewerType | undefined;
            } | undefined;
        } | undefined;
        players?: {
            [x: string]: {
                handicap?: boolean | undefined;
            } | undefined;
        } | undefined;
        games?: {
            config?: {
                zeros?: number | undefined;
                resetScore?: number | undefined;
                winningScore?: number | undefined;
                playerOrder?: import("../lib/game").PlayerOrder | undefined;
            } | undefined;
            players?: {
                [x: string]: {
                    scores?: number[] | undefined;
                    kicked?: boolean | undefined;
                } | undefined;
            } | undefined;
        }[] | undefined;
    } & {
        owner?: string | undefined;
        viewers?: ({
            [x: string]: {
                type?: import("../lib/viewer").ViewerType | undefined;
            } | undefined;
        } & {
            [x: string]: ({
                type?: import("../lib/viewer").ViewerType | undefined;
            } & {
                type?: import("../lib/viewer").ViewerType | undefined;
            } & Record<Exclude<keyof I["viewers"][string], "type">, never>) | undefined;
        } & Record<Exclude<keyof I["viewers"], string | number>, never>) | undefined;
        players?: ({
            [x: string]: {
                handicap?: boolean | undefined;
            } | undefined;
        } & {
            [x: string]: ({
                handicap?: boolean | undefined;
            } & {
                handicap?: boolean | undefined;
            } & Record<Exclude<keyof I["players"][string], "handicap">, never>) | undefined;
        } & Record<Exclude<keyof I["players"], string | number>, never>) | undefined;
        games?: ({
            config?: {
                zeros?: number | undefined;
                resetScore?: number | undefined;
                winningScore?: number | undefined;
                playerOrder?: import("../lib/game").PlayerOrder | undefined;
            } | undefined;
            players?: {
                [x: string]: {
                    scores?: number[] | undefined;
                    kicked?: boolean | undefined;
                } | undefined;
            } | undefined;
        }[] & ({
            config?: {
                zeros?: number | undefined;
                resetScore?: number | undefined;
                winningScore?: number | undefined;
                playerOrder?: import("../lib/game").PlayerOrder | undefined;
            } | undefined;
            players?: {
                [x: string]: {
                    scores?: number[] | undefined;
                    kicked?: boolean | undefined;
                } | undefined;
            } | undefined;
        } & {
            config?: ({
                zeros?: number | undefined;
                resetScore?: number | undefined;
                winningScore?: number | undefined;
                playerOrder?: import("../lib/game").PlayerOrder | undefined;
            } & {
                zeros?: number | undefined;
                resetScore?: number | undefined;
                winningScore?: number | undefined;
                playerOrder?: import("../lib/game").PlayerOrder | undefined;
            } & Record<Exclude<keyof I["games"][number]["config"], keyof import("../lib/game").GameConfig>, never>) | undefined;
            players?: ({
                [x: string]: {
                    scores?: number[] | undefined;
                    kicked?: boolean | undefined;
                } | undefined;
            } & {
                [x: string]: ({
                    scores?: number[] | undefined;
                    kicked?: boolean | undefined;
                } & {
                    scores?: (number[] & number[] & Record<Exclude<keyof I["games"][number]["players"][string]["scores"], keyof number[]>, never>) | undefined;
                    kicked?: boolean | undefined;
                } & Record<Exclude<keyof I["games"][number]["players"][string], keyof import("../lib/game").GamePlayer>, never>) | undefined;
            } & Record<Exclude<keyof I["games"][number]["players"], string | number>, never>) | undefined;
        } & Record<Exclude<keyof I["games"][number], keyof Game>, never>)[] & Record<Exclude<keyof I["games"], keyof {
            config?: {
                zeros?: number | undefined;
                resetScore?: number | undefined;
                winningScore?: number | undefined;
                playerOrder?: import("../lib/game").PlayerOrder | undefined;
            } | undefined;
            players?: {
                [x: string]: {
                    scores?: number[] | undefined;
                    kicked?: boolean | undefined;
                } | undefined;
            } | undefined;
        }[]>, never>) | undefined;
    } & Record<Exclude<keyof I, keyof Session>, never>>(object: I): Session;
};
export declare const Session_ViewersEntry: {
    encode(message: Session_ViewersEntry, writer?: Writer): Writer;
    decode(input: Reader | Uint8Array, length?: number | undefined): Session_ViewersEntry;
    fromJSON(object: any): Session_ViewersEntry;
    toJSON(message: Session_ViewersEntry): unknown;
    fromPartial<I extends {
        key?: string | undefined;
        value?: {
            type?: import("../lib/viewer").ViewerType | undefined;
        } | undefined;
    } & {
        key?: string | undefined;
        value?: ({
            type?: import("../lib/viewer").ViewerType | undefined;
        } & {
            type?: import("../lib/viewer").ViewerType | undefined;
        } & Record<Exclude<keyof I["value"], "type">, never>) | undefined;
    } & Record<Exclude<keyof I, keyof Session_ViewersEntry>, never>>(object: I): Session_ViewersEntry;
};
export declare const Session_PlayersEntry: {
    encode(message: Session_PlayersEntry, writer?: Writer): Writer;
    decode(input: Reader | Uint8Array, length?: number | undefined): Session_PlayersEntry;
    fromJSON(object: any): Session_PlayersEntry;
    toJSON(message: Session_PlayersEntry): unknown;
    fromPartial<I extends {
        key?: string | undefined;
        value?: {
            handicap?: boolean | undefined;
        } | undefined;
    } & {
        key?: string | undefined;
        value?: ({
            handicap?: boolean | undefined;
        } & {
            handicap?: boolean | undefined;
        } & Record<Exclude<keyof I["value"], "handicap">, never>) | undefined;
    } & Record<Exclude<keyof I, keyof Session_PlayersEntry>, never>>(object: I): Session_PlayersEntry;
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
