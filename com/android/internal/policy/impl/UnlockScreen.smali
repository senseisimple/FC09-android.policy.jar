.class Lcom/android/internal/policy/impl/UnlockScreen;
.super Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;
.source "UnlockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ConfigurationChangeCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/UnlockScreen$5;,
        Lcom/android/internal/policy/impl/UnlockScreen$UnlockPatternListener;,
        Lcom/android/internal/policy/impl/UnlockScreen$FooterMode;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MIN_PATTERN_BEFORE_POKE_WAKELOCK:I = 0x2

.field private static final PATTERN_CLEAR_TIMEOUT_MS:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "UnlockScreen"

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

.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCancelPatternRunnable:Ljava/lang/Runnable;

.field private mCarrier:Landroid/widget/TextView;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mCreatedInPortrait:Z

.field private mDate:Landroid/widget/TextView;

.field private mDateFormatString:Ljava/lang/String;

.field private mEnableFallback:Z

.field private mFailedPatternAttemptsSinceLastTimeout:I

.field private mFooterForgotPattern:Landroid/view/ViewGroup;

.field private mFooterNormal:Landroid/view/ViewGroup;

.field private mForgotPatternButton:Landroid/widget/Button;

.field private mInstructions:Ljava/lang/String;

.field private mLastPokeTime:J

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field private mNextAlarm:Ljava/lang/String;

.field private mPluggedIn:Z

.field private mShowingBatteryInfo:Z

.field private mStatus1:Landroid/widget/TextView;

.field private mStatus2:Landroid/widget/TextView;

.field private mStatusSep:Landroid/widget/TextView;

