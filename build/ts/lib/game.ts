/* eslint-disable */
import { util, configure, Writer, Reader } from "protobufjs/minimal";
import * as Long from "long";
import { GameHistory } from "../lib/game_history";

export const protobufPackage = "";

export enum PlayerOrder {
  USER_DEFINED = 0,
  RANDOM = 1,
  UNRECOGNIZED = -1,
}

export function playerOrderFromJSON(object: any): PlayerOrder {
  switch (object) {
    case 0:
    case "USER_DEFINED":
      return PlayerOrder.USER_DEFINED;
    case 1:
    case "RANDOM":
      return PlayerOrder.RANDOM;
    case -1:
    case "UNRECOGNIZED":
    default:
      return PlayerOrder.UNRECOGNIZED;
  }
}

export function playerOrderToJSON(object: PlayerOrder): string {
  switch (object) {
    case PlayerOrder.USER_DEFINED:
      return "USER_DEFINED";
    case PlayerOrder.RANDOM:
      return "RANDOM";
    default:
      return "UNKNOWN";
  }
}

export enum GameStatus {
  UNKNOWN = 0,
  PLAYING = 1,
  PAUSED = 2,
  FINISHED = 3,
  CANCELED = 4,
  UNRECOGNIZED = -1,
}

export function gameStatusFromJSON(object: any): GameStatus {
  switch (object) {
    case 0:
    case "UNKNOWN":
      return GameStatus.UNKNOWN;
    case 1:
    case "PLAYING":
      return GameStatus.PLAYING;
    case 2:
    case "PAUSED":
      return GameStatus.PAUSED;
    case 3:
    case "FINISHED":
      return GameStatus.FINISHED;
    case 4:
    case "CANCELED":
      return GameStatus.CANCELED;
    case -1:
    case "UNRECOGNIZED":
    default:
      return GameStatus.UNRECOGNIZED;
  }
}

export function gameStatusToJSON(object: GameStatus): string {
  switch (object) {
    case GameStatus.UNKNOWN:
      return "UNKNOWN";
    case GameStatus.PLAYING:
      return "PLAYING";
    case GameStatus.PAUSED:
      return "PAUSED";
    case GameStatus.FINISHED:
      return "FINISHED";
    case GameStatus.CANCELED:
      return "CANCELED";
    default:
      return "UNKNOWN";
  }
}

export interface GameConfig {
  zeros: number;
  resetScore: number;
  winningScore: number;
  playerOrder: PlayerOrder;
}

export interface GamePlayer {
  kicked: boolean;
}

export interface Game {
  config: GameConfig | undefined;
  players: { [key: string]: GamePlayer };
  history: GameHistory[];
  status: GameStatus;
}

export interface Game_PlayersEntry {
  key: string;
  value: GamePlayer | undefined;
}

const baseGameConfig: object = {
  zeros: 0,
  resetScore: 0,
  winningScore: 0,
  playerOrder: 0,
};

