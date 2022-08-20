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
* {
    /* Resolution : 1920x1080 */
    mainbox-spacing:             100px;
    mainbox-margin:              100px 300px;
    message-margin:              0px 400px;
    message-padding:             15px;
    message-border-radius:       100%;
    listview-spacing:            50px;
    element-padding:             55px 60px;
    element-border-radius:       100%;

    prompt-font:                 "JetBrains Mono Nerd Font Bold Italic 64";
    textbox-font:                "JetBrains Mono Nerd Font 16";
    element-text-font:           "feather 64";

    background-window:           black/5%;
    background-normal:           white/5%;
    background-selected:         white/15%;
    foreground-normal:           white;
    foreground-selected:         white;
}

/*****----- Main Window -----*****/
window {
    transparency:                "real";
    location:                    center;
    anchor:                      center;
    fullscreen:                  true;
    cursor:                      "default";
    background-color:            var(background-window);
}

/*****----- Main Box -----*****/
mainbox {
    enabled:                     true;
    spacing:                     var(mainbox-spacing);
    margin:                      var(mainbox-margin);
    background-color:            transparent;
    children:                    [ "dummy", "inputbar", "listview", "message", "dummy" ];
}

/*****----- Inputbar -----*****/
inputbar {
    enabled:                     true;
    background-color:            transparent;
    children:                    [ "dummy", "prompt", "dummy"];
}

dummy {
    background-color:            transparent;
}

prompt {
    enabled:                     true;
    font:                        var(prompt-font);
    background-color:            transparent;
    text-color:                  var(foreground-normal);
}

/*****----- Message -----*****/
message {
    enabled:                     true;
    margin:                      var(message-margin);
    padding:                     var(message-padding);
    border-radius:               var(message-border-radius);
    background-color:            var(background-normal);
    text-color:                  var(foreground-normal);
}
textbox {
    font:                        var(textbox-font);
    background-color:            transparent;
    text-color:                  inherit;
    vertical-align:              0.5;
    horizontal-align:            0.5;
}

/*****----- Listview -----*****/
listview {
    enabled:                     true;
    expand:                      false;
    columns:                     5;
    lines:                       1;
    cycle:                       true;
    dynamic:                     true;
    scrollbar:                   false;
    layout:                      vertical;
    reverse:                     false;
    fixed-height:                true;
    fixed-columns:               true;
    
    spacing:                     var(listview-spacing);
    background-color:            transparent;
    cursor:                      "default";
}

/*****----- Elements -----*****/
element {
    enabled:                     true;
    padding:                     var(element-padding);
    border-radius:               var(element-border-radius);
    background-color:            var(background-normal);
    text-color:                  var(foreground-normal);
    cursor:                      pointer;
}
element-text {
    font:                        var(element-text-font);
    background-color:            transparent;
    text-color:                  inherit;
    cursor:                      inherit;
    vertical-align:              0.5;
    horizontal-align:            0.5;
}
element selected.normal {
    background-color:            var(background-selected);
    text-color:                  var(foreground-selected);
}
