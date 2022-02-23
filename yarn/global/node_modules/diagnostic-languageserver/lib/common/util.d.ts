/// <reference types="node" />
import { TextDocument } from 'vscode-languageserver';
import { Readable } from 'stream';
import { SpawnOptions } from 'child_process';
export declare function executeFile(input: Readable, textDocument: TextDocument, command: string, args?: any[], option?: SpawnOptions): Promise<{
    code: number;
    stdout: string;
    stderr: string;
}>;
export interface SpawnAsyncOptions extends SpawnOptions {
    input?: Readable;
}
export declare function spawnAsync(command: string, args: ReadonlyArray<string>, options: SpawnAsyncOptions): Promise<{
    code: number;
    stdout: string;
    stderr: string;
}>;
export declare function findWorkDirectory(filePath: string, rootPatterns: string | string[]): Promise<string>;
export declare function findCommand(command: string, workDir: string): Promise<string>;
export declare function checkAnyFileExists(workDir: string, testPaths: string[]): boolean;
