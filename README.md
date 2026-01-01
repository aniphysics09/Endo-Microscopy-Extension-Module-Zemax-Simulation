# Endo-Microscopy-Extension-Module-Zemax-Simulation
Relay Optical System for perpendicularly bending imaging light between GRIN Lens and Fluorescence Microscope objective


Overview

This repository contains the optical design, simulation, and analysis files for an extension module enabling endomicroscopy with standard research microscopes.
The module allows coupling a vertically oriented microscope optical path to a horizontally aligned GRIN needle objective, as required for in vivo endomicroscopy experiments (e.g. mouse colonoscopy).

The project focuses on the design and performance evaluation of a relay optical system that redirects the beam by 90° while preserving imaging performance within the limitations imposed by small-diameter GRIN lenses.

<img width="821" height="363" alt="image" src="https://github.com/user-attachments/assets/b01fffeb-ed99-4865-8246-2dfa15c210ac" />


Optical Concept

The extension module is based on a relay optical system consisting of:

Two converging relay lenses

A plane mirror positioned between them

Coupling between:

the focus of the microscope objective, and

the back focal plane of the GRIN needle objective

The relay lenses are placed symmetrically on both sides of the mirror, such that their focal planes coincide with the respective object and image planes of the system.


Performance Evaluation

Optical performance was evaluated using Zemax ray-tracing simulations and subsequent image analysis.

Key observations:

The relay system alone introduces significant spherical aberration

When integrated with the GRIN needle objective:

Spherical aberration is effectively limited by the small aperture

Off-axis aberrations are constrained by the high numerical aperture of the GRIN lens

Overall, the extension module does not severely degrade imaging performance
relative to the intrinsic limitations of the needle objective

This confirms the feasibility of the extension module for practical endomicroscopy applications.
