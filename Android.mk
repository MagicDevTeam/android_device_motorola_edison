ifeq ($(TARGET_BOOTLOADER_BOARD_NAME),edison)
    include $(all-subdir-makefiles)
else 
  ifeq ($(TARGET_BOOTLOADER_BOARD_NAME),p3)
    include $(all-subdir-makefiles)
  endif  
endif
