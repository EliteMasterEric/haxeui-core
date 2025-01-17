package haxe.ui.events;

import haxe.ui.validators.IValidator;

class ValidatorEvent extends UIEvent {
    public static inline var VALID_DATA:String = "validdata";
    public static inline var INVALID_DATA:String = "invaliddata";

    public var validator:IValidator;
    public var valid:Bool;

    public override function clone():ValidatorEvent {
        var c:ValidatorEvent = new ValidatorEvent(this.type);
        c.type = this.type;
        c.bubble = this.bubble;
        c.target = this.target;
        c.data = this.data;
        c.canceled = this.canceled;
        c.validator = this.validator;
        c.valid = this.valid;
        postClone(c);
        return c;
    }
}