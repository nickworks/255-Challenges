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

# Define constants
SIZE = (600, 600)
BLACK = (0, 0, 0)


class Circle(pygame.sprite.Sprite):
    def __init__(self):
        super(Circle, self).__init__()
        self.image = 
def calc_delta_time(time):
    """Caluclate delta time.

    Args:
        current_time (float): The number of seconds elapsed until last call.

    Returns:
        dt (float): Delta time in seconds.
        time (float): Current number of seconds elapsed.
    """
    new_time = pygame.time.get_ticks() / 1000
    dt = new_time - time
    time = new_time
    return dt, time

