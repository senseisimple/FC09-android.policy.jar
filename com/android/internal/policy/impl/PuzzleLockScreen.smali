.class Lcom/android/internal/policy/impl/PuzzleLockScreen;
.super Landroid/widget/LinearLayout;
.source "PuzzleLockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ConfigurationChangeCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MediaStateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/PuzzleLockScreen$2;,
        Lcom/android/internal/policy/impl/PuzzleLockScreen$LockTouchListener;,
        Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DISPLAY_CARRIER_NAME:Z = false

.field private static final DISPLAY_RAD_DUAL_CLOCK_ON_LOCK_UI:Z = false

.field private static final ENABLE_MENU_KEY_FILE:Ljava/lang/String; = "/data/local/enable_menu_key"

.field private static final MODE_HOMESCREEN_WALLPAPER:I = 0x0

.field private static final MODE_LOCKSCREEN_WALLPAPER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PuzzleLockScreen"


# instance fields
.field private PUZZLE_UNLOCK_SOUND_ONLY_ONCE:Z

.field private locale_es:Ljava/util/Locale;

.field private mBackgroudLayout:Landroid/widget/RelativeLayout;

.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCarrier:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mCreationOrientation:I

.field private mEnableMenuKeyInLockScreen:Z

.field private mEventMatchLayoutTop:I

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

.field private mMissedCallCount:I

.field private mMissedCallMatchLayoutLeft:I

.field private mMissedEventIcon:Landroid/widget/ImageView;

.field private mMissedEventLayout:Landroid/widget/LinearLayout;

.field private mMissedEventLayout2:Landroid/widget/LinearLayout;

.field private mMissedMsgCount:I

.field private mMissedNotiCallCount:Landroid/widget/TextView;

.field private mMissedNotiCallText:Landroid/widget/TextView;

.field private mMissedNotiCalllayout:Landroid/widget/LinearLayout;

.field private mMissedNotiCount:Landroid/widget/TextView;

.field private mMissedNotiMailCount:Landroid/widget/TextView;

.field private mMissedNotiMailText:Landroid/widget/TextView;

.field private mMissedNotiMaillayout:Landroid/widget/LinearLayout;

.field private mMissedNotiText:Landroid/widget/TextView;

.field private mMissedTxtMatchLayoutRight:I

.field private mOffsetLeft:I

.field private mOffsetTop:I

.field private mOrigLeft:I

.field private mOrigTop:I

.field private mPuzzleUnlockHorizontalMargin:I

.field private mPuzzleUnlockMatchHorizontalMargin:I

.field private mPuzzleUnlockRatio:I

.field private mPuzzleUnlockStatusBarMargin:I

.field private mPuzzleUnlockVerticalMargin:I

.field private mStatus:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

.field private mUnlockArrow:Landroid/widget/LinearLayout;

.field private mUnlockArrowLayout:Landroid/widget/LinearLayout;

.field private mUnlockButton:Landroid/widget/LinearLayout;

.field private mUnlockClock:Lcom/android/internal/policy/impl/UnlockClock;

.field private mUnlockDualClock:Lcom/android/internal/policy/impl/UnlockDualClock;

.field private mUnlockEventArrow:Landroid/widget/ImageView;

.field private mUnlockHorizontalMargin:I

.field private mUnlockLayoutLeft:I

.field private mUnlockLayoutTop:I

.field private mUnlockMatchLayoutTop:I

.field private mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

.field private mUnlockMissedCallArrow:Landroid/widget/ImageView;

.field private mUnlockMissedTxtArrow:Landroid/widget/ImageView;

