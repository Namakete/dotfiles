"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var tslib_1 = require("tslib");
var stream_1 = require("stream");
// create an readable stream
var HunkStream = /** @class */ (function (_super) {
    tslib_1.__extends(HunkStream, _super);
    function HunkStream(content) {
        var _this = _super.call(this) || this;
        _this.content = content;
        return _this;
    }
    HunkStream.prototype._read = function () {
        var ctx = this;
        ctx.push(this.content);
        ctx.push(null);
    };
    HunkStream.prototype.toString = function () {
        return this.content;
    };
    return HunkStream;
}(stream_1.Readable));
exports.default = HunkStream;
