.class Lcom/android/internal/policy/impl/GlassLockScreen;
.super Landroid/widget/LinearLayout;
.source "GlassLockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ConfigurationChangeCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MediaStateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/GlassLockScreen$4;,
        Lcom/android/internal/policy/impl/GlassLockScreen$LockTouchListener;,
        Lcom/android/internal/policy/impl/GlassLockScreen$Status;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DISPLAY_CARRIER_NAME:Z = false

.field private static final DISPLAY_RAD_DUAL_CLOCK_ON_LOCK_UI:Z = false

.field private static final DISPLAY_SIM_LOCK_UI:Z = false

.field private static final ENABLE_MENU_KEY_FILE:Ljava/lang/String; = "/data/local/enable_menu_key"

.field private static final MODE_HOMESCREEN_WALLPAPER:I = 0x0

.field private static final MODE_LOCKSCREEN_WALLPAPER:I = 0x1

.field private static final PROP_PIN_STATUS:Ljava/lang/String; = "ril.pinstatus"

.field private static final SEC_LOCK_KEY_PERM_BLOCKED:I = 0x5

.field private static final TAG:Ljava/lang/String; = "GlassLockScreen"

.field private static mSimLockPreparing:Z


# instance fields
.field private GLASS_UNLOCK_SOUND_ONLY_ONCE:Z

.field private locale_es:Ljava/util/Locale;

.field private mBackgroudLayout:Landroid/widget/RelativeLayout;

.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCarrier:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mCreationOrientation:I

.field private mEmergencyCallButton:Landroid/widget/Button;

.field private mEmergencyCallButton2:Landroid/widget/Button;

.field private mEnableMenuKeyInLockScreen:Z

.field private mInitGlassHeight:I

.field private mInitGlassLeft:I

.field private mInitGlassTop:I

.field private mInitGlassWidth:I

.field private mKeyboardHidden:I

.field private mLayout:Landroid/widget/RelativeLayout;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockscreenBackground:Landroid/widget/ImageView;

.field private mMediaLayout:Landroid/widget/LinearLayout;

.field private mMediaOpened:Z

.field private mOffsetLeft:I

.field private mOffsetTop:I

.field private mOrigLeft:I

.field private mOrigTop:I

.field private mSimLockMsg1:Landroid/widget/TextView;

.field private mSimLockMsg2:Landroid/widget/TextView;

.field private mSimLockMsg3:Landroid/widget/TextView;

.field private mStatus:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

.field private mUnlockArrow:Landroid/widget/LinearLayout;

.field private mUnlockButton:Landroid/widget/LinearLayout;

.field private mUnlockClock:Lcom/android/internal/policy/impl/UnlockClock;

.field private mUnlockDualClock:Lcom/android/internal/policy/impl/UnlockDualClock;

.field private mUnlockHorizontalMargin:I

.field private mUnlockLayoutLeft:I

.field private mUnlockLayoutTop:I

.field private mUnlockMatchLayoutTop:I

.field private mUnlockMatchStatusBarMargin:I

.field private mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

.field private mUnlockRatio:I

