.class public Lcom/android/internal/policy/impl/PhoneWindowManager;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$PassHeadsetKey;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;
    }
.end annotation


# static fields
.field static final APPLICATION_LAYER:I = 0x2

.field static final APPLICATION_MEDIA_OVERLAY_SUBLAYER:I = -0x1

.field static final APPLICATION_MEDIA_SUBLAYER:I = -0x2

.field static final APPLICATION_PANEL_SUBLAYER:I = 0x1

.field static final APPLICATION_SUB_PANEL_SUBLAYER:I = 0x2

.field private static final BTN_MOUSE:I = 0x110

.field static final DEBUG:Z = false

.field static final DEBUG_LAYOUT:Z = false

.field static final DEFAULT_ACCELEROMETER_ROTATION:I = 0x0

.field static final INPUT_METHOD_DIALOG_LAYER:I = 0xd

.field static final INPUT_METHOD_LAYER:I = 0xc

.field static final KEYBOARD_ALWAYS_HIDDEN:Z = false

.field static final KEYGUARD_DIALOG_LAYER:I = 0xf

.field static final KEYGUARD_LAYER:I = 0xe

.field static final MTP_RUNNING_STATUS:Ljava/lang/String; = "mtp_running_status"

.field static final PHONE_LAYER:I = 0x3

.field static final PRINT_ANIM:Z = false

.field static final PRIORITY_PHONE_LAYER:I = 0x9

.field static final SEARCH_BAR_LAYER:I = 0x4

.field static final SECURE_SYSTEM_OVERLAY_LAYER:I = 0x11

.field static final SHOW_PROCESSES_ON_ALT_MENU:Z = false

.field static final SHOW_STARTING_ANIMATIONS:Z = true

.field static final STATUS_BAR_LAYER:I = 0x8

.field static final STATUS_BAR_PANEL_LAYER:I = 0x5

.field private static final SW_LID:I = 0x0

.field static final SYSTEM_ALERT_LAYER:I = 0xa

.field static final SYSTEM_DIALOG_LAYER:I = 0x6

.field public static final SYSTEM_DIALOG_REASON_GLOBAL_ACTIONS:Ljava/lang/String; = "globalactions"

.field public static final SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String; = "homekey"

.field public static final SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String; = "reason"

.field public static final SYSTEM_DIALOG_REASON_RECENT_APPS:Ljava/lang/String; = "recentapps"

.field static final SYSTEM_ERROR_LAYER:I = 0xb

.field static final SYSTEM_OVERLAY_LAYER:I = 0x10

.field static final TAG:Ljava/lang/String; = "WindowManager"

.field static final TOAST_LAYER:I = 0x7

.field private static final USB_SETTING_MODE:Ljava/lang/String; = "usb_setting_mode"

.field static final WALLPAPER_LAYER:I = 0x2

.field private static final WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

.field static final localLOGV:Z

.field static final mTmpContentFrame:Landroid/graphics/Rect;

.field static final mTmpDisplayFrame:Landroid/graphics/Rect;

.field static final mTmpParentFrame:Landroid/graphics/Rect;

.field static final mTmpVisibleFrame:Landroid/graphics/Rect;


# instance fields
.field private final ACTIVITY_CAMCORDER:Ljava/lang/String;

.field private final ACTIVITY_CAMERA:Ljava/lang/String;

.field private final ACTIVITY_MOVIEPLAYER:Ljava/lang/String;

.field private final ACTIVITY_SETTINGS:Ljava/lang/String;

.field private final ALLSHARE_DMP_ACTIVITY:Ljava/lang/String;

.field private final ALLSHARE_DMP_CONTROL_CLASS:Ljava/lang/String;

.field private final ALLSHARE_DMP_VIDEO_CLASS:Ljava/lang/String;

.field private final FACTORY_LCD_ACTIVITY:Ljava/lang/String;

.field private final FACTORY_LCD_DIM_CLASS:Ljava/lang/String;

.field private final FACTORY_LCD_KEY_CLASS:Ljava/lang/String;

.field private final FACTORY_LCD_TOUCH_CLASS:Ljava/lang/String;

.field private final FACTOY_SIMPLE_ACTIVITY:Ljava/lang/String;

.field private final FACTOY_SIMPLE_CLASS:Ljava/lang/String;

.field private final PACKAGE_CAMERA:Ljava/lang/String;

.field private final PACKAGE_SETTINGS:Ljava/lang/String;

.field private final PACKAGE_VIDEOPLAYER:Ljava/lang/String;

.field private final US_CAMERA_TEST_CLASS:Ljava/lang/String;

.field private final US_FACTOY_TEST_ACTIVITY:Ljava/lang/String;

.field private final US_FACTOY_TEST_CLASS:Ljava/lang/String;

.field private final US_GRIP_TEST_CLASS:Ljava/lang/String;

.field private final US_GYRO_TEST_CLASS:Ljava/lang/String;

.field private final US_INTENSITY_TEST_CLASS:Ljava/lang/String;

.field private final US_KEYPAD_TEST_CLASS:Ljava/lang/String;

.field private final US_LOOPBACK_TEST_CLASS:Ljava/lang/String;

.field private final US_LOUNDSPK_LOOPBACK_TEST_CLASS:Ljava/lang/String;

.field private final US_MAGNETIC_TEST_CLASS:Ljava/lang/String;

.field private final US_MOTOR_TEST_CLASS:Ljava/lang/String;

.field private final US_ORIENTATION_TEST_CLASS:Ljava/lang/String;

.field private final US_QWERTYKEY_TEST_CLASS:Ljava/lang/String;

.field private final US_SECONDARY_TEST_CLASS:Ljava/lang/String;

.field private final US_SIMPLE_TEST_CLASS:Ljava/lang/String;

.field private final US_TSP_TEST_CLASS:Ljava/lang/String;

.field private final US_USB_TEST_CLASS:Ljava/lang/String;

.field mAccelerometerDefault:I

.field mAllowLockscreenWhenOn:Z

.field mBroadcastDone:Landroid/content/BroadcastReceiver;

.field mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

.field mCarDockEnablesAccelerometer:Z

.field mCarDockIntent:Landroid/content/Intent;

.field mCarDockRotation:I

.field mConsumeSearchKeyUp:Z

.field mContentBottom:I

.field mContentLeft:I

.field mContentRight:I

.field mContentTop:I

.field mContext:Landroid/content/Context;

.field mCurBottom:I

.field mCurLeft:I

.field mCurRight:I

.field mCurTop:I

.field mCurrentAppOrientation:I

.field mDeskDockEnablesAccelerometer:Z

.field mDeskDockIntent:Landroid/content/Intent;

.field mDeskDockRotation:I

.field mDismissKeyguard:Z

.field mDockBottom:I

.field mDockLayer:I

.field mDockLeft:I

.field mDockMode:I

.field mDockReceiver:Landroid/content/BroadcastReceiver;

.field mDockRight:I

.field mDockTop:I

.field mEnableShiftMenuBugReports:Z

.field mEndcallBehavior:I

.field mFancyRotationAnimation:I

.field mForceStatusBar:Z

.field mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

.field mH:I

.field mHandler:Landroid/os/Handler;

.field mHasSoftInput:Z

.field mHideLockScreen:Z

.field private mHoldImitator:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;

.field private mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

.field mHomeIntent:Landroid/content/Intent;

.field mHomeLongPress:Ljava/lang/Runnable;

.field mHomePressed:Z

.field mIncallPowerBehavior:I

.field private mIsCameraInHold:Z

.field private mIsVideoPlayerInHold:Z

