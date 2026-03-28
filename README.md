# Scilab Numerical Methods

A collection of Scilab scripts for solving mathematical problems using numerical methods. These scripts are designed to be simple, efficient, and educational.

## Features

This repository includes implementations of the following numerical methods:

1.  **Bisection Method (`bisection.sce`)**
    *   Finds the root of a continuous function within a given interval where the function values at the endpoints have opposite signs.
    *   Iteratively narrows down the interval by half.

2.  **Newton-Raphson Method (`newton_raphson.sce`)**
    *   An iterative method for finding successively better approximations to the roots of a real-valued function.
    *   Requires the function and its derivative.

3.  **Regula-Falsi Method (`regula_falsi.sce`)**
    *   Also known as the False Position method.
    *   A root-finding algorithm that combines the bisection method's reliability with the secant method's speed.

4.  **Gaussian Elimination (`gaussian_elimination.sce`)**
    *   An algorithm for solving systems of linear equations.
    *   Performs forward elimination to create an upper triangular matrix and then uses back substitution to find the solution.

## Prerequisites

To run these scripts, you need to have **Scilab** installed on your system.
*   Download Scilab: [https://www.scilab.org/](https://www.scilab.org/)

## How to Run

1.  Open Scilab.
2.  Navigate to the directory containing the scripts.
3.  Execute a script using the following command in the Scilab console:
    ```scilab
    exec('filename.sce', -1)
    ```
    For example: `exec('bisection.sce', -1)`
4.  Follow the on-screen prompts to enter values (e.g., initial guesses, tolerance, max iterations).

## License

This project is open-source and available for educational purposes.