.field private mUnlockVerticalMargin:I

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 116
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockPreparing:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .registers 16
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    const/16 v9, 0x1e0

    const/16 v8, 0x150

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 275
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 67
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->GLASS_UNLOCK_SOUND_ONLY_ONCE:Z

    .line 103
    const/16 v2, 0x34

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockRatio:I

    .line 120
    sget-object v2, Lcom/android/internal/policy/impl/GlassLockScreen$Status;->Normal:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mStatus:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    .line 132
    const/16 v2, 0x30

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockMatchStatusBarMargin:I

    .line 277
    iput-object p3, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 278
    iput-object p4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 279
    iput-object p5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 280
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mContext:Landroid/content/Context;

    .line 282
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreen;->shouldEnableMenuKey()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mEnableMenuKeyInLockScreen:Z

    .line 286
    iget v2, p2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCreationOrientation:I

    .line 287
    iget v2, p2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mKeyboardHidden:I

    .line 295
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMediaOpened:Z

    .line 298
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 303
    .local v1, inflater:Landroid/view/LayoutInflater;
    iget v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCreationOrientation:I

    if-eq v2, v7, :cond_1ac

    .line 304
    const v2, 0x109007b

    invoke-virtual {v1, v2, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 311
    :goto_42
    const v2, 0x10201f0

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCarrier:Landroid/widget/TextView;

    .line 312
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 313
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCarrier:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 316
    const v2, 0x102027a

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg1:Landroid/widget/TextView;

    .line 317
    const v2, 0x102027b

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg2:Landroid/widget/TextView;

    .line 318
    const v2, 0x10201eb

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    .line 319
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    const v3, 0x10403a6

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 320
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/internal/policy/impl/GlassLockScreen$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/GlassLockScreen$1;-><init>(Lcom/android/internal/policy/impl/GlassLockScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 329
    const v2, 0x102027c

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg3:Landroid/widget/TextView;

    .line 330
    const v2, 0x102027d

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mEmergencyCallButton2:Landroid/widget/Button;

    .line 331
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mEmergencyCallButton2:Landroid/widget/Button;

    const v3, 0x10403a6

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 332
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mEmergencyCallButton2:Landroid/widget/Button;

    new-instance v3, Lcom/android/internal/policy/impl/GlassLockScreen$2;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/GlassLockScreen$2;-><init>(Lcom/android/internal/policy/impl/GlassLockScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mEmergencyCallButton2:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 342
    const v2, 0x1020279

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLayout:Landroid/widget/RelativeLayout;

    .line 359
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->locale_es:Ljava/util/Locale;

    .line 360
    const v2, 0x102027f

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockButton:Landroid/widget/LinearLayout;

    .line 361
    const v2, 0x102027e

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockArrow:Landroid/widget/LinearLayout;

    .line 365
    new-instance v2, Lcom/android/internal/policy/impl/UnlockMediaController;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/policy/impl/UnlockMediaController;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    .line 366
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    new-instance v3, Lcom/android/internal/policy/impl/GlassLockScreen$LockTouchListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/internal/policy/impl/GlassLockScreen$LockTouchListener;-><init>(Lcom/android/internal/policy/impl/GlassLockScreen;Lcom/android/internal/policy/impl/GlassLockScreen$1;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/UnlockMediaController;->setOnCDImageTouchListener(Lcom/android/internal/policy/impl/UnlockMediaController$CDImageTouchListener;)V

    .line 367
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/UnlockMediaController;->getMainLayout()Landroid/widget/LinearLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMediaLayout:Landroid/widget/LinearLayout;

    .line 368
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMediaLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 380
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreen;->isDualClockEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1b7

    .line 381
    new-instance v2, Lcom/android/internal/policy/impl/UnlockDualClock;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCreationOrientation:I

    if-eq v4, v7, :cond_1b4

    move v4, v6

    :goto_127
    invoke-direct {v2, v3, v4}, Lcom/android/internal/policy/impl/UnlockDualClock;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockDualClock:Lcom/android/internal/policy/impl/UnlockDualClock;

    .line 386
    :goto_12c
    const v2, 0x1020278

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBackgroudLayout:Landroid/widget/RelativeLayout;

    .line 387
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBackgroudLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMediaLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 389
    const v2, 0x1020277

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLockscreenBackground:Landroid/widget/ImageView;

    .line 393
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreen;->isDualClockEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1c9

    .line 394
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockDualClock:Lcom/android/internal/policy/impl/UnlockDualClock;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 399
    :goto_15a
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 400
    .local v0, densityDpiForGlass:I
    sparse-switch v0, :sswitch_data_20c

    .line 429
    iput v8, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockHorizontalMargin:I

    .line 430
    const/16 v2, 0x230

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockVerticalMargin:I

    .line 432
    iput v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mInitGlassLeft:I

    .line 433
    iput v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mInitGlassTop:I

    .line 434
    iput v9, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mInitGlassWidth:I

    .line 435
    const/16 v2, 0x2fa

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mInitGlassHeight:I

    .line 532
    :goto_179
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockButton:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/internal/policy/impl/GlassLockScreen$3;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/GlassLockScreen$3;-><init>(Lcom/android/internal/policy/impl/GlassLockScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 594
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSimLocked()Z

    move-result v2

    if-eqz v2, :cond_209

    sget-boolean v2, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockPreparing:Z

    if-eqz v2, :cond_209

    .line 595
    sput-boolean v6, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockPreparing:Z

    .line 601
    :goto_191
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/GlassLockScreen;->setFocusable(Z)V

    .line 602
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/GlassLockScreen;->setFocusableInTouchMode(Z)V

    .line 603
    const/high16 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->setDescendantFocusability(I)V

    .line 605
    invoke-virtual {p4, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 606
    invoke-virtual {p4, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V

    .line 607
    invoke-virtual {p4, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerConfigurationChangeCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ConfigurationChangeCallback;)V

    .line 608
    invoke-virtual {p4, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerMediaCallbacks(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MediaStateCallback;)V

    .line 610
    invoke-direct {p0, p4}, Lcom/android/internal/policy/impl/GlassLockScreen;->resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    .line 611
    return-void

    .line 307
    .end local v0           #densityDpiForGlass:I
    :cond_1ac
    const v2, 0x109007c

    invoke-virtual {v1, v2, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_42

    :cond_1b4
    move v4, v5

    .line 381
    goto/16 :goto_127

    .line 383
    :cond_1b7
    new-instance v2, Lcom/android/internal/policy/impl/UnlockClock;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCreationOrientation:I

    if-eq v4, v7, :cond_1c7

    move v4, v6

    :goto_1c0
    invoke-direct {v2, v3, v4}, Lcom/android/internal/policy/impl/UnlockClock;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClock;

    goto/16 :goto_12c

    :cond_1c7
    move v4, v5

    goto :goto_1c0

    .line 396
    :cond_1c9
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClock;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_15a

    .line 402
    .restart local v0       #densityDpiForGlass:I
    :sswitch_1d1
    iput v8, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockHorizontalMargin:I

    .line 403
    const/16 v2, 0x230

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockVerticalMargin:I

    .line 405
    iput v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mInitGlassLeft:I

    .line 406
    iput v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mInitGlassTop:I

    .line 407
    iput v9, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mInitGlassWidth:I

    .line 408
    const/16 v2, 0x2fa

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mInitGlassHeight:I

    goto :goto_179

    .line 411
    :sswitch_1e2
    iput v8, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockHorizontalMargin:I

    .line 412
    const/16 v2, 0x230

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockVerticalMargin:I

    .line 414
    iput v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mInitGlassLeft:I

    .line 415
    iput v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mInitGlassTop:I

    .line 416
    iput v9, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mInitGlassWidth:I

    .line 417
    const/16 v2, 0x2fa

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mInitGlassHeight:I

    goto :goto_179

    .line 420
    :sswitch_1f3
    const/16 v2, 0xa8

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockHorizontalMargin:I

    .line 421
    const/16 v2, 0x118

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockVerticalMargin:I

    .line 423
    iput v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mInitGlassLeft:I

    .line 424
    iput v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mInitGlassTop:I

    .line 425
    const/16 v2, 0xf0

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mInitGlassWidth:I

    .line 426
    const/16 v2, 0x17d

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mInitGlassHeight:I

    goto/16 :goto_179

    .line 598
    :cond_209
    sput-boolean v5, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockPreparing:Z

    goto :goto_191

    .line 400
    :sswitch_data_20c
    .sparse-switch
        0x78 -> :sswitch_1f3
        0xa0 -> :sswitch_1e2
        0xf0 -> :sswitch_1d1
    .end sparse-switch
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/GlassLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/internal/policy/impl/GlassLockScreen;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput p1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mOffsetLeft:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/GlassLockScreen;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mOffsetTop:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/internal/policy/impl/GlassLockScreen;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput p1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mOffsetTop:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/GlassLockScreen;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockLayoutTop:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/internal/policy/impl/GlassLockScreen;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput p1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockLayoutTop:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/GlassLockScreen;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->GLASS_UNLOCK_SOUND_ONLY_ONCE:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/internal/policy/impl/GlassLockScreen;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->GLASS_UNLOCK_SOUND_ONLY_ONCE:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/GlassLockScreen;)Lcom/android/internal/widget/LockPatternUtils;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/GlassLockScreen;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/internal/policy/impl/GlassLockScreen;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMediaOpened:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/GlassLockScreen;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockButton:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/GlassLockScreen;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockMatchLayoutTop:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/GlassLockScreen;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput p1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockMatchLayoutTop:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/GlassLockScreen;)Lcom/android/internal/policy/impl/UnlockClock;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClock;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/GlassLockScreen;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockMatchStatusBarMargin:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/GlassLockScreen;)Ljava/util/Locale;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->locale_es:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/GlassLockScreen;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockArrow:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/GlassLockScreen;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mOrigLeft:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/internal/policy/impl/GlassLockScreen;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput p1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mOrigLeft:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/GlassLockScreen;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mOrigTop:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/internal/policy/impl/GlassLockScreen;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput p1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mOrigTop:I

    return p1
.end method

.method static getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4
    .parameter "telephonyPlmn"
    .parameter "telephonySpn"

    .prologue
    .line 1004
    if-eqz p0, :cond_6

    if-nez p1, :cond_6

    move-object v0, p0

    .line 1011
    :goto_5
    return-object v0

    .line 1006
    :cond_6
    if-eqz p0, :cond_22

    if-eqz p1, :cond_22

    .line 1007
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 1008
    :cond_22
    if-nez p0, :cond_28

    if-eqz p1, :cond_28

    move-object v0, p1

    .line 1009
    goto :goto_5

    .line 1011
    :cond_28
    const-string v0, ""

    goto :goto_5
.end method

.method private getCurrentStatus(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/GlassLockScreen$Status;
    .registers 5
    .parameter "simState"

    .prologue
    .line 866
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_19

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne p1, v1, :cond_19

    const/4 v1, 0x1

    move v0, v1

    .line 868
    .local v0, missingAndNotProvisioned:Z
    :goto_e
    if-nez v0, :cond_16

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreen;->isPermanentBlock()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 869
    :cond_16
    sget-object v1, Lcom/android/internal/policy/impl/GlassLockScreen$Status;->SimMissingLocked:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    .line 888
    :goto_18
    return-object v1

    .line 866
    .end local v0           #missingAndNotProvisioned:Z
    :cond_19
    const/4 v1, 0x0

    move v0, v1

    goto :goto_e

    .line 872
    .restart local v0       #missingAndNotProvisioned:Z
    :cond_1c
    sget-object v1, Lcom/android/internal/policy/impl/GlassLockScreen$4;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_40

    .line 888
    sget-object v1, Lcom/android/internal/policy/impl/GlassLockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    goto :goto_18

    .line 874
    :pswitch_2a
    sget-object v1, Lcom/android/internal/policy/impl/GlassLockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    goto :goto_18

    .line 876
    :pswitch_2d
    sget-object v1, Lcom/android/internal/policy/impl/GlassLockScreen$Status;->SimMissingLocked:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    goto :goto_18

    .line 878
    :pswitch_30
    sget-object v1, Lcom/android/internal/policy/impl/GlassLockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    goto :goto_18

    .line 880
    :pswitch_33
    sget-object v1, Lcom/android/internal/policy/impl/GlassLockScreen$Status;->SimLocked:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    goto :goto_18

    .line 882
    :pswitch_36
    sget-object v1, Lcom/android/internal/policy/impl/GlassLockScreen$Status;->SimPukLocked:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    goto :goto_18

    .line 884
    :pswitch_39
    sget-object v1, Lcom/android/internal/policy/impl/GlassLockScreen$Status;->Normal:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    goto :goto_18

    .line 886
    :pswitch_3c
    sget-object v1, Lcom/android/internal/policy/impl/GlassLockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    goto :goto_18

    .line 872
    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_2d
        :pswitch_30
        :pswitch_33
        :pswitch_36
        :pswitch_39
        :pswitch_3c
    .end packed-switch
.end method

.method private isDualClockEnabled()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 1032
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private isPermanentBlock()Z
    .registers 2

    .prologue
    .line 857
    const/4 v0, 0x0

    return v0
.end method

.method private putEmergencyBelow(I)V
    .registers 4
    .parameter "viewId"

    .prologue
    .line 841
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 843
    .local v0, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 844
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 845
    return-void
.end method

.method private refreshBatteryStringAndIcon()V
    .registers 1

    .prologue
    .line 635
    return-void
.end method

.method private resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .registers 3
    .parameter "updateMonitor"

    .prologue
    .line 1024
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreen;->getCurrentStatus(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mStatus:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    .line 1025
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mStatus:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreen;->updateLayout(Lcom/android/internal/policy/impl/GlassLockScreen$Status;)V

    .line 1026
    return-void
.end method

.method private shouldEnableMenuKey()Z
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 247
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 248
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x10d0012

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 250
    .local v0, configDisabled:Z
    const-string v4, "ro.monkey"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 252
    .local v2, isMonkey:Z
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/local/enable_menu_key"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    .line 253
    .local v1, fileOverride:Z
    if-eqz v0, :cond_23

    if-nez v2, :cond_23

    if-eqz v1, :cond_25

    :cond_23
    const/4 v4, 0x1

    :goto_24
    return v4

    :cond_25
    move v4, v6

    goto :goto_24
.end method

.method private switchLockscreenMode(I)V
    .registers 4
    .parameter "mode"

    .prologue
    .line 1055
    packed-switch p1, :pswitch_data_10

    .line 1069
    :goto_3
    :pswitch_3
    return-void

    .line 1059
    :pswitch_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLockscreenBackground:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getLockscreenWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 1055
    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private updateLayout(Lcom/android/internal/policy/impl/GlassLockScreen$Status;)V
    .registers 2
    .parameter "status"

    .prologue
    .line 896
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .registers 2

    .prologue
    .line 788
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 789
    return-void
.end method

.method public needsInput()Z
    .registers 2

    .prologue
    .line 711
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .prologue
    .line 693
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 701
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreen;->updateConfiguration()V

    .line 703
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 678
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 686
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreen;->updateConfiguration()V

    .line 688
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 615
    const/4 v0, 0x3

    if-ne p1, v0, :cond_12

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_12

    .line 616
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMediaOpened:Z

    if-eqz v0, :cond_12

    .line 617
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockMediaController;->startControllerAnimation()V

    .line 621
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyboardChange(Z)V
    .registers 2
    .parameter "isKeyboardOpen"

    .prologue
    .line 707
    return-void
.end method

.method public onMediaUpdated(ZZLandroid/net/Uri;)V
    .registers 6
    .parameter "bIsPlaying"
    .parameter "bIsStop"
    .parameter "mediaUri"

    .prologue
    .line 795
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMediaOpened:Z

    if-nez v0, :cond_e

    if-eqz p1, :cond_e

    .line 796
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMediaOpened:Z

    .line 797
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMediaLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 800
    :cond_e
    if-nez p1, :cond_19

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMediaOpened:Z

    if-eqz v0, :cond_19

    .line 801
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockMediaController;->stopPlaying()V

    .line 804
    :cond_19
    if-eqz p1, :cond_24

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMediaOpened:Z

    if-eqz v0, :cond_24

    .line 805
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockMediaController;->startPlaying()V

    .line 808
    :cond_24
    if-eqz p2, :cond_2f

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMediaOpened:Z

    if-eqz v0, :cond_2f

    .line 809
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0, p2}, Lcom/android/internal/policy/impl/UnlockMediaController;->setControllerVisibility(Z)V

    .line 812
    :cond_2f
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/UnlockMediaController;->playingFlagSet(Z)V

    .line 813
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0, p3}, Lcom/android/internal/policy/impl/UnlockMediaController;->updateMediaPlayer(Landroid/net/Uri;)V

    .line 814
    return-void
.end method

.method public onOrientationChange(Z)V
    .registers 2
    .parameter "inPortrait"

    .prologue
    .line 656
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 723
    const-string v0, "GlassLockScreen"

    const-string v1, "GlassLock onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMediaOpened:Z

    if-eqz v0, :cond_10

    .line 726
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockMediaController;->onPause()V

    .line 735
    :cond_10
    return-void
.end method

.method public onPhoneStateChanged(Ljava/lang/String;)V
    .registers 4
    .parameter "newState"

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 1050
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .registers 4
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 627
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 836
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mStatus:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreen;->updateLayout(Lcom/android/internal/policy/impl/GlassLockScreen$Status;)V

    .line 837
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 739
    const-string v0, "GlassLockScreen"

    const-string v1, "GlassLock onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreen;->resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    .line 758
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreen;->isDualClockEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 759
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockDualClock:Lcom/android/internal/policy/impl/UnlockDualClock;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockDualClock;->refreshTimeAndDateDisplay()V

    .line 763
    :goto_1b
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMediaOpened:Z

    if-eqz v0, :cond_24

    .line 764
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockMediaController;->onResume()V

    .line 784
    :cond_24
    return-void

    .line 761
    :cond_25
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClock;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockClock;->refreshTimeAndDateDisplay()V

    goto :goto_1b
.end method

.method public onRingerModeChanged(I)V
    .registers 2
    .parameter "state"

    .prologue
    .line 652
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V
    .registers 2
    .parameter "simState"

    .prologue
    .line 1021
    return-void
.end method

.method public onStop()V
    .registers 3

    .prologue
    .line 716
    const-string v0, "GlassLockScreen"

    const-string v1, "GlassLock onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMediaOpened:Z

    if-eqz v0, :cond_10

    .line 718
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockMediaController;->onStop()V

    .line 719
    :cond_10
    return-void
.end method

.method public onTimeChanged()V
    .registers 3

    .prologue
    .line 640
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreen;->forceLayout()V

    .line 642
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreen;->isDualClockEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 643
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockDualClock:Lcom/android/internal/policy/impl/UnlockDualClock;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockDualClock;->refreshTimeAndDateDisplay()V

    .line 648
    :goto_12
    return-void

    .line 646
    :cond_13
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClock;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/UnlockClock;->resetClockInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    goto :goto_12
.end method

.method public onUpdateBatteryInfo(II)V
    .registers 3
    .parameter "batteryInfoStatus"
    .parameter "batteryLevel"

    .prologue
    .line 632
    return-void
.end method

.method updateConfiguration()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 661
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 662
    .local v1, newConfig:Landroid/content/res/Configuration;
    iget v2, v1, Landroid/content/res/Configuration;->orientation:I

    iget v3, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCreationOrientation:I

    if-eq v2, v3, :cond_15

    .line 663
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 671
    :cond_14
    :goto_14
    return-void

    .line 664
    :cond_15
    iget v2, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v3, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mKeyboardHidden:I

    if-eq v2, v3, :cond_14

    .line 665
    iget v2, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mKeyboardHidden:I

    .line 666
    iget v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mKeyboardHidden:I

    if-ne v2, v4, :cond_34

    move v0, v4

    .line 667
    .local v0, isKeyboardOpen:Z
    :goto_24
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isKeyguardBypassEnabled()Z

    move-result v2

    if-eqz v2, :cond_14

    if-eqz v0, :cond_14

    .line 668
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_14

    .line 666
    .end local v0           #isKeyboardOpen:Z
    :cond_34
    const/4 v2, 0x0

    move v0, v2

    goto :goto_24
.end method
