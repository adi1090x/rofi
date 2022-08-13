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
    fullscreen:                  false;
    width:                       450px;
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
    spacing:                     0px;
    margin:                      0px;
    padding:                     0px;
    border:                      0px solid;
    border-radius:               0px 0px 0px 0px;
    border-color:                @selected;
    background-color:            transparent;
    children:                    [ "listview", "entry" ];
}

/*****----- Inputbar -----*****/
entry {
    enabled:                     true;
    expand:                      false;
    padding:                     20px 0px;
    background-color:            @selected;
    text-color:                  @background;
    cursor:                      text;
    placeholder:                 "Search...";
    placeholder-color:           inherit;
    vertical-align:              0.5;
    horizontal-align:            0.5;
}

/*****----- Listview -----*****/
listview {
    enabled:                     true;
    columns:                     3;
    lines:                       3;
    cycle:                       true;
    dynamic:                     true;
    scrollbar:                   false;
    layout:                      vertical;
    reverse:                     false;
    fixed-height:                true;
    fixed-columns:               true;
    
    spacing:                     0px;
    margin:                      0px;
    padding:                     20px;
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
    spacing:                     15px;
    margin:                      0px;
    padding:                     20px 10px;
    border:                      0px solid;
    border-radius:               0px;
    border-color:                @selected;
    background-color:            transparent;
    text-color:                  @foreground;
    orientation:                 vertical;
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
    background-color:            transparent;
    text-color:                  inherit;
    size:                        64px;
    cursor:                      inherit;
}
element-text {
    background-color:            transparent;
    text-color:                  inherit;
    highlight:                   inherit;
    cursor:                      inherit;
    vertical-align:              0.5;
    horizontal-align:            0.5;
}

/*****----- Message -----*****/
error-message {
    padding:                     15px;
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
