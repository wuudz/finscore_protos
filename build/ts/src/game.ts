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
  TIME_AVERAGE_HIGHEST = "TIME_AVERAGE_HIGHEST",
  TIME_AVERAGE_LOWEST = "TIME_AVERAGE_LOWEST",
  ZERO_COUNT_ZERO = "ZERO_COUNT_ZERO",
  ZERO_COUNT_LOWEST = "ZERO_COUNT_LOWEST",
  ZERO_COUNT_HIGHEST = "ZERO_COUNT_HIGHEST",
  INSTANT_OUT = "INSTANT_OUT",
  BREAK_TWELVE = "BREAK_TWELVE",
  BREAK_ZERO = "BREAK_ZERO",
  SCORE_AVERAGE_LOWEST = "SCORE_AVERAGE_LOWEST",
  SCORE_AVERAGE_HIGHEST = "SCORE_AVERAGE_HIGHEST",
  SCORE_TOTAL_2ND_HIGHEST = "SCORE_TOTAL_2ND_HIGHEST",
  SCORE_TOTAL_LOWEST = "SCORE_TOTAL_LOWEST",
  SCORE_CHAIN_BREAKER = "SCORE_CHAIN_BREAKER",
  SCORE_STREAK_TWO_1S = "SCORE_STREAK_TWO_1S",
  SCORE_STREAK_SAME = "SCORE_STREAK_SAME",
  TWELVE_COUNT_HIGHEST = "TWELVE_COUNT_HIGHEST",
  RESET_COUNT_HIGHEST = "RESET_COUNT_HIGHEST",
  DANGER_COUNT_HIGHEST = "DANGER_COUNT_HIGHEST",
  DANGER_THEN_TWELVE = "DANGER_THEN_TWELVE",
  POSITION_FIRST_TO_LAST = "POSITION_FIRST_TO_LAST",
  /** WIN_NONE_IN_RANGE - Won with no other player in range */
  WIN_NONE_IN_RANGE = "WIN_NONE_IN_RANGE",
  /** WIN_MINIMUM_ROUNDS - Won in least possible rounds */
  WIN_MINIMUM_ROUNDS = "WIN_MINIMUM_ROUNDS",
  WIN_FROM_EARLY_LAST_POSITION = "WIN_FROM_EARLY_LAST_POSITION",
  WIN_ALWAYS_FIRST_POSITION = "WIN_ALWAYS_FIRST_POSITION",
  WIN_AFTER_RESET = "WIN_AFTER_RESET",
  WIN_WHILE_IN_DANGER = "WIN_WHILE_IN_DANGER",
  WIN_WITH_SCORE_ONE = "WIN_WITH_SCORE_ONE",
  UNRECOGNIZED = "UNRECOGNIZED",
}