.field private mUnlockVerticalMargin:I

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .registers 16
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    const/16 v9, 0x150

    const/4 v8, 0x2

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 333
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 94
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->PUZZLE_UNLOCK_SOUND_ONLY_ONCE:Z

    .line 169
    const/16 v2, 0x12

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockRatio:I

    .line 170
    const/16 v2, 0x30

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockStatusBarMargin:I

    .line 171
    const/4 v2, 0x6

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockMatchHorizontalMargin:I

    .line 202
    sget-object v2, Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;->Normal:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mStatus:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    .line 335
    iput-object p3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 336
    iput-object p4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 337
    iput-object p5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 339
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->shouldEnableMenuKey()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mEnableMenuKeyInLockScreen:Z

    .line 342
    iget v2, p2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mCreationOrientation:I

    .line 343
    iget v2, p2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mKeyboardHidden:I

    .line 349
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaOpened:Z

    .line 351
    iput v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedCallCount:I

    .line 352
    iput v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedMsgCount:I

    .line 355
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 360
    .local v1, inflater:Landroid/view/LayoutInflater;
    iget v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mCreationOrientation:I

    if-eq v2, v8, :cond_223

    .line 362
    const v2, 0x1090080

    invoke-virtual {v1, v2, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 368
    :goto_42
    const v2, 0x10201f0

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mCarrier:Landroid/widget/TextView;

    .line 369
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 370
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mCarrier:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 376
    const v2, 0x1020298

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mLayout:Landroid/widget/RelativeLayout;

    .line 405
    const v2, 0x1020299

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedEventLayout:Landroid/widget/LinearLayout;

    .line 406
    const v2, 0x102029a

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedEventIcon:Landroid/widget/ImageView;

    .line 407
    const v2, 0x102029b

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedNotiText:Landroid/widget/TextView;

    .line 408
    const v2, 0x102029c

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedNotiCount:Landroid/widget/TextView;

    .line 409
    const v2, 0x102029d

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedEventLayout2:Landroid/widget/LinearLayout;

    .line 410
    const v2, 0x102029e

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedNotiCalllayout:Landroid/widget/LinearLayout;

    .line 411
    const v2, 0x10202a1

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedNotiMaillayout:Landroid/widget/LinearLayout;

    .line 412
    const v2, 0x102029f

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedNotiCallText:Landroid/widget/TextView;

    .line 413
    const v2, 0x10202a2

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedNotiMailText:Landroid/widget/TextView;

    .line 414
    const v2, 0x10202a0

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedNotiCallCount:Landroid/widget/TextView;

    .line 415
    const v2, 0x10202a3

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedNotiMailCount:Landroid/widget/TextView;

    .line 416
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedNotiCallText:Landroid/widget/TextView;

    const v3, 0x10404df

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 417
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedNotiMailText:Landroid/widget/TextView;

    const v3, 0x10404e0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 418
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedEventLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 419
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedEventLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 420
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedNotiCalllayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 421
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedNotiMaillayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 423
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->locale_es:Ljava/util/Locale;

    .line 425
    const v2, 0x102027f

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockButton:Landroid/widget/LinearLayout;

    .line 426
    const v2, 0x102027e

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockArrow:Landroid/widget/LinearLayout;

    .line 428
    const v2, 0x10202a4

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockArrowLayout:Landroid/widget/LinearLayout;

    .line 429
    const v2, 0x10202a5

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockMissedCallArrow:Landroid/widget/ImageView;

    .line 430
    const v2, 0x10202a6

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockEventArrow:Landroid/widget/ImageView;

    .line 431
    const v2, 0x10202a7

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockMissedTxtArrow:Landroid/widget/ImageView;

    .line 432
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockMissedCallArrow:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 433
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockEventArrow:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 434
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockMissedTxtArrow:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 437
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mContext:Landroid/content/Context;

    .line 439
    new-instance v2, Lcom/android/internal/policy/impl/UnlockMediaController;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/policy/impl/UnlockMediaController;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    .line 440
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    new-instance v3, Lcom/android/internal/policy/impl/PuzzleLockScreen$LockTouchListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/internal/policy/impl/PuzzleLockScreen$LockTouchListener;-><init>(Lcom/android/internal/policy/impl/PuzzleLockScreen;Lcom/android/internal/policy/impl/PuzzleLockScreen$1;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/UnlockMediaController;->setOnCDImageTouchListener(Lcom/android/internal/policy/impl/UnlockMediaController$CDImageTouchListener;)V

    .line 441
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/UnlockMediaController;->getMainLayout()Landroid/widget/LinearLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaLayout:Landroid/widget/LinearLayout;

    .line 442
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 453
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->isDualClockEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_22e

    .line 454
    new-instance v2, Lcom/android/internal/policy/impl/UnlockDualClock;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mCreationOrientation:I

    if-eq v4, v8, :cond_22b

    move v4, v6

    :goto_19b
    invoke-direct {v2, v3, v4}, Lcom/android/internal/policy/impl/UnlockDualClock;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockDualClock:Lcom/android/internal/policy/impl/UnlockDualClock;

    .line 458
    :goto_1a0
    const v2, 0x1020278

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mBackgroudLayout:Landroid/widget/RelativeLayout;

    .line 459
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mBackgroudLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 461
    const v2, 0x1020277

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mLockscreenBackground:Landroid/widget/ImageView;

    .line 465
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->isDualClockEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_240

    .line 466
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockDualClock:Lcom/android/internal/policy/impl/UnlockDualClock;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 471
    :goto_1ce
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 472
    .local v0, densityDpiForPuzzle:I
    sparse-switch v0, :sswitch_data_2ba

    .line 509
    iget v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockRatio:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockHorizontalMargin:I

    .line 510
    iget v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockRatio:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockVerticalMargin:I

    .line 511
    iput v9, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockHorizontalMargin:I

    .line 512
    const/16 v2, 0x230

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockVerticalMargin:I

    .line 514
    iput v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassLeft:I

    .line 515
    iput v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassTop:I

    .line 516
    const/16 v2, 0x1e0

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassWidth:I

    .line 517
    const/16 v2, 0x2fa

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassHeight:I

    .line 600
    :goto_1fb
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockButton:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;-><init>(Lcom/android/internal/policy/impl/PuzzleLockScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 992
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->setFocusable(Z)V

    .line 993
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->setFocusableInTouchMode(Z)V

    .line 994
    const/high16 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->setDescendantFocusability(I)V

    .line 996
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->updateMissedEvent()V

    .line 997
    invoke-virtual {p4, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 998
    invoke-virtual {p4, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V

    .line 999
    invoke-virtual {p4, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerConfigurationChangeCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ConfigurationChangeCallback;)V

    .line 1000
    invoke-virtual {p4, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerMediaCallbacks(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MediaStateCallback;)V

    .line 1002
    invoke-direct {p0, p4}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    .line 1003
    return-void

    .line 364
    .end local v0           #densityDpiForPuzzle:I
    :cond_223
    const v2, 0x1090081

    invoke-virtual {v1, v2, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_42

    :cond_22b
    move v4, v5

    .line 454
    goto/16 :goto_19b

    .line 456
    :cond_22e
    new-instance v2, Lcom/android/internal/policy/impl/UnlockClock;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mCreationOrientation:I

    if-eq v4, v8, :cond_23e

    move v4, v6

    :goto_237
    invoke-direct {v2, v3, v4}, Lcom/android/internal/policy/impl/UnlockClock;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClock;

    goto/16 :goto_1a0

    :cond_23e
    move v4, v5

    goto :goto_237

    .line 468
    :cond_240
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClock;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_1ce

    .line 474
    .restart local v0       #densityDpiForPuzzle:I
    :sswitch_248
    iget v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockRatio:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockHorizontalMargin:I

    .line 475
    iget v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockRatio:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockVerticalMargin:I

    .line 476
    iput v9, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockHorizontalMargin:I

    .line 477
    const/16 v2, 0x230

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockVerticalMargin:I

    .line 479
    iput v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassLeft:I

    .line 480
    iput v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassTop:I

    .line 481
    const/16 v2, 0x1e0

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassWidth:I

    .line 482
    const/16 v2, 0x2fa

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassHeight:I

    goto :goto_1fb

    .line 485
    :sswitch_267
    iget v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockRatio:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockHorizontalMargin:I

    .line 486
    iget v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockRatio:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockVerticalMargin:I

    .line 487
    iput v9, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockHorizontalMargin:I

    .line 488
    const/16 v2, 0x230

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockVerticalMargin:I

    .line 490
    iput v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassLeft:I

    .line 491
    iput v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassTop:I

    .line 492
    const/16 v2, 0x1e0

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassWidth:I

    .line 493
    const/16 v2, 0x2fa

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassHeight:I

    goto/16 :goto_1fb

    .line 496
    :sswitch_287
    iget v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockRatio:I

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockHorizontalMargin:I

    .line 497
    iget v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockRatio:I

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockVerticalMargin:I

    .line 498
    iget v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockStatusBarMargin:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockStatusBarMargin:I

    .line 499
    iget v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockMatchHorizontalMargin:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockMatchHorizontalMargin:I

    .line 500
    const/16 v2, 0xa8

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockHorizontalMargin:I

    .line 501
    const/16 v2, 0x118

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockVerticalMargin:I

    .line 503
    iput v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassLeft:I

    .line 504
    iput v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassTop:I

    .line 505
    const/16 v2, 0xf0

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassWidth:I

    .line 506
    const/16 v2, 0x17d

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassHeight:I

    goto/16 :goto_1fb

    .line 472
    nop

    :sswitch_data_2ba
    .sparse-switch
        0x78 -> :sswitch_287
        0xa0 -> :sswitch_267
        0xf0 -> :sswitch_248
    .end sparse-switch
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockButton:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Ljava/util/Locale;
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->locale_es:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockArrow:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOrigLeft:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/internal/policy/impl/PuzzleLockScreen;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput p1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOrigLeft:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOrigTop:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/internal/policy/impl/PuzzleLockScreen;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput p1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOrigTop:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOffsetLeft:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/internal/policy/impl/PuzzleLockScreen;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput p1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOffsetLeft:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOffsetTop:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/internal/policy/impl/PuzzleLockScreen;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput p1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOffsetTop:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockLayoutTop:I

    return v0
.end method

.method static synthetic access$1702(Lcom/android/internal/policy/impl/PuzzleLockScreen;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput p1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockLayoutTop:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockLayoutLeft:I

    return v0
.end method

.method static synthetic access$1802(Lcom/android/internal/policy/impl/PuzzleLockScreen;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput p1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockLayoutLeft:I

    return p1
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->PUZZLE_UNLOCK_SOUND_ONLY_ONCE:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/internal/policy/impl/PuzzleLockScreen;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->PUZZLE_UNLOCK_SOUND_ONLY_ONCE:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockMatchLayoutTop:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Lcom/android/internal/widget/LockPatternUtils;
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/PuzzleLockScreen;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput p1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockMatchLayoutTop:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mCreationOrientation:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedMsgCount:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedCallCount:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/PuzzleLockScreen;Lcom/android/internal/widget/LockPatternUtils$NotiMode;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->sendIntent(Lcom/android/internal/widget/LockPatternUtils$NotiMode;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockMatchHorizontalMargin:I

    return v0
.end method

.method static synthetic access$2702(Lcom/android/internal/policy/impl/PuzzleLockScreen;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaOpened:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Lcom/android/internal/policy/impl/UnlockClock;
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClock;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockStatusBarMargin:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedCallMatchLayoutLeft:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/PuzzleLockScreen;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput p1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedCallMatchLayoutLeft:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockHorizontalMargin:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedTxtMatchLayoutRight:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/internal/policy/impl/PuzzleLockScreen;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput p1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedTxtMatchLayoutRight:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mEventMatchLayoutTop:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/internal/policy/impl/PuzzleLockScreen;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput p1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mEventMatchLayoutTop:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedEventLayout2:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4
    .parameter "telephonyPlmn"
    .parameter "telephonySpn"

    .prologue
    .line 1444
    if-eqz p0, :cond_6

    if-nez p1, :cond_6

    move-object v0, p0

    .line 1451
    :goto_5
    return-object v0

    .line 1446
    :cond_6
    if-eqz p0, :cond_22

    if-eqz p1, :cond_22

    .line 1447
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

    .line 1448
    :cond_22
    if-nez p0, :cond_28

    if-eqz p1, :cond_28

    move-object v0, p1

    .line 1449
    goto :goto_5

    .line 1451
    :cond_28
    const-string v0, ""

    goto :goto_5
.end method

.method private getCurrentStatus(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;
    .registers 5
    .parameter "simState"

    .prologue
    .line 1344
    iget-object v1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_13

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne p1, v1, :cond_13

    const/4 v1, 0x1

    move v0, v1

    .line 1346
    .local v0, missingAndNotProvisioned:Z
    :goto_e
    if-eqz v0, :cond_16

    .line 1347
    sget-object v1, Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;->SimMissingLocked:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    .line 1366
    :goto_12
    return-object v1

    .line 1344
    .end local v0           #missingAndNotProvisioned:Z
    :cond_13
    const/4 v1, 0x0

    move v0, v1

    goto :goto_e

    .line 1350
    .restart local v0       #missingAndNotProvisioned:Z
    :cond_16
    sget-object v1, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_3a

    .line 1366
    sget-object v1, Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    goto :goto_12

    .line 1352
    :pswitch_24
    sget-object v1, Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    goto :goto_12

    .line 1354
    :pswitch_27
    sget-object v1, Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;->SimMissingLocked:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    goto :goto_12

    .line 1356
    :pswitch_2a
    sget-object v1, Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    goto :goto_12

    .line 1358
    :pswitch_2d
    sget-object v1, Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;->SimLocked:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    goto :goto_12

    .line 1360
    :pswitch_30
    sget-object v1, Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;->SimPukLocked:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    goto :goto_12

    .line 1362
    :pswitch_33
    sget-object v1, Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;->Normal:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    goto :goto_12

    .line 1364
    :pswitch_36
    sget-object v1, Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    goto :goto_12

    .line 1350
    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_24
        :pswitch_27
        :pswitch_2a
        :pswitch_2d
        :pswitch_30
        :pswitch_33
        :pswitch_36
    .end packed-switch
.end method

.method private isDualClockEnabled()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 1472
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .registers 3
    .parameter "updateMonitor"

    .prologue
    .line 1464
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->getCurrentStatus(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mStatus:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    .line 1465
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mStatus:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->updateLayout(Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;)V

    .line 1466
    return-void
.end method

.method private sendIntent(Lcom/android/internal/widget/LockPatternUtils$NotiMode;)V
    .registers 4
    .parameter "notiMode"

    .prologue
    .line 1018
    iget-object v1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getIntentMissedEvent(Lcom/android/internal/widget/LockPatternUtils$NotiMode;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1019
    .local v0, intent:Landroid/app/PendingIntent;
    if-eqz v0, :cond_b

    .line 1021
    :try_start_8
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_b
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_8 .. :try_end_b} :catch_c

    .line 1026
    :cond_b
    :goto_b
    return-void

    .line 1022
    :catch_c
    move-exception v1

    goto :goto_b
.end method

.method private shouldEnableMenuKey()Z
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 305
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 306
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x10d0012

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 308
    .local v0, configDisabled:Z
    const-string v4, "ro.monkey"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 310
    .local v2, isMonkey:Z
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/local/enable_menu_key"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    .line 311
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
    .line 1495
    packed-switch p1, :pswitch_data_10

    .line 1509
    :goto_3
    :pswitch_3
    return-void

    .line 1499
    :pswitch_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mLockscreenBackground:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getLockscreenWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 1495
    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private updateLayout(Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;)V
    .registers 2
    .parameter "status"

    .prologue
    .line 1374
    return-void
.end method

.method private updateMissedEvent()V
    .registers 11

    .prologue
    const/16 v5, 0x270f

    const/4 v8, 0x1

    const/4 v7, 0x4

    const/4 v6, 0x0

    const-string v9, "("

    .line 1029
    const/4 v2, 0x0

    .line 1030
    .local v2, visibility:I
    const/4 v0, 0x0

    .line 1031
    .local v0, nCallCount:I
    const/4 v1, 0x0

    .line 1033
    .local v1, nMsgCount:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget-object v4, Lcom/android/internal/widget/LockPatternUtils$NotiMode;->MissedCall:Lcom/android/internal/widget/LockPatternUtils$NotiMode;

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getNumMissedEvent(Lcom/android/internal/widget/LockPatternUtils$NotiMode;)I

    move-result v0

    .line 1034
    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget-object v4, Lcom/android/internal/widget/LockPatternUtils$NotiMode;->MissedMsg:Lcom/android/internal/widget/LockPatternUtils$NotiMode;

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getNumMissedEvent(Lcom/android/internal/widget/LockPatternUtils$NotiMode;)I

    move-result v1

    .line 1036
    iget v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedCallCount:I

    if-le v0, v3, :cond_20

    iput v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedCallCount:I

    .line 1037
    :cond_20
    iget v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedMsgCount:I

    if-le v1, v3, :cond_26

    iput v1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedMsgCount:I

    .line 1039
    :cond_26
    iget v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedCallCount:I

    if-le v3, v5, :cond_2c

    iput v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedCallCount:I

    .line 1040
    :cond_2c
    iget v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedMsgCount:I

    if-le v3, v5, :cond_32

    iput v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedMsgCount:I

    .line 1064
    :cond_32
    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedNotiCallCount:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedCallCount:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1065
    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedNotiMailCount:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedMsgCount:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1068
    iget v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mCreationOrientation:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_162

    .line 1069
    iget v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedCallCount:I

    if-eqz v3, :cond_87

    iget v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedMsgCount:I

    if-nez v3, :cond_11e

    .line 1070
    :cond_87
    iget v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedCallCount:I

    if-nez v3, :cond_e1

    .line 1071
    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedEventIcon:Landroid/widget/ImageView;

    const v4, 0x108038e

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1072
    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedNotiText:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedMsgCount:I

    if-ne v4, v8, :cond_dd

    const v4, 0x10404e0

    :goto_9c
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1073
    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedNotiCount:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedMsgCount:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1079
    :goto_c3
    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedEventLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1080
    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedEventLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1081
    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockMissedCallArrow:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1082
    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockEventArrow:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1083
    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockMissedTxtArrow:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1114
    :cond_dc
    :goto_dc
    return-void

    .line 1072
    :cond_dd
    const v4, 0x10404e2

    goto :goto_9c

    .line 1075
    :cond_e1
    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedEventIcon:Landroid/widget/ImageView;

    const v4, 0x108038d

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1076
    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedNotiText:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedCallCount:I

    if-ne v4, v8, :cond_11a

    const v4, 0x10404df

    :goto_f2
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1077
    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedNotiCount:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedCallCount:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c3

    .line 1076
    :cond_11a
    const v4, 0x10404e1

    goto :goto_f2

    .line 1085
    :cond_11e
    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedNotiMailText:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedMsgCount:I

    if-ne v4, v8, :cond_15a

    const v4, 0x10404e0

    :goto_127
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1086
    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedNotiCallText:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedCallCount:I

    if-ne v4, v8, :cond_15e

    const v4, 0x10404df

    :goto_133
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1087
    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedEventLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1088
    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedEventLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1089
    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedNotiCalllayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1090
    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedNotiMaillayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1091
    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockMissedCallArrow:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1092
    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockEventArrow:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1093
    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockMissedTxtArrow:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_dc

    .line 1085
    :cond_15a
    const v4, 0x10404e2

    goto :goto_127

    .line 1086
    :cond_15e
    const v4, 0x10404e1

    goto :goto_133

    .line 1096
    :cond_162
    iget v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedCallCount:I

    if-lez v3, :cond_18b

    .line 1097
    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedNotiCallText:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedCallCount:I

    if-ne v4, v8, :cond_1b6

    const v4, 0x10404df

    :goto_16f
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1098
    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedEventLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1099
    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedEventLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1100
    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedNotiCalllayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1101
    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockMissedCallArrow:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1102
    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockEventArrow:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1104
    :cond_18b
    iget v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedMsgCount:I

    if-lez v3, :cond_dc

    .line 1105
    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedNotiMailText:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedMsgCount:I

    if-ne v4, v8, :cond_1ba

    const v4, 0x10404e0

    :goto_198
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1106
    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedEventLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1107
    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedEventLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1108
    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedNotiMaillayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1109
    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockEventArrow:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1110
    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockMissedTxtArrow:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_dc

    .line 1097
    :cond_1b6
    const v4, 0x10404e1

    goto :goto_16f

    .line 1105
    :cond_1ba
    const v4, 0x10404e2

    goto :goto_198
.end method


# virtual methods
.method public cleanUp()V
    .registers 2

    .prologue
    .line 1277
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 1278
    return-void
.end method

.method public needsInput()Z
    .registers 2

    .prologue
    .line 1198
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .prologue
    .line 1179
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 1187
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->updateConfiguration()V

    .line 1189
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 1164
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1172
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->updateConfiguration()V

    .line 1174
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1008
    const/4 v0, 0x3

    if-ne p1, v0, :cond_12

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_12

    .line 1009
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaOpened:Z

    if-eqz v0, :cond_12

    .line 1010
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockMediaController;->startControllerAnimation()V

    .line 1014
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyboardChange(Z)V
    .registers 2
    .parameter "isKeyboardOpen"

    .prologue
    .line 1194
    return-void
.end method

.method public onMediaStoped(Z)V
    .registers 4
    .parameter "isStop"

    .prologue
    .line 1307
    if-nez p1, :cond_3

    .line 1315
    :goto_2
    return-void

    .line 1309
    :cond_3
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaOpened:Z

    if-nez v0, :cond_10

    .line 1310
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaOpened:Z

    .line 1311
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1314
    :cond_10
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockMediaController;->stopPlaying()V

    goto :goto_2
.end method

.method public onMediaUpdated(ZZLandroid/net/Uri;)V
    .registers 6
    .parameter "bIsPlaying"
    .parameter "bIsStop"
    .parameter "mediaUri"

    .prologue
    .line 1284
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaOpened:Z

    if-nez v0, :cond_e

    if-eqz p1, :cond_e

    .line 1285
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaOpened:Z

    .line 1286
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1289
    :cond_e
    if-nez p1, :cond_19

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaOpened:Z

    if-eqz v0, :cond_19

    .line 1290
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockMediaController;->stopPlaying()V

    .line 1293
    :cond_19
    if-eqz p1, :cond_24

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaOpened:Z

    if-eqz v0, :cond_24

    .line 1294
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockMediaController;->startPlaying()V

    .line 1297
    :cond_24
    if-eqz p2, :cond_2f

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaOpened:Z

    if-eqz v0, :cond_2f

    .line 1298
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0, p2}, Lcom/android/internal/policy/impl/UnlockMediaController;->setControllerVisibility(Z)V

    .line 1301
    :cond_2f
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/UnlockMediaController;->playingFlagSet(Z)V

    .line 1302
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0, p3}, Lcom/android/internal/policy/impl/UnlockMediaController;->updateMediaPlayer(Landroid/net/Uri;)V

    .line 1303
    return-void
.end method

.method public onOrientationChange(Z)V
    .registers 2
    .parameter "inPortrait"

    .prologue
    .line 1142
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 1203
    const-string v0, "PuzzleLockScreen"

    const-string v1, "PuzzleLock onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaOpened:Z

    if-eqz v0, :cond_10

    .line 1206
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockMediaController;->onPause()V

    .line 1215
    :cond_10
    return-void
.end method

.method public onPhoneStateChanged(Ljava/lang/String;)V
    .registers 2
    .parameter "newState"

    .prologue
    .line 1490
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .registers 4
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 1119
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 1337
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mStatus:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->updateLayout(Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;)V

    .line 1338
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    .line 1219
    const-string v2, "PuzzleLockScreen"

    const-string v3, "PuzzleLock onResume"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 1227
    .local v0, mDensity:I
    const/16 v1, 0x26

    .line 1228
    .local v1, mOffset:I
    const/16 v2, 0x78

    if-ne v0, v2, :cond_1b

    .line 1229
    const/16 v1, 0x13

    .line 1231
    :cond_1b
    iget v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mCreationOrientation:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5a

    .line 1232
    div-int/lit8 v2, v0, 0x78

    mul-int/lit8 v2, v2, 0x17

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockHorizontalMargin:I

    .line 1237
    :goto_26
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->forceLayout()V

    .line 1238
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    .line 1240
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getWallpaperMode()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->switchLockscreenMode(I)V

    .line 1241
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mLockscreenBackground:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1245
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->isDualClockEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_61

    .line 1246
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockDualClock:Lcom/android/internal/policy/impl/UnlockDualClock;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/UnlockDualClock;->refreshTimeAndDateDisplay()V

    .line 1250
    :goto_4d
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->updateMissedEvent()V

    .line 1252
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaOpened:Z

    if-eqz v2, :cond_59

    .line 1253
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/UnlockMediaController;->onResume()V

    .line 1273
    :cond_59
    return-void

    .line 1234
    :cond_5a
    div-int/lit8 v2, v0, 0x78

    mul-int/lit8 v2, v2, 0x2e

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockHorizontalMargin:I

    goto :goto_26

    .line 1248
    :cond_61
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClock;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/UnlockClock;->refreshTimeAndDateDisplay()V

    goto :goto_4d
.end method

.method public onRingerModeChanged(I)V
    .registers 2
    .parameter "state"

    .prologue
    .line 1138
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V
    .registers 2
    .parameter "simState"

    .prologue
    .line 1461
    return-void
.end method

.method public onTimeChanged()V
    .registers 3

    .prologue
    .line 1128
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->forceLayout()V

    .line 1130
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->isDualClockEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1131
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockDualClock:Lcom/android/internal/policy/impl/UnlockDualClock;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockDualClock;->refreshTimeAndDateDisplay()V

    .line 1134
    :goto_12
    return-void

    .line 1133
    :cond_13
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClock;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/UnlockClock;->resetClockInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    goto :goto_12
.end method

.method public onUpdateBatteryInfo(II)V
    .registers 3
    .parameter "batteryInfoStatus"
    .parameter "batteryLevel"

    .prologue
    .line 1124
    return-void
.end method

.method updateConfiguration()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 1147
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 1148
    .local v1, newConfig:Landroid/content/res/Configuration;
    iget v2, v1, Landroid/content/res/Configuration;->orientation:I

    iget v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mCreationOrientation:I

    if-eq v2, v3, :cond_15

    .line 1149
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 1157
    :cond_14
    :goto_14
    return-void

    .line 1150
    :cond_15
    iget v2, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mKeyboardHidden:I

    if-eq v2, v3, :cond_14

    .line 1151
    iget v2, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mKeyboardHidden:I

    .line 1152
    iget v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mKeyboardHidden:I

    if-ne v2, v4, :cond_34

    move v0, v4

    .line 1153
    .local v0, isKeyboardOpen:Z
    :goto_24
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isKeyguardBypassEnabled()Z

    move-result v2

    if-eqz v2, :cond_14

    if-eqz v0, :cond_14

    .line 1154
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_14

    .line 1152
    .end local v0           #isKeyboardOpen:Z
    :cond_34
    const/4 v2, 0x0

    move v0, v2

    goto :goto_24
.end method
