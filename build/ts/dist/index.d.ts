import { Game, GameConfig, GamePlayer, PlayerOrder } from "./lib/game";
import { Player } from "./lib/player";
import { Session } from "./lib/session";
import { Viewer, ViewerType } from "./lib/viewer";
declare const _default: {
    Game: {
        encode(message: Game, writer?: import("protobufjs").Writer): import("protobufjs").Writer;
        decode(input: Uint8Array | import("protobufjs").Reader, length?: number | undefined): Game;
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
    GameConfig: {
        encode(message: GameConfig, writer?: import("protobufjs").Writer): import("protobufjs").Writer;
        decode(input: Uint8Array | import("protobufjs").Reader, length?: number | undefined): GameConfig;
        fromJSON(object: any): GameConfig;
        toJSON(message: GameConfig): unknown;
        fromPartial<I_1 extends {
            zeros?: number | undefined;
            resetScore?: number | undefined;
            winningScore?: number | undefined;
            playerOrder?: PlayerOrder | undefined;
        } & {
            zeros?: number | undefined;
            resetScore?: number | undefined;
            winningScore?: number | undefined;
            playerOrder?: PlayerOrder | undefined;
        } & Record<Exclude<keyof I_1, keyof GameConfig>, never>>(object: I_1): GameConfig;
    };
    GamePlayer: {
        encode(message: GamePlayer, writer?: import("protobufjs").Writer): import("protobufjs").Writer;
        decode(input: Uint8Array | import("protobufjs").Reader, length?: number | undefined): GamePlayer;
        fromJSON(object: any): GamePlayer;
        toJSON(message: GamePlayer): unknown;
        fromPartial<I_2 extends {
            scores?: number[] | undefined;
            kicked?: boolean | undefined;
        } & {
            scores?: (number[] & number[] & Record<Exclude<keyof I_2["scores"], keyof number[]>, never>) | undefined;
            kicked?: boolean | undefined;
        } & Record<Exclude<keyof I_2, keyof GamePlayer>, never>>(object: I_2): GamePlayer;
    };
    PlayerOrder: typeof PlayerOrder;
    Player: {
        encode(message: Player, writer?: import("protobufjs").Writer): import("protobufjs").Writer;
        decode(input: Uint8Array | import("protobufjs").Reader, length?: number | undefined): Player;
        fromJSON(object: any): Player;
        toJSON(message: Player): unknown;
        fromPartial<I_3 extends {
            handicap?: boolean | undefined;
        } & {
            handicap?: boolean | undefined;
        } & Record<Exclude<keyof I_3, "handicap">, never>>(object: I_3): Player;
    };
    Session: {
        encode(message: Session, writer?: import("protobufjs").Writer): import("protobufjs").Writer;
        decode(input: Uint8Array | import("protobufjs").Reader, length?: number | undefined): Session;
        fromJSON(object: any): Session;
        toJSON(message: Session): unknown;
        fromPartial<I_4 extends {
            owner?: string | undefined;
            viewers?: {
                [x: string]: {
                    type?: ViewerType | undefined;
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
                    playerOrder?: PlayerOrder | undefined;
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
                    type?: ViewerType | undefined;
                } | undefined;
            } & {
                [x: string]: ({
                    type?: ViewerType | undefined;
                } & {
                    type?: ViewerType | undefined;
                } & Record<Exclude<keyof I_4["viewers"][string], "type">, never>) | undefined;
            } & Record<Exclude<keyof I_4["viewers"], string | number>, never>) | undefined;
            players?: ({
                [x: string]: {
                    handicap?: boolean | undefined;
                } | undefined;
            } & {
                [x: string]: ({
                    handicap?: boolean | undefined;
                } & {
                    handicap?: boolean | undefined;
                } & Record<Exclude<keyof I_4["players"][string], "handicap">, never>) | undefined;
            } & Record<Exclude<keyof I_4["players"], string | number>, never>) | undefined;
            games?: ({
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
            }[] & ({
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
                } & Record<Exclude<keyof I_4["games"][number]["config"], keyof GameConfig>, never>) | undefined;
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
                        scores?: (number[] & number[] & Record<Exclude<keyof I_4["games"][number]["players"][string]["scores"], keyof number[]>, never>) | undefined;
                        kicked?: boolean | undefined;
                    } & Record<Exclude<keyof I_4["games"][number]["players"][string], keyof GamePlayer>, never>) | undefined;
                } & Record<Exclude<keyof I_4["games"][number]["players"], string | number>, never>) | undefined;
            } & Record<Exclude<keyof I_4["games"][number], keyof Game>, never>)[] & Record<Exclude<keyof I_4["games"], keyof {
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
            }[]>, never>) | undefined;
        } & Record<Exclude<keyof I_4, keyof Session>, never>>(object: I_4): Session;
    };
    Viewer: {
        encode(message: Viewer, writer?: import("protobufjs").Writer): import("protobufjs").Writer;
        decode(input: Uint8Array | import("protobufjs").Reader, length?: number | undefined): Viewer;
        fromJSON(object: any): Viewer;
        toJSON(message: Viewer): unknown;
        fromPartial<I_5 extends {
            type?: ViewerType | undefined;
        } & {
            type?: ViewerType | undefined;
        } & Record<Exclude<keyof I_5, "type">, never>>(object: I_5): Viewer;
    };
    ViewerType: typeof ViewerType;
};
export default _default;
