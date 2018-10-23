#!/usr/bin/env/python3
"""Challenge for DAGD 255.

Move a circle accross the screen at 200 px/s. Calculate delta time so that
movement is not tied to FPS.

Attributes:
    SIZE (tuple): Define size of the game window in pixels (x, y).
    BLACK (tuple): Define the color black in RGB values.

Author:
    CptMikhailov (David Host)
    Github profile at: https://github.com/CptMikahilov
"""
import pygame


class Circle(pygame.sprite.Sprite):
    def __init__(self):
        super(Circle, self).__init__()
        self.image = 