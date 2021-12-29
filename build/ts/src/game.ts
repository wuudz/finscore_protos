/* eslint-disable */
import { util, configure, Writer, Reader } from "protobufjs/minimal";
import * as Long from "long";
import { Timestamp } from "../google/protobuf/timestamp";

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

export enum GameAwardType {
  SLOW_POKE = 0,
  SHARP_SHOOTER = 1,
  PEA_SHOOTER = 2,
  TWELVIE = 3,
  UNRECOGNIZED = -1,
}

export function gameAwardTypeFromJSON(object: any): GameAwardType {
  switch (object) {
    case 0:
    case "SLOW_POKE":
      return GameAwardType.SLOW_POKE;
    case 1:
    case "SHARP_SHOOTER":
      return GameAwardType.SHARP_SHOOTER;
    case 2:
    case "PEA_SHOOTER":
      return GameAwardType.PEA_SHOOTER;
    case 3:
    case "TWELVIE":
      return GameAwardType.TWELVIE;
    case -1:
    case "UNRECOGNIZED":
    default:
      return GameAwardType.UNRECOGNIZED;
  }
}

export function gameAwardTypeToJSON(object: GameAwardType): string {
  switch (object) {
    case GameAwardType.SLOW_POKE:
      return "SLOW_POKE";
    case GameAwardType.SHARP_SHOOTER:
      return "SHARP_SHOOTER";
    case GameAwardType.PEA_SHOOTER:
      return "PEA_SHOOTER";
    case GameAwardType.TWELVIE:
      return "TWELVIE";
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

export interface GameScore {
  score: number;
  timestamp: Date | undefined;
}

export interface GamePlayer {
  name: string;
  scores: GameScore[];
  kicked: boolean;
}

export interface GameAward {
  type: GameAwardType;
  receipient: string;
  value: string;
}

export interface GameResolution {
  finishedAt: Date | undefined;
  winner: string;
  awards: GameAward[];
}

export interface GameViewerDataPlayer {
  name: string;
  scores: number[];
  totalScores: number[];
}

export interface GameViewerData {
  players: GameViewerDataPlayer[];
  currentPlayerName: string;
  nextPlayerName: string;
}

export interface Game {
  config: GameConfig | undefined;
  players: GamePlayer[];
  resolution: GameResolution | undefined;
  status: GameStatus;
  startedAt: Date | undefined;
  viewerData: GameViewerData | undefined;
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

const baseGameScore: object = { score: 0 };

export const GameScore = {
  encode(message: GameScore, writer: Writer = Writer.create()): Writer {
    if (message.score !== 0) {
      writer.uint32(8).uint32(message.score);
    }
    if (message.timestamp !== undefined) {
      Timestamp.encode(
        toTimestamp(message.timestamp),
        writer.uint32(18).fork()
      ).ldelim();
    }
    return writer;
  },

  decode(input: Reader | Uint8Array, length?: number): GameScore {
    const reader = input instanceof Reader ? input : new Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = { ...baseGameScore } as GameScore;
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.score = reader.uint32();
          break;
        case 2:
          message.timestamp = fromTimestamp(
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

  fromJSON(object: any): GameScore {
    const message = { ...baseGameScore } as GameScore;
    message.score =
      object.score !== undefined && object.score !== null
        ? Number(object.score)
        : 0;
    message.timestamp =
      object.timestamp !== undefined && object.timestamp !== null
        ? fromJsonTimestamp(object.timestamp)
        : undefined;
    return message;
  },

  toJSON(message: GameScore): unknown {
    const obj: any = {};
    message.score !== undefined && (obj.score = Math.round(message.score));
    message.timestamp !== undefined &&
      (obj.timestamp = message.timestamp.toISOString());
    return obj;
  },

  fromPartial<I extends Exact<DeepPartial<GameScore>, I>>(
    object: I
  ): GameScore {
    const message = { ...baseGameScore } as GameScore;
    message.score = object.score ?? 0;
    message.timestamp = object.timestamp ?? undefined;
    return message;
  },
};

const baseGamePlayer: object = { name: "", kicked: false };

export const GamePlayer = {
  encode(message: GamePlayer, writer: Writer = Writer.create()): Writer {
    if (message.name !== "") {
      writer.uint32(10).string(message.name);
    }
    for (const v of message.scores) {
      GameScore.encode(v!, writer.uint32(18).fork()).ldelim();
    }
    if (message.kicked === true) {
      writer.uint32(24).bool(message.kicked);
    }
    return writer;
  },

  decode(input: Reader | Uint8Array, length?: number): GamePlayer {
    const reader = input instanceof Reader ? input : new Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = { ...baseGamePlayer } as GamePlayer;
    message.scores = [];
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.name = reader.string();
          break;
        case 2:
          message.scores.push(GameScore.decode(reader, reader.uint32()));
          break;
        case 3:
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
    message.name =
      object.name !== undefined && object.name !== null
        ? String(object.name)
        : "";
    message.scores = (object.scores ?? []).map((e: any) =>
      GameScore.fromJSON(e)
    );
    message.kicked =
      object.kicked !== undefined && object.kicked !== null
        ? Boolean(object.kicked)
        : false;
    return message;
  },

  toJSON(message: GamePlayer): unknown {
    const obj: any = {};
    message.name !== undefined && (obj.name = message.name);
    if (message.scores) {
      obj.scores = message.scores.map((e) =>
        e ? GameScore.toJSON(e) : undefined
      );
    } else {
      obj.scores = [];
    }
    message.kicked !== undefined && (obj.kicked = message.kicked);
    return obj;
  },

  fromPartial<I extends Exact<DeepPartial<GamePlayer>, I>>(
    object: I
  ): GamePlayer {
    const message = { ...baseGamePlayer } as GamePlayer;
    message.name = object.name ?? "";
    message.scores = object.scores?.map((e) => GameScore.fromPartial(e)) || [];
    message.kicked = object.kicked ?? false;
    return message;
  },
};

const baseGameAward: object = { type: 0, receipient: "", value: "" };

export const GameAward = {
  encode(message: GameAward, writer: Writer = Writer.create()): Writer {
    if (message.type !== 0) {
      writer.uint32(8).int32(message.type);
    }
    if (message.receipient !== "") {
      writer.uint32(18).string(message.receipient);
    }
    if (message.value !== "") {
      writer.uint32(26).string(message.value);
    }
    return writer;
  },

  decode(input: Reader | Uint8Array, length?: number): GameAward {
    const reader = input instanceof Reader ? input : new Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = { ...baseGameAward } as GameAward;
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.type = reader.int32() as any;
          break;
        case 2:
          message.receipient = reader.string();
          break;
        case 3:
          message.value = reader.string();
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): GameAward {
    const message = { ...baseGameAward } as GameAward;
    message.type =
      object.type !== undefined && object.type !== null
        ? gameAwardTypeFromJSON(object.type)
        : 0;
    message.receipient =
      object.receipient !== undefined && object.receipient !== null
        ? String(object.receipient)
        : "";
    message.value =
      object.value !== undefined && object.value !== null
        ? String(object.value)
        : "";
    return message;
  },

  toJSON(message: GameAward): unknown {
    const obj: any = {};
    message.type !== undefined &&
      (obj.type = gameAwardTypeToJSON(message.type));
    message.receipient !== undefined && (obj.receipient = message.receipient);
    message.value !== undefined && (obj.value = message.value);
    return obj;
  },

  fromPartial<I extends Exact<DeepPartial<GameAward>, I>>(
    object: I
  ): GameAward {
    const message = { ...baseGameAward } as GameAward;
    message.type = object.type ?? 0;
    message.receipient = object.receipient ?? "";
    message.value = object.value ?? "";
    return message;
  },
};

const baseGameResolution: object = { winner: "" };

export const GameResolution = {
  encode(message: GameResolution, writer: Writer = Writer.create()): Writer {
    if (message.finishedAt !== undefined) {
      Timestamp.encode(
        toTimestamp(message.finishedAt),
        writer.uint32(10).fork()
      ).ldelim();
    }
    if (message.winner !== "") {
      writer.uint32(18).string(message.winner);
    }
    for (const v of message.awards) {
      GameAward.encode(v!, writer.uint32(26).fork()).ldelim();
    }
    return writer;
  },

  decode(input: Reader | Uint8Array, length?: number): GameResolution {
    const reader = input instanceof Reader ? input : new Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = { ...baseGameResolution } as GameResolution;
    message.awards = [];
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.finishedAt = fromTimestamp(
            Timestamp.decode(reader, reader.uint32())
          );
          break;
        case 2:
          message.winner = reader.string();
          break;
        case 3:
          message.awards.push(GameAward.decode(reader, reader.uint32()));
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): GameResolution {
    const message = { ...baseGameResolution } as GameResolution;
    message.finishedAt =
      object.finishedAt !== undefined && object.finishedAt !== null
        ? fromJsonTimestamp(object.finishedAt)
        : undefined;
    message.winner =
      object.winner !== undefined && object.winner !== null
        ? String(object.winner)
        : "";
    message.awards = (object.awards ?? []).map((e: any) =>
      GameAward.fromJSON(e)
    );
    return message;
  },

  toJSON(message: GameResolution): unknown {
    const obj: any = {};
    message.finishedAt !== undefined &&
      (obj.finishedAt = message.finishedAt.toISOString());
    message.winner !== undefined && (obj.winner = message.winner);
    if (message.awards) {
      obj.awards = message.awards.map((e) =>
        e ? GameAward.toJSON(e) : undefined
      );
    } else {
      obj.awards = [];
    }
    return obj;
  },

  fromPartial<I extends Exact<DeepPartial<GameResolution>, I>>(
    object: I
  ): GameResolution {
    const message = { ...baseGameResolution } as GameResolution;
    message.finishedAt = object.finishedAt ?? undefined;
    message.winner = object.winner ?? "";
    message.awards = object.awards?.map((e) => GameAward.fromPartial(e)) || [];
    return message;
  },
};

const baseGameViewerDataPlayer: object = {
  name: "",
  scores: 0,
  totalScores: 0,
};

export const GameViewerDataPlayer = {
  encode(
    message: GameViewerDataPlayer,
    writer: Writer = Writer.create()
  ): Writer {
    if (message.name !== "") {
      writer.uint32(10).string(message.name);
    }
    writer.uint32(18).fork();
    for (const v of message.scores) {
      writer.uint32(v);
    }
    writer.ldelim();
    writer.uint32(26).fork();
    for (const v of message.totalScores) {
      writer.uint32(v);
    }
    writer.ldelim();
    return writer;
  },

  decode(input: Reader | Uint8Array, length?: number): GameViewerDataPlayer {
    const reader = input instanceof Reader ? input : new Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = { ...baseGameViewerDataPlayer } as GameViewerDataPlayer;
    message.scores = [];
    message.totalScores = [];
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.name = reader.string();
          break;
        case 2:
          if ((tag & 7) === 2) {
            const end2 = reader.uint32() + reader.pos;
            while (reader.pos < end2) {
              message.scores.push(reader.uint32());
            }
          } else {
            message.scores.push(reader.uint32());
          }
          break;
        case 3:
          if ((tag & 7) === 2) {
            const end2 = reader.uint32() + reader.pos;
            while (reader.pos < end2) {
              message.totalScores.push(reader.uint32());
            }
          } else {
            message.totalScores.push(reader.uint32());
          }
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): GameViewerDataPlayer {
    const message = { ...baseGameViewerDataPlayer } as GameViewerDataPlayer;
    message.name =
      object.name !== undefined && object.name !== null
        ? String(object.name)
        : "";
    message.scores = (object.scores ?? []).map((e: any) => Number(e));
    message.totalScores = (object.totalScores ?? []).map((e: any) => Number(e));
    return message;
  },

  toJSON(message: GameViewerDataPlayer): unknown {
    const obj: any = {};
    message.name !== undefined && (obj.name = message.name);
    if (message.scores) {
      obj.scores = message.scores.map((e) => Math.round(e));
    } else {
      obj.scores = [];
    }
    if (message.totalScores) {
      obj.totalScores = message.totalScores.map((e) => Math.round(e));
    } else {
      obj.totalScores = [];
    }
    return obj;
  },

  fromPartial<I extends Exact<DeepPartial<GameViewerDataPlayer>, I>>(
    object: I
  ): GameViewerDataPlayer {
    const message = { ...baseGameViewerDataPlayer } as GameViewerDataPlayer;
    message.name = object.name ?? "";
    message.scores = object.scores?.map((e) => e) || [];
    message.totalScores = object.totalScores?.map((e) => e) || [];
    return message;
  },
};

const baseGameViewerData: object = {
  currentPlayerName: "",
  nextPlayerName: "",
};

export const GameViewerData = {
  encode(message: GameViewerData, writer: Writer = Writer.create()): Writer {
    for (const v of message.players) {
      GameViewerDataPlayer.encode(v!, writer.uint32(10).fork()).ldelim();
    }
    if (message.currentPlayerName !== "") {
      writer.uint32(18).string(message.currentPlayerName);
    }
    if (message.nextPlayerName !== "") {
      writer.uint32(26).string(message.nextPlayerName);
    }
    return writer;
  },

  decode(input: Reader | Uint8Array, length?: number): GameViewerData {
    const reader = input instanceof Reader ? input : new Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = { ...baseGameViewerData } as GameViewerData;
    message.players = [];
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.players.push(
            GameViewerDataPlayer.decode(reader, reader.uint32())
          );
          break;
        case 2:
          message.currentPlayerName = reader.string();
          break;
        case 3:
          message.nextPlayerName = reader.string();
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): GameViewerData {
    const message = { ...baseGameViewerData } as GameViewerData;
    message.players = (object.players ?? []).map((e: any) =>
      GameViewerDataPlayer.fromJSON(e)
    );
    message.currentPlayerName =
      object.currentPlayerName !== undefined &&
      object.currentPlayerName !== null
        ? String(object.currentPlayerName)
        : "";
    message.nextPlayerName =
      object.nextPlayerName !== undefined && object.nextPlayerName !== null
        ? String(object.nextPlayerName)
        : "";
    return message;
  },

  toJSON(message: GameViewerData): unknown {
    const obj: any = {};
    if (message.players) {
      obj.players = message.players.map((e) =>
        e ? GameViewerDataPlayer.toJSON(e) : undefined
      );
    } else {
      obj.players = [];
    }
    message.currentPlayerName !== undefined &&
      (obj.currentPlayerName = message.currentPlayerName);
    message.nextPlayerName !== undefined &&
      (obj.nextPlayerName = message.nextPlayerName);
    return obj;
  },

  fromPartial<I extends Exact<DeepPartial<GameViewerData>, I>>(
    object: I
  ): GameViewerData {
    const message = { ...baseGameViewerData } as GameViewerData;
    message.players =
      object.players?.map((e) => GameViewerDataPlayer.fromPartial(e)) || [];
    message.currentPlayerName = object.currentPlayerName ?? "";
    message.nextPlayerName = object.nextPlayerName ?? "";
    return message;
  },
};

const baseGame: object = { status: 0 };

export const Game = {
  encode(message: Game, writer: Writer = Writer.create()): Writer {
    if (message.config !== undefined) {
      GameConfig.encode(message.config, writer.uint32(10).fork()).ldelim();
    }
    for (const v of message.players) {
      GamePlayer.encode(v!, writer.uint32(18).fork()).ldelim();
    }
    if (message.resolution !== undefined) {
      GameResolution.encode(
        message.resolution,
        writer.uint32(26).fork()
      ).ldelim();
    }
    if (message.status !== 0) {
      writer.uint32(32).int32(message.status);
    }
    if (message.startedAt !== undefined) {
      Timestamp.encode(
        toTimestamp(message.startedAt),
        writer.uint32(42).fork()
      ).ldelim();
    }
    if (message.viewerData !== undefined) {
      GameViewerData.encode(
        message.viewerData,
        writer.uint32(50).fork()
      ).ldelim();
    }
    return writer;
  },

  decode(input: Reader | Uint8Array, length?: number): Game {
    const reader = input instanceof Reader ? input : new Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = { ...baseGame } as Game;
    message.players = [];
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.config = GameConfig.decode(reader, reader.uint32());
          break;
        case 2:
          message.players.push(GamePlayer.decode(reader, reader.uint32()));
          break;
        case 3:
          message.resolution = GameResolution.decode(reader, reader.uint32());
          break;
        case 4:
          message.status = reader.int32() as any;
          break;
        case 5:
          message.startedAt = fromTimestamp(
            Timestamp.decode(reader, reader.uint32())
          );
          break;
        case 6:
          message.viewerData = GameViewerData.decode(reader, reader.uint32());
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
    message.players = (object.players ?? []).map((e: any) =>
      GamePlayer.fromJSON(e)
    );
    message.resolution =
      object.resolution !== undefined && object.resolution !== null
        ? GameResolution.fromJSON(object.resolution)
        : undefined;
    message.status =
      object.status !== undefined && object.status !== null
        ? gameStatusFromJSON(object.status)
        : 0;
    message.startedAt =
      object.startedAt !== undefined && object.startedAt !== null
        ? fromJsonTimestamp(object.startedAt)
        : undefined;
    message.viewerData =
      object.viewerData !== undefined && object.viewerData !== null
        ? GameViewerData.fromJSON(object.viewerData)
        : undefined;
    return message;
  },

  toJSON(message: Game): unknown {
    const obj: any = {};
    message.config !== undefined &&
      (obj.config = message.config
        ? GameConfig.toJSON(message.config)
        : undefined);
    if (message.players) {
      obj.players = message.players.map((e) =>
        e ? GamePlayer.toJSON(e) : undefined
      );
    } else {
      obj.players = [];
    }
    message.resolution !== undefined &&
      (obj.resolution = message.resolution
        ? GameResolution.toJSON(message.resolution)
        : undefined);
    message.status !== undefined &&
      (obj.status = gameStatusToJSON(message.status));
    message.startedAt !== undefined &&
      (obj.startedAt = message.startedAt.toISOString());
    message.viewerData !== undefined &&
      (obj.viewerData = message.viewerData
        ? GameViewerData.toJSON(message.viewerData)
        : undefined);
    return obj;
  },

  fromPartial<I extends Exact<DeepPartial<Game>, I>>(object: I): Game {
    const message = { ...baseGame } as Game;
    message.config =
      object.config !== undefined && object.config !== null
        ? GameConfig.fromPartial(object.config)
        : undefined;
    message.players =
      object.players?.map((e) => GamePlayer.fromPartial(e)) || [];
    message.resolution =
      object.resolution !== undefined && object.resolution !== null
        ? GameResolution.fromPartial(object.resolution)
        : undefined;
    message.status = object.status ?? 0;
    message.startedAt = object.startedAt ?? undefined;
    message.viewerData =
      object.viewerData !== undefined && object.viewerData !== null
        ? GameViewerData.fromPartial(object.viewerData)
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
