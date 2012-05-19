.class public Lcom/android/internal/policy/impl/RecoveryPasswordScreen;
.super Landroid/widget/LinearLayout;
.source "RecoveryPasswordScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;
.implements Landroid/widget/TextView$OnEditorActionListener;


# static fields
.field private static final ERROR_MESSAGE_TIMEOUT:J = 0x7d0L

.field public static recoveryScreen:Z


# instance fields
.field private final RECOVERY_PASSWORD_ATTEMPTS:I

.field private mButtonsHolder:Landroid/widget/RelativeLayout;

.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCancelButton:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mCreationHardKeyboardHidden:I

.field private mCreationOrientation:I

.field private mEmergencyCallButton:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field private mIsRecoveryMode:Z

.field private mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

.field private mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPasswordEntry:Landroid/widget/EditText;

.field private mRecoverButton:Landroid/widget/Button;

.field private mTitle:Landroid/widget/TextView;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field final quality:I

.field private r:Ljava/lang/Runnable;

.field private recoveryAttempt:I

.field private wipeDataDialog:Landroid/app/AlertDialog;

.field private wipeDataRecoveryWrong:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 85
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->recoveryScreen:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .registers 12
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 104
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 88
    iput v5, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->recoveryAttempt:I

    .line 91
    iput v4, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->RECOVERY_PASSWORD_ATTEMPTS:I

    .line 93
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mHandler:Landroid/os/Handler;

    .line 95
    new-instance v2, Lcom/android/internal/policy/impl/RecoveryPasswordScreen$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/RecoveryPasswordScreen$1;-><init>(Lcom/android/internal/policy/impl/RecoveryPasswordScreen;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->r:Ljava/lang/Runnable;

    .line 106
    iget v2, p2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v2, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mCreationHardKeyboardHidden:I

    .line 107
    iget v2, p2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mCreationOrientation:I

    .line 108
    iput-object p4, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 109
    iput-object p5, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 110
    iput-object p3, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 111
    iput-object p1, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mContext:Landroid/content/Context;

    .line 113
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 114
    .local v1, layoutInflater:Landroid/view/LayoutInflater;
    iget v2, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mCreationOrientation:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_df

    .line 115
    const v2, 0x1090058

    invoke-virtual {v1, v2, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 121
    :goto_36
    iget-object v2, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->quality:I

    .line 122
    const/high16 v2, 0x4

    iget v3, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->quality:I

    if-eq v2, v3, :cond_4a

    const/high16 v2, 0x5

    iget v3, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->quality:I

    if-ne v2, v3, :cond_e7

    :cond_4a
    move v0, v4

    .line 124
    .local v0, isAlpha:Z
    :goto_4b
    sput-boolean v4, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->recoveryScreen:Z

    .line 125
    const v2, 0x102015a

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    .line 126
    const v2, 0x10201ee

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mPasswordEntry:Landroid/widget/EditText;

    .line 127
    iget-object v2, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 128
    const v2, 0x10201ec

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mTitle:Landroid/widget/TextView;

    .line 129
    const v2, 0x1020229

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mButtonsHolder:Landroid/widget/RelativeLayout;

    .line 130
    const v2, 0x102022a

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mRecoverButton:Landroid/widget/Button;

    .line 131
    const v2, 0x102022b

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mCancelButton:Landroid/widget/Button;

    .line 133
    iget-object v2, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mRecoverButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/internal/policy/impl/RecoveryPasswordScreen$2;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/RecoveryPasswordScreen$2;-><init>(Lcom/android/internal/policy/impl/RecoveryPasswordScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v2, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mCancelButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/internal/policy/impl/RecoveryPasswordScreen$3;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/RecoveryPasswordScreen$3;-><init>(Lcom/android/internal/policy/impl/RecoveryPasswordScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    new-instance v2, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v3, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-direct {v2, p1, v3, p0}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    .line 147
    iget-object v2, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    invoke-virtual {v2, v5}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    .line 148
    iget-object v2, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iget v3, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mCreationHardKeyboardHidden:I

    if-ne v3, v4, :cond_ea

    const/4 v3, 0x4

    :goto_bd
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->setVisibility(I)V

    .line 150
    iget-object v2, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 155
    iget-object v2, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 160
    iget-object v2, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v3, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v3

    if-eqz v3, :cond_ec

    const v3, 0x1070016

    :goto_db
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setVibratePattern(I)V

    .line 162
    return-void

    .line 118
    .end local v0           #isAlpha:Z
    :cond_df
    const v2, 0x1090057

    invoke-virtual {v1, v2, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_36

    :cond_e7
    move v0, v5

    .line 122
    goto/16 :goto_4b

    .restart local v0       #isAlpha:Z
    :cond_ea
    move v3, v5

    .line 148
    goto :goto_bd

    :cond_ec
    move v3, v5

    .line 160
    goto :goto_db
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/RecoveryPasswordScreen;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/RecoveryPasswordScreen;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->verifyRecoveryPassword()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/RecoveryPasswordScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method private verifyRecoveryPassword()V
    .registers 12

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v10, ""

    .line 165
    sput-boolean v8, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->recoveryScreen:Z

    .line 166
    iget-object v6, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, entry:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v0}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v1

    .line 168
    .local v1, isConfirmed:Z
    iget-object v6, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v0}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_74

    .line 169
    iget-object v6, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mPasswordEntry:Landroid/widget/EditText;

    const-string v7, ""

    invoke-virtual {v6, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v6, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v3

    .line 171
    .local v3, mDPM:Landroid/app/admin/DevicePolicyManager;
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v5

    .line 172
    .local v5, minLength:I
    iget v6, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->quality:I

    invoke-virtual {v3, v6}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v4

    .line 174
    .local v4, maxLength:I
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.app.action.CHANGE_DEVICE_PASSWORD"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 175
    .local v2, it:Landroid/content/Intent;
    const-string v6, "lockscreen.password_type"

    const/high16 v7, 0x5

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 176
    const-string v6, "lockscreen.password_min"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 177
    const-string v6, "lockscreen.password_max"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 179
    const-string v6, "lockscreen.password_old"

    invoke-virtual {v2, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    const-string v6, "confirm_credentials"

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 181
    const/high16 v6, 0x1000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 182
    const/high16 v6, 0x40

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 183
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 184
    iget-object v6, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v6, v9}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    .line 185
    iget-object v6, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v6}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportSuccessfulUnlockAttempt()V

    .line 201
    .end local v2           #it:Landroid/content/Intent;
    .end local v3           #mDPM:Landroid/app/admin/DevicePolicyManager;
    .end local v4           #maxLength:I
    .end local v5           #minLength:I
    :goto_73
    return-void

    .line 189
    :cond_74
    iget-object v6, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mPasswordEntry:Landroid/widget/EditText;

    const-string v7, ""

    invoke-virtual {v6, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget v6, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->recoveryAttempt:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->recoveryAttempt:I

    .line 191
    iget v6, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->recoveryAttempt:I

    rem-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_8d

    .line 193
    iget-object v6, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v6, v9}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportDeviceWipe(I)V

    goto :goto_73

    .line 197
    :cond_8d
    iget-object v6, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mTitle:Landroid/widget/TextView;

    const v7, 0x10403a9

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 198
    iget-object v6, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->r:Ljava/lang/Runnable;

    const-wide/16 v8, 0x7d0

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_73
.end method

.method private wipeDevice()V
    .registers 4

    .prologue
    .line 205
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 210
    :goto_5
    return-void

    .line 206
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 208
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "exception in wiping data"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_5
.end method


# virtual methods
.method public cleanUp()V
    .registers 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 215
    return-void
.end method

.method public needsInput()Z
    .registers 2

    .prologue
    .line 219
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .prologue
    .line 252
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 253
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 243
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 258
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 259
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_21

    .line 260
    iget-object v0, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->setVisibility(I)V

    .line 264
    :goto_f
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mCreationOrientation:I

    if-ne v0, v1, :cond_1b

    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v1, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mCreationHardKeyboardHidden:I

    if-eq v0, v1, :cond_20

    .line 266
    :cond_1b
    iget-object v0, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 267
    :cond_20
    return-void

    .line 262
    :cond_21
    iget-object v0, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->setVisibility(I)V

    goto :goto_f
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 235
    if-nez p2, :cond_d

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_d

    .line 236
    invoke-direct {p0}, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->verifyRecoveryPassword()V

    .line 237
    const/4 v0, 0x1

    .line 239
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 247
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyboardChange(Z)V
    .registers 2
    .parameter "isKeyboardOpen"

    .prologue
    .line 271
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 225
    return-void
.end method

.method public onPhoneStateChanged(Ljava/lang/String;)V
    .registers 2
    .parameter "newState"

    .prologue
    .line 275
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .registers 4
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 278
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 281
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mPasswordEntry:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v0, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 232
    return-void
.end method

.method public onRingerModeChanged(I)V
    .registers 2
    .parameter "state"

    .prologue
    .line 284
    return-void
.end method

.method public onTimeChanged()V
    .registers 1

    .prologue
    .line 287
    return-void
.end method

.method public onUpdateBatteryInfo(II)V
    .registers 3
    .parameter "batteryInfoStatus"
    .parameter "plugIn"

    .prologue
    .line 290
    return-void
.end method
