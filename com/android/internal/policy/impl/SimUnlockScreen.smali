.class public Lcom/android/internal/policy/impl/SimUnlockScreen;
.super Landroid/widget/LinearLayout;
.source "SimUnlockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$AirplaneModeChangeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;,
        Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;
    }
.end annotation


# static fields
.field private static final DIGITS:[C = null

.field private static final DIGIT_PRESS_WAKE_MILLIS:I = 0x1388

.field static final LOG_TAG:Ljava/lang/String; = "SimUnlockScreen"


# instance fields
.field private mBackSpaceButton:Landroid/view/View;

.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCreationOrientation:I

.field private mEmergencyCallButton:Landroid/widget/Button;

.field private mEnteredDigits:I

.field private final mEnteredPin:[I

.field private mHeaderText:Landroid/widget/TextView;

.field private mKeyboardHidden:I

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockinfoText:Landroid/widget/TextView;

.field private mOkButton:Landroid/widget/TextView;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPinText:Landroid/widget/TextView;

.field mSimHandler:Landroid/os/Handler;

.field private mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private num_of_retry:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 85
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/internal/policy/impl/SimUnlockScreen;->DIGITS:[C

    return-void

    :array_a
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;)V
    .registers 11
    .parameter "context"
    .parameter "configuration"
    .parameter "updateMonitor"
    .parameter "callback"
    .parameter "lockpatternutils"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 93
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 63
    iput-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimHandler:Landroid/os/Handler;

    .line 74
    const/16 v1, 0x8

    new-array v1, v1, [I

    fill-array-data v1, :array_ac

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredPin:[I

    .line 75
    iput v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    .line 77
    iput-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 87
    iput v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->num_of_retry:I

    .line 94
    iput-object p3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 95
    iput-object p4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 97
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimHandler:Landroid/os/Handler;

    .line 99
    iget v1, p2, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCreationOrientation:I

    .line 100
    iget v1, p2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mKeyboardHidden:I

    .line 101
    iput-object p5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 103
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 104
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mKeyboardHidden:I

    if-ne v1, v3, :cond_a0

    .line 105
    const v1, 0x1090039

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 115
    :goto_3a
    const v1, 0x10201ef

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    .line 118
    const v1, 0x10201f2

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    .line 119
    const v1, 0x10201f3

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mBackSpaceButton:Landroid/view/View;

    .line 120
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mBackSpaceButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    const v1, 0x10201d7

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    .line 123
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 124
    const v1, 0x10201dd

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mOkButton:Landroid/widget/TextView;

    .line 126
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v2, 0x104039c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 130
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 132
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerAirplaneCallbacks(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$AirplaneModeChangeCallback;)V

    .line 136
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/SimUnlockScreen;->setFocusableInTouchMode(Z)V

    .line 138
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->setSimLockedComplete()V

    .line 139
    return-void

    .line 107
    :cond_a0
    const v1, 0x109003a

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 108
    new-instance v1, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreen;Lcom/android/internal/policy/impl/SimUnlockScreen$1;)V

    goto :goto_3a

    .line 74
    :array_ac
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/internal/policy/impl/SimUnlockScreen;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/SimUnlockScreen;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->reportDigit(I)V

    return-void
.end method

.method private checkPin()V
    .registers 3

    .prologue
    .line 275
    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1d

    .line 277
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x10400c6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 282
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    .line 284
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 316
    :goto_1c
    return-void

    .line 287
    :cond_1d
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 289
    new-instance v0, Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/SimUnlockScreen$1;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreen;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->start()V

    goto :goto_1c
.end method

.method private getSimLockInfoResult()I
    .registers 5

    .prologue
    .line 142
    const/4 v0, 0x0

    .line 144
    .local v0, result:I
    :try_start_1
    const-string v1, "phoneext"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephonyExt;->getSimPinRetry()I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_28

    move-result v0

    .line 148
    :goto_f
    const-string v1, "SimUnlockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimLockInfoResult(): num_of_retry is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return v0

    .line 146
    :catch_28
    move-exception v1

    goto :goto_f
.end method

.method private getSimUnlockProgressDialog()Landroid/app/Dialog;
    .registers 5

    .prologue
    const/4 v3, 0x4

    .line 254
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_4b

    .line 255
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 256
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    const v2, 0x10403b7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 259
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 260
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 262
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10d0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 264
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 269
    :cond_4b
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private reportDigit(I)V
    .registers 5
    .parameter "digit"

    .prologue
    .line 347
    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    if-nez v0, :cond_b

    .line 348
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    :cond_b
    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_12

    .line 355
    :goto_11
    return-void

    .line 353
    :cond_12
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 354
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredPin:[I

    iget v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    aput p1, v0, v1

    goto :goto_11
.end method

.method private setLockInfoText()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 192
    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->num_of_retry:I

    if-ne v0, v3, :cond_21

    .line 193
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mLockinfoText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10400d0

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->num_of_retry:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    :goto_20
    return-void

    .line 195
    :cond_21
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mLockinfoText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10400cf

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->num_of_retry:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_20
.end method


# virtual methods
.method public cleanUp()V
    .registers 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_9

    .line 185
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 187
    :cond_9
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 188
    return-void
.end method

.method public needsInput()Z
    .registers 2

    .prologue
    .line 155
    const/4 v0, 0x1

    return v0
.end method

.method public onAirplaneModeChanged(Z)V
    .registers 3
    .parameter "on"

    .prologue
    .line 386
    if-eqz p1, :cond_c

    .line 387
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportSimPinUnlocked()V

    .line 388
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 390
    :cond_c
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .prologue
    .line 373
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 374
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->updateConfiguration()V

    .line 375
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 233
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mBackSpaceButton:Landroid/view/View;

    if-ne p1, v2, :cond_21

    .line 234
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 235
    .local v0, digits:Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 236
    .local v1, len:I
    if-lez v1, :cond_1b

    .line 237
    sub-int v2, v1, v3

    invoke-interface {v0, v2, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 238
    iget v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    .line 240
    :cond_1b
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 251
    .end local v0           #digits:Landroid/text/Editable;
    .end local v1           #len:I
    :cond_20
    :goto_20
    return-void

    .line 241
    :cond_21
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    if-ne p1, v2, :cond_30

    .line 242
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 243
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->takeEmergencyCallAction()V

    goto :goto_20

    .line 244
    :cond_30
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mOkButton:Landroid/widget/TextView;

    if-ne p1, v2, :cond_20

    .line 249
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->checkPin()V

    goto :goto_20
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 380
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 381
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->updateConfiguration()V

    .line 382
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 320
    const/4 v1, 0x4

    if-ne p1, v1, :cond_b

    .line 321
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToLockScreen()V

    move v1, v2

    .line 343
    :goto_a
    return v1

    .line 325
    :cond_b
    sget-object v1, Lcom/android/internal/policy/impl/SimUnlockScreen;->DIGITS:[C

    invoke-virtual {p2, v1}, Landroid/view/KeyEvent;->getMatch([C)C

    move-result v0

    .line 326
    .local v0, match:C
    if-eqz v0, :cond_1c

    .line 327
    const/16 v1, 0x30

    sub-int v1, v0, v1

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->reportDigit(I)V

    move v1, v2

    .line 328
    goto :goto_a

    .line 330
    :cond_1c
    const/16 v1, 0x43

    if-ne p1, v1, :cond_30

    .line 331
    iget v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    if-lez v1, :cond_2e

    .line 332
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v1, p1, p2}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 333
    iget v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    :cond_2e
    move v1, v2

    .line 335
    goto :goto_a

    .line 338
    :cond_30
    const/16 v1, 0x42

    if-ne p1, v1, :cond_39

    .line 339
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->checkPin()V

    move v1, v2

    .line 340
    goto :goto_a

    .line 343
    :cond_39
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 161
    return-void
.end method

.method public onPhoneStateChanged(Ljava/lang/String;)V
    .registers 4
    .parameter "newState"

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 489
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .registers 4
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 493
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 497
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x104039c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 178
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 179
    return-void
.end method

.method public onRingerModeChanged(I)V
    .registers 2
    .parameter "state"

    .prologue
    .line 501
    return-void
.end method

.method public onTimeChanged()V
    .registers 1

    .prologue
    .line 505
    return-void
.end method

.method public onUpdateBatteryInfo(II)V
    .registers 3
    .parameter "batteryInfoStatus"
    .parameter "plugIn"

    .prologue
    .line 510
    return-void
.end method

.method updateConfiguration()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 358
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 359
    .local v1, newConfig:Landroid/content/res/Configuration;
    iget v2, v1, Landroid/content/res/Configuration;->orientation:I

    iget v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCreationOrientation:I

    if-eq v2, v3, :cond_15

    .line 360
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 369
    :cond_14
    :goto_14
    return-void

    .line 361
    :cond_15
    iget v2, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mKeyboardHidden:I

    if-eq v2, v3, :cond_14

    .line 362
    iget v2, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mKeyboardHidden:I

    .line 363
    iget v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mKeyboardHidden:I

    if-ne v2, v4, :cond_34

    move v0, v4

    .line 364
    .local v0, isKeyboardOpen:Z
    :goto_24
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isKeyguardBypassEnabled()Z

    move-result v2

    if-eqz v2, :cond_14

    if-eqz v0, :cond_14

    .line 365
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_14

    .line 363
    .end local v0           #isKeyboardOpen:Z
    :cond_34
    const/4 v2, 0x0

    move v0, v2

    goto :goto_24
.end method
