include $(THEOS)/makefiles/common.mk

APPLICATION_NAME = ETECSA
ETECSA_FILES = main.m QbAppDelegate.m QbRootViewController.m
ETECSA_FRAMEWORKS = UIKit CoreGraphics

include $(THEOS_MAKE_PATH)/application.mk

after-install::
	install.exec "killall \"ETECSA\"" || true
