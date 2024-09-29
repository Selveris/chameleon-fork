const std = @import("std");
const Styles = @import("../styles.zig");
const Utils = @import("../utils.zig");
const Chameleon = @This();

open: []const u8 = "",
close: []const u8 = "",

/// Returns the formatted text.
pub inline fn apply(self: Chameleon, comptime text: []const u8) []const u8 {
    return self.open ++ text ++ self.close;
}

/// Print the formatted text to stdout.
// pub inline fn printOut(self: Chameleon, comptime format: []const u8, args: anytype) !void {
//     defer self.removeAll();
//     try std.io.getStdOut().writer().print(self.fmt(format), args);
// }

/// Print the formatted text to stderr.
// pub inline fn printErr(self: Chameleon, comptime format: []const u8, args: anytype) !void {
//     defer self.removeAll();
//     try std.io.getStdErr().writer().print(self.fmt(format), args);
// }

inline fn addStyle(self: Chameleon, comptime style_name: []const u8) Chameleon {
    const style = Utils.wrapStyle(@field(Styles, style_name));
    return .{
        .open = self.open ++ style[0],
        .close = style[1] ++ self.close,
    };
}

pub inline fn reset(self: Chameleon) Chameleon {
    return comptime self.addStyle(@src().fn_name);
}

pub inline fn bold(self: Chameleon) Chameleon {
    return comptime self.addStyle(@src().fn_name);
}

pub inline fn dim(self: Chameleon) Chameleon {
    return comptime self.addStyle(@src().fn_name);
}

pub inline fn italic(self: Chameleon) Chameleon {
    return comptime self.addStyle(@src().fn_name);
}

pub inline fn underline(self: Chameleon) Chameleon {
    return comptime self.addStyle(@src().fn_name);
}

pub inline fn blink(self: Chameleon) Chameleon {
    return comptime self.addStyle(@src().fn_name);
}

pub inline fn inverse(self: Chameleon) Chameleon {
    return comptime self.addStyle(@src().fn_name);
}

pub inline fn hidden(self: Chameleon) Chameleon {
    return comptime self.addStyle(@src().fn_name);
}

pub inline fn strikethrough(self: Chameleon) Chameleon {
    return comptime self.addStyle(@src().fn_name);
}

pub inline fn doubleUnderline(self: Chameleon) Chameleon {
    return comptime self.addStyle(@src().fn_name);
}

pub inline fn overline(self: Chameleon) Chameleon {
    return comptime self.addStyle(@src().fn_name);
}

pub inline fn black(self: Chameleon) Chameleon {
    return comptime self.addStyle(@src().fn_name);
}

pub inline fn red(self: Chameleon) Chameleon {
    return comptime self.addStyle(@src().fn_name);
}

pub inline fn green(self: Chameleon) Chameleon {
    return comptime self.addStyle(@src().fn_name);
}

pub inline fn yellow(self: Chameleon) Chameleon {
    return comptime self.addStyle(@src().fn_name);
}

pub inline fn blue(self: Chameleon) Chameleon {
    return comptime self.addStyle(@src().fn_name);
}

pub inline fn magenta(self: Chameleon) Chameleon {
    return comptime self.addStyle(@src().fn_name);
}

pub inline fn cyan(self: Chameleon) Chameleon {
    return comptime self.addStyle(@src().fn_name);
}

pub inline fn white(self: Chameleon) Chameleon {
    return comptime self.addStyle(@src().fn_name);
}

pub inline fn blackBright(self: Chameleon) Chameleon {
    return comptime self.addStyle(@src().fn_name);
}

pub inline fn gray(self: Chameleon) Chameleon {
    return comptime blackBright(self);
}

pub inline fn grey(self: Chameleon) Chameleon {
    return comptime blackBright(self);
}

pub inline fn redBright(self: Chameleon) Chameleon {
    return comptime self.addStyle(@src().fn_name);
}

pub inline fn greenBright(self: Chameleon) Chameleon {
    return comptime self.addStyle(@src().fn_name);
}

pub inline fn yellowBright(self: Chameleon) Chameleon {
    return comptime self.addStyle(@src().fn_name);
}

pub inline fn blueBright(self: Chameleon) Chameleon {
    return comptime self.addStyle(@src().fn_name);
}

