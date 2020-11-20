#include <pebble.h>

static Window* main_window;
static TextLayer* text_layer, *world_layer;

static void main_window_load(Window* window) {
    Layer *window_layer = window_get_root_layer(window);
    window_set_background_color(main_window, GColorBlack);
    GRect bounds = layer_get_bounds(window_layer);
    text_layer = text_layer_create(
        GRect(0, bounds.size.h / 2 - 42, bounds.size.w, 120));
    text_layer_set_text(text_layer, "Hello");
    text_layer_set_background_color(text_layer, GColorClear);
    text_layer_set_text_color(text_layer, GColorWhite);
    text_layer_set_font(text_layer, fonts_get_system_font(FONT_KEY_BITHAM_42_BOLD));
    text_layer_set_text_alignment(text_layer, GTextAlignmentCenter);

    world_layer = text_layer_create(
        GRect(0, bounds.size.h / 2, bounds.size.w, 120));
    text_layer_set_background_color(world_layer, GColorClear);
    text_layer_set_text(world_layer, "World");
    text_layer_set_text_color(world_layer, GColorLightGray);
    text_layer_set_font(world_layer, fonts_get_system_font(FONT_KEY_BITHAM_42_BOLD));
    text_layer_set_text_alignment(world_layer, GTextAlignmentCenter);
  
    layer_add_child(window_layer, text_layer_get_layer(text_layer));
    layer_add_child(window_layer, text_layer_get_layer(world_layer));
}
static void main_window_unload(Window* window) {
    text_layer_destroy(text_layer);
    text_layer_destroy(world_layer);
}

static void init() {
    main_window = window_create();
    window_set_window_handlers(main_window, (WindowHandlers) {
        .load = main_window_load,
        .unload = main_window_unload
    });
    window_stack_push(main_window, true);
}

static void deinit() {
    window_destroy(main_window);
}

int main(void) {
    init();
    app_event_loop();
    deinit();
}