export const GameConfig = {
  encode(message: GameConfig, writer: Writer = Writer.create()): Writer {
    if (message.zeros !== 0) {
      writer.uint32(8).uint32(message.zeros);
    }
    if (message.resetScore !== 0) {
      writer.uint32(16).uint32(message.resetScore);
    }
    if (message.winningScore !== 0) {
      writer.uint32(24).uint32(message.winningScore);
    }
    if (message.playerOrder !== 0) {
      writer.uint32(32).int32(message.playerOrder);
    }
    return writer;
  },

  decode(input: Reader | Uint8Array, length?: number): GameConfig {
    const reader = input instanceof Reader ? input : new Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = { ...baseGameConfig } as GameConfig;
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.zeros = reader.uint32();
          break;
        case 2:
          message.resetScore = reader.uint32();
          break;
        case 3:
          message.winningScore = reader.uint32();
          break;
        case 4:
          message.playerOrder = reader.int32() as any;
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): GameConfig {
    const message = { ...baseGameConfig } as GameConfig;
    message.zeros =
      object.zeros !== undefined && object.zeros !== null
        ? Number(object.zeros)
        : 0;
    message.resetScore =
      object.resetScore !== undefined && object.resetScore !== null
        ? Number(object.resetScore)
        : 0;
    message.winningScore =
      object.winningScore !== undefined && object.winningScore !== null
        ? Number(object.winningScore)
        : 0;
    message.playerOrder =
      object.playerOrder !== undefined && object.playerOrder !== null
        ? playerOrderFromJSON(object.playerOrder)
        : 0;
    return message;
  },

  toJSON(message: GameConfig): unknown {
    const obj: any = {};
    message.zeros !== undefined && (obj.zeros = Math.round(message.zeros));
    message.resetScore !== undefined &&
      (obj.resetScore = Math.round(message.resetScore));
    message.winningScore !== undefined &&
      (obj.winningScore = Math.round(message.winningScore));
    message.playerOrder !== undefined &&
      (obj.playerOrder = playerOrderToJSON(message.playerOrder));
    return obj;
  },

  fromPartial<I extends Exact<DeepPartial<GameConfig>, I>>(
    object: I
  ): GameConfig {
    const message = { ...baseGameConfig } as GameConfig;
    message.zeros = object.zeros ?? 0;
    message.resetScore = object.resetScore ?? 0;
    message.winningScore = object.winningScore ?? 0;
    message.playerOrder = object.playerOrder ?? 0;
    return message;
  },
};

const baseGamePlayer: object = { kicked: false };

export const GamePlayer = {
  encode(message: GamePlayer, writer: Writer = Writer.create()): Writer {
    if (message.kicked === true) {
      writer.uint32(16).bool(message.kicked);
    }
    return writer;
  },

  decode(input: Reader | Uint8Array, length?: number): GamePlayer {
    const reader = input instanceof Reader ? input : new Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = { ...baseGamePlayer } as GamePlayer;
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 2:
          message.kicked = reader.bool();
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): GamePlayer {
    const message = { ...baseGamePlayer } as GamePlayer;
    message.kicked =
      object.kicked !== undefined && object.kicked !== null
        ? Boolean(object.kicked)
        : false;
    return message;
  },

  toJSON(message: GamePlayer): unknown {
    const obj: any = {};
    message.kicked !== undefined && (obj.kicked = message.kicked);
    return obj;
  },

  fromPartial<I extends Exact<DeepPartial<GamePlayer>, I>>(
    object: I
  ): GamePlayer {
    const message = { ...baseGamePlayer } as GamePlayer;
    message.kicked = object.kicked ?? false;
    return message;
  },
};

const baseGame: object = { status: 0 };

