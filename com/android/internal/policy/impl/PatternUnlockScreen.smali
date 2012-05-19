.class Lcom/android/internal/policy/impl/PatternUnlockScreen;
.super Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;
.source "PatternUnlockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/PatternUnlockScreen$5;,
        Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;,
        Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MIN_PATTERN_BEFORE_POKE_WAKELOCK:I = 0x2

.field private static final PATTERN_CLEAR_TIMEOUT_MS:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "UnlockScreen"

.field private static final UNLOCK_PATTERN_WAKE_INTERVAL_FIRST_DOTS_MS:I = 0x7d0

.field private static final UNLOCK_PATTERN_WAKE_INTERVAL_MS:I = 0x1b58

.field private static mBatteryInfoState:I

.field private static mPlugedState:I


# instance fields
.field private final BATTERY_INFO_CHARGING:I

.field private final BATTERY_INFO_DEAD:I

.field private final BATTERY_INFO_FULL:I

.field private final BATTERY_INFO_NOT_DISPLAY:I

.field private final BATTERY_INFO_OVERHEAT:I

.field private final PLUG_IN:I

.field private final PLUG_OUT:I

.field private mBatteryLevel:I

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCancelPatternRunnable:Ljava/lang/Runnable;

.field private mCarrier:Landroid/widget/TextView;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mCreationOrientation:I

.field private mDate:Landroid/widget/TextView;

.field private mDateFormatString:Ljava/lang/String;

.field private mEmergencyAlone:Landroid/widget/Button;

.field private mEmergencyTogether:Landroid/widget/Button;

.field private mEnableFallback:Z

.field private mFailedPatternAttemptsSinceLastTimeout:I

.field private mFooterForgotPattern:Landroid/view/ViewGroup;

.field private mFooterNormal:Landroid/view/ViewGroup;

.field private mForgotPatternButton:Landroid/widget/Button;

.field private mInstructions:Ljava/lang/String;

.field private mLastPokeTime:J

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field private mNextAlarm:Ljava/lang/String;

.field private mPluggedIn:Z

.field private mShowingBatteryInfo:Z

.field private mStatus1:Landroid/widget/TextView;

.field private mStatus2:Landroid/widget/TextView;

.field private mStatusSep:Landroid/widget/TextView;