.field mKeyboardTapVibePattern:[J

.field mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

.field mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

.field mLandscapeRotation:I

.field mLidKeyboardAccessibility:I

.field mLidNavigationAccessibility:I

.field mLidOpen:Z

.field mLidOpenRotation:I

.field final mLock:Ljava/lang/Object;

.field mLockScreenTimeout:I

.field mLockScreenTimerActive:Z

.field mLongPressVibePattern:[J

.field mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

.field mOrientationSensorEnabled:Z

.field mPointerLocationInputChannel:Landroid/view/InputChannel;

.field private final mPointerLocationInputHandler:Landroid/view/InputHandler;

.field mPointerLocationMode:I

.field mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

.field mPortraitRotation:I

.field volatile mPowerKeyHandled:Z

.field private final mPowerLongPress:Ljava/lang/Runnable;

.field mPowerManager:Landroid/os/LocalPowerManager;

.field mRecentAppsDialog:Lcom/android/internal/policy/impl/RecentApplicationsDialog;

.field mSafeMode:Z

.field mSafeModeDisabledVibePattern:[J

.field mSafeModeEnabledVibePattern:[J

.field private mScreenCaptureAction:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;

.field mScreenLockTimeout:Ljava/lang/Runnable;

.field mScreenOn:Z

.field mSearchKeyPressed:Z

.field mSeascapeRotation:I

.field mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

.field mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

.field final mStatusBarPanels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/WindowManagerPolicy$WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mSystemReady:Z

.field mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field mUiMode:I

.field mUpsideDownRotation:I

.field mVibrator:Landroid/os/Vibrator;

.field mVirtualKeyVibePattern:[J

.field mVolumeDownLongPress:Ljava/lang/Runnable;

.field mVolumeLongPress:Ljava/lang/Runnable;

.field mW:I

.field mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 341
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 342
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 343
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpContentFrame:Landroid/graphics/Rect;

    .line 344
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 1255
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_26

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    return-void

    nop

    :array_26
    .array-data 0x4
        0xd3t 0x7t 0x0t 0x0t
        0xdat 0x7t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsCameraInHold:Z

    .line 203
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsVideoPlayerInHold:Z

    .line 205
    const-string v0, "com.sec.android.app.camera"

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->PACKAGE_CAMERA:Ljava/lang/String;

    .line 206
    const-string v0, "com.sec.android.app.camera.Camera"

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->ACTIVITY_CAMERA:Ljava/lang/String;

    .line 207
    const-string v0, "com.sec.android.app.camera.Camcorder"

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->ACTIVITY_CAMCORDER:Ljava/lang/String;

    .line 208
    const-string v0, "com.sec.android.app.videoplayer"

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->PACKAGE_VIDEOPLAYER:Ljava/lang/String;

    .line 209
    const-string v0, "com.sec.android.app.videoplayer.activity.MoviePlayer"

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->ACTIVITY_MOVIEPLAYER:Ljava/lang/String;

    .line 211
    const-string v0, "com.sec.android.app.factorytest"

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->FACTOY_SIMPLE_ACTIVITY:Ljava/lang/String;

    .line 212
    const-string v0, "com.sec.android.app.simplefunctiontest.KeypadTest"

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->FACTOY_SIMPLE_CLASS:Ljava/lang/String;

    .line 213
    const-string v0, "com.sec.android.app.lcdtest"

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->FACTORY_LCD_ACTIVITY:Ljava/lang/String;

    .line 214
    const-string v0, "com.sec.android.app.lcdtest.button_subkey"

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->FACTORY_LCD_KEY_CLASS:Ljava/lang/String;

    .line 215
    const-string v0, "com.sec.android.app.lcdtest.button_touch"

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->FACTORY_LCD_TOUCH_CLASS:Ljava/lang/String;

    .line 216
    const-string v0, "com.sec.android.app.lcdtest.button_dimming"

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->FACTORY_LCD_DIM_CLASS:Ljava/lang/String;

    .line 217
    const-string v0, "com.sec.android.app.dlna"

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->ALLSHARE_DMP_ACTIVITY:Ljava/lang/String;

    .line 218
    const-string v0, "com.samsung.dmp.layout.DMPControlActivity"

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->ALLSHARE_DMP_CONTROL_CLASS:Ljava/lang/String;

    .line 219
    const-string v0, "com.samsung.dmp.layout.DMPVideoActivity"

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->ALLSHARE_DMP_VIDEO_CLASS:Ljava/lang/String;

    .line 222
    const-string v0, "com.android.samsungtest.FactoryTest"

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->US_FACTOY_TEST_ACTIVITY:Ljava/lang/String;

    .line 223
    const-string v0, "com.android.samsungtest.FactoryTest.FactoryTestApp"

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->US_FACTOY_TEST_CLASS:Ljava/lang/String;

    .line 224
    const-string v0, "com.android.samsungtest.SimpleFunctionTest.SimpleFunctionTest"

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->US_SIMPLE_TEST_CLASS:Ljava/lang/String;

    .line 225
    const-string v0, "com.android.samsungtest.SimpleFunctionTest.MotorTest"

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->US_MOTOR_TEST_CLASS:Ljava/lang/String;

    .line 226
    const-string v0, "com.android.samsungtest.camera.Camera"

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->US_CAMERA_TEST_CLASS:Ljava/lang/String;

    .line 227
    const-string v0, "com.android.samsungtest.SimpleFunctionTest.OrientationTest"

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->US_ORIENTATION_TEST_CLASS:Ljava/lang/String;

    .line 228
    const-string v0, "com.android.samsungtest.SimpleFunctionTest.IntensityTest"

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->US_INTENSITY_TEST_CLASS:Ljava/lang/String;

    .line 229
    const-string v0, "com.android.samsungtest.SimpleFunctionTest.KeypadTest"

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->US_KEYPAD_TEST_CLASS:Ljava/lang/String;

    .line 230
    const-string v0, "com.android.samsungtest.SimpleFunctionTest.LoopbackTest"

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->US_LOOPBACK_TEST_CLASS:Ljava/lang/String;

    .line 231
    const-string v0, "com.android.samsungtest.SimpleFunctionTest.LoudSpkLoopbackTest"

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->US_LOUNDSPK_LOOPBACK_TEST_CLASS:Ljava/lang/String;

    .line 232
    const-string v0, "com.android.samsungtest.SimpleFunctionTest.TouchTest"

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->US_TSP_TEST_CLASS:Ljava/lang/String;

    .line 233
    const-string v0, "com.android.samsungtest.SimpleFunctionTest.MagneticSensorTest"

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->US_MAGNETIC_TEST_CLASS:Ljava/lang/String;

    .line 234
    const-string v0, "com.android.samsungtest.SimpleFunctionTest.Gyro_Sensor"

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->US_GYRO_TEST_CLASS:Ljava/lang/String;

    .line 235
    const-string v0, "com.android.samsungtest.SimpleFunctionTest.GripSensorTest"

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->US_GRIP_TEST_CLASS:Ljava/lang/String;

    .line 236
    const-string v0, "com.android.samsungtest.SimpleFunctionTest.UsbTest"

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->US_USB_TEST_CLASS:Ljava/lang/String;

    .line 237
    const-string v0, "com.android.samsungtest.SimpleFunctionTest.Keypad2Test"

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->US_QWERTYKEY_TEST_CLASS:Ljava/lang/String;

    .line 238
    const-string v0, "com.android.samsungtest.SimpleFunctionTest.SecondaryTest"

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->US_SECONDARY_TEST_CLASS:Ljava/lang/String;

    .line 241
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldImitator:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;

    .line 250
    const-string v0, "com.android.settings.ChooseLockPassword"

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->ACTIVITY_SETTINGS:Ljava/lang/String;

    .line 251
    const-string v0, "com.android.settings"

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->PACKAGE_SETTINGS:Ljava/lang/String;

    .line 254
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 277
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    .line 280
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 281
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarPanels:Ljava/util/ArrayList;

    .line 282
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    .line 291
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUiMode:I

    .line 292
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    .line 300
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOn:Z

    .line 301
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    .line 302
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    .line 304
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAccelerometerDefault:I

    .line 305
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    .line 307
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationMode:I

    .line 308
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 311
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$1;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputHandler:Landroid/view/InputHandler;

    .line 369
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .line 370
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    .line 371
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .line 372
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    .line 382
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    .line 386
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenCaptureAction:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;

    .line 565
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$2;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    .line 631
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$3;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownLongPress:Ljava/lang/Runnable;

    .line 641
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$4;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeLongPress:Ljava/lang/Runnable;

    .line 664
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$5;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$5;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeLongPress:Ljava/lang/Runnable;

    .line 2632
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$8;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$8;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastDone:Landroid/content/BroadcastReceiver;

    .line 2638
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$9;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$9;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockReceiver:Landroid/content/BroadcastReceiver;

    .line 2887
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$11;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$11;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    .line 3265
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsCameraInHold:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsCameraInHold:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsVideoPlayerInHold:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsVideoPlayerInHold:Z

    return p1
.end method

.method private determineHiddenState(ZIII)I
    .registers 6
    .parameter "lidOpen"
    .parameter "mode"
    .parameter "hiddenValue"
    .parameter "visibleValue"

    .prologue
    .line 943
    packed-switch p2, :pswitch_data_12

    move v0, p4

    .line 949
    :goto_4
    return v0

    .line 945
    :pswitch_5
    if-eqz p1, :cond_9

    move v0, p4

    goto :goto_4

    :cond_9
    move v0, p3

    goto :goto_4

    .line 947
    :pswitch_b
    if-eqz p1, :cond_f

    move v0, p3

    goto :goto_4

    :cond_f
    move v0, p4

    goto :goto_4

    .line 943
    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_5
        :pswitch_b
    .end packed-switch
.end method

.method static getAudioService()Landroid/media/IAudioService;
    .registers 3

    .prologue
    .line 1243
    const-string v1, "audio"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 1245
    .local v0, audioService:Landroid/media/IAudioService;
    if-nez v0, :cond_13

    .line 1246
    const-string v1, "WindowManager"

    const-string v2, "Unable to find IAudioService interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    :cond_13
    return-object v0
.end method

.method private getCurrentLandscapeRotation(I)I
    .registers 4
    .parameter "lastRotation"

    .prologue
    .line 2791
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->getCurrentRotation(I)I

    move-result v0

    .line 2792
    .local v0, sensorRotation:I
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v1

    if-eqz v1, :cond_e

    move v1, v0

    .line 2800
    :goto_d
    return v1

    .line 2796
    :cond_e
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v1

    if-eqz v1, :cond_16

    move v1, p1

    .line 2797
    goto :goto_d

    .line 2800
    :cond_16
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    goto :goto_d
.end method

.method private getCurrentPortraitRotation(I)I
    .registers 4
    .parameter "lastRotation"

    .prologue
    .line 2808
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->getCurrentRotation(I)I

    move-result v0

    .line 2809
    .local v0, sensorRotation:I
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v1

    if-eqz v1, :cond_e

    move v1, v0

    .line 2817
    :goto_d
    return v1

    .line 2813
    :cond_e
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v1

    if-eqz v1, :cond_16

    move v1, p1

    .line 2814
    goto :goto_d

    .line 2817
    :cond_16
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    goto :goto_d
.end method

.method static getLongIntArray(Landroid/content/res/Resources;I)[J
    .registers 7
    .parameter "r"
    .parameter "resid"

    .prologue
    .line 2848
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 2849
    .local v0, ar:[I
    if-nez v0, :cond_8

    .line 2850
    const/4 v3, 0x0

    .line 2856
    :goto_7
    return-object v3

    .line 2852
    :cond_8
    array-length v3, v0

    new-array v2, v3, [J

    .line 2853
    .local v2, out:[J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    array-length v3, v0

    if-ge v1, v3, :cond_17

    .line 2854
    aget v3, v0, v1

    int-to-long v3, v3

    aput-wide v3, v2, v1

    .line 2853
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_17
    move-object v3, v2

    .line 2856
    goto :goto_7
.end method

.method static getTelephonyService()Lcom/android/internal/telephony/ITelephony;
    .registers 3

    .prologue
    .line 1234
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1236
    .local v0, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-nez v0, :cond_13

    .line 1237
    const-string v1, "WindowManager"

    const-string v2, "Unable to find ITelephony interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    :cond_13
    return-object v0
.end method

.method private interceptPowerKeyDown(ZZ)V
    .registers 7
    .parameter "handled"
    .parameter "keyguardActive"

    .prologue
    .line 548
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 549
    if-nez p1, :cond_11

    if-nez p2, :cond_11

    .line 551
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 553
    :cond_11
    return-void
.end method

.method private interceptPowerKeyUp(Z)Z
    .registers 6
    .parameter "canceled"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 556
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    if-nez v0, :cond_13

    .line 557
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 558
    if-nez p1, :cond_11

    move v0, v3

    .line 561
    :goto_10
    return v0

    :cond_11
    move v0, v2

    .line 558
    goto :goto_10

    .line 560
    :cond_13
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    move v0, v2

    .line 561
    goto :goto_10
.end method

.method private isAnyPortrait(I)Z
    .registers 3
    .parameter "sensorRotation"

    .prologue
    .line 2821
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    if-eq p1, v0, :cond_8

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    if-ne p1, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private isLandscapeOrSeascape(I)Z
    .registers 3
    .parameter "sensorRotation"

    .prologue
    .line 2804
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    if-eq p1, v0, :cond_8

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    if-ne p1, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method static isMediaKey(I)Z
    .registers 2
    .parameter "code"

    .prologue
    .line 2117
    const/16 v0, 0x4f

    if-eq p0, v0, :cond_1c

    const/16 v0, 0x55

    if-eq p0, v0, :cond_1c

    const/16 v0, 0x56

    if-eq p0, v0, :cond_1c

    const/16 v0, 0x57

    if-eq p0, v0, :cond_1c

    const/16 v0, 0x58

    if-eq p0, v0, :cond_1c

    const/16 v0, 0x59

    if-eq p0, v0, :cond_1c

    const/16 v0, 0x5a

    if-ne p0, v0, :cond_1e

    .line 2124
    :cond_1c
    const/4 v0, 0x1

    .line 2126
    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method private isMtpRunning()Z
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 2440
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2441
    .local v0, activityManager:Landroid/app/ActivityManager;
    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 2442
    .local v1, info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, iterator:Ljava/util/Iterator;
    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_43

    .line 2443
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2444
    .local v3, runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.MtpApplication.MtpApplication"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 2445
    const-string v4, "MTP-PWM"

    const-string v5, " Set DEVICE_PROVISIONED value to one for home key press"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2446
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "device_provisioned"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v4, v6

    .line 2450
    .end local v3           #runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    :goto_42
    return v4

    :cond_43
    const/4 v4, 0x0

    goto :goto_42
.end method

.method private isMtpRunningInCallState()Z
    .registers 7

    .prologue
    .line 2455
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2456
    .local v0, activityManager:Landroid/app/ActivityManager;
    const/16 v4, 0x14

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 2457
    .local v1, info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, iterator:Ljava/util/Iterator;
    :cond_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_39

    .line 2458
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2459
    .local v3, runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.MtpApplication.MtpApplication"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 2460
    const-string v4, "MTP-PWM"

    const-string v5, "MTP is running in call state"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2461
    const/4 v4, 0x1

    .line 2464
    .end local v3           #runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    :goto_38
    return v4

    :cond_39
    const/4 v4, 0x0

    goto :goto_38
.end method

.method private keyguardIsShowingTq()Z
    .registers 2

    .prologue
    .line 2699
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v0

    return v0
.end method

.method private readRotation(I)I
    .registers 4
    .parameter "resID"

    .prologue
    .line 855
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getInteger(I)I
    :try_end_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_9} :catch_17

    move-result v0

    .line 856
    .local v0, rotation:I
    sparse-switch v0, :sswitch_data_1a

    .line 869
    .end local v0           #rotation:I
    :goto_d
    const/4 v1, -0x1

    :goto_e
    return v1

    .line 858
    .restart local v0       #rotation:I
    :sswitch_f
    const/4 v1, 0x0

    goto :goto_e

    .line 860
    :sswitch_11
    const/4 v1, 0x1

    goto :goto_e

    .line 862
    :sswitch_13
    const/4 v1, 0x2

    goto :goto_e

    .line 864
    :sswitch_15
    const/4 v1, 0x3

    goto :goto_e

    .line 866
    .end local v0           #rotation:I
    :catch_17
    move-exception v1

    goto :goto_d

    .line 856
    nop

    :sswitch_data_1a
    .sparse-switch
        0x0 -> :sswitch_f
        0x5a -> :sswitch_11
        0xb4 -> :sswitch_13
        0x10e -> :sswitch_15
    .end sparse-switch
.end method

.method static sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .parameter "context"
    .parameter "reason"

    .prologue
    .line 2716
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2718
    :try_start_6
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_d} :catch_e

    .line 2722
    :cond_d
    :goto_d
    return-void

    .line 2719
    :catch_e
    move-exception v0

    goto :goto_d
.end method

.method private updateLockScreenTimeout()V
    .registers 7

    .prologue
    .line 2898
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    monitor-enter v1

    .line 2899
    :try_start_3
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    if-eqz v2, :cond_29

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOn:Z

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isSecure()Z

    move-result v2

    if-eqz v2, :cond_29

    const/4 v2, 0x1

    move v0, v2

    .line 2900
    .local v0, enable:Z
    :goto_15
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimerActive:Z

    if-eq v2, v0, :cond_27

    .line 2901
    if-eqz v0, :cond_2c

    .line 2903
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimeout:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2908
    :goto_25
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimerActive:Z

    .line 2910
    :cond_27
    monitor-exit v1

    .line 2911
    return-void

    .line 2899
    .end local v0           #enable:Z
    :cond_29
    const/4 v2, 0x0

    move v0, v2

    goto :goto_15

    .line 2906
    .restart local v0       #enable:Z
    :cond_2c
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_25

    .line 2910
    .end local v0           #enable:Z
    :catchall_34
    move-exception v2

    monitor-exit v1
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw v2
.end method


# virtual methods
.method public addStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILjava/lang/CharSequence;II)Landroid/view/View;
    .registers 21
    .parameter "appToken"
    .parameter "packageName"
    .parameter "theme"
    .parameter "nonLocalizedLabel"
    .parameter "labelRes"
    .parameter "icon"

    .prologue
    .line 1049
    if-nez p2, :cond_4

    .line 1050
    const/4 v11, 0x0

    .line 1140
    :goto_3
    return-object v11

    .line 1054
    :cond_4
    :try_start_4
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;
    :try_end_6
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_4 .. :try_end_6} :catch_af
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_6} :catch_cc

    .line 1055
    .local v3, context:Landroid/content/Context;
    const/4 v7, 0x0

    .line 1058
    .local v7, setTheme:Z
    if-nez p3, :cond_b

    if-eqz p5, :cond_1d

    .line 1060
    :cond_b
    const/4 v11, 0x0

    :try_start_c
    move-object v0, v3

    move-object/from16 v1, p2

    move v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    .line 1061
    if-eqz p3, :cond_1d

    .line 1062
    move-object v0, v3

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/Context;->setTheme(I)V
    :try_end_1c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_1c} :catch_e7
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_c .. :try_end_1c} :catch_af
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_1c} :catch_cc

    .line 1063
    const/4 v7, 0x1

    .line 1069
    :cond_1d
    :goto_1d
    if-nez v7, :cond_25

    .line 1070
    const v11, 0x1030005

    :try_start_22
    invoke-virtual {v3, v11}, Landroid/content/Context;->setTheme(I)V

    .line 1073
    :cond_25
    invoke-static {v3}, Lcom/android/internal/policy/PolicyManager;->makeNewWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v9

    .line 1074
    .local v9, win:Landroid/view/Window;
    invoke-virtual {v9}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v11

    const/16 v12, 0xc

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    if-eqz v11, :cond_38

    .line 1076
    const/4 v11, 0x0

    goto :goto_3

    .line 1079
    :cond_38
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1080
    .local v6, r:Landroid/content/res/Resources;
    move-object v0, v6

    move/from16 v1, p5

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 1082
    const/4 v11, 0x3

    invoke-virtual {v9, v11}, Landroid/view/Window;->setType(I)V

    .line 1088
    const v11, 0x20018

    const v12, 0x20018

    invoke-virtual {v9, v11, v12}, Landroid/view/Window;->setFlags(II)V

    .line 1096
    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-virtual {v9, v11, v12}, Landroid/view/Window;->setLayout(II)V

    .line 1099
    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 1100
    .local v5, params:Landroid/view/WindowManager$LayoutParams;
    iput-object p1, v5, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1101
    move-object/from16 v0, p2

    move-object v1, v5

    iput-object v0, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1102
    invoke-virtual {v9}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v11

    const/16 v12, 0x8

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    iput v11, v5, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1104
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Starting "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v0, v11

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1106
    const-string v11, "window"

    invoke-virtual {v3, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManagerImpl;

    .line 1108
    .local v10, wm:Landroid/view/WindowManagerImpl;
    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    .line 1110
    .local v8, view:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/Window;->isFloating()Z

    move-result v11

    if-eqz v11, :cond_a0

    .line 1117
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 1125
    :cond_a0
    invoke-virtual {v10, v8, v5}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1129
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    :try_end_a6
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_22 .. :try_end_a6} :catch_af
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_a6} :catch_cc

    move-result-object v11

    if-eqz v11, :cond_ac

    move-object v11, v8

    goto/16 :goto_3

    :cond_ac
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 1130
    .end local v3           #context:Landroid/content/Context;
    .end local v5           #params:Landroid/view/WindowManager$LayoutParams;
    .end local v6           #r:Landroid/content/res/Resources;
    .end local v7           #setTheme:Z
    .end local v8           #view:Landroid/view/View;
    .end local v9           #win:Landroid/view/Window;
    .end local v10           #wm:Landroid/view/WindowManagerImpl;
    :catch_af
    move-exception v11

    move-object v4, v11

    .line 1132
    .local v4, e:Landroid/view/WindowManager$BadTokenException;
    const-string v11, "WindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " already running, starting window not displayed"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    .end local v4           #e:Landroid/view/WindowManager$BadTokenException;
    :goto_c9
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 1133
    :catch_cc
    move-exception v11

    move-object v4, v11

    .line 1137
    .local v4, e:Ljava/lang/RuntimeException;
    const-string v11, "WindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " failed creating starting window"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c9

    .line 1065
    .end local v4           #e:Ljava/lang/RuntimeException;
    .restart local v3       #context:Landroid/content/Context;
    .restart local v7       #setTheme:Z
    :catch_e7
    move-exception v11

    goto/16 :goto_1d
.end method

.method public adjustConfigurationLw(Landroid/content/res/Configuration;)V
    .registers 6
    .parameter "config"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 954
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readLidState()V

    .line 955
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:Z

    .line 956
    .local v0, lidOpen:Z
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    invoke-interface {v1, v0}, Landroid/os/LocalPowerManager;->setKeyboardVisibility(Z)V

    .line 957
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidKeyboardAccessibility:I

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->determineHiddenState(ZIII)I

    move-result v1

    iput v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 960
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidNavigationAccessibility:I

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->determineHiddenState(ZIII)I

    move-result v1

    iput v1, p1, Landroid/content/res/Configuration;->navigationHidden:I

    .line 963
    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v1, v2, :cond_24

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    if-eqz v1, :cond_28

    :cond_24
    move v1, v2

    :goto_25
    iput v1, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 967
    return-void

    :cond_28
    move v1, v3

    .line 963
    goto :goto_25
.end method

.method public adjustWindowParamsLw(Landroid/view/WindowManager$LayoutParams;)V
    .registers 3
    .parameter "attrs"

    .prologue
    .line 916
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v0, :sswitch_data_14

    .line 928
    :goto_5
    return-void

    .line 921
    :sswitch_6
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x18

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_5

    .line 925
    :sswitch_d
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_5

    .line 916
    :sswitch_data_14
    .sparse-switch
        0x7d5 -> :sswitch_d
        0x7d6 -> :sswitch_6
        0x7df -> :sswitch_6
    .end sparse-switch
.end method

