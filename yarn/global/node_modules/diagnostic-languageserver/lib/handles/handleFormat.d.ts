import { TextEdit, TextDocument, CancellationToken } from 'vscode-languageserver';
import { IFormatterConfig } from '../common/types';
export declare function formatDocument(formatterConfigs: IFormatterConfig[], textDocument: TextDocument, token: CancellationToken): Promise<TextEdit[]>;