.field private mTotalFailedPatternAttempts:I

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 113
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mBatteryInfoState:I

    .line 115
    const/4 v0, -0x1

    sput v0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mPlugedState:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;I)V
    .registers 15
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"
    .parameter "totalFailedAttempts"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 180
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;-><init>(Landroid/content/Context;)V

    .line 68
    iput v4, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mFailedPatternAttemptsSinceLastTimeout:I

    .line 69
    iput v4, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mTotalFailedPatternAttempts:I

    .line 70
    iput-object v6, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 87
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mShowingBatteryInfo:Z

    .line 90
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mPluggedIn:Z

    .line 93
    const/16 v2, 0x64

    iput v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mBatteryLevel:I

    .line 95
    iput-object v6, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mNextAlarm:Ljava/lang/String;

    .line 97
    iput-object v6, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mInstructions:Ljava/lang/String;

    .line 108
    iput v4, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->BATTERY_INFO_NOT_DISPLAY:I

    .line 109
    iput v5, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->BATTERY_INFO_CHARGING:I

    .line 110
    iput v7, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->BATTERY_INFO_FULL:I

    .line 111
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->BATTERY_INFO_OVERHEAT:I

    .line 112
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->BATTERY_INFO_DEAD:I

    .line 116
    iput v5, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->PLUG_IN:I

    .line 117
    iput v4, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->PLUG_OUT:I

    .line 125
    const-wide/16 v2, -0x1b58

    iput-wide v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLastPokeTime:J

    .line 130
    new-instance v2, Lcom/android/internal/policy/impl/PatternUnlockScreen$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/PatternUnlockScreen$1;-><init>(Lcom/android/internal/policy/impl/PatternUnlockScreen;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCancelPatternRunnable:Ljava/lang/Runnable;

    .line 181
    iput-object p3, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 182
    iput-object p4, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 183
    iput-object p5, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 184
    iput p6, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mTotalFailedPatternAttempts:I

    .line 185
    rem-int/lit8 v2, p6, 0x5

    iput v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mFailedPatternAttemptsSinceLastTimeout:I

    .line 194
    iget v2, p2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCreationOrientation:I

    .line 196
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 199
    .local v1, inflater:Landroid/view/LayoutInflater;
    iget v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCreationOrientation:I

    if-eq v2, v7, :cond_16d

    .line 200
    const v2, 0x109003e

    invoke-virtual {v1, v2, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 209
    :goto_52
    const v2, 0x10201f0

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCarrier:Landroid/widget/TextView;

    .line 210
    const v2, 0x102005c

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mDate:Landroid/widget/TextView;

    .line 212
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10400a7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mDateFormatString:Ljava/lang/String;

    .line 213
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->refreshTimeAndDateDisplay()V

    .line 215
    const v2, 0x10201fb

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mStatus1:Landroid/widget/TextView;

    .line 216
    const v2, 0x10201ff

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mStatusSep:Landroid/widget/TextView;

    .line 217
    const v2, 0x10201fc

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mStatus2:Landroid/widget/TextView;

    .line 219
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->resetStatusInfo()V

    .line 222
    const v2, 0x1020205

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/LockPatternView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 224
    const v2, 0x1020200

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mFooterNormal:Landroid/view/ViewGroup;

    .line 225
    const v2, 0x1020202

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mFooterForgotPattern:Landroid/view/ViewGroup;

    .line 228
    new-instance v0, Lcom/android/internal/policy/impl/PatternUnlockScreen$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PatternUnlockScreen$2;-><init>(Lcom/android/internal/policy/impl/PatternUnlockScreen;)V

    .line 235
    .local v0, emergencyClick:Landroid/view/View$OnClickListener;
    const v2, 0x1020201

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mEmergencyAlone:Landroid/widget/Button;

    .line 236
    iget-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mEmergencyAlone:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setFocusable(Z)V

    .line 237
    iget-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mEmergencyAlone:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    const v2, 0x1020204

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mEmergencyTogether:Landroid/widget/Button;

    .line 239
    iget-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mEmergencyTogether:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setFocusable(Z)V

    .line 240
    iget-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mEmergencyTogether:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->refreshEmergencyButtonText()V

    .line 243
    const v2, 0x1020203

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mForgotPatternButton:Landroid/widget/Button;

    .line 244
    iget-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mForgotPatternButton:Landroid/widget/Button;

    const v3, 0x10403bb

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 245
    iget-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mForgotPatternButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/internal/policy/impl/PatternUnlockScreen$3;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/PatternUnlockScreen$3;-><init>(Lcom/android/internal/policy/impl/PatternUnlockScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    iget-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->setDefaultTouchRecepient(Landroid/view/View;)V

    .line 256
    iget-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/LockPatternView;->setSaveEnabled(Z)V

    .line 257
    iget-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/LockPatternView;->setFocusable(Z)V

    .line 258
    iget-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    new-instance v3, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;

    invoke-direct {v3, p0, v6}, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;-><init>(Lcom/android/internal/policy/impl/PatternUnlockScreen;Lcom/android/internal/policy/impl/PatternUnlockScreen$1;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 261
    iget-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v3

    if-nez v3, :cond_175

    move v3, v5

    :goto_130
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternView;->setInStealthMode(Z)V

    .line 264
    iget-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 267
    sget-object v2, Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;->Normal:Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->updateFooter(Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;)V

    .line 269
    invoke-virtual {p4, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 270
    invoke-virtual {p4, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V

    .line 271
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->setFocusableInTouchMode(Z)V

    .line 274
    iget-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 275
    iget-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCarrier:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 278
    iget-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCarrier:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonySpn()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/LockScreen;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    return-void

    .line 202
    .end local v0           #emergencyClick:Landroid/view/View$OnClickListener;
    :cond_16d
    const v2, 0x109003d

    invoke-virtual {v1, v2, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_52

    .restart local v0       #emergencyClick:Landroid/view/View$OnClickListener;
    :cond_175
    move v3, v4

    .line 261
    goto :goto_130
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/widget/LockPatternView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mEnableFallback:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/PatternUnlockScreen;Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->updateFooter(Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCancelPatternRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/PatternUnlockScreen;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mInstructions:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/PatternUnlockScreen;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->updateStatusLines()V

    return-void
.end method

.method static synthetic access$708(Lcom/android/internal/policy/impl/PatternUnlockScreen;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mTotalFailedPatternAttempts:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mTotalFailedPatternAttempts:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/PatternUnlockScreen;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mFailedPatternAttemptsSinceLastTimeout:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/internal/policy/impl/PatternUnlockScreen;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput p1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mFailedPatternAttemptsSinceLastTimeout:I

    return p1
.end method

.method static synthetic access$808(Lcom/android/internal/policy/impl/PatternUnlockScreen;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mFailedPatternAttemptsSinceLastTimeout:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mFailedPatternAttemptsSinceLastTimeout:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/PatternUnlockScreen;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->handleAttemptLockout(J)V

    return-void
.end method

.method private handleAttemptLockout(J)V
    .registers 11
    .parameter "elapsedRealtimeDeadline"

    .prologue
    .line 619
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 620
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 621
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 622
    .local v6, elapsedRealtime:J
    new-instance v0, Lcom/android/internal/policy/impl/PatternUnlockScreen$4;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/PatternUnlockScreen$4;-><init>(Lcom/android/internal/policy/impl/PatternUnlockScreen;JJ)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PatternUnlockScreen$4;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 647
    return-void
.end method

.method private refreshEmergencyButtonText()V
    .registers 3

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mEmergencyAlone:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 286
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mEmergencyTogether:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 287
    return-void
.end method

.method private refreshTimeAndDateDisplay()V
    .registers 4

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mDateFormatString:Ljava/lang/String;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    return-void
.end method

.method private resetStatusInfo()V
    .registers 2

    .prologue
    .line 295
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mInstructions:Ljava/lang/String;

    .line 296
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->shouldShowBatteryInfo()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mShowingBatteryInfo:Z

    .line 297
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDevicePluggedIn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mPluggedIn:Z

    .line 298
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getBatteryLevel()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mBatteryLevel:I

    .line 300
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getBatteryInfoState()I

    move-result v0

    sput v0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mBatteryInfoState:I

    .line 301
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getBatteryPlugedState()I

    move-result v0

    sput v0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mPlugedState:I

    .line 303
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getNextAlarm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mNextAlarm:Ljava/lang/String;

    .line 304
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->updateStatusLines()V

    .line 305
    return-void
.end method

.method private updateFooter(Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;)V
    .registers 6
    .parameter "mode"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 148
    sget-object v0, Lcom/android/internal/policy/impl/PatternUnlockScreen$5;->$SwitchMap$com$android$internal$policy$impl$PatternUnlockScreen$FooterMode:[I

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_36

    .line 162
    :goto_e
    return-void

    .line 150
    :pswitch_f
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mFooterNormal:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mFooterForgotPattern:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_e

    .line 154
    :pswitch_1a
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mFooterNormal:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mFooterForgotPattern:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mForgotPatternButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_e

    .line 159
    :pswitch_2a
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mFooterNormal:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mFooterForgotPattern:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_e

    .line 148
    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_f
        :pswitch_1a
        :pswitch_2a
    .end packed-switch
.end method

.method private updateStatusLines()V
    .registers 10

    .prologue
    const v8, 0x108001e

    const/16 v7, 0x64

    const/4 v3, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 308
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mInstructions:Ljava/lang/String;

    if-eqz v0, :cond_3a

    .line 310
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mStatus1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mInstructions:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mInstructions:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 312
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 318
    :goto_21
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 319
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mStatusSep:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mStatus2:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 382
    :goto_30
    return-void

    .line 314
    :cond_31
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mStatus1:Landroid/widget/TextView;

    const v1, 0x108001f

    invoke-virtual {v0, v1, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_21

    .line 321
    :cond_3a
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mShowingBatteryInfo:Z

    if-eqz v0, :cond_c4

    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mNextAlarm:Ljava/lang/String;

    if-eqz v0, :cond_46

    sget v0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mBatteryInfoState:I

    if-eq v0, v3, :cond_c4

    .line 323
    :cond_46
    sget v0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mPlugedState:I

    if-ne v0, v3, :cond_b3

    .line 324
    sget v0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mBatteryInfoState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_74

    .line 325
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10403ac

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    :goto_5f
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v0, v8, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 344
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 345
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mStatusSep:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 346
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mStatus2:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_30

    .line 326
    :cond_74
    sget v0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mBatteryInfoState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8a

    .line 327
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10404ba

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5f

    .line 329
    :cond_8a
    iget v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mBatteryLevel:I

    if-lt v0, v7, :cond_ad

    const/16 v0, 0x63

    iput v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mBatteryLevel:I

    .line 337
    :cond_92
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10403ab

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mBatteryLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5f

    .line 333
    :cond_ad
    iget v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mBatteryLevel:I

    if-gez v0, :cond_92

    goto/16 :goto_30

    .line 340
    :cond_b3
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10403ae

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5f

    .line 348
    :cond_c4
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mNextAlarm:Ljava/lang/String;

    if-eqz v0, :cond_ec

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mShowingBatteryInfo:Z

    if-nez v0, :cond_ec

    .line 350
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mStatus1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mNextAlarm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mStatus1:Landroid/widget/TextView;

    const v1, 0x108002e

    invoke-virtual {v0, v1, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 353
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 354
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mStatusSep:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 355
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mStatus2:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_30

    .line 356
    :cond_ec
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mNextAlarm:Ljava/lang/String;

    if-eqz v0, :cond_148

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mShowingBatteryInfo:Z

    if-eqz v0, :cond_148

    .line 358
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mStatus1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mNextAlarm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mStatusSep:Landroid/widget/TextView;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mStatus2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10403ad

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mBatteryLevel:I

    invoke-static {v7, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mStatus1:Landroid/widget/TextView;

    const v1, 0x108002e

    invoke-virtual {v0, v1, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 364
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mPluggedIn:Z

    if-eqz v0, :cond_142

    .line 365
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mStatus2:Landroid/widget/TextView;

    invoke-virtual {v0, v8, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 370
    :goto_131
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 371
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mStatusSep:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 372
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mStatus2:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_30

    .line 367
    :cond_142
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mStatus2:Landroid/widget/TextView;

    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_131

    .line 375
    :cond_148
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mStatus1:Landroid/widget/TextView;

    const v1, 0x10403a5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 376
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mStatus1:Landroid/widget/TextView;

    const v1, 0x108001f

    invoke-virtual {v0, v1, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 378
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 379
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mStatusSep:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 380
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mStatus2:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_30
.end method


# virtual methods
.method public cleanUp()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 542
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 543
    iput-object v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 544
    iput-object v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 545
    iput-object v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 547
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v0, :cond_15

    .line 549
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->disableInput()V

    .line 552
    :cond_15
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "ev"

    .prologue
    .line 395
    invoke-super {p0, p1}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 396
    .local v0, result:Z
    if-eqz v0, :cond_19

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLastPokeTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1af4

    cmp-long v1, v1, v3

    if-lez v1, :cond_19

    .line 399
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLastPokeTime:J

    .line 401
    :cond_19
    return v0
.end method

.method public needsInput()Z
    .registers 2

    .prologue
    .line 494
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .prologue
    .line 463
    invoke-super {p0}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->onAttachedToWindow()V

    .line 469
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCreationOrientation:I

    if-eq v0, v1, :cond_1e

    .line 470
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 472
    :cond_1e
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 478
    invoke-super {p0, p1}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 484
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCreationOrientation:I

    if-eq v0, v1, :cond_e

    .line 485
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 487
    :cond_e
    return-void
.end method

.method public onKeyboardChange(Z)V
    .registers 2
    .parameter "isKeyboardOpen"

    .prologue
    .line 490
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_c

    .line 500
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 501
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 503
    :cond_c
    return-void
.end method

.method public onPhoneStateChanged(Ljava/lang/String;)V
    .registers 2
    .parameter "newState"

    .prologue
    .line 650
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->refreshEmergencyButtonText()V

    .line 651
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .registers 4
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 409
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mShowingBatteryInfo:Z

    .line 410
    iput-boolean p2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mPluggedIn:Z

    .line 411
    iput p3, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mBatteryLevel:I

    .line 412
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->updateStatusLines()V

    .line 413
    return-void
.end method

.method public onRefreshBatteryInfo(ZZII)V
    .registers 5
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLeve"
    .parameter "batteryStatus"

    .prologue
    .line 437
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->onRefreshBatteryInfo(ZZI)V

    .line 438
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 5
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCarrier:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/android/internal/policy/impl/LockScreen;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 448
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    .line 508
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->resetStatusInfo()V

    .line 511
    iget-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    .line 512
    iget-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 513
    iget-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 516
    iget-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mForgotPatternButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->doesFallbackUnlockScreenExist()Z

    move-result v3

    if-eqz v3, :cond_42

    const/4 v3, 0x0

    :goto_1e
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 520
    iget-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    .line 521
    .local v0, deadline:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_30

    .line 522
    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->handleAttemptLockout(J)V

    .line 530
    :cond_30
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mEnableFallback:Z

    if-eqz v2, :cond_44

    iget v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mTotalFailedPatternAttempts:I

    const/4 v3, 0x5

    if-lt v2, v3, :cond_44

    .line 532
    sget-object v2, Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;->ForgotLockPattern:Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->updateFooter(Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;)V

    .line 537
    :goto_3e
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->refreshEmergencyButtonText()V

    .line 538
    return-void

    .line 516
    .end local v0           #deadline:J
    :cond_42
    const/4 v3, 0x4

    goto :goto_1e

    .line 534
    .restart local v0       #deadline:J
    :cond_44
    sget-object v2, Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;->Normal:Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->updateFooter(Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;)V

    goto :goto_3e
.end method

.method public onRingerModeChanged(I)V
    .registers 2
    .parameter "state"

    .prologue
    .line 453
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V
    .registers 2
    .parameter "simState"

    .prologue
    .line 459
    return-void
.end method

.method public onTimeChanged()V
    .registers 1

    .prologue
    .line 442
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->refreshTimeAndDateDisplay()V

    .line 443
    return-void
.end method

.method public onUpdateBatteryInfo(II)V
    .registers 7
    .parameter "batteryInfoStatus"
    .parameter "batteryLevel"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 418
    sput p1, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mBatteryInfoState:I

    .line 419
    iput p2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mBatteryLevel:I

    .line 420
    sget v0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mBatteryInfoState:I

    if-nez v0, :cond_1b

    .line 421
    iget v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mBatteryLevel:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_18

    .line 422
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mShowingBatteryInfo:Z

    .line 425
    :goto_12
    sput v3, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mPlugedState:I

    .line 432
    :goto_14
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->updateStatusLines()V

    .line 433
    return-void

    .line 424
    :cond_18
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mShowingBatteryInfo:Z

    goto :goto_12

    .line 428
    :cond_1b
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mShowingBatteryInfo:Z

    .line 429
    sput v2, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mPlugedState:I

    goto :goto_14
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2
    .parameter "hasWindowFocus"

    .prologue
    .line 556
    invoke-super {p0, p1}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->onWindowFocusChanged(Z)V

    .line 557
    if-eqz p1, :cond_8

    .line 559
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->onResume()V

    .line 561
    :cond_8
    return-void
.end method

.method public setEnableFallback(Z)V
    .registers 2
    .parameter "state"

    .prologue
    .line 291
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mEnableFallback:Z

    .line 292
    return-void
.end method
