import { TextDocument, IConnection } from 'vscode-languageserver';
import { ILinterConfig } from '../common/types';
export declare function next(textDocument: TextDocument, connection: IConnection, configs: ILinterConfig[]): void;
export declare function unsubscribe(textDocument: TextDocument): void;