pub inline fn magentaBright(self: Chameleon) Chameleon {
    return comptime self.addStyle(@src().fn_name);
}

pub inline fn cyanBright(self: Chameleon) Chameleon {
    return comptime self.addStyle(@src().fn_name);
}

pub inline fn whiteBright(self: Chameleon) Chameleon {
    return comptime self.addStyle(@src().fn_name);
}

pub inline fn bgBlack(self: Chameleon) Chameleon {
    return comptime self.addStyle(@src().fn_name);
}

pub inline fn bgRed(self: Chameleon) Chameleon {
    return comptime self.addStyle(@src().fn_name);
}

pub inline fn bgGreen(self: Chameleon) Chameleon {
    return comptime self.addStyle(@src().fn_name);
}

pub inline fn bgYellow(self: Chameleon) Chameleon {
    return comptime self.addStyle(@src().fn_name);
}

pub inline fn bgBlue(self: Chameleon) Chameleon {
    return comptime self.addStyle(@src().fn_name);
}

pub inline fn bgMagenta(self: Chameleon) Chameleon {
    return comptime self.addStyle(@src().fn_name);
}

pub inline fn bgCyan(self: Chameleon) Chameleon {
    return comptime self.addStyle(@src().fn_name);
}

pub inline fn bgWhite(self: Chameleon) Chameleon {
    return comptime self.addStyle(@src().fn_name);
}

pub inline fn bgBlackBright(self: Chameleon) Chameleon {
    return comptime self.addStyle(@src().fn_name);
}

pub inline fn bgGray(self: Chameleon) Chameleon {
    return comptime bgBlackBright(self);
}

pub inline fn bgGrey(self: Chameleon) Chameleon {
    return comptime bgBlackBright(self);
}

pub inline fn bgRedBright(self: Chameleon) Chameleon {
    return comptime self.addStyle(@src().fn_name);
}

pub inline fn bgGreenBright(self: Chameleon) Chameleon {
    return comptime self.addStyle(@src().fn_name);
}

pub inline fn bgYellowBright(self: Chameleon) Chameleon {
    return comptime self.addStyle(@src().fn_name);
}

pub inline fn bgBlueBright(self: Chameleon) Chameleon {
    return comptime self.addStyle(@src().fn_name);
}

pub inline fn bgMagentaBright(self: Chameleon) Chameleon {
    return comptime self.addStyle(@src().fn_name);
}

pub inline fn bgCyanBright(self: Chameleon) Chameleon {
    return comptime self.addStyle(@src().fn_name);
}

pub inline fn bgWhiteBright(self: Chameleon) Chameleon {
    return comptime self.addStyle(@src().fn_name);
}

/// Set the foreground color to the rgb color values.
pub inline fn rgb(self: Chameleon, comptime r: u8, comptime g: u8, comptime b: u8) Chameleon {
    return .{
        .open = self.open ++ Utils.wrapAnsi16m(false, r, g, b),
        .close = "\u{001B}[39m" ++ self.close,
    };
}

/// Set the background color to the rgb color values.
pub inline fn bgRgb(self: Chameleon, comptime r: u8, comptime g: u8, comptime b: u8) Chameleon {
    return .{
        .open = self.open ++ Utils.wrapAnsi16m(true, r, g, b),
        .close = "\u{001B}[49m" ++ self.close,
    };
}

/// Set the foreground color to the hex color code.
///
/// NOTE:
/// - The `#` prefix is optional.
/// - Hex triplets are allowed. (e.g. `#FFAA00` is equivalent to `#FA0`)
///
pub inline fn hex(self: Chameleon, comptime hex_code: []const u8) Chameleon {
    const rgb_val = Utils.rgbFromHex(hex_code);
    return comptime self.rgb(rgb_val[0], rgb_val[1], rgb_val[2]);
}

/// Set the background color to the hex color code.
///
/// NOTE:
/// - The `#` prefix is optional.
/// - Hex triplets are allowed. (e.g. `#FFAA00` is equivalent to `#FA0`)
///
pub inline fn bgHex(self: Chameleon, comptime hex_code: []const u8) Chameleon {
    const rgb_val = Utils.rgbFromHex(hex_code);
    return comptime self.bgRgb(rgb_val[0], rgb_val[1], rgb_val[2]);
}
