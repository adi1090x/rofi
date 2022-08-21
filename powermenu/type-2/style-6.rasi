/**
 *
 * Author : Aditya Shakya (adi1090x)
 * Github : @adi1090x
 * 
 * Rofi Theme File
 * Rofi Version: 1.7.3
 **/

/*****----- Configuration -----*****/
configuration {
    show-icons:                 false;
}

/*****----- Global Properties -----*****/
@import                          "shared/colors.rasi"
@import                          "shared/fonts.rasi"

/*
USE_BUTTONS=YES
*/

/*****----- Main Window -----*****/
window {
    /* properties for window widget */
    transparency:                "real";
    location:                    south;
    anchor:                      south;
    fullscreen:                  false;
    width:                       500px;
    x-offset:                    0px;
    y-offset:                    -15px;

    /* properties for all widgets */
    enabled:                     true;
    margin:                      0px;
    padding:                     0px;
    border:                      0px solid;
    border-radius:               12px;
    border-color:                @selected;
    cursor:                      "default";
    background-color:            @background;
}

/*****----- Main Box -----*****/
mainbox {
    enabled:                     true;
    spacing:                     15px;
    margin:                      0px;
    padding:                     15px;
    border:                      0px solid;
    border-radius:               0px;
    border-color:                @selected;
    background-color:            transparent;
    children:                    [ "message", "listview" ];
}

/*****----- Inputbar -----*****/
inputbar {
    enabled:                     true;
    spacing:                     0px;
    margin:                      0px;
    padding:                     0px;
    border:                      0px;
    border-radius:               0px;
    border-color:                @selected;
    background-color:            transparent;
    text-color:                  @foreground;
    children:                    [ "textbox-prompt-colon", "prompt"];
}

dummy {
    background-color:            transparent;
}

textbox-prompt-colon {
    enabled:                     true;
    expand:                      false;
    str:                         "";
    padding:                     12px 16px;
    border-radius:               0px;
    background-color:            @urgent;
    text-color:                  @background;
}
prompt {
    enabled:                     true;
    padding:                     12px;
    border-radius:               0px;
    background-color:            @active;
    text-color:                  @background;
}

/*****----- Message -----*****/
message {
    enabled:                     true;
    margin:                      0px;
    padding:                     12px;
    border:                      0px 2px dash 0px 2px dash;
    border-radius:               12px;
    border-color:                @selected;
    background-color:            @background-alt;
    text-color:                  @foreground;
}
textbox {
    background-color:            inherit;
    text-color:                  inherit;
    vertical-align:              0.5;
    horizontal-align:            0.5;
    placeholder-color:           @foreground;
    blink:                       true;
    markup:                      true;
}
error-message {
    padding:                     12px;
    border:                      0px solid;
    border-radius:               0px;
    border-color:                @selected;
    background-color:            @background;
    text-color:                  @foreground;
}

/*****----- Listview -----*****/
listview {
    enabled:                     true;
    columns:                     5;
    lines:                       1;
    cycle:                       true;
    dynamic:                     true;
    scrollbar:                   false;
    layout:                      vertical;
    reverse:                     false;
    fixed-height:                true;
    fixed-columns:               true;
    
    spacing:                     15px;
    margin:                      0px;
    padding:                     0px;
    border:                      0px solid;
    border-radius:               0px;
    border-color:                @selected;
    background-color:            transparent;
    text-color:                  @foreground;
    cursor:                      "default";
}

/*****----- Elements -----*****/
element {
    enabled:                     true;
    spacing:                     0px;
    margin:                      0px;
    padding:                     20px 0px;
    border:                      0px;
    border-radius:               30px 12px 30px 12px;
    border-color:                @selected;
    background-color:            @background-alt;
    text-color:                  @foreground;
    cursor:                      pointer;
}
element-text {
    font:                        "feather bold 24";
    background-color:            transparent;
    text-color:                  inherit;
    cursor:                      inherit;
    vertical-align:              0.5;
    horizontal-align:            0.5;
}
element selected.normal {
    border:                      0px 10px dash 0px 10px dash;
    border-color:                @selected;
    background-color:            var(selected);
    text-color:                  var(background);
}
