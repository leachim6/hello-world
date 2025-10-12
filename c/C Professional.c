/* C Professional.c
 *
 * A "professional" and slightly unexpected Hello World:
 * - Centers message in terminal
 * - Typewriter effect
 * - Shows timestamp and optional git info (if GIT_COMMIT defined at build)
 * - Uses ANSI colors on Unix, Win32 Console API on Windows
 *
 * Compile:
 *   Unix:  gcc -std=c99 -O2 -o hello "C Professional.c"
 *   Windows (mingw): gcc -std=c99 -O2 -o hello.exe "C Professional.c" -luser32
 *
 * (Keep it single-file and dependency free)
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

#if defined(_WIN32) || defined(_WIN64)
  #include <windows.h>
  #include <conio.h>
#else
  #include <unistd.h>
  #include <sys/ioctl.h>
  #include <termios.h>
#endif

/* ---------- Config ---------- */
#define MESSAGE "Hello, World!"
#define SUBMSG  "— from C (professional edition)"
#define TYPER_DELAY_MS 25
/* ---------------------------- */

static int get_terminal_width(void) {
#if defined(_WIN32) || defined(_WIN64)
    CONSOLE_SCREEN_BUFFER_INFO csbi;
    HANDLE h = GetStdHandle(STD_OUTPUT_HANDLE);
    if (!GetConsoleScreenBufferInfo(h, &csbi)) return 80;
    int width = csbi.srWindow.Right - csbi.srWindow.Left + 1;
    return (width > 0) ? width : 80;
#else
    struct winsize w;
    if (ioctl(1, TIOCGWINSZ, &w) == -1 || w.ws_col == 0) return 80;
    return w.ws_col;
#endif
}

static void msleep(long ms) {
#if defined(_WIN32) || defined(_WIN64)
    Sleep((DWORD)ms);
#else
    usleep(ms * 1000);
#endif
}

static void set_color_info(void) {
#if defined(_WIN32) || defined(_WIN64)
    /* Windows console: set bright cyan for main message */
    HANDLE h = GetStdHandle(STD_OUTPUT_HANDLE);
    SetConsoleTextAttribute(h, FOREGROUND_INTENSITY | FOREGROUND_GREEN | FOREGROUND_BLUE);
#else
    /* ANSI: bright cyan */
    printf("\x1b[96m");
#endif
}

static void set_color_subtle(void) {
#if defined(_WIN32) || defined(_WIN64)
    HANDLE h = GetStdHandle(STD_OUTPUT_HANDLE);
    SetConsoleTextAttribute(h, FOREGROUND_RED | FOREGROUND_GREEN | FOREGROUND_BLUE);
#else
    /* ANSI: dim white */
    printf("\x1b[2;37m");
#endif
}

static void reset_color(void) {
#if defined(_WIN32) || defined(_WIN64)
    HANDLE h = GetStdHandle(STD_OUTPUT_HANDLE);
    SetConsoleTextAttribute(h, FOREGROUND_RED | FOREGROUND_GREEN | FOREGROUND_BLUE);
#else
    printf("\x1b[0m");
#endif
}

static void typewriter_print(const char *s, long delay_ms) {
    for (size_t i = 0; s[i]; ++i) {
        putchar(s[i]);
        fflush(stdout);
        msleep(delay_ms);
    }
}

int main(void) {
    int width = get_terminal_width();
    size_t msglen = strlen(MESSAGE);
    size_t sublen = strlen(SUBMSG);
    size_t total_len = msglen > sublen ? msglen : sublen;
    int pad = (width > (int)total_len) ? (width - (int)total_len) / 2 : 0;

    /* Clear a little space above */
    printf("\n\n");

    /* Print centered message with typewriter effect */
    for (int i = 0; i < pad; ++i) putchar(' ');

    set_color_info();
    typewriter_print(MESSAGE, TYPER_DELAY_MS);
    reset_color();
    putchar('\n');

    for (int i = 0; i < pad; ++i) putchar(' ');
    set_color_subtle();
    typewriter_print(SUBMSG, TYPER_DELAY_MS);
    reset_color();
    putchar('\n');

    /* Print timestamp and optional build info */
    time_t t = time(NULL);
    struct tm *tm = localtime(&t);
    char timestr[128];
    if (tm) strftime(timestr, sizeof(timestr), "%Y-%m-%d %H:%M:%S %Z", tm);
    else strncpy(timestr, "unknown-time", sizeof(timestr)-1);

    putchar('\n');
    printf("  Time: %s\n", timestr);

#ifdef GIT_COMMIT
    printf("  Build: commit " GIT_COMMIT "\n");
#endif

    /* Small progress bar flourish */
    printf("\n  [");
    fflush(stdout);
    for (int i = 0; i < 30; ++i) {
        msleep(10 + (i%3)*10);
        putchar('=');
        fflush(stdout);
    }
    printf("] Done\n\n");

    return 0;
}