export function gameAwardTypeFromJSON(object: any): GameAwardType {
  switch (object) {
    case 0:
    case "TIME_AVERAGE_HIGHEST":
      return GameAwardType.TIME_AVERAGE_HIGHEST;
    case 16:
    case "TIME_AVERAGE_LOWEST":
      return GameAwardType.TIME_AVERAGE_LOWEST;
    case 11:
    case "ZERO_COUNT_ZERO":
      return GameAwardType.ZERO_COUNT_ZERO;
    case 1:
    case "ZERO_COUNT_LOWEST":
      return GameAwardType.ZERO_COUNT_LOWEST;
    case 5:
    case "ZERO_COUNT_HIGHEST":
      return GameAwardType.ZERO_COUNT_HIGHEST;
    case 12:
    case "INSTANT_OUT":
      return GameAwardType.INSTANT_OUT;
    case 19:
    case "BREAK_TWELVE":
      return GameAwardType.BREAK_TWELVE;
    case 22:
    case "BREAK_ZERO":
      return GameAwardType.BREAK_ZERO;
    case 2:
    case "SCORE_AVERAGE_LOWEST":
      return GameAwardType.SCORE_AVERAGE_LOWEST;
    case 4:
    case "SCORE_AVERAGE_HIGHEST":
      return GameAwardType.SCORE_AVERAGE_HIGHEST;
    case 7:
    case "SCORE_TOTAL_2ND_HIGHEST":
      return GameAwardType.SCORE_TOTAL_2ND_HIGHEST;
    case 8:
    case "SCORE_TOTAL_LOWEST":
      return GameAwardType.SCORE_TOTAL_LOWEST;
    case 20:
    case "SCORE_CHAIN_BREAKER":
      return GameAwardType.SCORE_CHAIN_BREAKER;
    case 21:
    case "SCORE_STREAK_TWO_1S":
      return GameAwardType.SCORE_STREAK_TWO_1S;
    case 15:
    case "SCORE_STREAK_SAME":
      return GameAwardType.SCORE_STREAK_SAME;
    case 3:
    case "TWELVE_COUNT_HIGHEST":
      return GameAwardType.TWELVE_COUNT_HIGHEST;
    case 6:
    case "RESET_COUNT_HIGHEST":
      return GameAwardType.RESET_COUNT_HIGHEST;
    case 9:
    case "DANGER_COUNT_HIGHEST":
      return GameAwardType.DANGER_COUNT_HIGHEST;
    case 23:
    case "DANGER_THEN_TWELVE":
      return GameAwardType.DANGER_THEN_TWELVE;
    case 18:
    case "POSITION_FIRST_TO_LAST":
      return GameAwardType.POSITION_FIRST_TO_LAST;
    case 10:
    case "WIN_NONE_IN_RANGE":
      return GameAwardType.WIN_NONE_IN_RANGE;
    case 13:
    case "WIN_MINIMUM_ROUNDS":
      return GameAwardType.WIN_MINIMUM_ROUNDS;
    case 17:
    case "WIN_FROM_EARLY_LAST_POSITION":
      return GameAwardType.WIN_FROM_EARLY_LAST_POSITION;
    case 14:
    case "WIN_ALWAYS_FIRST_POSITION":
      return GameAwardType.WIN_ALWAYS_FIRST_POSITION;
    case 25:
    case "WIN_AFTER_RESET":
      return GameAwardType.WIN_AFTER_RESET;
    case 24:
    case "WIN_WHILE_IN_DANGER":
      return GameAwardType.WIN_WHILE_IN_DANGER;
    case 26:
    case "WIN_WITH_SCORE_ONE":
      return GameAwardType.WIN_WITH_SCORE_ONE;
    case -1:
    case "UNRECOGNIZED":
    default:
      return GameAwardType.UNRECOGNIZED;
  }
}

