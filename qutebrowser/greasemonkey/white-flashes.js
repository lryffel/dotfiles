// this file is in the <data>/greasmonkey path, where
// <data> is the directory shown when running :version
// in qutebrowser

// ==UserScript==
// @name          Let there be Light
// @description   Change page background to white 
// @version       0.1
// @author        Ingvix
// @include       *
// ==/UserScript==

var sheet = windows.document.styleSheets[0];
sheet.insertRule('body { background-color: white; }', sheet.cssRules.length);