.field private mTotalFailedPatternAttempts:I

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 112
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/policy/impl/UnlockScreen;->mBatteryInfoState:I

    .line 114
    const/4 v0, -0x1

    sput v0, Lcom/android/internal/policy/impl/UnlockScreen;->mPlugedState:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;I)V
    .registers 14
    .parameter "context"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"
    .parameter "totalFailedAttempts"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 175
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;-><init>(Landroid/content/Context;)V

    .line 65
    iput v5, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mFailedPatternAttemptsSinceLastTimeout:I

    .line 66
    iput v5, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mTotalFailedPatternAttempts:I

    .line 67
    iput-object v7, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 86
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mShowingBatteryInfo:Z

    .line 89
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mPluggedIn:Z

    .line 92
    const/16 v3, 0x64

    iput v3, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mBatteryLevel:I

    .line 94
    iput-object v7, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mNextAlarm:Ljava/lang/String;

    .line 96
    iput-object v7, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mInstructions:Ljava/lang/String;

    .line 107
    iput v5, p0, Lcom/android/internal/policy/impl/UnlockScreen;->BATTERY_INFO_NOT_DISPLAY:I

    .line 108
    iput v6, p0, Lcom/android/internal/policy/impl/UnlockScreen;->BATTERY_INFO_CHARGING:I

    .line 109
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/internal/policy/impl/UnlockScreen;->BATTERY_INFO_FULL:I

    .line 110
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/internal/policy/impl/UnlockScreen;->BATTERY_INFO_OVERHEAT:I

    .line 111
    const/4 v3, 0x4

    iput v3, p0, Lcom/android/internal/policy/impl/UnlockScreen;->BATTERY_INFO_DEAD:I

    .line 115
    iput v6, p0, Lcom/android/internal/policy/impl/UnlockScreen;->PLUG_IN:I

    .line 116
    iput v5, p0, Lcom/android/internal/policy/impl/UnlockScreen;->PLUG_OUT:I

    .line 124
    const-wide/16 v3, -0x1b58

    iput-wide v3, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mLastPokeTime:J

    .line 129
    new-instance v3, Lcom/android/internal/policy/impl/UnlockScreen$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/UnlockScreen$1;-><init>(Lcom/android/internal/policy/impl/UnlockScreen;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mCancelPatternRunnable:Ljava/lang/Runnable;

    .line 176
    iput-object p2, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 177
    iput-object p3, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 178
    iput-object p4, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 179
    iput p5, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mTotalFailedPatternAttempts:I

    .line 180
    rem-int/lit8 v3, p5, 0x5

    iput v3, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mFailedPatternAttemptsSinceLastTimeout:I

    .line 190
    iget-object v3, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isInPortrait()Z

    move-result v3

    if-eqz v3, :cond_167

    .line 191
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x109003e

    invoke-virtual {v3, v4, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 201
    :goto_52
    const v3, 0x10201f0

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/UnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mCarrier:Landroid/widget/TextView;

    .line 202
    const v3, 0x102005c

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/UnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mDate:Landroid/widget/TextView;

    .line 204
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/UnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x10400a7

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mDateFormatString:Ljava/lang/String;

    .line 205
    invoke-direct {p0}, Lcom/android/internal/policy/impl/UnlockScreen;->refreshTimeAndDateDisplay()V

    .line 207
    const v3, 0x10201fb

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/UnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mStatus1:Landroid/widget/TextView;

    .line 208
    const v3, 0x10201ff

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/UnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mStatusSep:Landroid/widget/TextView;

    .line 209
    const v3, 0x10201fc

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/UnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mStatus2:Landroid/widget/TextView;

    .line 211
    invoke-direct {p0}, Lcom/android/internal/policy/impl/UnlockScreen;->resetStatusInfo()V

    .line 214
    const v3, 0x1020205

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/UnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/LockPatternView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 216
    const v3, 0x1020200

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/UnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mFooterNormal:Landroid/view/ViewGroup;

    .line 217
    const v3, 0x1020202

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/UnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mFooterForgotPattern:Landroid/view/ViewGroup;

    .line 220
    new-instance v1, Lcom/android/internal/policy/impl/UnlockScreen$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/UnlockScreen$2;-><init>(Lcom/android/internal/policy/impl/UnlockScreen;)V

    .line 226
    .local v1, emergencyClick:Landroid/view/View$OnClickListener;
    const v3, 0x1020201

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/UnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 227
    .local v0, emergencyAlone:Landroid/widget/Button;
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setFocusable(Z)V

    .line 228
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    const v3, 0x1020204

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/UnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 230
    .local v2, emergencyTogether:Landroid/widget/Button;
    invoke-virtual {v2, v5}, Landroid/widget/Button;->setFocusable(Z)V

    .line 231
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    const v3, 0x1020203

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/UnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mForgotPatternButton:Landroid/widget/Button;

    .line 234
    iget-object v3, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mForgotPatternButton:Landroid/widget/Button;

    const v4, 0x10403bb

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 235
    iget-object v3, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mForgotPatternButton:Landroid/widget/Button;

    new-instance v4, Lcom/android/internal/policy/impl/UnlockScreen$3;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/UnlockScreen$3;-><init>(Lcom/android/internal/policy/impl/UnlockScreen;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    iget-object v3, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/UnlockScreen;->setDefaultTouchRecepient(Landroid/view/View;)V

    .line 246
    iget-object v3, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/LockPatternView;->setSaveEnabled(Z)V

    .line 247
    iget-object v3, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/LockPatternView;->setFocusable(Z)V

    .line 248
    iget-object v3, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    new-instance v4, Lcom/android/internal/policy/impl/UnlockScreen$UnlockPatternListener;

    invoke-direct {v4, p0, v7}, Lcom/android/internal/policy/impl/UnlockScreen$UnlockPatternListener;-><init>(Lcom/android/internal/policy/impl/UnlockScreen;Lcom/android/internal/policy/impl/UnlockScreen$1;)V

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 251
    iget-object v3, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v4

    if-nez v4, :cond_173

    move v4, v6

    :goto_121
    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternView;->setInStealthMode(Z)V

    .line 254
    iget-object v3, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 257
    sget-object v3, Lcom/android/internal/policy/impl/UnlockScreen$FooterMode;->Normal:Lcom/android/internal/policy/impl/UnlockScreen$FooterMode;

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/UnlockScreen;->updateFooter(Lcom/android/internal/policy/impl/UnlockScreen$FooterMode;)V

    .line 259
    invoke-virtual {p3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isInPortrait()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mCreatedInPortrait:Z

    .line 260
    invoke-virtual {p3, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 261
    invoke-virtual {p3, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V

    .line 262
    invoke-virtual {p3, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerConfigurationChangeCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ConfigurationChangeCallback;)V

    .line 263
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/UnlockScreen;->setFocusableInTouchMode(Z)V

    .line 266
    iget-object v3, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 267
    iget-object v3, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mCarrier:Landroid/widget/TextView;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 270
    iget-object v3, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mCarrier:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonySpn()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/LockScreen;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    return-void

    .line 193
    .end local v0           #emergencyAlone:Landroid/widget/Button;
    .end local v1           #emergencyClick:Landroid/view/View$OnClickListener;
    .end local v2           #emergencyTogether:Landroid/widget/Button;
    :cond_167
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x109003d

    invoke-virtual {v3, v4, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_52

    .restart local v0       #emergencyAlone:Landroid/widget/Button;
    .restart local v1       #emergencyClick:Landroid/view/View$OnClickListener;
    .restart local v2       #emergencyTogether:Landroid/widget/Button;
    :cond_173
    move v4, v5

    .line 251
    goto :goto_121
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/UnlockScreen;)Lcom/android/internal/widget/LockPatternView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/UnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/UnlockScreen;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mEnableFallback:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/UnlockScreen;Lcom/android/internal/policy/impl/UnlockScreen$FooterMode;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/UnlockScreen;->updateFooter(Lcom/android/internal/policy/impl/UnlockScreen$FooterMode;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/UnlockScreen;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mCancelPatternRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/UnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/UnlockScreen;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mInstructions:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/UnlockScreen;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/internal/policy/impl/UnlockScreen;->updateStatusLines()V

    return-void
.end method

.method static synthetic access$708(Lcom/android/internal/policy/impl/UnlockScreen;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mTotalFailedPatternAttempts:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mTotalFailedPatternAttempts:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/UnlockScreen;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mFailedPatternAttemptsSinceLastTimeout:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/internal/policy/impl/UnlockScreen;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput p1, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mFailedPatternAttemptsSinceLastTimeout:I

    return p1
.end method

.method static synthetic access$808(Lcom/android/internal/policy/impl/UnlockScreen;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mFailedPatternAttemptsSinceLastTimeout:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mFailedPatternAttemptsSinceLastTimeout:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/UnlockScreen;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/UnlockScreen;->handleAttemptLockout(J)V

    return-void
.end method

.method private handleAttemptLockout(J)V
    .registers 11
    .parameter "elapsedRealtimeDeadline"

    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 571
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 572
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 573
    .local v6, elapsedRealtime:J
    new-instance v0, Lcom/android/internal/policy/impl/UnlockScreen$4;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/UnlockScreen$4;-><init>(Lcom/android/internal/policy/impl/UnlockScreen;JJ)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockScreen$4;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 598
    return-void
.end method

.method private refreshTimeAndDateDisplay()V
    .registers 4

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mDateFormatString:Ljava/lang/String;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    return-void
.end method

.method private resetStatusInfo()V
    .registers 2

    .prologue
    .line 282
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mInstructions:Ljava/lang/String;

    .line 283
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->shouldShowBatteryInfo()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mShowingBatteryInfo:Z

    .line 284
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDevicePluggedIn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mPluggedIn:Z

    .line 285
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getBatteryLevel()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mBatteryLevel:I

    .line 287
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getBatteryInfoState()I

    move-result v0

    sput v0, Lcom/android/internal/policy/impl/UnlockScreen;->mBatteryInfoState:I

    .line 288
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getBatteryPlugedState()I

    move-result v0

    sput v0, Lcom/android/internal/policy/impl/UnlockScreen;->mPlugedState:I

    .line 290
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getNextAlarm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mNextAlarm:Ljava/lang/String;

    .line 291
    invoke-direct {p0}, Lcom/android/internal/policy/impl/UnlockScreen;->updateStatusLines()V

    .line 292
    return-void
.end method

.method private updateFooter(Lcom/android/internal/policy/impl/UnlockScreen$FooterMode;)V
    .registers 6
    .parameter "mode"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 144
    sget-object v0, Lcom/android/internal/policy/impl/UnlockScreen$5;->$SwitchMap$com$android$internal$policy$impl$UnlockScreen$FooterMode:[I

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/UnlockScreen$FooterMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_36

    .line 158
    :goto_e
    return-void

    .line 146
    :pswitch_f
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mFooterNormal:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mFooterForgotPattern:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_e

    .line 150
    :pswitch_1a
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mFooterNormal:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mFooterForgotPattern:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mForgotPatternButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_e

    .line 155
    :pswitch_2a
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mFooterNormal:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mFooterForgotPattern:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_e

    .line 144
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

    .line 295
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mInstructions:Ljava/lang/String;

    if-eqz v0, :cond_3a

    .line 297
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mStatus1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mInstructions:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mInstructions:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 299
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 305
    :goto_21
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mStatusSep:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 307
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mStatus2:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 365
    :goto_30
    return-void

    .line 301
    :cond_31
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mStatus1:Landroid/widget/TextView;

    const v1, 0x108001f

    invoke-virtual {v0, v1, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_21

    .line 308
    :cond_3a
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mShowingBatteryInfo:Z

    if-eqz v0, :cond_c4

    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mNextAlarm:Ljava/lang/String;

    if-eqz v0, :cond_46

    sget v0, Lcom/android/internal/policy/impl/UnlockScreen;->mBatteryInfoState:I

    if-eq v0, v3, :cond_c4

    .line 310
    :cond_46
    sget v0, Lcom/android/internal/policy/impl/UnlockScreen;->mPlugedState:I

    if-ne v0, v3, :cond_b3

    .line 311
    sget v0, Lcom/android/internal/policy/impl/UnlockScreen;->mBatteryInfoState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_74

    .line 312
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/UnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10403ac

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    :goto_5f
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v0, v8, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 327
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 328
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mStatusSep:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 329
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mStatus2:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_30

    .line 313
    :cond_74
    sget v0, Lcom/android/internal/policy/impl/UnlockScreen;->mBatteryInfoState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8a

    .line 314
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/UnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10404ba

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5f

    .line 316
    :cond_8a
    iget v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mBatteryLevel:I

    if-lt v0, v7, :cond_ad

    const/16 v0, 0x63

    iput v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mBatteryLevel:I

    .line 320
    :cond_92
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/UnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10403ab

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mBatteryLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5f

    .line 317
    :cond_ad
    iget v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mBatteryLevel:I

    if-gtz v0, :cond_92

    goto/16 :goto_30

    .line 323
    :cond_b3
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/UnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10403ae

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5f

    .line 331
    :cond_c4
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mNextAlarm:Ljava/lang/String;

    if-eqz v0, :cond_ec

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mShowingBatteryInfo:Z

    if-nez v0, :cond_ec

    .line 333
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mStatus1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mNextAlarm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mStatus1:Landroid/widget/TextView;

    const v1, 0x108002e

    invoke-virtual {v0, v1, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 336
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 337
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mStatusSep:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 338
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mStatus2:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_30

    .line 339
    :cond_ec
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mNextAlarm:Ljava/lang/String;

    if-eqz v0, :cond_148

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mShowingBatteryInfo:Z

    if-eqz v0, :cond_148

    .line 341
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mStatus1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mNextAlarm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mStatusSep:Landroid/widget/TextView;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mStatus2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/UnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10403ad

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mBatteryLevel:I

    invoke-static {v7, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mStatus1:Landroid/widget/TextView;

    const v1, 0x108002e

    invoke-virtual {v0, v1, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 347
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mPluggedIn:Z

    if-eqz v0, :cond_142

    .line 348
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mStatus2:Landroid/widget/TextView;

    invoke-virtual {v0, v8, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 353
    :goto_131
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 354
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mStatusSep:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 355
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mStatus2:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_30

    .line 350
    :cond_142
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mStatus2:Landroid/widget/TextView;

    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_131

    .line 358
    :cond_148
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mStatus1:Landroid/widget/TextView;

    const v1, 0x10403a5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 359
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mStatus1:Landroid/widget/TextView;

    const v1, 0x108001f

    invoke-virtual {v0, v1, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 361
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 362
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mStatusSep:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 363
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mStatus2:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_30
.end method


# virtual methods
.method public cleanUp()V
    .registers 2

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 507
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "ev"

    .prologue
    .line 378
    invoke-super {p0, p1}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 379
    .local v0, result:Z
    if-eqz v0, :cond_19

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mLastPokeTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1af4

    cmp-long v1, v1, v3

    if-lez v1, :cond_19

    .line 382
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mLastPokeTime:J

    .line 384
    :cond_19
    return v0
.end method

.method public needsInput()Z
    .registers 2

    .prologue
    .line 460
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyboardChange(Z)V
    .registers 2
    .parameter "isKeyboardOpen"

    .prologue
    .line 456
    return-void
.end method

.method public onOrientationChange(Z)V
    .registers 4
    .parameter "inPortrait"

    .prologue
    .line 449
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/UnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 450
    .local v0, newConfig:Landroid/content/res/Configuration;
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mCreatedInPortrait:Z

    if-eq p1, v1, :cond_11

    .line 451
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1, v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 453
    :cond_11
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_c

    .line 466
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 467
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 469
    :cond_c
    return-void
.end method

.method public onPhoneStateChanged(Ljava/lang/String;)V
    .registers 2
    .parameter "newState"

    .prologue
    .line 602
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .registers 4
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 392
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mShowingBatteryInfo:Z

    .line 393
    iput-boolean p2, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mPluggedIn:Z

    .line 394
    iput p3, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mBatteryLevel:I

    .line 395
    invoke-direct {p0}, Lcom/android/internal/policy/impl/UnlockScreen;->updateStatusLines()V

    .line 396
    return-void
.end method

.method public onRefreshBatteryInfo(ZZII)V
    .registers 5
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLeve"
    .parameter "batteryStatus"

    .prologue
    .line 420
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/UnlockScreen;->onRefreshBatteryInfo(ZZI)V

    .line 421
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 5
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mCarrier:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/android/internal/policy/impl/LockScreen;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    .line 474
    invoke-direct {p0}, Lcom/android/internal/policy/impl/UnlockScreen;->resetStatusInfo()V

    .line 477
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    .line 478
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 479
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 482
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mForgotPatternButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->doesFallbackUnlockScreenExist()Z

    move-result v3

    if-eqz v3, :cond_3f

    const/4 v3, 0x0

    :goto_1e
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 486
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    .line 487
    .local v0, deadline:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_30

    .line 488
    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/UnlockScreen;->handleAttemptLockout(J)V

    .line 496
    :cond_30
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mEnableFallback:Z

    if-eqz v2, :cond_41

    iget v2, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mTotalFailedPatternAttempts:I

    const/4 v3, 0x5

    if-lt v2, v3, :cond_41

    .line 498
    sget-object v2, Lcom/android/internal/policy/impl/UnlockScreen$FooterMode;->ForgotLockPattern:Lcom/android/internal/policy/impl/UnlockScreen$FooterMode;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/UnlockScreen;->updateFooter(Lcom/android/internal/policy/impl/UnlockScreen$FooterMode;)V

    .line 502
    :goto_3e
    return-void

    .line 482
    .end local v0           #deadline:J
    :cond_3f
    const/4 v3, 0x4

    goto :goto_1e

    .line 500
    .restart local v0       #deadline:J
    :cond_41
    sget-object v2, Lcom/android/internal/policy/impl/UnlockScreen$FooterMode;->Normal:Lcom/android/internal/policy/impl/UnlockScreen$FooterMode;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/UnlockScreen;->updateFooter(Lcom/android/internal/policy/impl/UnlockScreen$FooterMode;)V

    goto :goto_3e
.end method

.method public onRingerModeChanged(I)V
    .registers 2
    .parameter "state"

    .prologue
    .line 436
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V
    .registers 2
    .parameter "simState"

    .prologue
    .line 442
    return-void
.end method

.method public onTimeChanged()V
    .registers 1

    .prologue
    .line 425
    invoke-direct {p0}, Lcom/android/internal/policy/impl/UnlockScreen;->refreshTimeAndDateDisplay()V

    .line 426
    return-void
.end method

.method public onUpdateBatteryInfo(II)V
    .registers 7
    .parameter "batteryInfoStatus"
    .parameter "batteryLevel"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 401
    sput p1, Lcom/android/internal/policy/impl/UnlockScreen;->mBatteryInfoState:I

    .line 402
    iput p2, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mBatteryLevel:I

    .line 403
    sget v0, Lcom/android/internal/policy/impl/UnlockScreen;->mBatteryInfoState:I

    if-nez v0, :cond_1b

    .line 404
    iget v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mBatteryLevel:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_18

    .line 405
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mShowingBatteryInfo:Z

    .line 408
    :goto_12
    sput v3, Lcom/android/internal/policy/impl/UnlockScreen;->mPlugedState:I

    .line 415
    :goto_14
    invoke-direct {p0}, Lcom/android/internal/policy/impl/UnlockScreen;->updateStatusLines()V

    .line 416
    return-void

    .line 407
    :cond_18
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mShowingBatteryInfo:Z

    goto :goto_12

    .line 411
    :cond_1b
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mShowingBatteryInfo:Z

    .line 412
    sput v2, Lcom/android/internal/policy/impl/UnlockScreen;->mPlugedState:I

    goto :goto_14
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2
    .parameter "hasWindowFocus"

    .prologue
    .line 511
    invoke-super {p0, p1}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->onWindowFocusChanged(Z)V

    .line 512
    if-eqz p1, :cond_8

    .line 514
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/UnlockScreen;->onResume()V

    .line 516
    :cond_8
    return-void
.end method

.method public setEnableFallback(Z)V
    .registers 2
    .parameter "state"

    .prologue
    .line 278
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mEnableFallback:Z

    .line 279
    return-void
.end method