export function gameAwardTypeToJSON(object: GameAwardType): string {
  switch (object) {
    case GameAwardType.TIME_AVERAGE_HIGHEST:
      return "TIME_AVERAGE_HIGHEST";
    case GameAwardType.TIME_AVERAGE_LOWEST:
      return "TIME_AVERAGE_LOWEST";
    case GameAwardType.ZERO_COUNT_ZERO:
      return "ZERO_COUNT_ZERO";
    case GameAwardType.ZERO_COUNT_LOWEST:
      return "ZERO_COUNT_LOWEST";
    case GameAwardType.ZERO_COUNT_HIGHEST:
      return "ZERO_COUNT_HIGHEST";
    case GameAwardType.INSTANT_OUT:
      return "INSTANT_OUT";
    case GameAwardType.BREAK_TWELVE:
      return "BREAK_TWELVE";
    case GameAwardType.BREAK_ZERO:
      return "BREAK_ZERO";
    case GameAwardType.SCORE_AVERAGE_LOWEST:
      return "SCORE_AVERAGE_LOWEST";
    case GameAwardType.SCORE_AVERAGE_HIGHEST:
      return "SCORE_AVERAGE_HIGHEST";
    case GameAwardType.SCORE_TOTAL_2ND_HIGHEST:
      return "SCORE_TOTAL_2ND_HIGHEST";
    case GameAwardType.SCORE_TOTAL_LOWEST:
      return "SCORE_TOTAL_LOWEST";
    case GameAwardType.SCORE_CHAIN_BREAKER:
      return "SCORE_CHAIN_BREAKER";
    case GameAwardType.SCORE_STREAK_TWO_1S:
      return "SCORE_STREAK_TWO_1S";
    case GameAwardType.SCORE_STREAK_SAME:
      return "SCORE_STREAK_SAME";
    case GameAwardType.TWELVE_COUNT_HIGHEST:
      return "TWELVE_COUNT_HIGHEST";
    case GameAwardType.RESET_COUNT_HIGHEST:
      return "RESET_COUNT_HIGHEST";
    case GameAwardType.DANGER_COUNT_HIGHEST:
      return "DANGER_COUNT_HIGHEST";
    case GameAwardType.DANGER_THEN_TWELVE:
      return "DANGER_THEN_TWELVE";
    case GameAwardType.POSITION_FIRST_TO_LAST:
      return "POSITION_FIRST_TO_LAST";
    case GameAwardType.WIN_NONE_IN_RANGE:
      return "WIN_NONE_IN_RANGE";
    case GameAwardType.WIN_MINIMUM_ROUNDS:
      return "WIN_MINIMUM_ROUNDS";
    case GameAwardType.WIN_FROM_EARLY_LAST_POSITION:
      return "WIN_FROM_EARLY_LAST_POSITION";
    case GameAwardType.WIN_ALWAYS_FIRST_POSITION:
      return "WIN_ALWAYS_FIRST_POSITION";
    case GameAwardType.WIN_AFTER_RESET:
      return "WIN_AFTER_RESET";
    case GameAwardType.WIN_WHILE_IN_DANGER:
      return "WIN_WHILE_IN_DANGER";
    case GameAwardType.WIN_WITH_SCORE_ONE:
      return "WIN_WITH_SCORE_ONE";
    default:
      return "UNKNOWN";
  }
}

