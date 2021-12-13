/* See LICENSE file for copyright and license details. */
/* Default settings; can be overriden by command line. */

static int topbar = 1;                      /* -b  option; if 0, dmenu appears at bottom     */
static const unsigned int alpha = 0x7d;
/* -fn option overrides fonts[0]; default X11 font or font set */
static const char *fonts[] = { "xft:Mononoki Nerd Font:size=11", "xft:FontAwesome:size=13" };
static const char *prompt      = NULL;      /* -p  option; prompt to the left of input field */
#include "/home/rice/.cache/wal/colors-wal-dmenu.h"
static const unsigned int alphas[SchemeLast][2] = {
       [SchemeNorm] = { OPAQUE, alpha },
       [SchemeSel] = { OPAQUE, alpha },
       [SchemeOut] = { OPAQUE, alpha },
};
static const unsigned int border_width = 3;

/* -l option; if nonzero, dmenu uses vertical list with given number of lines */
static unsigned int lines      = 15;

/*
 * Characters not considered part of a word while deleting words
 * for example: " /?\"&[]"
 */
static const char worddelimiters[] = " ";
