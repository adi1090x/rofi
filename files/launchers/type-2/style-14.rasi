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
    display-drun:               " Applications";
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
    fullscreen:                  false;
    width:                       1200px;
    x-offset:                    0px;
    y-offset:                    0px;

    enabled:                     true;
    margin:                      0px;
    padding:                     0px;
    border:                      0px solid;
    border-radius:               10px;
    border-color:                @selected;
    background-color:            @background;
    cursor:                      "default";
}

/*****----- Main Box -----*****/
mainbox {
    enabled:                     true;
    spacing:                     10px;
    margin:                      0px;
    padding:                     20px;
    border:                      0px solid;
    border-radius:               0px 0px 0px 0px;
    border-color:                @selected;
    background-color:            transparent;
    children:                    [ "inputbar", "listview" ];
    orientation:                 horizontal;
}

/*****----- Inputbar -----*****/
inputbar {
    enabled:                     true;
    spacing:                     10px;
    margin:                      0px;
    padding:                     0px;
    border:                      0px;
    border-radius:               0px;
    border-color:                @selected;
    background-color:            @background;
    text-color:                  @foreground;
    children:                    [ "prompt", "entry" ];
    orientation:                 vertical;
}

prompt {
    enabled:                     true;
    expand:                      false;
    padding:                     15px 50px;
    border-radius:               10px;
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
    padding:                     15px 20px;
    border-radius:               10px;
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
    lines:                       1;
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
    border-radius:               10px;
    border-color:                @selected;
    background-color:            @background;
    text-color:                  @foreground;
    orientation:                 horizontal;
    cursor:                      pointer;
}
element normal.normal {
    background-color:            @background-alt;
    text-color:                  @foreground;
}
element alternate.normal {
    background-color:            @background-alt;
    text-color:                  @foreground;
}
element selected.normal {
    border:                      0px 2px 0px 2px;
    border-radius:               10px;
    border-color:                @selected;
    background-color:            @background-alt;
    text-color:                  @selected;
}
element-icon {
    padding:                     0px;
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
    padding:                     20px;
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
