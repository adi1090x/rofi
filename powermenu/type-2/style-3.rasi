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
    location:                    center;
    anchor:                      center;
    fullscreen:                  false;
    width:                       800px;
    x-offset:                    0px;
    y-offset:                    0px;

    /* properties for all widgets */
    enabled:                     true;
    margin:                      0px;
    padding:                     0px;
    border:                      0px solid;
    border-radius:               20px;
    border-color:                @selected;
    cursor:                      "default";
    background-color:            @background;
}

/*****----- Main Box -----*****/
mainbox {
    enabled:                     true;
    spacing:                     15px;
    margin:                      0px;
    padding:                     30px;
    border:                      0px solid;
    border-radius:               0px;
    border-color:                @selected;
    background-color:            transparent;
    children:                    [ "inputbar", "listview" ];
}

/*****----- Inputbar -----*****/
inputbar {
    enabled:                     true;
    spacing:                     15px;
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
    border-radius:               15px 15px 0px 15px;
    background-color:            @urgent;
    text-color:                  @background;
}
prompt {
    enabled:                     true;
    padding:                     12px;
    border-radius:               15px 15px 15px 0px;
    background-color:            @active;
    text-color:                  @background;
}

/*****----- Message -----*****/
message {
    enabled:                     true;
    margin:                      0px;
    padding:                     12px;
    border:                      0px solid;
    border-radius:               15px 5px 15px 5px;
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
    padding:                     40px 10px;
    border:                      0px solid;
    border-radius:               50px 20px 50px 20px;
    border-color:                @selected;
    background-color:            @background-alt;
    text-color:                  @foreground;
    cursor:                      pointer;
}
element-text {
    font:                        "feather bold 32";
    background-color:            transparent;
    text-color:                  inherit;
    cursor:                      inherit;
    vertical-align:              0.5;
    horizontal-align:            0.5;
}
element selected.normal {
    border:                      0px 0px 2px 2px ;
    border-color:                @selected;
    background-color:            var(background-alt);
    text-color:                  var(selected);
}