.method public allowAppAnimationsLw()Z
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1979
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_10

    move v5, v7

    .line 2002
    :goto_f
    return v5

    .line 1984
    :cond_10
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_5f

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 1985
    new-instance v3, Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getShownFrameLw()Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1986
    .local v3, rect:Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarPanels:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int v0, v5, v8

    .local v0, i:I
    :goto_2f
    if-ltz v0, :cond_49

    .line 1987
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarPanels:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManagerPolicy$WindowState;

    .line 1988
    .local v4, w:Landroid/view/WindowManagerPolicy$WindowState;
    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_46

    .line 1989
    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getShownFrameLw()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 1986
    :cond_46
    add-int/lit8 v0, v0, -0x1

    goto :goto_2f

    .line 1992
    .end local v4           #w:Landroid/view/WindowManagerPolicy$WindowState;
    :cond_49
    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mW:I

    div-int/lit8 v2, v5, 0xa

    .line 1993
    .local v2, insetw:I
    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mH:I

    div-int/lit8 v1, v5, 0xa

    .line 1994
    .local v1, inseth:I
    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mW:I

    sub-int/2addr v5, v2

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mH:I

    sub-int/2addr v6, v1

    invoke-virtual {v3, v2, v1, v5, v6}, Landroid/graphics/Rect;->contains(IIII)Z

    move-result v5

    if-eqz v5, :cond_5f

    move v5, v7

    .line 1999
    goto :goto_f

    .end local v0           #i:I
    .end local v1           #inseth:I
    .end local v2           #insetw:I
    .end local v3           #rect:Landroid/graphics/Rect;
    :cond_5f
    move v5, v8

    .line 2002
    goto :goto_f
.end method

.method public allowKeyRepeat()Z
    .registers 2

    .prologue
    .line 3142
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOn:Z

    return v0
.end method

.method public animatingWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .registers 7
    .parameter "win"
    .parameter "attrs"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 1841
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v0, :cond_4a

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleOrBehindKeyguardLw()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 1843
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_14

    .line 1844
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBar:Z

    .line 1846
    :cond_14
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-lt v0, v2, :cond_4a

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x63

    if-gt v0, v1, :cond_4a

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v0, :cond_4a

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v0, :cond_4a

    iget v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v0, v3, :cond_4a

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v0, v3, :cond_4a

    .line 1852
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 1853
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x8

    and-int/2addr v0, v1

    if-eqz v0, :cond_39

    .line 1855
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    .line 1857
    :cond_39
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x40

    and-int/2addr v0, v1

    if-eqz v0, :cond_42

    .line 1859
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:Z

    .line 1861
    :cond_42
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4a

    .line 1862
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    .line 1866
    :cond_4a
    return-void
.end method

.method public beginAnimationLw(II)V
    .registers 5
    .parameter "displayWidth"
    .parameter "displayHeight"

    .prologue
    const/4 v1, 0x0

    .line 1830
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 1831
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBar:Z

    .line 1833
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    .line 1834
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    .line 1835
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:Z

    .line 1836
    return-void
.end method

.method public beginLayoutLw(II)V
    .registers 8
    .parameter "displayWidth"
    .parameter "displayHeight"

    .prologue
    const/4 v4, 0x0

    .line 1600
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mW:I

    .line 1601
    iput p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mH:I

    .line 1602
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    .line 1603
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    .line 1604
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    .line 1605
    iput p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    iput p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    .line 1606
    const/high16 v3, 0x1000

    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    .line 1609
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_5e

    .line 1610
    sget-object v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 1611
    .local v1, pf:Landroid/graphics/Rect;
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 1612
    .local v0, df:Landroid/graphics/Rect;
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 1613
    .local v2, vf:Landroid/graphics/Rect;
    iput v4, v2, Landroid/graphics/Rect;->left:I

    iput v4, v0, Landroid/graphics/Rect;->left:I

    iput v4, v1, Landroid/graphics/Rect;->left:I

    .line 1614
    iput v4, v2, Landroid/graphics/Rect;->top:I

    iput v4, v0, Landroid/graphics/Rect;->top:I

    iput v4, v1, Landroid/graphics/Rect;->top:I

    .line 1615
    iput p1, v2, Landroid/graphics/Rect;->right:I

    iput p1, v0, Landroid/graphics/Rect;->right:I

    iput p1, v1, Landroid/graphics/Rect;->right:I

    .line 1616
    iput p2, v2, Landroid/graphics/Rect;->bottom:I

    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    iput p2, v1, Landroid/graphics/Rect;->bottom:I

    .line 1618
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3, v1, v0, v2, v2}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1619
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 1622
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    .line 1628
    .end local v0           #df:Landroid/graphics/Rect;
    .end local v1           #pf:Landroid/graphics/Rect;
    .end local v2           #vf:Landroid/graphics/Rect;
    :cond_5e
    return-void
.end method

.method public canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .registers 5
    .parameter "win"
    .parameter "attrs"

    .prologue
    .line 1038
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_e

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7dd

    if-eq v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public checkAddPermission(Landroid/view/WindowManager$LayoutParams;)I
    .registers 6
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    .line 874
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 876
    .local v1, type:I
    const/16 v2, 0x7d0

    if-lt v1, v2, :cond_b

    const/16 v2, 0xbb7

    if-le v1, v2, :cond_d

    :cond_b
    move v2, v3

    .line 912
    :goto_c
    return v2

    .line 881
    :cond_d
    const/16 v2, 0xbb6

    if-ne v1, v2, :cond_13

    move v2, v3

    .line 882
    goto :goto_c

    .line 885
    :cond_13
    const/4 v0, 0x0

    .line 886
    .local v0, permission:Ljava/lang/String;
    packed-switch v1, :pswitch_data_2a

    .line 904
    :pswitch_17
    const-string v0, "android.permission.INTERNAL_SYSTEM_WINDOW"

    .line 906
    :goto_19
    :pswitch_19
    if-eqz v0, :cond_28

    .line 907
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_28

    .line 909
    const/4 v2, -0x8

    goto :goto_c

    .line 901
    :pswitch_25
    const-string v0, "android.permission.SYSTEM_ALERT_WINDOW"

    .line 902
    goto :goto_19

    :cond_28
    move v2, v3

    .line 912
    goto :goto_c

    .line 886
    :pswitch_data_2a
    .packed-switch 0x7d2
        :pswitch_25
        :pswitch_25
        :pswitch_17
        :pswitch_19
        :pswitch_25
        :pswitch_25
        :pswitch_17
        :pswitch_17
        :pswitch_25
        :pswitch_19
        :pswitch_17
        :pswitch_19
    .end packed-switch
.end method

.method public createForceHideEnterAnimation()Landroid/view/animation/Animation;
    .registers 3

    .prologue
    .line 1229
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const v1, 0x10a001d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method createHomeDockIntent()Landroid/content/Intent;
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 2950
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUiMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_18

    .line 2951
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    .line 2958
    .local v1, intent:Landroid/content/Intent;
    :goto_8
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 2960
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    if-nez v0, :cond_22

    move-object v3, v5

    .line 2970
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    .end local v1           #intent:Landroid/content/Intent;
    :goto_17
    return-object v3

    .line 2952
    :cond_18
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUiMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_20

    .line 2953
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    .restart local v1       #intent:Landroid/content/Intent;
    goto :goto_8

    .end local v1           #intent:Landroid/content/Intent;
    :cond_20
    move-object v3, v5

    .line 2955
    goto :goto_17

    .line 2964
    .restart local v0       #ai:Landroid/content/pm/ActivityInfo;
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_22
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_3e

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "android.dock_home"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 2965
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 2966
    .end local v1           #intent:Landroid/content/Intent;
    .local v2, intent:Landroid/content/Intent;
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v3, v2

    .line 2967
    goto :goto_17

    .end local v2           #intent:Landroid/content/Intent;
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_3e
    move-object v3, v5

    .line 2970
    goto :goto_17
.end method

.method public detectSafeMode()Z
    .registers 9

    .prologue
    const/4 v7, 0x1

    const-string v5, "WindowManager"

    .line 2826
    :try_start_3
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/16 v6, 0x52

    invoke-interface {v5, v6}, Landroid/view/IWindowManager;->getKeycodeState(I)I

    move-result v2

    .line 2827
    .local v2, menuState:I
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/16 v6, 0x2f

    invoke-interface {v5, v6}, Landroid/view/IWindowManager;->getKeycodeState(I)I

    move-result v3

    .line 2828
    .local v3, sState:I
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/16 v6, 0x17

    invoke-interface {v5, v6}, Landroid/view/IWindowManager;->getDPadKeycodeState(I)I

    move-result v0

    .line 2829
    .local v0, dpadState:I
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/16 v6, 0x110

    invoke-interface {v5, v6}, Landroid/view/IWindowManager;->getTrackballScancodeState(I)I

    move-result v4

    .line 2830
    .local v4, trackballState:I
    if-gtz v2, :cond_2b

    if-gtz v3, :cond_2b

    if-gtz v0, :cond_2b

    if-lez v4, :cond_7c

    :cond_2b
    move v5, v7

    :goto_2c
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeMode:Z

    .line 2831
    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeMode:Z

    if-eqz v6, :cond_7e

    const/16 v6, 0x2711

    :goto_35
    const/4 v7, 0x1

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 2834
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeMode:Z

    if-eqz v5, :cond_81

    .line 2835
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SAFE MODE ENABLED (menu="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " s="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dpad="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " trackball="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2840
    :goto_79
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeMode:Z

    return v5

    .line 2830
    :cond_7c
    const/4 v5, 0x0

    goto :goto_2c

    .line 2831
    :cond_7e
    const/16 v6, 0x2710

    goto :goto_35

    .line 2838
    :cond_81
    const-string v5, "WindowManager"

    const-string v6, "SAFE MODE not enabled"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_88
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_88} :catch_89

    goto :goto_79

    .line 2841
    .end local v0           #dpadState:I
    .end local v2           #menuState:I
    .end local v3           #sState:I
    .end local v4           #trackballState:I
    :catch_89
    move-exception v5

    move-object v1, v5

    .line 2843
    .local v1, e:Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "window manager dead"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public doesForceHide(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .registers 5
    .parameter "win"
    .parameter "attrs"

    .prologue
    .line 1034
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d4

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public enableKeyguard(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 2685
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->setKeyguardEnabled(Z)V

    .line 2686
    return-void
.end method

.method public enableKeyguard(ZZ)V
    .registers 4
    .parameter "enabled"
    .parameter "delayed"

    .prologue
    .line 2690
    if-eqz p2, :cond_9

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->setKeyguardEnableControl()V

    .line 2691
    :cond_9
    return-void
.end method

.method public enableScreenAfterBoot()V
    .registers 2

    .prologue
    .line 2915
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readLidState()V

    .line 2916
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(I)V

    .line 2917
    return-void
.end method

.method public exitKeyguardSecurely(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V
    .registers 3
    .parameter "callback"

    .prologue
    .line 2695
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->verifyUnlock(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V

    .line 2696
    return-void
.end method

.method public finishAnimationLw()I
    .registers 15

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const-string v13, "statusbar"

    const-string v12, "]"

    const-string v11, "StatusBar"

    .line 1870
    const/4 v0, 0x0

    .line 1872
    .local v0, changes:I
    const/4 v2, 0x0

    .line 1873
    .local v2, hiding:Z
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v7, :cond_1c

    .line 1876
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBar:Z

    if-eqz v7, :cond_64

    .line 1878
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v7, v9}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v7

    if-eqz v7, :cond_1c

    or-int/lit8 v0, v0, 0x1

    .line 1927
    :cond_1c
    :goto_1c
    if-eqz v0, :cond_2f

    if-eqz v2, :cond_2f

    .line 1928
    const-string v7, "statusbar"

    invoke-static {v13}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v5

    .line 1929
    .local v5, sbs:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v5, :cond_2f

    .line 1932
    :try_start_2c
    invoke-interface {v5}, Lcom/android/internal/statusbar/IStatusBarService;->collapse()V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_2f} :catch_138

    .line 1940
    .end local v5           #sbs:Lcom/android/internal/statusbar/IStatusBarService;
    :cond_2f
    :goto_2f
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v7, :cond_60

    .line 1942
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:Z

    if-eqz v7, :cond_112

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isSecure()Z

    move-result v7

    if-nez v7, :cond_112

    .line 1943
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v7, v9}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v7

    if-eqz v7, :cond_4e

    .line 1944
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v7, v9}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->setHidden(Z)V

    .line 1945
    or-int/lit8 v0, v0, 0x7

    .line 1949
    :cond_4e
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_60

    .line 1950
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/internal/policy/impl/PhoneWindowManager$7;

    invoke-direct {v8, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$7;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1974
    :cond_60
    :goto_60
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 1975
    return v0

    .line 1879
    :cond_64
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v7, :cond_1c

    .line 1883
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 1885
    .local v4, lp:Landroid/view/WindowManager$LayoutParams;
    iget v7, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v7, v7, 0x400

    if-eqz v7, :cond_b7

    move v1, v9

    .line 1887
    .local v1, hideStatusBar:Z
    :goto_75
    if-eqz v1, :cond_d2

    .line 1889
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v7, v9}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v7

    if-eqz v7, :cond_cf

    .line 1890
    or-int/lit8 v0, v0, 0x1

    .line 1893
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarPanels:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v3, v7, v9

    .local v3, i:I
    :goto_89
    if-ltz v3, :cond_b9

    .line 1894
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarPanels:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManagerPolicy$WindowState;

    .line 1895
    .local v6, w:Landroid/view/WindowManagerPolicy$WindowState;
    const-string v7, "StatusBar"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Hiding status bar panel["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1896
    invoke-interface {v6, v10}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    .line 1893
    add-int/lit8 v3, v3, -0x1

    goto :goto_89

    .end local v1           #hideStatusBar:Z
    .end local v3           #i:I
    .end local v6           #w:Landroid/view/WindowManagerPolicy$WindowState;
    :cond_b7
    move v1, v10

    .line 1885
    goto :goto_75

    .line 1898
    .restart local v1       #hideStatusBar:Z
    .restart local v3       #i:I
    :cond_b9
    const-string v7, "statusbar"

    invoke-static {v13}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v5

    .line 1899
    .restart local v5       #sbs:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v5, :cond_cf

    .line 1902
    :try_start_c5
    invoke-interface {v5}, Lcom/android/internal/statusbar/IStatusBarService;->collapse()V

    .line 1903
    const-string v7, "StatusBar"

    const-string v8, "collapse"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cf
    .catch Landroid/os/RemoteException; {:try_start_c5 .. :try_end_cf} :catch_13b

    .line 1909
    .end local v3           #i:I
    .end local v5           #sbs:Lcom/android/internal/statusbar/IStatusBarService;
    :cond_cf
    :goto_cf
    const/4 v2, 0x1

    goto/16 :goto_1c

    .line 1912
    :cond_d2
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v7, v9}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 1913
    or-int/lit8 v0, v0, 0x1

    .line 1916
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarPanels:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v3, v7, v9

    .restart local v3       #i:I
    :goto_e4
    if-ltz v3, :cond_1c

    .line 1917
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarPanels:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManagerPolicy$WindowState;

    .line 1918
    .restart local v6       #w:Landroid/view/WindowManagerPolicy$WindowState;
    const-string v7, "StatusBar"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Showing status bar panel["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    invoke-interface {v6, v10}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    .line 1916
    add-int/lit8 v3, v3, -0x1

    goto :goto_e4

    .line 1956
    .end local v1           #hideStatusBar:Z
    .end local v3           #i:I
    .end local v4           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v6           #w:Landroid/view/WindowManagerPolicy$WindowState;
    :cond_112
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    if-eqz v7, :cond_127

    .line 1957
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v7, v9}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v7

    if-eqz v7, :cond_120

    .line 1958
    or-int/lit8 v0, v0, 0x7

    .line 1962
    :cond_120
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v7, v9}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->setHidden(Z)V

    goto/16 :goto_60

    .line 1964
    :cond_127
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v7, v9}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v7

    if-eqz v7, :cond_131

    .line 1965
    or-int/lit8 v0, v0, 0x7

    .line 1969
    :cond_131
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v7, v10}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->setHidden(Z)V

    goto/16 :goto_60

    .line 1933
    .restart local v5       #sbs:Lcom/android/internal/statusbar/IStatusBarService;
    :catch_138
    move-exception v7

    goto/16 :goto_2f

    .line 1904
    .restart local v1       #hideStatusBar:Z
    .restart local v3       #i:I
    .restart local v4       #lp:Landroid/view/WindowManager$LayoutParams;
    :catch_13b
    move-exception v7

    goto :goto_cf
