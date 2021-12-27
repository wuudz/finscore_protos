import { Writer, Reader } from "protobufjs/minimal";
export declare const protobufPackage = "";
export declare enum PlayerOrder {
    USER_DEFINED = 0,
    RANDOM = 1,
    UNRECOGNIZED = -1
}
export declare function playerOrderFromJSON(object: any): PlayerOrder;
export declare function playerOrderToJSON(object: PlayerOrder): string;
export interface GameConfig {
    zeros: number;
    resetScore: number;
    winningScore: number;
    playerOrder: PlayerOrder;
}
export interface GamePlayer {
    scores: number[];
    kicked: boolean;
}
export interface Game {
    config: GameConfig | undefined;
    players: {
        [key: string]: GamePlayer;
    };
}
export interface Game_PlayersEntry {
    key: string;
    value: GamePlayer | undefined;
}
export declare const GameConfig: {
    encode(message: GameConfig, writer?: Writer): Writer;
    decode(input: Reader | Uint8Array, length?: number | undefined): GameConfig;
    fromJSON(object: any): GameConfig;
    toJSON(message: GameConfig): unknown;
    fromPartial<I extends {
        zeros?: number | undefined;
        resetScore?: number | undefined;
        winningScore?: number | undefined;
        playerOrder?: PlayerOrder | undefined;
    } & {
        zeros?: number | undefined;
        resetScore?: number | undefined;
        winningScore?: number | undefined;
        playerOrder?: PlayerOrder | undefined;
    } & Record<Exclude<keyof I, keyof GameConfig>, never>>(object: I): GameConfig;
};
export declare const GamePlayer: {
    encode(message: GamePlayer, writer?: Writer): Writer;
    decode(input: Reader | Uint8Array, length?: number | undefined): GamePlayer;
    fromJSON(object: any): GamePlayer;
    toJSON(message: GamePlayer): unknown;
    fromPartial<I extends {
        scores?: number[] | undefined;
        kicked?: boolean | undefined;
    } & {
        scores?: (number[] & number[] & Record<Exclude<keyof I["scores"], keyof number[]>, never>) | undefined;
        kicked?: boolean | undefined;
    } & Record<Exclude<keyof I, keyof GamePlayer>, never>>(object: I): GamePlayer;
};
export declare const Game: {
    encode(message: Game, writer?: Writer): Writer;
    decode(input: Reader | Uint8Array, length?: number | undefined): Game;
    fromJSON(object: any): Game;
    toJSON(message: Game): unknown;
    fromPartial<I extends {
        config?: {
            zeros?: number | undefined;
            resetScore?: number | undefined;
            winningScore?: number | undefined;
            playerOrder?: PlayerOrder | undefined;
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
            playerOrder?: PlayerOrder | undefined;
        } & {
            zeros?: number | undefined;
            resetScore?: number | undefined;
            winningScore?: number | undefined;
            playerOrder?: PlayerOrder | undefined;
        } & Record<Exclude<keyof I["config"], keyof GameConfig>, never>) | undefined;
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
                scores?: (number[] & number[] & Record<Exclude<keyof I["players"][string]["scores"], keyof number[]>, never>) | undefined;
                kicked?: boolean | undefined;
            } & Record<Exclude<keyof I["players"][string], keyof GamePlayer>, never>) | undefined;
        } & Record<Exclude<keyof I["players"], string | number>, never>) | undefined;
    } & Record<Exclude<keyof I, keyof Game>, never>>(object: I): Game;
};
export declare const Game_PlayersEntry: {
    encode(message: Game_PlayersEntry, writer?: Writer): Writer;
    decode(input: Reader | Uint8Array, length?: number | undefined): Game_PlayersEntry;
    fromJSON(object: any): Game_PlayersEntry;
    toJSON(message: Game_PlayersEntry): unknown;
    fromPartial<I extends {
        key?: string | undefined;
        value?: {
            scores?: number[] | undefined;
            kicked?: boolean | undefined;
        } | undefined;
    } & {
        key?: string | undefined;
        value?: ({
            scores?: number[] | undefined;
            kicked?: boolean | undefined;
        } & {
            scores?: (number[] & number[] & Record<Exclude<keyof I["value"]["scores"], keyof number[]>, never>) | undefined;
            kicked?: boolean | undefined;
        } & Record<Exclude<keyof I["value"], keyof GamePlayer>, never>) | undefined;
    } & Record<Exclude<keyof I, keyof Game_PlayersEntry>, never>>(object: I): Game_PlayersEntry;
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
