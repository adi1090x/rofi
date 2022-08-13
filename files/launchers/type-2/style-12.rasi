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
	modi:                       "drun";
    show-icons:                 true;
    display-drun:               " Applications";
	drun-display-format:        "{name}";
}

/*****----- Global Properties -----*****/
@import                          "shared/colors.rasi"
@import                          "shared/fonts.rasi"

/*****----- Main Window -----*****/
window {
    transparency:                "real";
    location:                    center;
    anchor:                      center;
    fullscreen:                  true;
    width:                       1366px;
    height:                      768px;
    x-offset:                    0px;
    y-offset:                    0px;

    enabled:                     true;
    margin:                      0px;
    padding:                     0px;
    border:                      0px solid;
    border-radius:               0px;
    border-color:                @selected;
    background-color:            @background;
    cursor:                      "default";
}

/*****----- Main Box -----*****/
mainbox {
    enabled:                     true;
    spacing:                     20px;
    margin:                      0px;
    padding:                     200px;
    border:                      0px solid;
    border-radius:               0px 0px 0px 0px;
    border-color:                @selected;
    background-color:            transparent;
    children:                    [ "inputbar", "listview" ];
}

/*****----- Inputbar -----*****/
inputbar {
    enabled:                     true;
    spacing:                     20px;
    margin:                      0px;
    padding:                     0px;
    border:                      0px;
    border-radius:               0px;
    border-color:                @selected;
    background-color:            @background;
    text-color:                  @foreground;
    children:                    [ "prompt", "entry" ];
}

prompt {
    enabled:                     true;
    padding:                     15px;
    border-radius:               100%;
    background-color:            @selected;
    text-color:                  @background;
}
textbox-prompt-colon {
    enabled:                     true;
    expand:                      false;
    str:                         "::";
    background-color:            inherit;
    text-color:                  inherit;
}
entry {
    enabled:                     true;
    expand:                      false;
    width:                       350px;
    padding:                     15px 20px;
    border-radius:               100%;
    background-color:            @background-alt;
    text-color:                  @foreground;
    cursor:                      text;
    placeholder:                 "Search...";
    placeholder-color:           inherit;
}

/*****----- Listview -----*****/
listview {
    enabled:                     true;
    columns:                     4;
    lines:                       10;
    cycle:                       true;
    dynamic:                     true;
    scrollbar:                   false;
    layout:                      vertical;
    reverse:                     false;
    fixed-height:                true;
    fixed-columns:               true;
    
    spacing:                     10px;
    margin:                      0px;
    padding:                     0px;
    border:                      0px solid;
    border-radius:               0px;
    border-color:                @selected;
    background-color:            transparent;
    text-color:                  @foreground;
    cursor:                      "default";
}
scrollbar {
    handle-width:                5px ;
    handle-color:                @selected;
    border-radius:               0px;
    background-color:            @background-alt;
}

/*****----- Elements -----*****/
element {
    enabled:                     true;
    spacing:                     10px;
    margin:                      0px;
    padding:                     8px;
    border:                      0px solid;
    border-radius:               100%;
    border-color:                @selected;
    background-color:            @background;
    text-color:                  @foreground;
    cursor:                      pointer;
}
element normal.normal {
    background-color:            @background;
    text-color:                  @foreground;
}
element selected.normal {
    background-color:            @background-alt;
    text-color:                  @foreground;
}
element-icon {
    padding:                     0px 0px 0px 0px;
    background-color:            transparent;
    text-color:                  inherit;
    size:                        32px;
    cursor:                      inherit;
}
element-text {
    background-color:            transparent;
    text-color:                  inherit;
    highlight:                   inherit;
    cursor:                      inherit;
    vertical-align:              0.5;
    horizontal-align:            0.0;
}

/*****----- Message -----*****/
error-message {
    padding:                     100px;
    border:                      0px solid;
    border-radius:               0px;
    border-color:                @selected;
    background-color:            @background;
    text-color:                  @foreground;
}
textbox {
    background-color:            @background;
    text-color:                  @foreground;
    vertical-align:              0.5;
    horizontal-align:            0.0;
    highlight:                   none;
}