.end method

.method public finishLayoutLw()I
    .registers 2

    .prologue
    .line 1825
    const/4 v0, 0x0

    return v0
.end method

.method public getContentInsetHintLw(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;)V
    .registers 9
    .parameter "attrs"
    .parameter "contentInset"

    .prologue
    .line 1587
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1589
    .local v0, fl:I
    const v1, 0x10500

    and-int/2addr v1, v0

    const v2, 0x10100

    if-ne v1, v2, :cond_1d

    .line 1592
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mW:I

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mH:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    sub-int/2addr v4, v5

    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1596
    :goto_1c
    return-void

    .line 1594
    :cond_1d
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_1c
.end method

.method public getHoldMode(Ljava/lang/String;)Z
    .registers 5
    .parameter "pkgName"

    .prologue
    const/4 v2, 0x0

    .line 3151
    const-string v0, "com.sec.android.app.camera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 3152
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldImitator:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->mModeHolder:Landroid/util/SparseBooleanArray;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldImitator:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 3156
    :goto_16
    return v0

    .line 3153
    :cond_17
    const-string v0, "com.sec.android.app.videoplayer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 3154
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldImitator:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->mModeHolder:Landroid/util/SparseBooleanArray;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldImitator:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    goto :goto_16

    :cond_2e
    move v0, v2

    .line 3156
    goto :goto_16
.end method

.method public getMaxWallpaperLayer()I
    .registers 2

    .prologue
    .line 1030
    const/16 v0, 0x8

    return v0
.end method

.method public getRotation()I
    .registers 3

    .prologue
    .line 3174
    const/4 v0, 0x0

    .line 3176
    .local v0, rotation:I
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1}, Landroid/view/IWindowManager;->getRotation()I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_8

    move-result v0

    .line 3180
    :goto_7
    return v0

    .line 3177
    :catch_8
    move-exception v1

    goto :goto_7
.end method

.method goHome()Z
    .registers 16

    .prologue
    .line 3002
    :try_start_0
    const-string v0, "persist.sys.uts-test-mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_34

    .line 3004
    const-string v0, "WindowManager"

    const-string v1, "UTS-TEST-MODE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3019
    :cond_11
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-interface/range {v3 .. v13}, Landroid/app/IActivityManager;->startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;[Landroid/net/Uri;ILandroid/os/IBinder;Ljava/lang/String;IZZ)I

    move-result v14

    .line 3023
    .local v14, result:I
    const/4 v0, 0x1

    if-ne v14, v0, :cond_64

    .line 3024
    const/4 v0, 0x0

    .line 3030
    .end local v14           #result:I
    :goto_33
    return v0

    .line 3006
    :cond_34
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopAppSwitches()V

    .line 3007
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows()V

    .line 3008
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    move-result-object v2

    .line 3009
    .local v2, dock:Landroid/content/Intent;
    if-eqz v2, :cond_11

    .line 3010
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;[Landroid/net/Uri;ILandroid/os/IBinder;Ljava/lang/String;IZZ)I
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5d} :catch_63

    move-result v14

    .line 3014
    .restart local v14       #result:I
    const/4 v0, 0x1

    if-ne v14, v0, :cond_11

    .line 3015
    const/4 v0, 0x0

    goto :goto_33

    .line 3026
    .end local v2           #dock:Landroid/content/Intent;
    .end local v14           #result:I
    :catch_63
    move-exception v0

    .line 3030
    :cond_64
    const/4 v0, 0x1

    goto :goto_33
.end method

.method handleVolumeKey(II)V
    .registers 8
    .parameter "stream"
    .parameter "keycode"

    .prologue
    .line 2095
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    .line 2096
    .local v0, audioService:Landroid/media/IAudioService;
    if-nez v0, :cond_7

    .line 2114
    :goto_6
    return-void

    .line 2103
    :cond_7
    :try_start_7
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2104
    const/16 v2, 0x18

    if-ne p2, v2, :cond_1b

    const/4 v2, 0x1

    :goto_11
    const/4 v3, 0x0

    invoke-interface {v0, p1, v2, v3}, Landroid/media/IAudioService;->adjustStreamVolume(III)V
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_3d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_15} :catch_1d

    .line 2112
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_6

    .line 2104
    :cond_1b
    const/4 v2, -0x1

    goto :goto_11

    .line 2109
    :catch_1d
    move-exception v2

    move-object v1, v2

    .line 2110
    .local v1, e:Landroid/os/RemoteException;
    :try_start_1f
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IAudioService.adjustStreamVolume() threw RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_1f .. :try_end_37} :catchall_3d

    .line 2112
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_6

    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_3d
    move-exception v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v2
.end method

.method public inKeyguardRestrictedInputMode()Z
    .registers 4

    .prologue
    .line 2435
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 2436
    .local v0, kgm:Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    return v1
.end method

