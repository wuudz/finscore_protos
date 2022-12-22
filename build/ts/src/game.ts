/* eslint-disable */
import { util, configure, Writer, Reader } from "protobufjs/minimal";
import * as Long from "long";
import { Timestamp } from "../google/protobuf/timestamp";

export const protobufPackage = "";

export enum PlayerOrder {
  USER_DEFINED = "USER_DEFINED",
  RANDOM = "RANDOM",
  UNRECOGNIZED = "UNRECOGNIZED",
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

export function playerOrderToNumber(object: PlayerOrder): number {
  switch (object) {
    case PlayerOrder.USER_DEFINED:
      return 0;
    case PlayerOrder.RANDOM:
      return 1;
    default:
      return 0;
  }
}

export enum GameStatus {
  UNKNOWN = "UNKNOWN",
  PLAYING = "PLAYING",
  PAUSED = "PAUSED",
  FINISHED = "FINISHED",
  CANCELED = "CANCELED",
  UNRECOGNIZED = "UNRECOGNIZED",
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

export function gameStatusToNumber(object: GameStatus): number {
  switch (object) {
    case GameStatus.UNKNOWN:
      return 0;
    case GameStatus.PLAYING:
      return 1;
    case GameStatus.PAUSED:
      return 2;
    case GameStatus.FINISHED:
      return 3;
    case GameStatus.CANCELED:
      return 4;
    default:
      return 0;
  }
}

export enum GameAwardType {
  SLOW_POKE = "SLOW_POKE",
  SHARP_SHOOTER = "SHARP_SHOOTER",
  PEA_SHOOTER = "PEA_SHOOTER",
  TWELVIE = "TWELVIE",
  HIGH_ROLLER = "HIGH_ROLLER",
  ZEROS = "ZEROS",
  RESETTER = "RESETTER",
  SO_CLOSE = "SO_CLOSE",
  LOWEST_SCORE = "LOWEST_SCORE",
  CLOSE_CALL = "CLOSE_CALL",
  UNRECOGNIZED = "UNRECOGNIZED",
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
    case 4:
    case "HIGH_ROLLER":
      return GameAwardType.HIGH_ROLLER;
    case 5:
    case "ZEROS":
      return GameAwardType.ZEROS;
    case 6:
    case "RESETTER":
      return GameAwardType.RESETTER;
    case 7:
    case "SO_CLOSE":
      return GameAwardType.SO_CLOSE;
    case 8:
    case "LOWEST_SCORE":
      return GameAwardType.LOWEST_SCORE;
    case 9:
    case "CLOSE_CALL":
      return GameAwardType.CLOSE_CALL;
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
    case GameAwardType.HIGH_ROLLER:
      return "HIGH_ROLLER";
    case GameAwardType.ZEROS:
      return "ZEROS";
    case GameAwardType.RESETTER:
      return "RESETTER";
    case GameAwardType.SO_CLOSE:
      return "SO_CLOSE";
    case GameAwardType.LOWEST_SCORE:
      return "LOWEST_SCORE";
    case GameAwardType.CLOSE_CALL:
      return "CLOSE_CALL";
    default:
      return "UNKNOWN";
  }
}

export function gameAwardTypeToNumber(object: GameAwardType): number {
  switch (object) {
    case GameAwardType.SLOW_POKE:
      return 0;
    case GameAwardType.SHARP_SHOOTER:
      return 1;
    case GameAwardType.PEA_SHOOTER:
      return 2;
    case GameAwardType.TWELVIE:
      return 3;
    case GameAwardType.HIGH_ROLLER:
      return 4;
    case GameAwardType.ZEROS:
      return 5;
    case GameAwardType.RESETTER:
      return 6;
    case GameAwardType.SO_CLOSE:
      return 7;
    case GameAwardType.LOWEST_SCORE:
      return 8;
    case GameAwardType.CLOSE_CALL:
      return 9;
    default:
      return 0;
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
  name: string;
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
  eliminated: boolean;
}

export interface GameViewerData {
  players: GameViewerDataPlayer[];
  currentPlayerName: string;
  nextPlayerName: string;
  currentRound: number;
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
  playerOrder: PlayerOrder.USER_DEFINED,
};

export const GameConfig = {
  encode(message: GameConfig, writer: Writer = Writer.create()): Writer {
    if (message.zeros !== 0) {
      writer.uint32(8).sint32(message.zeros);
    }
    if (message.resetScore !== 0) {
      writer.uint32(16).uint32(message.resetScore);
    }
    if (message.winningScore !== 0) {
      writer.uint32(24).uint32(message.winningScore);
    }
    if (message.playerOrder !== PlayerOrder.USER_DEFINED) {
      writer.uint32(32).int32(playerOrderToNumber(message.playerOrder));
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
          message.zeros = reader.sint32();
          break;
        case 2:
          message.resetScore = reader.uint32();
          break;
        case 3:
          message.winningScore = reader.uint32();
          break;
        case 4:
          message.playerOrder = playerOrderFromJSON(reader.int32());
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
        : PlayerOrder.USER_DEFINED;
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
    message.playerOrder = object.playerOrder ?? PlayerOrder.USER_DEFINED;
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

const baseGameAward: object = {
  type: GameAwardType.SLOW_POKE,
  receipient: "",
  value: "",
  name: "",
};

export const GameAward = {
  encode(message: GameAward, writer: Writer = Writer.create()): Writer {
    if (message.type !== GameAwardType.SLOW_POKE) {
      writer.uint32(8).int32(gameAwardTypeToNumber(message.type));
    }
    if (message.receipient !== "") {
      writer.uint32(18).string(message.receipient);
    }
    if (message.value !== "") {
      writer.uint32(26).string(message.value);
    }
    if (message.name !== "") {
      writer.uint32(34).string(message.name);
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
          message.type = gameAwardTypeFromJSON(reader.int32());
          break;
        case 2:
          message.receipient = reader.string();
          break;
        case 3:
          message.value = reader.string();
          break;
        case 4:
          message.name = reader.string();
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
        : GameAwardType.SLOW_POKE;
    message.receipient =
      object.receipient !== undefined && object.receipient !== null
        ? String(object.receipient)
        : "";
    message.value =
      object.value !== undefined && object.value !== null
        ? String(object.value)
        : "";
    message.name =
      object.name !== undefined && object.name !== null
        ? String(object.name)
        : "";
    return message;
  },

  toJSON(message: GameAward): unknown {
    const obj: any = {};
    message.type !== undefined &&
      (obj.type = gameAwardTypeToJSON(message.type));
    message.receipient !== undefined && (obj.receipient = message.receipient);
    message.value !== undefined && (obj.value = message.value);
    message.name !== undefined && (obj.name = message.name);
    return obj;
  },

  fromPartial<I extends Exact<DeepPartial<GameAward>, I>>(
    object: I
  ): GameAward {
    const message = { ...baseGameAward } as GameAward;
    message.type = object.type ?? GameAwardType.SLOW_POKE;
    message.receipient = object.receipient ?? "";
    message.value = object.value ?? "";
    message.name = object.name ?? "";
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
  eliminated: false,
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
    if (message.eliminated === true) {
      writer.uint32(32).bool(message.eliminated);
    }
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
        case 4:
          message.eliminated = reader.bool();
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
    message.eliminated =
      object.eliminated !== undefined && object.eliminated !== null
        ? Boolean(object.eliminated)
        : false;
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
    message.eliminated !== undefined && (obj.eliminated = message.eliminated);
    return obj;
  },

  fromPartial<I extends Exact<DeepPartial<GameViewerDataPlayer>, I>>(
    object: I
  ): GameViewerDataPlayer {
    const message = { ...baseGameViewerDataPlayer } as GameViewerDataPlayer;
    message.name = object.name ?? "";
    message.scores = object.scores?.map((e) => e) || [];
    message.totalScores = object.totalScores?.map((e) => e) || [];
    message.eliminated = object.eliminated ?? false;
    return message;
  },
};

const baseGameViewerData: object = {
  currentPlayerName: "",
  nextPlayerName: "",
  currentRound: 0,
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
    if (message.currentRound !== 0) {
      writer.uint32(32).uint32(message.currentRound);
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
        case 4:
          message.currentRound = reader.uint32();
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
    message.currentRound =
      object.currentRound !== undefined && object.currentRound !== null
        ? Number(object.currentRound)
        : 0;
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
    message.currentRound !== undefined &&
      (obj.currentRound = Math.round(message.currentRound));
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
    message.currentRound = object.currentRound ?? 0;
    return message;
  },
};

const baseGame: object = { status: GameStatus.UNKNOWN };

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
    if (message.status !== GameStatus.UNKNOWN) {
      writer.uint32(32).int32(gameStatusToNumber(message.status));
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
          message.status = gameStatusFromJSON(reader.int32());
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
        : GameStatus.UNKNOWN;
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
    message.status = object.status ?? GameStatus.UNKNOWN;
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
