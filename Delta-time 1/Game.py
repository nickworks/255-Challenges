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
    """Define a circle that moves across the screen.

    Properties:
        __velocity (int): Velocity as 200 px/s.
    """

    __velocity = 200

    def __init__(self):
        """Instantiate the circle object."""
        super(Circle, self).__init__()
        self.image = pygame.image.load('circle.png').convert()
        self.rect = self.image.get_rect(center=(100, 300))

    def update(self, dt):
        """Update the circle's position.

        Args:
            dt (float): Delta time in seconds.
        """
        self.rect.x = self.rect.x + self.__velocity * dt
        if self.rect.left > 590:
            self.rect.x -= 100


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


def main():
    """Initialize game state and run main loop."""
    pygame.init()
    screen = pygame.display.set_mode(SIZE)

    clock = pygame.time.Clock()
    t = 0.0
    current_time = pygame.time.get_ticks() / 1000

    circle = Circle()

    running = True

    while running:
        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                running = False

        # Limit frame rate to 60 FPS
        dt, current_time = calc_delta_time(current_time)

        screen.fill(BLACK)
        circle.update(dt)
        screen.blit(circle.image, circle.rect)
        pygame.display.flip()

        # t += dt

        clock.tick(60)


if __name__ == '__main__':
    main()
    pygame.quit()
