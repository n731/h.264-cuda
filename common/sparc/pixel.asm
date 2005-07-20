/*****************************************************************************
 * pixel.asm: h264 encoder library
 *****************************************************************************
 * Copyright (C) 2005 x264 project
 * $Id: $
 *
 * Authors: Phil Jensen <philj@csufresno.edu>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111, USA.
 *****************************************************************************/

! VIS optimized SAD for UltraSPARC

.text
.align 4
.global x264_pixel_sad_8x8_vis
x264_pixel_sad_8x8_vis:
	save %sp, -120, %sp

	fzero %f12

	alignaddr %i0, %g0, %l0
	ldd [%l0], %f0
	ldd [%l0+8], %f2
	faligndata %f0, %f2, %f4

	alignaddr %i2, %g0, %l2
	ldd [%l2], %f6
	ldd [%l2+8], %f8
	faligndata %f6, %f8, %f10

	add %i0, %i1, %i0
	add %i2, %i3, %i2
	pdist %f4, %f10, %f12

	alignaddr %i0, %g0, %l0
	ldd [%l0], %f0
	ldd [%l0+8], %f2
	faligndata %f0, %f2, %f4

	alignaddr %i2, %g0, %l2
	ldd [%l2], %f6
	ldd [%l2+8], %f8
	faligndata %f6, %f8, %f10

	add %i0, %i1, %i0
	add %i2, %i3, %i2
	pdist %f4, %f10, %f12

	alignaddr %i0, %g0, %l0
	ldd [%l0], %f0
	ldd [%l0+8], %f2
	faligndata %f0, %f2, %f4

	alignaddr %i2, %g0, %l2
	ldd [%l2], %f6
	ldd [%l2+8], %f8
	faligndata %f6, %f8, %f10

	add %i0, %i1, %i0
	add %i2, %i3, %i2
	pdist %f4, %f10, %f12

	alignaddr %i0, %g0, %l0
	ldd [%l0], %f0
	ldd [%l0+8], %f2
	faligndata %f0, %f2, %f4

	alignaddr %i2, %g0, %l2
	ldd [%l2], %f6
	ldd [%l2+8], %f8
	faligndata %f6, %f8, %f10

	add %i0, %i1, %i0
	add %i2, %i3, %i2
	pdist %f4, %f10, %f12

	alignaddr %i0, %g0, %l0
	ldd [%l0], %f0
	ldd [%l0+8], %f2
	faligndata %f0, %f2, %f4

	alignaddr %i2, %g0, %l2
	ldd [%l2], %f6
	ldd [%l2+8], %f8
	faligndata %f6, %f8, %f10

	add %i0, %i1, %i0
	add %i2, %i3, %i2
	pdist %f4, %f10, %f12

	alignaddr %i0, %g0, %l0
	ldd [%l0], %f0
	ldd [%l0+8], %f2
	faligndata %f0, %f2, %f4

	alignaddr %i2, %g0, %l2
	ldd [%l2], %f6
	ldd [%l2+8], %f8
	faligndata %f6, %f8, %f10

	add %i0, %i1, %i0
	add %i2, %i3, %i2
	pdist %f4, %f10, %f12

	alignaddr %i0, %g0, %l0
	ldd [%l0], %f0
	ldd [%l0+8], %f2
	faligndata %f0, %f2, %f4

	alignaddr %i2, %g0, %l2
	ldd [%l2], %f6
	ldd [%l2+8], %f8
	faligndata %f6, %f8, %f10

	add %i0, %i1, %i0
	add %i2, %i3, %i2
	pdist %f4, %f10, %f12

	alignaddr %i0, %g0, %l0
	ldd [%l0], %f0
	ldd [%l0+8], %f2
	faligndata %f0, %f2, %f4

	alignaddr %i2, %g0, %l2
	ldd [%l2], %f6
	ldd [%l2+8], %f8
	faligndata %f6, %f8, %f10

	add %i0, %i1, %i0
	add %i2, %i3, %i2
	pdist %f4, %f10, %f12

	std %f12, [%fp-24]
	ld [%fp-20], %i0

	ret
	restore