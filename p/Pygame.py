import pygame, sys
from pygame.locals import QUIT

pygame.init()
display_surface = pygame.display.set_mode((400, 300))
font = pygame.font.Font(pygame.font.get_default_font(), 32)
text = font.render('Hello World', True, (0, 0, 0))
textRect = text.get_rect()

while True:
    display_surface.fill((255, 255, 255))
    display_surface.blit(text, textRect)
    for event in pygame.event.get():
        if event.type == QUIT:
            pygame.quit()
            sys.exit()

    pygame.display.update()
