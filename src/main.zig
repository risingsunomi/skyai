// -- GUI Structs -- //
const GUIWindow = struct {
    width: i32,
    height: i32
};

// -- Avatar Structs -- //

// AvatarMouthIdle
// base shape line
const AvatarMouthIdle = struct {
    startPosX: i32,
    startPosY: i32,
    endPosX: i32,
    endPosY: i32,
    color: rl.Color.green
};

// AvatarMouthTalking
// base shape circle
const AvatarMouthTalking = struct {
    centerX: i32,
    centerY: i32,
    radius: f32,
    color: rl.Color.green
};

// AvatarEyes
// base shape circle
const AvatarEyes = struct {
    centerX: i32,
    centerY: i32,
    radius: f32,
    color: rl.Color.green
};

// AvatarFace
// base shape rectangle
const AvatarFace = struct {
    eyes: []AvatarEyes,
    mouth: AvatarMouthIdle,
    posX: i32 = 20,
    posY: i32 = 20,
    width: i32,
    height: i32,
    color: rl.Color.dark_gray
};

// pub fn build_avatar(width: i32, height: i32) void {
//     const av_mouth = AvatarMouthIdle{
//         
//     }
// 
//     // make whole screen width for now
//     const av_face = AvatarFace{
//         .width: main_win.width-40,
//         .height: main_win.height-40
//     }
//     
//     rl.drawRectangle(posX: i32, posY: i32, width: i32, height: i32, color: Color)
// }

pub fn main() !void {
    const main_win = GUIWindow{
        .width = 600,
        .height = 480
    };

    rl.initWindow(main_win.width, main_win.height, "skyai [ver 0.1]");
    defer rl.closeWindow();

    rl.setTargetFPS(30);

    while (!rl.windowShouldClose()) {
        //std.log.info("Window is open!", .{});
        rl.beginDrawing();
        defer rl.endDrawing();

        rl.clearBackground(.black);

        rl.drawRectangleLines(20, 20, main_win.width-40, main_win.height-40, .green);
        rl.drawCircleLines(160, 145, 80, .yellow);
        rl.drawCircleLines(430, 145, 80, .yellow);
        rl.drawLine(60, main_win.height-150, main_win.width-60, main_win.height-150, .blue);
    }
}

const std = @import("std");
// Raylib
const rl = @import("raylib");
