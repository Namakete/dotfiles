"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var vscode_languageserver_1 = require("vscode-languageserver");
var Logger = /** @class */ (function () {
    function Logger() {
        this.isInit = false;
        this.logs = [];
    }
    Logger.prototype.init = function (con, lev) {
        var _this = this;
        this.connection = con;
        this.level = lev;
        this.isInit = true;
        if (this.logs.length) {
            this.logs.forEach(function (log) {
                if (_this[log.type]) {
                    _this[log.type](log.message);
                }
            });
            this.logs = [];
        }
    };
    Logger.prototype.error = function (message) {
        if (!this.isInit) {
            return this.logs.push({
                type: 'error',
                message: message
            });
        }
        if (this.connection && this.level >= vscode_languageserver_1.MessageType.Error) {
            this.connection.console.error(message);
        }
    };
    Logger.prototype.warn = function (message) {
        if (!this.isInit) {
            return this.logs.push({
                type: 'warn',
                message: message
            });
        }
        if (this.connection && this.level >= vscode_languageserver_1.MessageType.Warning) {
            this.connection.console.warn(message);
        }
    };
    Logger.prototype.info = function (message) {
        if (!this.isInit) {
            return this.logs.push({
                type: 'info',
                message: message
            });
        }
        if (this.connection && this.level >= vscode_languageserver_1.MessageType.Info) {
            this.connection.console.info(message);
        }
    };
    Logger.prototype.log = function (message) {
        if (!this.isInit) {
            return this.logs.push({
                type: 'log',
                message: message
            });
        }
        if (this.connection && this.level >= vscode_languageserver_1.MessageType.Log) {
            this.connection.console.log(message);
        }
    };
    return Logger;
}());
exports.default = new Logger();