.method public inKeyguardRestrictedKeyInputMode()Z
    .registers 2

    .prologue
    .line 2704
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isInputRestricted()Z

    move-result v0

    return v0
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/os/LocalPowerManager;)V
    .registers 14
    .parameter "context"
    .parameter "windowManager"
    .parameter "powerManager"

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x0

    const/high16 v6, 0x1020

    const-string v8, "android.intent.action.MAIN"

    .line 688
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 689
    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    .line 690
    iput-object p3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    .line 691
    new-instance v4, Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-direct {v4, p1, p0, p3}, Lcom/android/internal/policy/impl/KeyguardViewMediator;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/os/LocalPowerManager;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    .line 692
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    .line 693
    new-instance v4, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, p0, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    .line 694
    new-instance v3, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/os/Handler;)V

    .line 695
    .local v3, settingsObserver:Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;
    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;->observe()V

    .line 696
    new-instance v4, Lcom/android/internal/policy/impl/ShortcutManager;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p1, v5}, Lcom/android/internal/policy/impl/ShortcutManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    .line 697
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/ShortcutManager;->observe()V

    .line 703
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v4, v8, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    .line 704
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    const-string v5, "android.intent.category.HOME"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 705
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 707
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v4, v8, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    .line 708
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    const-string v5, "android.intent.category.CAR_DOCK"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 709
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 711
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v4, v8, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    .line 712
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    const-string v5, "android.intent.category.DESK_DOCK"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 713
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 715
    const-string v4, "power"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 716
    .local v2, pm:Landroid/os/PowerManager;
    const/4 v4, 0x1

    const-string v5, "PhoneWindowManager.mBroadcastWakeLock"

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 718
    const-string v4, "1"

    const-string v5, "ro.debuggable"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    .line 719
    const v4, 0x10e0004

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readRotation(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpenRotation:I

    .line 721
    const v4, 0x10e0006

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readRotation(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    .line 723
    const v4, 0x10e0005

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readRotation(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    .line 725
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10d000f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    .line 727
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10d000e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    .line 729
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e0009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidKeyboardAccessibility:I

    .line 731
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidNavigationAccessibility:I

    .line 734
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 735
    .local v0, filter:Landroid/content/IntentFilter;
    sget-object v4, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 736
    sget-object v4, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 737
    sget-object v4, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 738
    sget-object v4, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 739
    const-string v4, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 740
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 741
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_11e

    .line 743
    const-string v4, "android.intent.extra.DOCK_STATE"

    invoke-virtual {v1, v4, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    .line 746
    :cond_11e
    new-instance v4, Landroid/os/Vibrator;

    invoke-direct {v4}, Landroid/os/Vibrator;-><init>()V

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    .line 747
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070015

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressVibePattern:[J

    .line 749
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070016

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVirtualKeyVibePattern:[J

    .line 751
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070017

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyboardTapVibePattern:[J

    .line 753
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070018

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeModeDisabledVibePattern:[J

    .line 755
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070019

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeModeEnabledVibePattern:[J

    .line 758
    invoke-static {p0}, Lcom/android/internal/policy/impl/MTPhLockReceiver;->init(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    .line 759
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "menuOpened"

    invoke-static {v4, v5, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 760
    return-void
.end method

.method public interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;IIIIIII)Z
    .registers 33
    .parameter "win"
    .parameter "action"
    .parameter "flags"
    .parameter "keyCode"
    .parameter "scanCode"
    .parameter "metaState"
    .parameter "repeatCount"
    .parameter "policyFlags"

    .prologue
    .line 1264
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardOn()Z

    move-result v13

    .line 1265
    .local v13, keyguardOn:Z
    if-nez p2, :cond_23

    const/16 v20, 0x1

    move/from16 v7, v20

    .line 1266
    .local v7, down:Z
    :goto_a
    and-int/lit8 v20, p3, 0x20

    if-eqz v20, :cond_28

    const/16 v20, 0x1

    move/from16 v5, v20

    .line 1273
    .local v5, canceled:Z
    :goto_12
    const/16 v20, 0x3

    move/from16 v0, p4

    move/from16 v1, v20

    if-ne v0, v1, :cond_2d

    .line 1275
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isHomeNeglecting()Z

    move-result v20

    if-eqz v20, :cond_2d

    .line 1276
    const/16 v20, 0x0

    .line 1501
    :goto_22
    return v20

    .line 1265
    .end local v5           #canceled:Z
    .end local v7           #down:Z
    :cond_23
    const/16 v20, 0x0

    move/from16 v7, v20

    goto :goto_a

    .line 1266
    .restart local v7       #down:Z
    :cond_28
    const/16 v20, 0x0

    move/from16 v5, v20

    goto :goto_12

    .line 1283
    .restart local v5       #canceled:Z
    :cond_2d
    const/16 v20, 0x3

    move/from16 v0, p4

    move/from16 v1, v20

    if-ne v0, v1, :cond_46

    if-nez v7, :cond_46

    .line 1284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeLongPress:Ljava/lang/Runnable;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1289
    :cond_46
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    move/from16 v20, v0

    if-eqz v20, :cond_b2

    .line 1293
    const/16 v20, 0x3

    move/from16 v0, p4

    move/from16 v1, v20

    if-ne v0, v1, :cond_93

    .line 1294
    if-nez v7, :cond_93

    .line 1295
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    .line 1297
    if-nez v5, :cond_aa

    .line 1301
    const/4 v10, 0x0

    .line 1303
    .local v10, incomingRinging:Z
    :try_start_63
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v16

    .line 1304
    .local v16, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v16, :cond_6d

    .line 1305
    invoke-interface/range {v16 .. v16}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z
    :try_end_6c
    .catch Landroid/os/RemoteException; {:try_start_63 .. :try_end_6c} :catch_96

    move-result v10

    .line 1311
    .end local v16           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_6d
    :goto_6d
    if-nez v10, :cond_7b

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isInCall()Z

    move-result v20

    if-eqz v20, :cond_a6

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isMtpRunningInCallState()Z

    move-result v20

    if-eqz v20, :cond_a6

    .line 1312
    :cond_7b
    const-string v20, "WindowManager"

    const-string v21, "Ignoring HOME; there\'s a ringing incoming call."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    .end local v10           #incomingRinging:Z
    :goto_82
    const/16 v20, 0x0

    const/16 v21, 0xd

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 1334
    :cond_93
    const/16 v20, 0x1

    goto :goto_22

    .line 1307
    .restart local v10       #incomingRinging:Z
    :catch_96
    move-exception v20

    move-object/from16 v8, v20

    .line 1308
    .local v8, ex:Landroid/os/RemoteException;
    const-string v20, "WindowManager"

    const-string v21, "RemoteException from getPhoneInterface()"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6d

    .line 1314
    .end local v8           #ex:Landroid/os/RemoteException;
    :cond_a6
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchHomeFromHotKey()V

    goto :goto_82

    .line 1317
    .end local v10           #incomingRinging:Z
    :cond_aa
    const-string v20, "WindowManager"

    const-string v21, "Ignoring HOME; event canceled."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_82

    .line 1341
    :cond_b2
    const/16 v20, 0x3

    move/from16 v0, p4

    move/from16 v1, v20

    if-ne v0, v1, :cond_195

    .line 1343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    move-object/from16 v20, v0

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->getCurrentTopActivity()Landroid/content/ComponentName;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->access$000(Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;)Landroid/content/ComponentName;

    move-result-object v17

    .line 1344
    .local v17, topActivity:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p4

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v20

    if-eqz v20, :cond_da

    .line 1346
    const/16 v20, 0x0

    goto/16 :goto_22

    .line 1354
    :cond_da
    if-eqz p1, :cond_fd

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v20

    move-object/from16 v4, v20

    .line 1355
    .local v4, attrs:Landroid/view/WindowManager$LayoutParams;
    :goto_e2
    if-eqz v4, :cond_120

    .line 1356
    move-object v0, v4

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v18, v0

    .line 1357
    .local v18, type:I
    const/16 v20, 0x7d4

    move/from16 v0, v18

    move/from16 v1, v20

    if-eq v0, v1, :cond_f9

    const/16 v20, 0x7d9

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_102

    .line 1360
    :cond_f9
    const/16 v20, 0x0

    goto/16 :goto_22

    .line 1354
    .end local v4           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v18           #type:I
    :cond_fd
    const/16 v20, 0x0

    move-object/from16 v4, v20

    goto :goto_e2

    .line 1362
    .restart local v4       #attrs:Landroid/view/WindowManager$LayoutParams;
    .restart local v18       #type:I
    :cond_102
    sget-object v20, Lcom/android/internal/policy/impl/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v19, v0

    .line 1363
    .local v19, typeCount:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_10a
    move v0, v9

    move/from16 v1, v19

    if-ge v0, v1, :cond_120

    .line 1364
    sget-object v20, Lcom/android/internal/policy/impl/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    aget v20, v20, v9

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_11d

    .line 1366
    const/16 v20, 0x1

    goto/16 :goto_22

    .line 1363
    :cond_11d
    add-int/lit8 v9, v9, 0x1

    goto :goto_10a

    .line 1371
    .end local v9           #i:I
    .end local v18           #type:I
    .end local v19           #typeCount:I
    :cond_120
    if-eqz v7, :cond_191

    if-nez p7, :cond_191

    .line 1372
    if-nez v13, :cond_152

    .line 1374
    const/4 v11, 0x0

    .line 1376
    .local v11, incomingRinging_long:Z
    :try_start_127
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v14

    .line 1377
    .local v14, phoneServ:Lcom/android/internal/telephony/ITelephony;
    if-eqz v14, :cond_162

    .line 1378
    invoke-interface {v14}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z
    :try_end_130
    .catch Landroid/os/RemoteException; {:try_start_127 .. :try_end_130} :catch_16a

    move-result v11

    .line 1385
    .end local v14           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :goto_131
    if-nez v11, :cond_152

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isInCall()Z

    move-result v20

    if-eqz v20, :cond_13f

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isMtpRunningInCallState()Z

    move-result v20

    if-nez v20, :cond_152

    .line 1386
    :cond_13f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeLongPress:Ljava/lang/Runnable;

    move-object/from16 v21, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v22

    invoke-virtual/range {v20 .. v23}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1392
    .end local v11           #incomingRinging_long:Z
    :cond_152
    :try_start_152
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v14

    .line 1393
    .restart local v14       #phoneServ:Lcom/android/internal/telephony/ITelephony;
    if-eqz v14, :cond_189

    .line 1394
    invoke-interface {v14}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z
    :try_end_15b
    .catch Landroid/os/RemoteException; {:try_start_152 .. :try_end_15b} :catch_17a

    move-result v20

    if-eqz v20, :cond_189

    const/16 v20, 0x0

    goto/16 :goto_22

    .line 1380
    .restart local v11       #incomingRinging_long:Z
    :cond_162
    :try_start_162
    const-string v20, "WindowManager"

    const-string v21, "Unable to find ITelephony interface"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_169
    .catch Landroid/os/RemoteException; {:try_start_162 .. :try_end_169} :catch_16a

    goto :goto_131

    .line 1382
    .end local v14           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :catch_16a
    move-exception v20

    move-object/from16 v8, v20

    .line 1383
    .restart local v8       #ex:Landroid/os/RemoteException;
    const-string v20, "WindowManager"

    const-string v21, "RemoteException from getTelephonyService()"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_131

    .line 1396
    .end local v8           #ex:Landroid/os/RemoteException;
    .end local v11           #incomingRinging_long:Z
    :catch_17a
    move-exception v20

    move-object/from16 v8, v20

    .line 1397
    .restart local v8       #ex:Landroid/os/RemoteException;
    const-string v20, "WindowManager"

    const-string v21, "RemoteException from getTelephonyService()"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1399
    .end local v8           #ex:Landroid/os/RemoteException;
    :cond_189
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    .line 1401
    :cond_191
    const/16 v20, 0x1

    goto/16 :goto_22

    .line 1402
    .end local v4           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v17           #topActivity:Landroid/content/ComponentName;
    :cond_195
    const/16 v20, 0x52

    move/from16 v0, p4

    move/from16 v1, v20

    if-ne v0, v1, :cond_1d2

    .line 1404
    const/4 v6, 0x1

    .line 1406
    .local v6, chordBug:I
    if-eqz v7, :cond_1e6

    if-nez p7, :cond_1e6

    .line 1410
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1e6

    and-int/lit8 v20, p6, 0x1

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1e6

    .line 1411
    new-instance v12, Landroid/content/Intent;

    const-string v20, "android.intent.action.BUG_REPORT"

    move-object v0, v12

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1412
    .local v12, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object v1, v12

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1413
    const/16 v20, 0x1

    goto/16 :goto_22

    .line 1448
    .end local v6           #chordBug:I
    .end local v12           #intent:Landroid/content/Intent;
    :cond_1d2
    const/16 v20, 0x54

    move/from16 v0, p4

    move/from16 v1, v20

    if-ne v0, v1, :cond_253

    .line 1449
    if-eqz v7, :cond_226

    .line 1450
    if-nez p7, :cond_1e6

    .line 1451
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchKeyPressed:Z

    .line 1484
    :cond_1e6
    :goto_1e6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchKeyPressed:Z

    move/from16 v20, v0

    if-eqz v20, :cond_270

    .line 1485
    if-eqz v7, :cond_270

    if-nez p7, :cond_270

    if-nez v13, :cond_270

    .line 1486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p4

    move/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/ShortcutManager;->getIntent(II)Landroid/content/Intent;

    move-result-object v15

    .line 1487
    .local v15, shortcutIntent:Landroid/content/Intent;
    if-eqz v15, :cond_270

    .line 1488
    const/high16 v20, 0x1000

    move-object v0, v15

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1495
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    .line 1496
    const/16 v20, 0x1

    goto/16 :goto_22

    .line 1454
    .end local v15           #shortcutIntent:Landroid/content/Intent;
    :cond_226
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchKeyPressed:Z

    .line 1462
    const/16 v20, 0x0

    const/16 v21, 0xd

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 1464
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1e6

    .line 1466
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    .line 1467
    const/16 v20, 0x1

    goto/16 :goto_22

    .line 1470
    :cond_253
    const/16 v20, 0x4

    move/from16 v0, p4

    move/from16 v1, v20

    if-ne v0, v1, :cond_1e6

    .line 1471
    if-nez v7, :cond_1e6

    .line 1478
    const/16 v20, 0x0

    const/16 v21, 0xd

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    goto/16 :goto_1e6

    .line 1501
    :cond_270
    const/16 v20, 0x0

    goto/16 :goto_22
.end method

.method public interceptKeyBeforeQueueing(JIIIIIZ)I
    .registers 39
    .parameter "whenNanos"
    .parameter "action"
    .parameter "flags"
    .parameter "keyCode"
    .parameter "scanCode"
    .parameter "policyFlags"
    .parameter "isScreenOn"

    .prologue
    .line 2133
    if-nez p3, :cond_4f

    const/4 v7, 0x1

    move/from16 v18, v7

    .line 2134
    .local v18, down:Z
    :goto_5
    and-int/lit8 v7, p4, 0x20

    if-eqz v7, :cond_53

    const/4 v7, 0x1

    move/from16 v17, v7

    .line 2136
    .local v17, canceled:Z
    :goto_c
    const/high16 v7, 0x100

    and-int v7, v7, p7

    if-eqz v7, :cond_57

    const/4 v7, 0x1

    move/from16 v22, v7

    .line 2142
    .local v22, isInjected:Z
    :goto_15
    if-eqz p8, :cond_5b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v7

    move/from16 v25, v7

    .line 2151
    .local v25, keyguardActive:Z
    :goto_22
    if-eqz v18, :cond_36

    move/from16 v0, p7

    and-int/lit16 v0, v0, 0x100

    move v7, v0

    if-eqz v7, :cond_36

    .line 2152
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v8

    move v3, v9

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 2157
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenCaptureAction:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;

    move-object v7, v0

    move-object v0, v7

    move/from16 v1, p5

    move/from16 v2, p8

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;->doIninterceptKeyBeforeQueueing(IZZ)I

    move-result v28

    .line 2158
    .local v28, tmpResult:I
    const/4 v7, -0x1

    move/from16 v0, v28

    move v1, v7

    if-eq v0, v1, :cond_67

    move/from16 v7, v28

    .line 2431
    :goto_4e
    return v7

    .line 2133
    .end local v17           #canceled:Z
    .end local v18           #down:Z
    .end local v22           #isInjected:Z
    .end local v25           #keyguardActive:Z
    .end local v28           #tmpResult:I
    :cond_4f
    const/4 v7, 0x0

    move/from16 v18, v7

    goto :goto_5

    .line 2134
    .restart local v18       #down:Z
    :cond_53
    const/4 v7, 0x0

    move/from16 v17, v7

    goto :goto_c

    .line 2136
    .restart local v17       #canceled:Z
    :cond_57
    const/4 v7, 0x0

    move/from16 v22, v7

    goto :goto_15

    .line 2142
    .restart local v22       #isInjected:Z
    :cond_5b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v7

    move/from16 v25, v7

    goto :goto_22

    .line 2172
    .restart local v25       #keyguardActive:Z
    .restart local v28       #tmpResult:I
    :cond_67
    if-nez p8, :cond_6b

    if-eqz v22, :cond_73

    .line 2174
    :cond_6b
    const/16 v26, 0x1

    .line 2194
    .local v26, result:I
    :cond_6d
    :goto_6d
    sparse-switch p5, :sswitch_data_2d6

    :cond_70
    :goto_70
    move/from16 v7, v26

    .line 2431
    goto :goto_4e

    .line 2178
    .end local v26           #result:I
    :cond_73
    const/16 v26, 0x0

    .line 2180
    .restart local v26       #result:I
    and-int/lit8 v7, p7, 0x3

    if-eqz v7, :cond_8e

    const/4 v7, 0x1

    move/from16 v24, v7

    .line 2182
    .local v24, isWakeKey:Z
    :goto_7c
    if-eqz v18, :cond_6d

    if-eqz v24, :cond_6d

    .line 2183
    if-eqz v25, :cond_92

    .line 2185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object v7, v0

    move-object v0, v7

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onWakeKeyWhenKeyguardShowingTq(I)Z

    goto :goto_6d

    .line 2180
    .end local v24           #isWakeKey:Z
    :cond_8e
    const/4 v7, 0x0

    move/from16 v24, v7

    goto :goto_7c

    .line 2188
    .restart local v24       #isWakeKey:Z
    :cond_92
    or-int/lit8 v26, v26, 0x2

    goto :goto_6d

    .line 2197
    .end local v24           #isWakeKey:Z
    :sswitch_95
    if-eqz v18, :cond_cd

    .line 2198
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isMusicActive()Z

    move-result v7

    if-eqz v7, :cond_b2

    and-int/lit8 v7, v26, 0x1

    if-nez v7, :cond_b2

    .line 2199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownLongPress:Ljava/lang/Runnable;

    move-object v8, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v9

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2206
    :cond_b2
    :goto_b2
    :sswitch_b2
    if-eqz v18, :cond_12f

    .line 2207
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v27

    .line 2208
    .local v27, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v27, :cond_fd

    .line 2210
    :try_start_ba
    invoke-interface/range {v27 .. v27}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v7

    if-eqz v7, :cond_db

    .line 2217
    const-string v7, "WindowManager"

    const-string v8, "interceptKeyBeforeQueueing: VOLUME key-down while ringing: Silence ringer!"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2225
    invoke-interface/range {v27 .. v27}, Lcom/android/internal/telephony/ITelephony;->silenceRinger()V
    :try_end_ca
    .catch Landroid/os/RemoteException; {:try_start_ba .. :try_end_ca} :catch_ef

    .line 2231
    and-int/lit8 v26, v26, -0x2

    goto :goto_70

    .line 2202
    .end local v27           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_cd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownLongPress:Ljava/lang/Runnable;

    move-object v8, v0

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_b2

    .line 2234
    .restart local v27       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_db
    :try_start_db
    invoke-interface/range {v27 .. v27}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v7

    if-eqz v7, :cond_fd

    and-int/lit8 v7, v26, 0x1

    if-nez v7, :cond_fd

    .line 2238
    const/4 v7, 0x0

    move-object/from16 v0, p0

    move v1, v7

    move/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->handleVolumeKey(II)V
    :try_end_ee
    .catch Landroid/os/RemoteException; {:try_start_db .. :try_end_ee} :catch_ef

    goto :goto_70

    .line 2241
    :catch_ef
    move-exception v7

    move-object/from16 v19, v7

    .line 2242
    .local v19, ex:Landroid/os/RemoteException;
    const-string v7, "WindowManager"

    const-string v8, "ITelephony threw RemoteException"

    move-object v0, v7

    move-object v1, v8

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2246
    .end local v19           #ex:Landroid/os/RemoteException;
    :cond_fd
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isMusicActive()Z

    move-result v7

    if-eqz v7, :cond_112

    and-int/lit8 v7, v26, 0x1

    if-nez v7, :cond_112

    .line 2249
    const/4 v7, 0x3

    move-object/from16 v0, p0

    move v1, v7

    move/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->handleVolumeKey(II)V

    goto/16 :goto_70

    .line 2255
    :cond_112
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isFMPlayerActive()Z

    move-result v7

    if-eqz v7, :cond_70

    and-int/lit8 v7, v26, 0x1

    if-nez v7, :cond_70

    .line 2256
    const-string v7, "WindowManager"

    const-string v8, "FM is on calling audio manager to set the volume"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2257
    const/16 v7, 0xa

    move-object/from16 v0, p0

    move v1, v7

    move/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->handleVolumeKey(II)V

    goto/16 :goto_70

    .line 2263
    .end local v27           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_12f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeLongPress:Ljava/lang/Runnable;

    move-object v8, v0

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_70

    .line 2270
    :sswitch_13e
    and-int/lit8 v26, v26, -0x2

    .line 2271
    if-eqz v18, :cond_16c

    .line 2272
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v27

    .line 2273
    .restart local v27       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    const/16 v20, 0x0

    .line 2274
    .local v20, hungUp:Z
    if-eqz v27, :cond_14e

    .line 2276
    :try_start_14a
    invoke-interface/range {v27 .. v27}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_14d
    .catch Landroid/os/RemoteException; {:try_start_14a .. :try_end_14d} :catch_15d

    move-result v20

    .line 2283
    :cond_14e
    :goto_14e
    if-eqz p8, :cond_152

    if-eqz v20, :cond_16a

    :cond_152
    const/4 v7, 0x1

    :goto_153
    move-object/from16 v0, p0

    move v1, v7

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyDown(ZZ)V

    goto/16 :goto_70

    .line 2277
    :catch_15d
    move-exception v19

    .line 2278
    .restart local v19       #ex:Landroid/os/RemoteException;
    const-string v7, "WindowManager"

    const-string v8, "ITelephony threw RemoteException"

    move-object v0, v7

    move-object v1, v8

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14e

    .line 2283
    .end local v19           #ex:Landroid/os/RemoteException;
    :cond_16a
    const/4 v7, 0x0

    goto :goto_153

    .line 2286
    .end local v20           #hungUp:Z
    .end local v27           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_16c
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyUp(Z)Z

    move-result v7

    if-eqz v7, :cond_70

    .line 2287
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndcallBehavior:I

    move v7, v0

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_185

    .line 2289
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->goHome()Z

    move-result v7

    if-nez v7, :cond_70

    .line 2293
    :cond_185
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndcallBehavior:I

    move v7, v0

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_70

    .line 2295
    and-int/lit8 v7, v26, -0x3

    or-int/lit8 v26, v7, 0x4

    goto/16 :goto_70

    .line 2303
    :sswitch_194
    and-int/lit8 v26, v26, -0x2

    .line 2304
    if-eqz v18, :cond_1f9

    .line 2305
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v27

    .line 2306
    .restart local v27       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    const/16 v20, 0x0

    .line 2307
    .restart local v20       #hungUp:Z
    if-eqz v27, :cond_1a9

    .line 2309
    :try_start_1a0
    invoke-interface/range {v27 .. v27}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v7

    if-eqz v7, :cond_1d4

    .line 2312
    invoke-interface/range {v27 .. v27}, Lcom/android/internal/telephony/ITelephony;->silenceRinger()V
    :try_end_1a9
    .catch Landroid/os/RemoteException; {:try_start_1a0 .. :try_end_1a9} :catch_1e8

    .line 2326
    :cond_1a9
    :goto_1a9
    if-eqz p8, :cond_1ad

    if-eqz v20, :cond_1f7

    :cond_1ad
    const/4 v7, 0x1

    :goto_1ae
    move-object/from16 v0, p0

    move v1, v7

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyDown(ZZ)V

    .line 2330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    move-object v7, v0

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->getCurrentTopActivity()Landroid/content/ComponentName;
    invoke-static {v7}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->access$000(Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;)Landroid/content/ComponentName;

    move-result-object v29

    .line 2331
    .local v29, topActivity:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    move-object v7, v0

    const/16 v8, 0x1a

    move-object v0, v7

    move v1, v8

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v7

    if-eqz v7, :cond_70

    .line 2333
    or-int/lit8 v26, v26, 0x1

    goto/16 :goto_70

    .line 2313
    .end local v29           #topActivity:Landroid/content/ComponentName;
    :cond_1d4
    :try_start_1d4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIncallPowerBehavior:I

    move v7, v0

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_1a9

    invoke-interface/range {v27 .. v27}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v7

    if-eqz v7, :cond_1a9

    .line 2318
    invoke-interface/range {v27 .. v27}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_1e6
    .catch Landroid/os/RemoteException; {:try_start_1d4 .. :try_end_1e6} :catch_1e8

    move-result v20

    goto :goto_1a9

    .line 2320
    :catch_1e8
    move-exception v7

    move-object/from16 v19, v7

    .line 2321
    .restart local v19       #ex:Landroid/os/RemoteException;
    const-string v7, "WindowManager"

    const-string v8, "ITelephony threw RemoteException"

    move-object v0, v7

    move-object v1, v8

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a9

    .line 2326
    .end local v19           #ex:Landroid/os/RemoteException;
    :cond_1f7
    const/4 v7, 0x0

    goto :goto_1ae

    .line 2339
    .end local v20           #hungUp:Z
    .end local v27           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_1f9
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyUp(Z)Z

    move-result v7

    if-eqz v7, :cond_207

    .line 2340
    and-int/lit8 v7, v26, -0x3

    or-int/lit8 v26, v7, 0x4

    .line 2344
    :cond_207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    move-object v7, v0

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->getCurrentTopActivity()Landroid/content/ComponentName;
    invoke-static {v7}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->access$000(Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;)Landroid/content/ComponentName;

    move-result-object v29

    .line 2345
    .restart local v29       #topActivity:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    move-object v7, v0

    const/16 v8, 0x1a

    move-object v0, v7

    move v1, v8

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v7

    if-eqz v7, :cond_70

    .line 2347
    or-int/lit8 v26, v26, 0x1

    .line 2348
    and-int/lit8 v26, v26, -0x5

    goto/16 :goto_70

    .line 2364
    .end local v29           #topActivity:Landroid/content/ComponentName;
    :sswitch_227
    and-int/lit8 v7, v26, 0x1

    if-nez v7, :cond_70

    .line 2368
    const-wide/32 v7, 0xf4240

    div-long v5, p1, v7

    .line 2369
    .local v5, when:J
    new-instance v4, Landroid/view/KeyEvent;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x101

    move-wide v7, v5

    move/from16 v9, p3

    move/from16 v10, p5

    move/from16 v14, p6

    move/from16 v15, p4

    invoke-direct/range {v4 .. v16}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 2371
    .local v4, keyEvent:Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object v7, v0

    new-instance v8, Lcom/android/internal/policy/impl/PhoneWindowManager$PassHeadsetKey;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$PassHeadsetKey;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/KeyEvent;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_70

    .line 2378
    .end local v4           #keyEvent:Landroid/view/KeyEvent;
    .end local v5           #when:J
    :sswitch_25e
    if-eqz v18, :cond_70

    .line 2379
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v27

    .line 2380
    .restart local v27       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v27, :cond_70

    .line 2382
    :try_start_266
    invoke-interface/range {v27 .. v27}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v7

    if-eqz v7, :cond_70

    .line 2383
    const-string v7, "WindowManager"

    const-string v8, "interceptKeyBeforeQueueing: CALL key-down while ringing: Answer the call!"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2387
    invoke-interface/range {v27 .. v27}, Lcom/android/internal/telephony/ITelephony;->isCallAcceptable()Z

    move-result v7

    if-eqz v7, :cond_280

    .line 2388
    invoke-interface/range {v27 .. v27}, Lcom/android/internal/telephony/ITelephony;->answerRingingCall()V

    .line 2392
    and-int/lit8 v26, v26, -0x2

    goto/16 :goto_70

    .line 2394
    :cond_280
    const-string v7, "WindowManager"

    const-string v8, "Call guard is blocking the CALL key"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_287
    .catch Landroid/os/RemoteException; {:try_start_266 .. :try_end_287} :catch_289

    goto/16 :goto_70

    .line 2399
    :catch_289
    move-exception v7

    move-object/from16 v19, v7

    .line 2400
    .restart local v19       #ex:Landroid/os/RemoteException;
    const-string v7, "WindowManager"

    const-string v8, "ITelephony threw RemoteException"

    move-object v0, v7

    move-object v1, v8

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_70

    .line 2409
    .end local v19           #ex:Landroid/os/RemoteException;
    .end local v27           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :sswitch_299
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isInCall()Z

    move-result v7

    if-eqz v7, :cond_2a9

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isMtpRunningInCallState()Z

    move-result v7

    if-eqz v7, :cond_2a9

    .line 2410
    and-int/lit8 v26, v26, -0x2

    .line 2411
    goto/16 :goto_70

    .line 2416
    :cond_2a9
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isMtpRunning()Z

    move-result v7

    if-eqz v7, :cond_70

    .line 2417
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->inKeyguardRestrictedInputMode()Z

    move-result v23

    .line 2418
    .local v23, isKeyGuardOn:Z
    if-nez v23, :cond_2d1

    .line 2419
    new-instance v21, Landroid/content/Intent;

    const-string v7, "com.android.END_MTP"

    move-object/from16 v0, v21

    move-object v1, v7

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2420
    .local v21, intentBroadcast:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object v7, v0

    move-object v0, v7

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2421
    const-string v7, "MTP-PWM"

    const-string v8, "HOME key is pressed to stop MTP.sent broadcast"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2423
    .end local v21           #intentBroadcast:Landroid/content/Intent;
    :cond_2d1
    and-int/lit8 v26, v26, -0x2

    .line 2424
    goto/16 :goto_70

    .line 2194
    nop

    :sswitch_data_2d6
    .sparse-switch
        0x3 -> :sswitch_299
        0x5 -> :sswitch_25e
        0x6 -> :sswitch_13e
        0x18 -> :sswitch_b2
        0x19 -> :sswitch_95
        0x1a -> :sswitch_194
        0x4f -> :sswitch_227
        0x55 -> :sswitch_227
        0x56 -> :sswitch_227
        0x57 -> :sswitch_227
        0x58 -> :sswitch_227
        0x59 -> :sswitch_227
        0x5a -> :sswitch_227
    .end sparse-switch
.end method

.method isDeviceProvisioned()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 600
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    move v0, v2

    goto :goto_10
.end method

.method isFMPlayerActive()Z
    .registers 2

    .prologue
    .line 2084
    const/4 v0, 0x0

    return v0
.end method

.method public isHomeNeglecting()Z
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1507
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1508
    .local v0, activityManager:Landroid/app/ActivityManager;
    const/16 v5, 0x14

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 1509
    .local v2, info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1c

    move v5, v7

    .line 1546
    :goto_1b
    return v5

    .line 1513
    :cond_1c
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1514
    .local v4, runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v5, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1515
    .local v3, pkgName:Ljava/lang/String;
    iget-object v5, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 1518
    .local v1, className:Ljava/lang/String;
    const-string v5, "com.android.samsungtest.FactoryTest"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b9

    .line 1519
    const-string v5, "com.android.samsungtest.SimpleFunctionTest.SimpleFunctionTest"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b6

    const-string v5, "com.android.samsungtest.SimpleFunctionTest.MotorTest"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b6

    const-string v5, "com.android.samsungtest.SimpleFunctionTest.OrientationTest"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b6

    const-string v5, "com.android.samsungtest.SimpleFunctionTest.IntensityTest"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b6

    const-string v5, "com.android.samsungtest.SimpleFunctionTest.KeypadTest"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b6

    const-string v5, "com.android.samsungtest.SimpleFunctionTest.LoopbackTest"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b6

    const-string v5, "com.android.samsungtest.SimpleFunctionTest.LoudSpkLoopbackTest"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b6

    const-string v5, "com.android.samsungtest.SimpleFunctionTest.TouchTest"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b6

    const-string v5, "com.android.samsungtest.SimpleFunctionTest.MagneticSensorTest"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b6

    const-string v5, "com.android.samsungtest.SimpleFunctionTest.Gyro_Sensor"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b6

    const-string v5, "com.android.samsungtest.SimpleFunctionTest.GripSensorTest"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b6

    const-string v5, "com.android.samsungtest.camera.Camera"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b6

    const-string v5, "com.android.samsungtest.FactoryTest.FactoryTestApp"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b6

    const-string v5, "com.android.samsungtest.SimpleFunctionTest.UsbTest"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b6

    const-string v5, "com.android.samsungtest.SimpleFunctionTest.SecondaryTest"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b6

    const-string v5, "com.android.samsungtest.SimpleFunctionTest.Keypad2Test"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b9

    :cond_b6
    move v5, v8

    .line 1535
    goto/16 :goto_1b

    .line 1539
    :cond_b9
    const-string v5, "com.sec.android.app.lcdtest"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_dc

    .line 1540
    const-string v5, "com.sec.android.app.lcdtest.button_subkey"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d9

    const-string v5, "com.sec.android.app.lcdtest.button_touch"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d9

    const-string v5, "com.sec.android.app.lcdtest.button_dimming"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_dc

    :cond_d9
    move v5, v8

    .line 1543
    goto/16 :goto_1b

    :cond_dc
    move v5, v7

    .line 1546
    goto/16 :goto_1b
.end method

.method isInCall()Z
    .registers 7

    .prologue
    const/4 v4, 0x0

    const-string v5, "WindowManager"

    .line 2040
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 2041
    .local v1, phone:Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_12

    .line 2042
    const-string v2, "WindowManager"

    const-string v2, "couldn\'t get ITelephony reference"

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 2049
    :goto_11
    return v2

    .line 2046
    :cond_12
    :try_start_12
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_17

    move-result v2

    goto :goto_11

    .line 2047
    :catch_17
    move-exception v0

    .line 2048
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ITelephony.isOffhhook threw RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 2049
    goto :goto_11
.end method

.method isMusicActive()Z
    .registers 4

    .prologue
    .line 2057
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2058
    .local v0, am:Landroid/media/AudioManager;
    if-nez v0, :cond_15

    .line 2059
    const-string v1, "WindowManager"

    const-string v2, "isMusicActive: couldn\'t get AudioManager reference"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    const/4 v1, 0x0

    .line 2062
    :goto_14
    return v1

    :cond_15
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    goto :goto_14
.end method

.method public isScreenOn()Z
    .registers 2

    .prologue
    .line 2680
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOn:Z

    return v0
.end method

.method public isSecureLock()Z
    .registers 2

    .prologue
    .line 3337
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isSecure()Z

    move-result v0

    return v0
.end method

.method public isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "componentName"

    .prologue
    .line 3260
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method keyguardOn()Z
    .registers 2

    .prologue
    .line 1252
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardIsShowingTq()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->inKeyguardRestrictedKeyInputMode()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method launchHomeFromHotKey()V
    .registers 3

    .prologue
    .line 1558
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1584
    :goto_8
    return-void

    .line 1560
    :cond_9
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isInputRestricted()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1563
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$6;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$6;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->verifyUnlock(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V

    goto :goto_8

    .line 1578
    :cond_20
    :try_start_20
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_27} :catch_30

    .line 1581
    :goto_27
    const-string v0, "homekey"

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 1582
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->startDockOrHome()V

    goto :goto_8

    .line 1579
    :catch_30
    move-exception v0

    goto :goto_27
.end method

.method public layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V
    .registers 16
    .parameter "win"
    .parameter "attrs"
    .parameter "attached"

    .prologue
    const/16 v11, 0x7db

    const/16 v4, 0x10

    const/4 v5, 0x0

    .line 1682
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v0, :cond_a

    .line 1821
    :cond_9
    :goto_9
    return-void

    .line 1693
    :cond_a
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1694
    .local v2, fl:I
    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1696
    .local v3, sim:I
    sget-object v6, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 1697
    .local v6, pf:Landroid/graphics/Rect;
    sget-object v7, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 1698
    .local v7, df:Landroid/graphics/Rect;
    sget-object v8, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpContentFrame:Landroid/graphics/Rect;

    .line 1699
    .local v8, cf:Landroid/graphics/Rect;
    sget-object v9, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 1701
    .local v9, vf:Landroid/graphics/Rect;
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v0, v11, :cond_a7

    .line 1702
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v0, v9, Landroid/graphics/Rect;->left:I

    iput v0, v8, Landroid/graphics/Rect;->left:I

    iput v0, v7, Landroid/graphics/Rect;->left:I

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 1703
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v0, v9, Landroid/graphics/Rect;->top:I

    iput v0, v8, Landroid/graphics/Rect;->top:I

    iput v0, v7, Landroid/graphics/Rect;->top:I

    iput v0, v6, Landroid/graphics/Rect;->top:I

    .line 1704
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v0, v9, Landroid/graphics/Rect;->right:I

    iput v0, v8, Landroid/graphics/Rect;->right:I

    iput v0, v7, Landroid/graphics/Rect;->right:I

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 1705
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 1707
    const/16 v0, 0x50

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1708
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    .line 1782
    :goto_4c
    and-int/lit16 v0, v2, 0x200

    if-eqz v0, :cond_6c

    .line 1783
    const/16 v0, -0x2710

    iput v0, v9, Landroid/graphics/Rect;->top:I

    iput v0, v9, Landroid/graphics/Rect;->left:I

    iput v0, v8, Landroid/graphics/Rect;->top:I

    iput v0, v8, Landroid/graphics/Rect;->left:I

    iput v0, v7, Landroid/graphics/Rect;->top:I

    iput v0, v7, Landroid/graphics/Rect;->left:I

    .line 1784
    const/16 v0, 0x2710

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    iput v0, v9, Landroid/graphics/Rect;->right:I

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    iput v0, v8, Landroid/graphics/Rect;->right:I

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    iput v0, v7, Landroid/graphics/Rect;->right:I

    .line 1802
    :cond_6c
    invoke-interface {p1, v6, v7, v8, v9}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1806
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v0, v11, :cond_79

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0xbb6

    if-ne v0, v1, :cond_9

    :cond_79
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenInsetsPendingLw()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1807
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    iget v10, v0, Landroid/graphics/Rect;->top:I

    .line 1808
    .local v10, top:I
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v0

    .line 1809
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    if-le v0, v10, :cond_92

    .line 1810
    iput v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    .line 1812
    :cond_92
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    iget v10, v0, Landroid/graphics/Rect;->top:I

    .line 1813
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenVisibleInsetsLw()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v0

    .line 1814
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    if-le v0, v10, :cond_9

    .line 1815
    iput v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    goto/16 :goto_9

    .line 1710
    .end local v10           #top:I
    :cond_a7
    const v0, 0x10500

    and-int/2addr v0, v2

    const v1, 0x10100

    if-ne v0, v1, :cond_105

    .line 1717
    if-eqz p3, :cond_ba

    .line 1720
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_4c

    .line 1722
    :cond_ba
    iput v5, v7, Landroid/graphics/Rect;->left:I

    iput v5, v6, Landroid/graphics/Rect;->left:I

    .line 1723
    iput v5, v7, Landroid/graphics/Rect;->top:I

    iput v5, v6, Landroid/graphics/Rect;->top:I

    .line 1724
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mW:I

    iput v0, v7, Landroid/graphics/Rect;->right:I

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 1725
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mH:I

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 1726
    and-int/lit16 v0, v3, 0xf0

    if-eq v0, v4, :cond_f4

    .line 1727
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v0, v8, Landroid/graphics/Rect;->left:I

    .line 1728
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v0, v8, Landroid/graphics/Rect;->top:I

    .line 1729
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v0, v8, Landroid/graphics/Rect;->right:I

    .line 1730
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    .line 1737
    :goto_e2
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iput v0, v9, Landroid/graphics/Rect;->left:I

    .line 1738
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iput v0, v9, Landroid/graphics/Rect;->top:I

    .line 1739
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    iput v0, v9, Landroid/graphics/Rect;->right:I

    .line 1740
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_4c

    .line 1732
    :cond_f4
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v0, v8, Landroid/graphics/Rect;->left:I

    .line 1733
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v0, v8, Landroid/graphics/Rect;->top:I

    .line 1734
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v0, v8, Landroid/graphics/Rect;->right:I

    .line 1735
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    goto :goto_e2

    .line 1742
    :cond_105
    and-int/lit16 v0, v2, 0x100

    if-eqz v0, :cond_137

    .line 1745
    iput v5, v8, Landroid/graphics/Rect;->left:I

    iput v5, v7, Landroid/graphics/Rect;->left:I

    iput v5, v6, Landroid/graphics/Rect;->left:I

    .line 1746
    iput v5, v8, Landroid/graphics/Rect;->top:I

    iput v5, v7, Landroid/graphics/Rect;->top:I

    iput v5, v6, Landroid/graphics/Rect;->top:I

    .line 1747
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mW:I

    iput v0, v8, Landroid/graphics/Rect;->right:I

    iput v0, v7, Landroid/graphics/Rect;->right:I

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 1748
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mH:I

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 1749
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iput v0, v9, Landroid/graphics/Rect;->left:I

    .line 1750
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iput v0, v9, Landroid/graphics/Rect;->top:I

    .line 1751
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    iput v0, v9, Landroid/graphics/Rect;->right:I

    .line 1752
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_4c

    .line 1753
    :cond_137
    if-eqz p3, :cond_141

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    .line 1756
    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_4c

    .line 1760
    :cond_141
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 1761
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v0, v6, Landroid/graphics/Rect;->top:I

    .line 1762
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 1763
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 1764
    and-int/lit16 v0, v3, 0xf0

    if-eq v0, v4, :cond_17f

    .line 1765
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v0, v8, Landroid/graphics/Rect;->left:I

    iput v0, v7, Landroid/graphics/Rect;->left:I

    .line 1766
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v0, v8, Landroid/graphics/Rect;->top:I

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 1767
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v0, v8, Landroid/graphics/Rect;->right:I

    iput v0, v7, Landroid/graphics/Rect;->right:I

    .line 1768
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 1775
    :goto_16d
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iput v0, v9, Landroid/graphics/Rect;->left:I

    .line 1776
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iput v0, v9, Landroid/graphics/Rect;->top:I

    .line 1777
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    iput v0, v9, Landroid/graphics/Rect;->right:I

    .line 1778
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_4c

    .line 1770
    :cond_17f
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v0, v8, Landroid/graphics/Rect;->left:I

    iput v0, v7, Landroid/graphics/Rect;->left:I

    .line 1771
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v0, v8, Landroid/graphics/Rect;->top:I

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 1772
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v0, v8, Landroid/graphics/Rect;->right:I

    iput v0, v7, Landroid/graphics/Rect;->right:I

    .line 1773
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    goto :goto_16d
.end method

.method needSensorRunningLp()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 478
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_16

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_16

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_16

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_18

    :cond_16
    move v0, v2

    .line 503
    :goto_17
    return v0

    .line 486
    :cond_18
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    if-eqz v0, :cond_21

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_29

    :cond_21
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    if-eqz v0, :cond_2b

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-ne v0, v2, :cond_2b

    :cond_29
    move v0, v2

    .line 490
    goto :goto_17

    .line 492
    :cond_2b
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAccelerometerDefault:I

    if-nez v0, :cond_31

    .line 501
    const/4 v0, 0x0

    goto :goto_17

    :cond_31
    move v0, v2

    .line 503
    goto :goto_17
.end method

.method public notifyLidSwitchChanged(JZ)V
    .registers 10
    .parameter "whenNanos"
    .parameter "lidOpen"

    .prologue
    const/4 v5, 0x0

    .line 2008
    iput-boolean p3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:Z

    .line 2009
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:Z

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->doLidChangeTq(Z)Z

    move-result v0

    .line 2010
    .local v0, awakeNow:Z
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(I)V

    .line 2011
    if-eqz v0, :cond_17

    .line 2015
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakelock()V

    .line 2034
    :cond_16
    :goto_16
    return-void

    .line 2016
    :cond_17
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardIsShowingTq()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 2017
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:Z

    if-eqz v1, :cond_16

    .line 2021
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    const/16 v2, 0x1a

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onWakeKeyWhenKeyguardShowingTq(I)Z

    goto :goto_16

    .line 2026
    :cond_29
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:Z

    if-eqz v1, :cond_38

    .line 2027
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x5

    invoke-interface {v1, v2, v3, v5, v4}, Landroid/os/LocalPowerManager;->userActivity(JZI)V

    goto :goto_16

    .line 2030
    :cond_38
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-interface {v1, v2, v3, v5, v5}, Landroid/os/LocalPowerManager;->userActivity(JZI)V

    goto :goto_16
.end method

.method public performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
    .registers 10
    .parameter "win"
    .parameter "effectId"
    .parameter "always"

    .prologue
    const/16 v5, 0x9

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3043
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "haptic_feedback_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_21

    move v0, v4

    .line 3045
    .local v0, hapticsDisabled:Z
    :goto_13
    if-nez p3, :cond_23

    if-nez v0, :cond_1f

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v1

    if-eqz v1, :cond_23

    :cond_1f
    move v1, v3

    .line 3075
    :goto_20
    return v1

    .end local v0           #hapticsDisabled:Z
    :cond_21
    move v0, v3

    .line 3043
    goto :goto_13

    .line 3051
    .restart local v0       #hapticsDisabled:Z
    :cond_23
    const/16 v1, 0xd

    if-ne p2, v1, :cond_31

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsCameraInHold:Z

    if-nez v1, :cond_2f

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsVideoPlayerInHold:Z

    if-eqz v1, :cond_31

    :cond_2f
    move v1, v3

    .line 3052
    goto :goto_20

    .line 3059
    :cond_31
    sparse-switch p2, :sswitch_data_4a

    .line 3068
    if-lt p2, v5, :cond_48

    const/16 v1, 0xe

    if-gt p2, v1, :cond_48

    .line 3070
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1, p2}, Landroid/os/Vibrator;->vibrateImmVibe(I)V

    move v1, v4

    .line 3071
    goto :goto_20

    .line 3064
    :sswitch_41
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1, v5}, Landroid/os/Vibrator;->vibrateImmVibe(I)V

    move v1, v4

    .line 3065
    goto :goto_20

    :cond_48
    move v1, v3

    .line 3075
    goto :goto_20

    .line 3059
    :sswitch_data_4a
    .sparse-switch
        0x0 -> :sswitch_41
        0x1 -> :sswitch_41
        0x2710 -> :sswitch_41
        0x2711 -> :sswitch_41
    .end sparse-switch
.end method

.method public prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .registers 8
    .parameter "win"
    .parameter "attrs"

    .prologue
    const/4 v2, -0x7

    const-string v4, "android.permission.STATUS_BAR_SERVICE"

    const-string v3, "PhoneWindowManager"

    .line 1172
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v0, :sswitch_data_36

    .line 1197
    :goto_a
    const/4 v0, 0x0

    :goto_b
    return v0

    .line 1174
    :sswitch_c
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    const-string v1, "PhoneWindowManager"

    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1b

    move v0, v2

    .line 1180
    goto :goto_b

    .line 1182
    :cond_1b
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_a

    .line 1185
    :sswitch_1e
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    const-string v1, "PhoneWindowManager"

    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarPanels:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 1191
    :sswitch_2d
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_33

    move v0, v2

    .line 1192
    goto :goto_b

    .line 1194
    :cond_33
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_a

    .line 1172
    :sswitch_data_36
    .sparse-switch
        0x7d0 -> :sswitch_c
        0x7d4 -> :sswitch_2d
        0x7de -> :sswitch_1e
    .end sparse-switch
.end method

.method readLidState()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 932
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->getSwitchState(I)I

    move-result v0

    .line 933
    .local v0, sw:I
    if-ltz v0, :cond_f

    .line 934
    if-nez v0, :cond_10

    const/4 v1, 0x1

    :goto_d
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_f} :catch_12

    .line 939
    .end local v0           #sw:I
    :cond_f
    :goto_f
    return-void

    .restart local v0       #sw:I
    :cond_10
    move v1, v3

    .line 934
    goto :goto_d

    .line 936
    .end local v0           #sw:I
    :catch_12
    move-exception v1

    goto :goto_f
.end method

.method public removeStartingWindow(Landroid/os/IBinder;Landroid/view/View;)V
    .registers 6
    .parameter "appToken"
    .parameter "window"

    .prologue
    .line 1151
    if-eqz p2, :cond_f

    .line 1152
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManagerImpl;

    .line 1153
    .local v0, wm:Landroid/view/WindowManagerImpl;
    invoke-virtual {v0, p2}, Landroid/view/WindowManagerImpl;->removeView(Landroid/view/View;)V

    .line 1155
    .end local v0           #wm:Landroid/view/WindowManagerImpl;
    :cond_f
    return-void
.end method

.method public removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .registers 4
    .parameter "win"

    .prologue
    const/4 v1, 0x0

    .line 1202
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_8

    .line 1203
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 1210
    :goto_7
    return-void

    .line 1205
    :cond_8
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_f

    .line 1206
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_7

    .line 1208
    :cond_f
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarPanels:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_7
.end method

.method public requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    .registers 5
    .parameter "keyCode"
    .parameter "componentName"
    .parameter "request"

    .prologue
    .line 3256
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    move-result v0

    return v0
.end method

.method public resetSecureExit()V
    .registers 2

    .prologue
    .line 3341
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->resetSecureExit()V

    .line 3342
    return-void
.end method

.method public rotationForOrientationLw(IIZ)I
    .registers 11
    .parameter "orientation"
    .parameter "lastRotation"
    .parameter "displayEnabled"

    .prologue
    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2727
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    if-gez v1, :cond_28

    .line 2729
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2731
    .local v0, d:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    if-le v1, v2, :cond_41

    .line 2732
    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .line 2733
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .line 2734
    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    .line 2735
    iput v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    .line 2744
    .end local v0           #d:Landroid/view/Display;
    :cond_28
    :goto_28
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2745
    packed-switch p1, :pswitch_data_b6

    .line 2769
    :pswitch_2e
    :try_start_2e
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    const/16 v3, 0xa

    if-ne p1, v3, :cond_85

    move v3, v5

    :goto_35
    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->setAllow180Rotation(Z)V

    .line 2775
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:Z

    if-eqz v2, :cond_87

    .line 2776
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpenRotation:I

    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_2e .. :try_end_3f} :catchall_b3

    move v1, v2

    .line 2785
    :goto_40
    return v1

    .line 2737
    .restart local v0       #d:Landroid/view/Display;
    :cond_41
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .line 2738
    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .line 2739
    iput v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    .line 2740
    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    goto :goto_28

    .line 2748
    .end local v0           #d:Landroid/view/Display;
    :pswitch_4a
    :try_start_4a
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    monitor-exit v1

    move v1, v2

    goto :goto_40

    .line 2751
    :pswitch_4f
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    monitor-exit v1

    move v1, v2

    goto :goto_40

    .line 2754
    :pswitch_54
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    monitor-exit v1

    move v1, v2

    goto :goto_40

    .line 2757
    :pswitch_59
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    monitor-exit v1

    move v1, v2

    goto :goto_40

    .line 2760
    :pswitch_5e
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->setAllow180Rotation(Z)V

    .line 2762
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getCurrentLandscapeRotation(I)I

    move-result v2

    monitor-exit v1

    move v1, v2

    goto :goto_40

    .line 2764
    :pswitch_6f
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v3

    if-nez v3, :cond_83

    move v3, v5

    :goto_79
    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->setAllow180Rotation(Z)V

    .line 2766
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getCurrentPortraitRotation(I)I

    move-result v2

    monitor-exit v1

    move v1, v2

    goto :goto_40

    :cond_83
    move v3, v4

    .line 2764
    goto :goto_79

    :cond_85
    move v3, v4

    .line 2769
    goto :goto_35

    .line 2777
    :cond_87
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-ne v2, v6, :cond_94

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    if-ltz v2, :cond_94

    .line 2778
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    monitor-exit v1

    move v1, v2

    goto :goto_40

    .line 2779
    :cond_94
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-ne v2, v5, :cond_a1

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    if-ltz v2, :cond_a1

    .line 2780
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    monitor-exit v1

    move v1, v2

    goto :goto_40

    .line 2782
    :cond_a1
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->useSensorForOrientationLp(I)Z

    move-result v2

    if-eqz v2, :cond_b0

    .line 2783
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v2, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->getCurrentRotation(I)I

    move-result v2

    monitor-exit v1

    move v1, v2

    goto :goto_40

    .line 2785
    :cond_b0
    monitor-exit v1

    move v1, v4

    goto :goto_40

    .line 2787
    :catchall_b3
    move-exception v2

    monitor-exit v1
    :try_end_b5
    .catchall {:try_start_4a .. :try_end_b5} :catchall_b3

    throw v2

    .line 2745
    :pswitch_data_b6
    .packed-switch 0x0
        :pswitch_4f
        :pswitch_4a
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_5e
        :pswitch_6f
        :pswitch_59
        :pswitch_54
    .end packed-switch
.end method

.method public screenOnStoppedLw()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 3134
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v2

    if-nez v2, :cond_1a

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    invoke-interface {v2}, Landroid/os/LocalPowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 3135
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 3136
    .local v0, curTime:J
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    invoke-interface {v2, v0, v1, v3, v3}, Landroid/os/LocalPowerManager;->userActivity(JZI)V

    .line 3138
    .end local v0           #curTime:J
    :cond_1a
    return-void
.end method

.method public screenTurnedOff(I)V
    .registers 4
    .parameter "why"

    .prologue
    const/4 v1, 0x0

    .line 2658
    const v0, 0x11170

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 2659
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onScreenTurnedOff(I)V

    .line 2660
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2661
    const/4 v1, 0x0

    :try_start_10
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOn:Z

    .line 2662
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 2663
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 2664
    monitor-exit v0

    .line 2665
    return-void

    .line 2664
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public screenTurnedOn()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 2669
    const v0, 0x11170

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 2670
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onScreenTurnedOn()V

    .line 2671
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2672
    const/4 v1, 0x1

    :try_start_10
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOn:Z

    .line 2673
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 2674
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 2675
    monitor-exit v0

    .line 2676
    return-void

    .line 2675
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public selectAnimationLw(Landroid/view/WindowManagerPolicy$WindowState;I)I
    .registers 4
    .parameter "win"
    .parameter "transit"

    .prologue
    .line 1218
    const/4 v0, 0x5

    if-ne p2, v0, :cond_d

    .line 1219
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->hasAppShownWindows()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1221
    const v0, 0x10a0011

    .line 1225
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method sendCloseSystemWindows()V
    .registers 3

    .prologue
    .line 2708
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 2709
    return-void
.end method

.method sendCloseSystemWindows(Ljava/lang/String;)V
    .registers 3
    .parameter "reason"

    .prologue
    .line 2712
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 2713
    return-void
.end method

.method setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 12
    .parameter "win"
    .parameter "fl"
    .parameter "sim"
    .parameter "attached"
    .parameter "insetDecors"
    .parameter "pf"
    .parameter "df"
    .parameter "cf"
    .parameter "vf"

    .prologue
    .line 1632
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    if-le v0, v1, :cond_3c

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    if-ge v0, v1, :cond_3c

    .line 1640
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v0, p9, Landroid/graphics/Rect;->left:I

    iput v0, p8, Landroid/graphics/Rect;->left:I

    iput v0, p7, Landroid/graphics/Rect;->left:I

    .line 1641
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v0, p9, Landroid/graphics/Rect;->top:I

    iput v0, p8, Landroid/graphics/Rect;->top:I

    iput v0, p7, Landroid/graphics/Rect;->top:I

    .line 1642
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v0, p9, Landroid/graphics/Rect;->right:I

    iput v0, p8, Landroid/graphics/Rect;->right:I

    iput v0, p7, Landroid/graphics/Rect;->right:I

    .line 1643
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v0, p9, Landroid/graphics/Rect;->bottom:I

    iput v0, p8, Landroid/graphics/Rect;->bottom:I

    iput v0, p7, Landroid/graphics/Rect;->bottom:I

    .line 1674
    :goto_30
    and-int/lit16 v0, p2, 0x100

    if-nez v0, :cond_94

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    :goto_38
    invoke-virtual {p6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1676
    return-void

    .line 1651
    :cond_3c
    and-int/lit16 v0, p3, 0xf0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_5a

    .line 1652
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1668
    :cond_49
    :goto_49
    if-eqz p5, :cond_92

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    :goto_4f
    invoke-virtual {p7, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1669
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_30

    .line 1660
    :cond_5a
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1661
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    if-ge v0, v1, :cond_49

    .line 1662
    iget v0, p8, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    if-ge v0, v1, :cond_73

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v0, p8, Landroid/graphics/Rect;->left:I

    .line 1663
    :cond_73
    iget v0, p8, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    if-ge v0, v1, :cond_7d

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v0, p8, Landroid/graphics/Rect;->top:I

    .line 1664
    :cond_7d
    iget v0, p8, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    if-le v0, v1, :cond_87

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v0, p8, Landroid/graphics/Rect;->right:I

    .line 1665
    :cond_87
    iget v0, p8, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    if-le v0, v1, :cond_49

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v0, p8, Landroid/graphics/Rect;->bottom:I

    goto :goto_49

    :cond_92
    move-object v0, p8

    .line 1668
    goto :goto_4f

    :cond_94
    move-object v0, p7

    .line 1674
    goto :goto_38
.end method

.method public setCurrentOrientationLw(I)V
    .registers 4
    .parameter "newOrientation"

    .prologue
    .line 3034
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3035
    :try_start_3
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    if-eq p1, v1, :cond_c

    .line 3036
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    .line 3037
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 3039
    :cond_c
    monitor-exit v0

    .line 3040
    return-void

    .line 3039
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public setHoldMode(Ljava/lang/String;Z)V
    .registers 4
    .parameter "pkgName"
    .parameter "setMode"

    .prologue
    .line 3164
    const-string v0, "com.sec.android.app.camera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3165
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldImitator:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->setHomeNeglectingMode(Ljava/lang/String;Z)V

    .line 3170
    :cond_d
    :goto_d
    return-void

    .line 3166
    :cond_e
    const-string v0, "com.sec.android.app.videoplayer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3167
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldImitator:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->setHomeNeglectingMode(Ljava/lang/String;Z)V

    goto :goto_d
.end method

.method setVolumeMute()V
    .registers 6

    .prologue
    const/4 v3, 0x0

    const-string v4, "WindowManager"

    .line 622
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 623
    .local v0, am:Landroid/media/AudioManager;
    if-nez v0, :cond_17

    .line 624
    const-string v1, "WindowManager"

    const-string v1, "setVolumeMute: couldn\'t get AudioManager reference"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    :goto_16
    return-void

    .line 627
    :cond_17
    const-string v1, "WindowManager"

    const-string v1, "volumedown mute"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_16
.end method

.method showGlobalActionsDialog()V
    .registers 4

    .prologue
    .line 587
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

    if-nez v1, :cond_d

    .line 588
    new-instance v1, Lcom/android/internal/policy/impl/GlobalActions;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/policy/impl/GlobalActions;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

    .line 590
    :cond_d
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v0

    .line 591
    .local v0, keyguardShowing:Z
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/policy/impl/GlobalActions;->showDialog(ZZ)V

    .line 592
    if-eqz v0, :cond_23

    .line 595
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakelock()V

    .line 597
    :cond_23
    return-void
.end method

.method showRecentAppsDialog()V
    .registers 3

    .prologue
    .line 658
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialog:Lcom/android/internal/policy/impl/RecentApplicationsDialog;

    if-nez v0, :cond_d

    .line 659
    new-instance v0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialog:Lcom/android/internal/policy/impl/RecentApplicationsDialog;

    .line 661
    :cond_d
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialog:Lcom/android/internal/policy/impl/RecentApplicationsDialog;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->show()V

    .line 662
    return-void
.end method

.method startDockOrHome()V
    .registers 4

    .prologue
    .line 2974
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2975
    .local v0, dock:Landroid/content/Intent;
    if-eqz v0, :cond_d

    .line 2977
    :try_start_6
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_6 .. :try_end_b} :catch_c

    .line 2983
    :goto_b
    return-void

    .line 2979
    :catch_c
    move-exception v1

    .line 2982
    :cond_d
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_b
.end method

.method public subWindowTypeToLayerLw(I)I
    .registers 5
    .parameter "type"

    .prologue
    .line 1014
    packed-switch p1, :pswitch_data_26

    .line 1025
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sub-window type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    const/4 v0, 0x0

    :goto_1c
    return v0

    .line 1017
    :pswitch_1d
    const/4 v0, 0x1

    goto :goto_1c

    .line 1019
    :pswitch_1f
    const/4 v0, -0x2

    goto :goto_1c

    .line 1021
    :pswitch_21
    const/4 v0, -0x1

    goto :goto_1c

    .line 1023
    :pswitch_23
    const/4 v0, 0x2

    goto :goto_1c

    .line 1014
    nop

    :pswitch_data_26
    .packed-switch 0x3e8
        :pswitch_1d
        :pswitch_1f
        :pswitch_23
        :pswitch_1d
        :pswitch_21
    .end packed-switch
.end method

.method public systemReady()V
    .registers 4

    .prologue
    .line 2862
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onSystemReady()V

    .line 2863
    const-string v0, "dev.bootcomplete"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2865
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2866
    :try_start_f
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 2867
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    .line 2868
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindowManager$10;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$10;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2873
    monitor-exit v0

    .line 2874
    return-void

    .line 2873
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_f .. :try_end_23} :catchall_21

    throw v1
.end method

.method updateOrientationListenerLp()V
    .registers 3

    .prologue
    .line 517
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->canDetectOrientation()Z

    move-result v1

    if-nez v1, :cond_9

    .line 544
    :cond_8
    :goto_8
    return-void

    .line 526
    :cond_9
    const/4 v0, 0x1

    .line 527
    .local v0, disable:Z
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOn:Z

    if-eqz v1, :cond_21

    .line 528
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->needSensorRunningLp()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 529
    const/4 v0, 0x0

    .line 531
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    if-nez v1, :cond_21

    .line 532
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->enable()V

    .line 534
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    .line 539
    :cond_21
    if-eqz v0, :cond_8

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    if-eqz v1, :cond_8

    .line 540
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->disable()V

    .line 542
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    goto :goto_8
.end method

.method updateRotation(I)V
    .registers 6
    .parameter "animFlags"

    .prologue
    const/4 v3, 0x1

    .line 2920
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:Z

    invoke-interface {v1, v2}, Landroid/os/LocalPowerManager;->setKeyboardVisibility(Z)V

    .line 2921
    const/4 v0, 0x0

    .line 2922
    .local v0, rotation:I
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:Z

    if-eqz v1, :cond_19

    .line 2923
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpenRotation:I

    .line 2932
    :cond_f
    :goto_f
    :try_start_f
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFancyRotationAnimation:I

    or-int/2addr v3, p1

    invoke-interface {v1, v0, v2, v3}, Landroid/view/IWindowManager;->setRotation(IZI)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_18} :catch_30

    .line 2937
    :goto_18
    return-void

    .line 2924
    :cond_19
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_25

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    if-ltz v1, :cond_25

    .line 2925
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    goto :goto_f

    .line 2926
    :cond_25
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-ne v1, v3, :cond_f

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    if-ltz v1, :cond_f

    .line 2927
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    goto :goto_f

    .line 2934
    :catch_30
    move-exception v1

    goto :goto_18
.end method

.method public updateSettings()V
    .registers 15

    .prologue
    .line 763
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 764
    .local v8, resolver:Landroid/content/ContentResolver;
    const/4 v9, 0x0

    .line 765
    .local v9, updateRotation:Z
    const/4 v1, 0x0

    .line 766
    .local v1, addView:Landroid/view/View;
    const/4 v7, 0x0

    .line 767
    .local v7, removeView:Landroid/view/View;
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 768
    :try_start_c
    const-string v12, "end_button_behavior"

    const/4 v13, 0x2

    invoke-static {v8, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    iput v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndcallBehavior:I

    .line 771
    const-string v12, "incall_power_button_behavior"

    const/4 v13, 0x1

    invoke-static {v8, v12, v13}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    iput v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIncallPowerBehavior:I

    .line 774
    const-string v12, "fancy_rotation_anim"

    const/4 v13, 0x0

    invoke-static {v8, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_f0

    const/16 v12, 0x80

    :goto_29
    iput v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFancyRotationAnimation:I

    .line 776
    const-string v12, "accelerometer_rotation"

    const/4 v13, 0x0

    invoke-static {v8, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 778
    .local v0, accelerometerDefault:I
    iget v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAccelerometerDefault:I

    if-eq v12, v0, :cond_3b

    .line 779
    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAccelerometerDefault:I

    .line 780
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 782
    :cond_3b
    iget-boolean v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    if-eqz v12, :cond_63

    .line 783
    const-string v12, "pointer_location"

    const/4 v13, 0x0

    invoke-static {v8, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 785
    .local v6, pointerLocation:I
    iget v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationMode:I

    if-eq v12, v6, :cond_63

    .line 786
    iput v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationMode:I

    .line 787
    if-eqz v6, :cond_f3

    .line 788
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-nez v12, :cond_63

    .line 789
    new-instance v12, Lcom/android/internal/widget/PointerLocationView;

    iget-object v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v12, v13}, Lcom/android/internal/widget/PointerLocationView;-><init>(Landroid/content/Context;)V

    iput-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 790
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/internal/widget/PointerLocationView;->setPrintCoords(Z)V

    .line 791
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 800
    .end local v6           #pointerLocation:I
    :cond_63
    :goto_63
    const-string v12, "screen_off_timeout"

    const/4 v13, 0x0

    invoke-static {v8, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    iput v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimeout:I

    .line 802
    const-string v12, "default_input_method"

    invoke-static {v8, v12}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 804
    .local v4, imId:Ljava/lang/String;
    if-eqz v4, :cond_fd

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_fd

    const/4 v12, 0x1

    move v3, v12

    .line 805
    .local v3, hasSoftInput:Z
    :goto_7c
    iget-boolean v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    if-eq v12, v3, :cond_83

    .line 806
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    .line 807
    const/4 v9, 0x1

    .line 809
    :cond_83
    monitor-exit v11
    :try_end_84
    .catchall {:try_start_c .. :try_end_84} :catchall_fa

    .line 810
    if-eqz v9, :cond_8a

    .line 811
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(I)V

    .line 813
    :cond_8a
    if-eqz v1, :cond_cf

    .line 814
    new-instance v5, Landroid/view/WindowManager$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-direct {v5, v11, v12}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    .line 817
    .local v5, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v11, 0x7df

    iput v11, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 818
    const/16 v11, 0x118

    iput v11, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 822
    const/4 v11, -0x3

    iput v11, v5, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 823
    const-string v11, "PointerLocation"

    invoke-virtual {v5, v11}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 824
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v12, "window"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManagerImpl;

    .line 826
    .local v10, wm:Landroid/view/WindowManagerImpl;
    invoke-virtual {v10, v1, v5}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 828
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    if-nez v11, :cond_cf

    .line 830
    :try_start_b4
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const-string v12, "PointerLocationView"

    invoke-interface {v11, v12}, Landroid/view/IWindowManager;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v11

    iput-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    .line 832
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputHandler:Landroid/view/InputHandler;

    iget-object v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v13}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v13

    invoke-static {v11, v12, v13}, Landroid/view/InputQueue;->registerInputChannel(Landroid/view/InputChannel;Landroid/view/InputHandler;Landroid/os/MessageQueue;)V
    :try_end_cf
    .catch Landroid/os/RemoteException; {:try_start_b4 .. :try_end_cf} :catch_101

    .line 840
    .end local v5           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v10           #wm:Landroid/view/WindowManagerImpl;
    :cond_cf
    :goto_cf
    if-eqz v7, :cond_ef

    .line 841
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    if-eqz v11, :cond_e2

    .line 842
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    invoke-static {v11}, Landroid/view/InputQueue;->unregisterInputChannel(Landroid/view/InputChannel;)V

    .line 843
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v11}, Landroid/view/InputChannel;->dispose()V

    .line 844
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    .line 847
    :cond_e2
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v12, "window"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManagerImpl;

    .line 849
    .restart local v10       #wm:Landroid/view/WindowManagerImpl;
    invoke-virtual {v10, v7}, Landroid/view/WindowManagerImpl;->removeView(Landroid/view/View;)V

    .line 851
    .end local v10           #wm:Landroid/view/WindowManagerImpl;
    :cond_ef
    return-void

    .line 774
    .end local v0           #accelerometerDefault:I
    .end local v3           #hasSoftInput:Z
    .end local v4           #imId:Ljava/lang/String;
    :cond_f0
    const/4 v12, 0x0

    goto/16 :goto_29

    .line 794
    .restart local v0       #accelerometerDefault:I
    .restart local v6       #pointerLocation:I
    :cond_f3
    :try_start_f3
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 795
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    goto/16 :goto_63

    .line 809
    .end local v0           #accelerometerDefault:I
    .end local v6           #pointerLocation:I
    :catchall_fa
    move-exception v12

    monitor-exit v11
    :try_end_fc
    .catchall {:try_start_f3 .. :try_end_fc} :catchall_fa

    throw v12

    .line 804
    .restart local v0       #accelerometerDefault:I
    .restart local v4       #imId:Ljava/lang/String;
    :cond_fd
    const/4 v12, 0x0

    move v3, v12

    goto/16 :goto_7c

    .line 834
    .restart local v3       #hasSoftInput:Z
    .restart local v5       #lp:Landroid/view/WindowManager$LayoutParams;
    .restart local v10       #wm:Landroid/view/WindowManagerImpl;
    :catch_101
    move-exception v11

    move-object v2, v11

    .line 835
    .local v2, ex:Landroid/os/RemoteException;
    const-string v11, "WindowManager"

    const-string v12, "Could not set up input monitoring channel for PointerLocation."

    invoke-static {v11, v12, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_cf
.end method

.method useSensorForOrientationLp(I)Z
    .registers 6
    .parameter "appOrientation"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 446
    const/4 v0, 0x4

    if-eq p1, v0, :cond_10

    const/16 v0, 0xa

    if-eq p1, v0, :cond_10

    const/4 v0, 0x6

    if-eq p1, v0, :cond_10

    const/4 v0, 0x7

    if-ne p1, v0, :cond_12

    :cond_10
    move v0, v1

    .line 469
    :goto_11
    return v0

    .line 453
    :cond_12
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAccelerometerDefault:I

    if-eqz v0, :cond_1c

    if-eq p1, v2, :cond_1a

    if-ne p1, v3, :cond_1c

    :cond_1a
    move v0, v1

    .line 456
    goto :goto_11

    .line 459
    :cond_1c
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    if-eqz v0, :cond_24

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-eq v0, v2, :cond_2c

    :cond_24
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    if-eqz v0, :cond_35

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-ne v0, v1, :cond_35

    .line 462
    :cond_2c
    if-eq p1, v2, :cond_33

    if-eq p1, v3, :cond_33

    const/4 v0, 0x5

    if-ne p1, v0, :cond_35

    :cond_33
    move v0, v1

    .line 465
    goto :goto_11

    .line 469
    :cond_35
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public userActivity()V
    .registers 6

    .prologue
    .line 2878
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    monitor-enter v0

    .line 2879
    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimerActive:Z

    if-eqz v1, :cond_18

    .line 2881
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2882
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimeout:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2884
    :cond_18
    monitor-exit v0

    .line 2885
    return-void

    .line 2884
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public windowTypeToLayerLw(I)I
    .registers 6
    .parameter "type"

    .prologue
    const/4 v3, 0x2

    .line 971
    const/4 v0, 0x1

    if-lt p1, v0, :cond_a

    const/16 v0, 0x63

    if-gt p1, v0, :cond_a

    move v0, v3

    .line 1009
    :goto_9
    return v0

    .line 974
    :cond_a
    packed-switch p1, :pswitch_data_52

    .line 1008
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown window type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 1009
    goto :goto_9

    .line 976
    :pswitch_27
    const/16 v0, 0x8

    goto :goto_9

    .line 978
    :pswitch_2a
    const/4 v0, 0x5

    goto :goto_9

    .line 980
    :pswitch_2c
    const/4 v0, 0x6

    goto :goto_9

    .line 982
    :pswitch_2e
    const/4 v0, 0x4

    goto :goto_9

    .line 984
    :pswitch_30
    const/4 v0, 0x3

    goto :goto_9

    .line 986
    :pswitch_32
    const/16 v0, 0xe

    goto :goto_9

    .line 988
    :pswitch_35
    const/16 v0, 0xf

    goto :goto_9

    .line 990
    :pswitch_38
    const/16 v0, 0xa

    goto :goto_9

    .line 992
    :pswitch_3b
    const/16 v0, 0xb

    goto :goto_9

    .line 994
    :pswitch_3e
    const/16 v0, 0xc

    goto :goto_9

    .line 996
    :pswitch_41
    const/16 v0, 0xd

    goto :goto_9

    .line 998
    :pswitch_44
    const/16 v0, 0x10

    goto :goto_9

    .line 1000
    :pswitch_47
    const/16 v0, 0x11

    goto :goto_9

    .line 1002
    :pswitch_4a
    const/16 v0, 0x9

    goto :goto_9

    .line 1004
    :pswitch_4d
    const/4 v0, 0x7

    goto :goto_9

    :pswitch_4f
    move v0, v3

    .line 1006
    goto :goto_9

    .line 974
    nop

    :pswitch_data_52
    .packed-switch 0x7d0
        :pswitch_27
        :pswitch_2e
        :pswitch_30
        :pswitch_38
        :pswitch_32
        :pswitch_4d
        :pswitch_44
        :pswitch_4a
        :pswitch_2c
        :pswitch_35
        :pswitch_3b
        :pswitch_3e
        :pswitch_41
        :pswitch_4f
        :pswitch_2a
        :pswitch_47
    .end packed-switch
.end method
