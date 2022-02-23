import { IConnection, MessageType } from 'vscode-languageserver';
declare class Logger {
    isInit: boolean;
    connection: IConnection;
    level: MessageType;
    logs: Array<{
        type: string;
        message: string;
    }>;
    init(con: IConnection, lev: MessageType): void;
    error(message: string): number;
    warn(message: string): number;
    info(message: string): number;
    log(message: string): number;
}
declare const _default: Logger;
export default _default;
