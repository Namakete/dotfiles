/// <reference types="node" />
import { Readable } from 'stream';
export default class HunkStream extends Readable {
    private content;
    constructor(content: String);
    _read(): void;
    toString(): String;
}