export function gameAwardTypeToNumber(object: GameAwardType): number {
  switch (object) {
    case GameAwardType.TIME_AVERAGE_HIGHEST:
      return 0;
    case GameAwardType.TIME_AVERAGE_LOWEST:
      return 16;
    case GameAwardType.ZERO_COUNT_ZERO:
      return 11;
    case GameAwardType.ZERO_COUNT_LOWEST:
      return 1;
    case GameAwardType.ZERO_COUNT_HIGHEST:
      return 5;
    case GameAwardType.INSTANT_OUT:
      return 12;
    case GameAwardType.BREAK_TWELVE:
      return 19;
    case GameAwardType.BREAK_ZERO:
      return 22;
    case GameAwardType.SCORE_AVERAGE_LOWEST:
      return 2;
    case GameAwardType.SCORE_AVERAGE_HIGHEST:
      return 4;
    case GameAwardType.SCORE_TOTAL_2ND_HIGHEST:
      return 7;
    case GameAwardType.SCORE_TOTAL_LOWEST:
      return 8;
    case GameAwardType.SCORE_CHAIN_BREAKER:
      return 20;
    case GameAwardType.SCORE_STREAK_TWO_1S:
      return 21;
    case GameAwardType.SCORE_STREAK_SAME:
      return 15;
    case GameAwardType.TWELVE_COUNT_HIGHEST:
      return 3;
    case GameAwardType.RESET_COUNT_HIGHEST:
      return 6;
    case GameAwardType.DANGER_COUNT_HIGHEST:
      return 9;
    case GameAwardType.DANGER_THEN_TWELVE:
      return 23;
    case GameAwardType.POSITION_FIRST_TO_LAST:
      return 18;
    case GameAwardType.WIN_NONE_IN_RANGE:
      return 10;
    case GameAwardType.WIN_MINIMUM_ROUNDS:
      return 13;
    case GameAwardType.WIN_FROM_EARLY_LAST_POSITION:
      return 17;
    case GameAwardType.WIN_ALWAYS_FIRST_POSITION:
      return 14;
    case GameAwardType.WIN_AFTER_RESET:
      return 25;
    case GameAwardType.WIN_WHILE_IN_DANGER:
      return 24;
    case GameAwardType.WIN_WITH_SCORE_ONE:
      return 26;
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
  name: string | undefined;
  playerRef: string | undefined;
  scores: GameScore[];
  kicked: boolean;
}

export interface GameAward {
  type: GameAwardType;
  value: string;
  priority: number;
  emoji: string;
  textColor: string;
  backgroundColor: string;
  /** misspelled :( dont rename */
  receipient: string;
  name: string;
  description: string;
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

export interface GameShareData {
  key: string;
}

export interface Game {
  config: GameConfig | undefined;
  players: GamePlayer[];
  resolution: GameResolution | undefined;
  status: GameStatus;
  startedAt: Date | undefined;
  viewerData: GameViewerData | undefined;
  shareData: GameShareData | undefined;
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

const baseGamePlayer: object = { kicked: false };

export const GamePlayer = {
  encode(message: GamePlayer, writer: Writer = Writer.create()): Writer {
    if (message.name !== undefined) {
      writer.uint32(10).string(message.name);
    }
    if (message.playerRef !== undefined) {
      writer.uint32(34).string(message.playerRef);
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
        case 4:
          message.playerRef = reader.string();
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
        : undefined;
    message.playerRef =
      object.playerRef !== undefined && object.playerRef !== null
        ? String(object.playerRef)
        : undefined;
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
    message.playerRef !== undefined && (obj.playerRef = message.playerRef);
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
    message.name = object.name ?? undefined;
    message.playerRef = object.playerRef ?? undefined;
    message.scores = object.scores?.map((e) => GameScore.fromPartial(e)) || [];
    message.kicked = object.kicked ?? false;
    return message;
  },
};

const baseGameAward: object = {
  type: GameAwardType.TIME_AVERAGE_HIGHEST,
  value: "",
  priority: 0,
  emoji: "",
  textColor: "",
  backgroundColor: "",
  receipient: "",
  name: "",
  description: "",
};

export const GameAward = {
  encode(message: GameAward, writer: Writer = Writer.create()): Writer {
    if (message.type !== GameAwardType.TIME_AVERAGE_HIGHEST) {
      writer.uint32(8).int32(gameAwardTypeToNumber(message.type));
    }
    if (message.value !== "") {
      writer.uint32(26).string(message.value);
    }
    if (message.priority !== 0) {
      writer.uint32(56).uint32(message.priority);
    }
    if (message.emoji !== "") {
      writer.uint32(50).string(message.emoji);
    }
    if (message.textColor !== "") {
      writer.uint32(66).string(message.textColor);
    }
    if (message.backgroundColor !== "") {
      writer.uint32(74).string(message.backgroundColor);
    }
    if (message.receipient !== "") {
      writer.uint32(18).string(message.receipient);
    }
    if (message.name !== "") {
      writer.uint32(34).string(message.name);
    }
    if (message.description !== "") {
      writer.uint32(42).string(message.description);
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
        case 3:
          message.value = reader.string();
          break;
        case 7:
          message.priority = reader.uint32();
          break;
        case 6:
          message.emoji = reader.string();
          break;
        case 8:
          message.textColor = reader.string();
          break;
        case 9:
          message.backgroundColor = reader.string();
          break;
        case 2:
          message.receipient = reader.string();
          break;
        case 4:
          message.name = reader.string();
          break;
        case 5:
          message.description = reader.string();
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
        : GameAwardType.TIME_AVERAGE_HIGHEST;
    message.value =
      object.value !== undefined && object.value !== null
        ? String(object.value)
        : "";
    message.priority =
      object.priority !== undefined && object.priority !== null
        ? Number(object.priority)
        : 0;
    message.emoji =
      object.emoji !== undefined && object.emoji !== null
        ? String(object.emoji)
        : "";
    message.textColor =
      object.textColor !== undefined && object.textColor !== null
        ? String(object.textColor)
        : "";
    message.backgroundColor =
      object.backgroundColor !== undefined && object.backgroundColor !== null
        ? String(object.backgroundColor)
        : "";
    message.receipient =
      object.receipient !== undefined && object.receipient !== null
        ? String(object.receipient)
        : "";
    message.name =
      object.name !== undefined && object.name !== null
        ? String(object.name)
        : "";
    message.description =
      object.description !== undefined && object.description !== null
        ? String(object.description)
        : "";
    return message;
  },

  toJSON(message: GameAward): unknown {
    const obj: any = {};
    message.type !== undefined &&
      (obj.type = gameAwardTypeToJSON(message.type));
    message.value !== undefined && (obj.value = message.value);
    message.priority !== undefined &&
      (obj.priority = Math.round(message.priority));
    message.emoji !== undefined && (obj.emoji = message.emoji);
    message.textColor !== undefined && (obj.textColor = message.textColor);
    message.backgroundColor !== undefined &&
      (obj.backgroundColor = message.backgroundColor);
    message.receipient !== undefined && (obj.receipient = message.receipient);
    message.name !== undefined && (obj.name = message.name);
    message.description !== undefined &&
      (obj.description = message.description);
    return obj;
  },

  fromPartial<I extends Exact<DeepPartial<GameAward>, I>>(
    object: I
  ): GameAward {
    const message = { ...baseGameAward } as GameAward;
    message.type = object.type ?? GameAwardType.TIME_AVERAGE_HIGHEST;
    message.value = object.value ?? "";
    message.priority = object.priority ?? 0;
    message.emoji = object.emoji ?? "";
    message.textColor = object.textColor ?? "";
    message.backgroundColor = object.backgroundColor ?? "";
    message.receipient = object.receipient ?? "";
    message.name = object.name ?? "";
    message.description = object.description ?? "";
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

const baseGameShareData: object = { key: "" };

export const GameShareData = {
  encode(message: GameShareData, writer: Writer = Writer.create()): Writer {
    if (message.key !== "") {
      writer.uint32(10).string(message.key);
    }
    return writer;
  },

  decode(input: Reader | Uint8Array, length?: number): GameShareData {
    const reader = input instanceof Reader ? input : new Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = { ...baseGameShareData } as GameShareData;
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.key = reader.string();
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): GameShareData {
    const message = { ...baseGameShareData } as GameShareData;
    message.key =
      object.key !== undefined && object.key !== null ? String(object.key) : "";
    return message;
  },

  toJSON(message: GameShareData): unknown {
    const obj: any = {};
    message.key !== undefined && (obj.key = message.key);
    return obj;
  },

  fromPartial<I extends Exact<DeepPartial<GameShareData>, I>>(
    object: I
  ): GameShareData {
    const message = { ...baseGameShareData } as GameShareData;
    message.key = object.key ?? "";
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
    if (message.shareData !== undefined) {
      GameShareData.encode(
        message.shareData,
        writer.uint32(58).fork()
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
        case 7:
          message.shareData = GameShareData.decode(reader, reader.uint32());
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
    message.shareData =
      object.shareData !== undefined && object.shareData !== null
        ? GameShareData.fromJSON(object.shareData)
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
    message.shareData !== undefined &&
      (obj.shareData = message.shareData
        ? GameShareData.toJSON(message.shareData)
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
    message.shareData =
      object.shareData !== undefined && object.shareData !== null
        ? GameShareData.fromPartial(object.shareData)
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
