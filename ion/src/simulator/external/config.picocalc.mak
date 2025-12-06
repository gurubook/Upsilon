# This file is built manually by mimic-ing SDL's Xcode project

SDL_SFLAGS += -Iion/src/simulator/external/sdl/src/video/kmsdrm 
# SDL_SFLAGS += -Iion/src/simulator/external/sdl/src/video/khronos
SDL_SFLAGS += -DHAVE_LIBC

#   core/linux/SDL_evdev.c \
#   core/linux/SDL_udev.c \

sdl_src += $(addprefix ion/src/simulator/external/sdl/src/, \
  audio/dummy/SDL_dummyaudio.c \
  core/linux/SDL_threadprio.c \
  core/unix/SDL_poll.c \
  file/SDL_rwops.c \
  filesystem/unix/SDL_sysfilesystem.c \
  haptic/dummy/SDL_syshaptic.c \
  joystick/linux/SDL_sysjoystick.c \
  loadso/dlopen/SDL_sysloadso.c \
  power/linux/SDL_syspower.c \
  render/software/SDL_render_sw.c \
  thread/pthread/SDL_syscond.c \
  thread/pthread/SDL_sysmutex.c \
  thread/pthread/SDL_syssem.c \
  thread/pthread/SDL_systhread.c \
  thread/pthread/SDL_systls.c \
  timer/unix/SDL_systimer.c \
  video/kmsdrm/SDL_kmsdrmdyn.c \
  video/kmsdrm/SDL_kmsdrmevents.c \
  video/kmsdrm/SDL_kmsdrmmouse.c \
  video/kmsdrm/SDL_kmsdrmvideo.c \
)

#   render/opengl/SDL_render_gl.c \
#   render/opengl/SDL_shaders_gl.c \
#   video/x11/SDL_x11clipboard.c \
#   video/x11/SDL_x11dyn.c \
#   video/x11/SDL_x11events.c \
#   video/x11/SDL_x11framebuffer.c \
#   video/x11/SDL_x11keyboard.c \
#   video/x11/SDL_x11messagebox.c \
#   video/x11/SDL_x11modes.c \
#   video/x11/SDL_x11mouse.c \
#   video/x11/SDL_x11opengl.c \
#   video/x11/SDL_x11shape.c \
#   video/x11/SDL_x11touch.c \
#   video/x11/SDL_x11video.c \
#   video/x11/SDL_x11window.c \
#   video/x11/SDL_x11xinput2.c \
#   video/x11/imKStoUCS.c \

LDFLAGS += -ldl -ldrm -lXext -lpthread
LDFLAGS += -static-libgcc