export const Game = {
  encode(message: Game, writer: Writer = Writer.create()): Writer {
    if (message.config !== undefined) {
      GameConfig.encode(message.config, writer.uint32(10).fork()).ldelim();
    }
    Object.entries(message.players).forEach(([key, value]) => {
      Game_PlayersEntry.encode(
        { key: key as any, value },
        writer.uint32(18).fork()
      ).ldelim();
    });
    for (const v of message.history) {
      GameHistory.encode(v!, writer.uint32(26).fork()).ldelim();
    }
    if (message.status !== 0) {
      writer.uint32(32).int32(message.status);
    }
    return writer;
  },

  decode(input: Reader | Uint8Array, length?: number): Game {
    const reader = input instanceof Reader ? input : new Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = { ...baseGame } as Game;
    message.players = {};
    message.history = [];
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.config = GameConfig.decode(reader, reader.uint32());
          break;
        case 2:
          const entry2 = Game_PlayersEntry.decode(reader, reader.uint32());
          if (entry2.value !== undefined) {
            message.players[entry2.key] = entry2.value;
          }
          break;
        case 3:
          message.history.push(GameHistory.decode(reader, reader.uint32()));
          break;
        case 4:
          message.status = reader.int32() as any;
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): Game {
    const message = { ...baseGame } as Game;
    message.config =
      object.config !== undefined && object.config !== null
        ? GameConfig.fromJSON(object.config)
        : undefined;
    message.players = Object.entries(object.players ?? {}).reduce<{
      [key: string]: GamePlayer;
    }>((acc, [key, value]) => {
      acc[key] = GamePlayer.fromJSON(value);
      return acc;
    }, {});
    message.history = (object.history ?? []).map((e: any) =>
      GameHistory.fromJSON(e)
    );
    message.status =
      object.status !== undefined && object.status !== null
        ? gameStatusFromJSON(object.status)
        : 0;
    return message;
  },

  toJSON(message: Game): unknown {
    const obj: any = {};
    message.config !== undefined &&
      (obj.config = message.config
        ? GameConfig.toJSON(message.config)
        : undefined);
    obj.players = {};
    if (message.players) {
      Object.entries(message.players).forEach(([k, v]) => {
        obj.players[k] = GamePlayer.toJSON(v);
      });
    }
    if (message.history) {
      obj.history = message.history.map((e) =>
        e ? GameHistory.toJSON(e) : undefined
      );
    } else {
      obj.history = [];
    }
    message.status !== undefined &&
      (obj.status = gameStatusToJSON(message.status));
    return obj;
  },

  fromPartial<I extends Exact<DeepPartial<Game>, I>>(object: I): Game {
    const message = { ...baseGame } as Game;
    message.config =
      object.config !== undefined && object.config !== null
        ? GameConfig.fromPartial(object.config)
        : undefined;
    message.players = Object.entries(object.players ?? {}).reduce<{
      [key: string]: GamePlayer;
    }>((acc, [key, value]) => {
      if (value !== undefined) {
        acc[key] = GamePlayer.fromPartial(value);
      }
      return acc;
    }, {});
    message.history =
      object.history?.map((e) => GameHistory.fromPartial(e)) || [];
    message.status = object.status ?? 0;
    return message;
  },
};

const baseGame_PlayersEntry: object = { key: "" };

export const Game_PlayersEntry = {
  encode(message: Game_PlayersEntry, writer: Writer = Writer.create()): Writer {
    if (message.key !== "") {
      writer.uint32(10).string(message.key);
    }
    if (message.value !== undefined) {
      GamePlayer.encode(message.value, writer.uint32(18).fork()).ldelim();
    }
    return writer;
  },

  decode(input: Reader | Uint8Array, length?: number): Game_PlayersEntry {
    const reader = input instanceof Reader ? input : new Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = { ...baseGame_PlayersEntry } as Game_PlayersEntry;
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.key = reader.string();
          break;
        case 2:
          message.value = GamePlayer.decode(reader, reader.uint32());
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): Game_PlayersEntry {
    const message = { ...baseGame_PlayersEntry } as Game_PlayersEntry;
    message.key =
      object.key !== undefined && object.key !== null ? String(object.key) : "";
    message.value =
      object.value !== undefined && object.value !== null
        ? GamePlayer.fromJSON(object.value)
        : undefined;
    return message;
  },

  toJSON(message: Game_PlayersEntry): unknown {
    const obj: any = {};
    message.key !== undefined && (obj.key = message.key);
    message.value !== undefined &&
      (obj.value = message.value
        ? GamePlayer.toJSON(message.value)
        : undefined);
    return obj;
  },

  fromPartial<I extends Exact<DeepPartial<Game_PlayersEntry>, I>>(
    object: I
  ): Game_PlayersEntry {
    const message = { ...baseGame_PlayersEntry } as Game_PlayersEntry;
    message.key = object.key ?? "";
    message.value =
      object.value !== undefined && object.value !== null
        ? GamePlayer.fromPartial(object.value)
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

// If you get a compile-error about 'Constructor<Long> and ... have no overlap',
// add '--ts_proto_opt=esModuleInterop=true' as a flag when calling 'protoc'.
if (util.Long !== Long) {
  util.Long = Long as any;
  configure();
}
